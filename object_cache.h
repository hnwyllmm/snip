#ifndef _MDB_OBJECT_CACHE_H
#define _MDB_OBJECT_CACHE_H

#include <pthread.h>
#include <vector>

namespace mdb {

template<class T>
class CNormalConstructor
{
public:
	void construct(T &obj) const
	{
	}

	void destroy(T &obj) const
	{
	}

	void init(T &obj) const
	{
		new(&obj) T();
	}

	void deinit(T &obj) const
	{
		obj.~T();
	}
};

template<class T>
class CCacheConstructor
{
public:
	void construct(T &obj) const
	{
		new(&obj)T;
	}

	void destroy(T &obj) const
	{
		obj.~T();
	}

	void init(T &obj) const
	{
		obj.init();
	}

	void deinit(T &obj) const
	{
		obj.deinit();
	}
};
template <class T, muint4 MAX_VOLUME = 256, class CConstructor = CNormalConstructor<T> >
class CObjectCache
{
private:
	typedef std::vector<T *> CCache;

private:
	static void destroy(void *p)
	{
		CConstructor constructor;
		CCache *cache = (CCache *)p;
		for (auto iter = cache->begin(), end = cache->end(); iter != end; ++iter)
		{
			constructor.destroy(**iter);
			free(*iter);
		}
		delete cache;
	}
public:
	CObjectCache()
	{
		const mint4 ret = pthread_key_create(&m_threadKey, &destroy);
		assert(0 == ret);
	}

	~CObjectCache()
	{
		pthread_key_delete(m_threadKey);
	}

	T *alloc()
	{
		void *p = pthread_getspecific(m_threadKey);
		if (!p)
		{
			p = new CCache();
			assert(p != NULL);
			pthread_setspecific(m_threadKey, p);
		}

		CCache &cache = *( (CCache *)(p));
		if (cache.empty())
		{
			T *pobj = (T *)malloc(sizeof(T));
			m_constructor.construct(*pobj);
			m_constructor.init(*pobj);
			return pobj;
		}

		T *obj = cache.back();
		cache.pop_back();

		m_constructor.init(*obj);
		return obj;
	}

	void release(T *obj)
	{
		void *p = pthread_getspecific(m_threadKey);
		if (!p)
		{
			m_constructor.deinit(*obj);
			m_constructor.destroy(*obj);
			free((void *)obj);
			return;
		}

		CCache &cache = *((CCache *)(p));
		if (cache.size() >= MAX_VOLUME)
		{
			m_constructor.deinit(*obj);
			m_constructor.destroy(*obj);
			free((void *)obj);
		}
		else
		{
			m_constructor.deinit(*obj);
			cache.push_back(obj);
		}
	}
private:
	pthread_key_t 	m_threadKey;
	CConstructor	m_constructor;
};

} // namespace mdb
#endif  // _MDB_OBJECT_CACHE_H
