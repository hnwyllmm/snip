#ifndef MDB_THREAD_SPECIFIC_H
#define MDB_THREAD_SPECIFIC_H

#include <stdlib.h>
#include <pthread.h>
#include <mutex>
#include <deque>
#include <vector>
#include <atomic>

// pthread key 上限个数
extern unsigned long mdb_hash_index_max_num;

namespace mdb {

class thread_specific
{
private:
	typedef void (*destr_func)(void *);

	struct key_struct
	{
		std::atomic<uintptr_t>  seq;
		destr_func destr;

		key_struct() = default;

		key_struct(const key_struct &other) :
			seq(other.seq.load()),
			destr(other.destr)
		{}
		key_struct(key_struct &&other): 
			seq(other.seq.load()),
			destr(other.destr)
		{
		}
	};
	struct key_data
	{
		uintptr_t  seq  = 0;
		void  *    data = nullptr;
	};

	typedef std::vector<key_struct> 	key_container_t;
	typedef std::vector<key_data>		value_container_t;

	inline bool key_unsed(uintptr_t seq) const
	{
		return (seq & 1) == 0;
	}

	inline bool key_usable(uintptr_t seq) const
	{
		return seq < (seq + 2); // in case of overflow
	}
	
private:
	thread_specific()
	{
		int rc = pthread_key_create(&m_thread_key, on_thread_exit);
		MDB_ASSERT2(rc == 0, "key create return %d", rc);

		m_keys.resize(mdb_hash_index_max_num * 2);
	}
public:
	~thread_specific()
	{
		pthread_key_delete(m_thread_key);
	}
	
	static thread_specific &instance()
	{
		static thread_specific obj;
		return obj;
	}
	
public:
	ssize_t key_create(void (*destr)(void *) )
	{
		size_t size = m_keys.size();
		for (size_t i = 0; i < size; i++)
		{
			key_struct &key = m_keys[i];
			uintptr_t seq = key.seq.load();
			if (key_unsed(seq) && key_usable(seq) &&
				key.seq.compare_exchange_weak(seq, seq+1))
			{
				key.destr = destr;
				return i;
			}
		}
		return -1;
	}
	
	int key_delete(ssize_t key)
	{
		if (key >= 0 && key < (ssize_t)m_keys.size())
		{
			auto &k = m_keys[key];
			uintptr_t seq = k.seq.load();
			if (!key_unsed(seq) &&
				k.seq.compare_exchange_weak(seq, seq+1))
				return 0;
		}
		return EINVAL;
	}
	
	void *getspecific(ssize_t key)
	{
		void *ptr = pthread_getspecific(m_thread_key);
		if (!ptr)
			return nullptr;
		
		value_container_t *values = (value_container_t *)ptr;
		if (key >= (ssize_t)values->size())
			return nullptr;
		
		auto & value = (*values)[key];
		if (value.data == nullptr ||
			value.seq != m_keys[key].seq.load())
			return nullptr;

		return value.data;
	}
	
	void setspecific(ssize_t key, void *ptr)
	{
		value_container_t *values = (value_container_t *)pthread_getspecific(m_thread_key);
		if (!values)
		{
			values = new (std::nothrow) value_container_t;
			MDB_ASSERT2(values != nullptr, "alloc deque fail");
			
			int rc = pthread_setspecific(m_thread_key, values);
			MDB_ASSERT2(0 == rc, "setspecific return %d, thread key %u", rc, m_thread_key);
		}
		
		if (key >= (ssize_t)values->size())
			values->resize(key + 1);  // 不做key的范围校验
		
		auto & value = (*values)[key];
		value.seq  = m_keys[key].seq.load();
		value.data = ptr;
	}
	
private:
	static void on_thread_exit(void *ptr)
	{
		if (!ptr)
			return ;
		
		value_container_t *values = (value_container_t *)ptr;
		
		auto &ts = thread_specific::instance();
		const size_t size = values->size();
		for (size_t i = 0; i < size; i++)
		{
			destr_func destr = ts.m_keys[i].destr;
			if (!destr)
				continue;
			
			auto &thread_value = (*values)[i];
			if (thread_value.seq == ts.m_keys[i].seq.load())
				(*destr)(thread_value.data);
		}
		
		delete values;
	}
private:
	key_container_t   		 m_keys;
	pthread_key_t			 m_thread_key;
};

} // namespace mdb

#endif // MDB_THREAD_SPECIFIC_H
