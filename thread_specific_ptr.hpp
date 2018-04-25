template <class T>
class thread_specific_ptr
{
public:
    static void desctuctor(void *ptr)
    {
        return delete (T *)ptr;                                                                                                                                                
    }
public:
    thread_specific_ptr()
    {
        int rc = pthread_key_create(&m_thread_key, desctuctor);
        assert(rc == 0);
    }

    T *get() const
    {
        T *ptr = (T *)pthread_getspecific(m_thread_key);
        return ptr;
    }

    void set(T *ptr)
    {
        pthread_setspecific(m_thread_key, ptr);
    }

    T *operator->() const
    {
        return this->get();
    }

    T &operator *() const
    {
        return *this->get();
    }
private:
    pthread_key_t   m_thread_key;
};
