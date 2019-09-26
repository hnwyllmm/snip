#ifndef MDB_THREAD_SPECIFIC_H
#define MDB_THREAD_SPECIFIC_H

#include <stdlib.h>
#include <mutex>
#include <deque>
#include <vector>

namespace mdb {
	
class thread_specific
{
private:
	typedef void (*destr_func)(void *);
	typedef std::vector<destr_func> key_container_t;
	typedef std::vector<void *>		value_container_t;
	
private:
	thread_specific()
	{
		int rc = pthread_key_create(&m_thread_key, on_thread_exit);
		MDB_ASSERT2(rc == 0, "key create return %d", rc);
	}
public:
	~thread_specific()
	{
		pthread_key_destroy(m_thread_key);
	}
	
	static thread_specific &instance()
	{
		static thread_specific obj;
		return obj;
	}
	
public:
	size_t key_create(void (*destr)(void *) )
	{
		std::lock_guard<std::mutex>  lock(m_lock);
		
		size_t size = m_keys.size();
		for (size_t i = 0; i < size; i++)
		{
			destr_func &val = m_keys[i];
			if ((intptr_t)val == 0x01)  // 被释放的元素，会设置成0x01
			{
				val = destr;
				return i;
			}
		}
		
		m_keys.push_back(destr);
		return size;
	}
	
	void key_destroy(size_t key)
	{
		std::lock_guard<std::mutex>  lock(m_lock);
		if (key >= 0 && key < m_keys.size())
			m_keys[key] = (destr_func)(0x01);  // 设置成0x01表示这个位置空闲状态
	}
	
	void *getspecific(size_t key)
	{
		void *ptr = pthread_getspecific(m_thread_key);
		if (!ptr)
			return nullptr;
		
		value_container_t *values = (value_container_t *)ptr;
		if (key >= values->size())
			return nullptr;
		
		return (*values)[key];
	}
	
	void setspecific(size_t key, void *ptr)
	{
		value_container_t *values = (value_container_t *)pthread_getspecific(m_thread_key);
		if (!values)
		{
			values = new (std::nothrow) std::deque<void *>;
			MDB_ASSERT2(values != nullptr, "alloc deque fail");
			
			int rc = pthread_setspecific(m_thread_key, values);
			MDB_ASSERT2(0 == rc, "setspecific return %d, thread key %u", rc, m_thread_key);
		}
		
		if (key >= values->size())
			values->resize(key + 1);  // 不做key的范围校验
		
		(*values)[key] = ptr;
	}
	
private:
	static void on_thread_exit(void *ptr)
	{
		if (!ptr)
			return ;
		
		value_container_t *values = (value_container_t *)ptr;
		
		auto &ts = thread_specific::instance();
		std::lock_guard<std::mutex>  lock(ts.m_lock);
		const size_t size = ts.m_keys.size();
		for (size_t i = 0; i < size; i++)
		{
			destr_func destr = ts.m_keys[i];
			if ((intptr_t)destr == 0x01 || destr == 0)
				continue;
			
			void *thread_value = (*values)[i];
			(*destr)(thread_value);
		}
		
		delete values;
	}
private:
	std::mutex  			 m_lock;
	key_container_t   		 m_keys;
	pthread_key_t            m_thread_key;
};

} // namespace mdb

#endif // MDB_THREAD_SPECIFIC_H
