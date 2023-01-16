Thread 242 (Thread 0x7fb4d81fb700 (LWP 171931)):
#0  0x00007fb4d9b0d9fd in nanosleep () from /lib64/libc.so.6
#1  0x00007fb4d9b3e2d4 in usleep () from /lib64/libc.so.6
#2  0x0000000002b7beb2 in bvar::detail::SamplerCollector::run() () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bvar/detail/sampler.cpp:185
#3  0x0000000002b7c3b9 in bvar::detail::SamplerCollector::sampling_thread (arg=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bvar/detail/sampler.cpp:111
#4  0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#5  0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 241 (Thread 0x7fb4b7fff700 (LWP 172012)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82d8e70) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82d8e70, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82d8e70, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=0, m1=m1@entry=0x7fb4b7ffe8e8, m2=m2@entry=0x7fb4b7ffe8e0, request=request@entry=0x7fb4b7ffe8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83bfb38) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83bfb28) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83bfb28) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83bfb20) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 240 (Thread 0x7fb4bc8a6700 (LWP 172013)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82d8f00) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82d8f00, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82d8f00, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=1, m1=m1@entry=0x7fb4bc8a58e8, m2=m2@entry=0x7fb4bc8a58e0, request=request@entry=0x7fb4bc8a58f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=1) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=1) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83bfbd8) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83bfbc8) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83bfbc8) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83bfbc0) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 239 (Thread 0x7fb4bd0a7700 (LWP 172014)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82d8f90) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82d8f90, reset_sig_count=34, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82d8f90, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=2, m1=m1@entry=0x7fb4bd0a68e8, m2=m2@entry=0x7fb4bd0a68e0, request=request@entry=0x7fb4bd0a68f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=2) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=2) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83bfcd8) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83bfcc8) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83bfcc8) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83bfcc0) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 238 (Thread 0x7fb4bd8a8700 (LWP 172015)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82d9020) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82d9020, reset_sig_count=15, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82d9020, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=3, m1=m1@entry=0x7fb4bd8a78e8, m2=m2@entry=0x7fb4bd8a78e0, request=request@entry=0x7fb4bd8a78f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=3) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=3) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83bfdd8) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83bfdc8) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83bfdc8) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83bfdc0) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 237 (Thread 0x7fb4b7130700 (LWP 172016)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82d90b0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82d90b0, reset_sig_count=2, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82d90b0, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=4, m1=m1@entry=0x7fb4b712f8e8, m2=m2@entry=0x7fb4b712f8e0, request=request@entry=0x7fb4b712f8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=4) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=4) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83bfed8) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83bfec8) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83bfec8) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83bfec0) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 236 (Thread 0x7fb4b692f700 (LWP 172017)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82d9140) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82d9140, reset_sig_count=2, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82d9140, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=5, m1=m1@entry=0x7fb4b692e8e8, m2=m2@entry=0x7fb4b692e8e0, request=request@entry=0x7fb4b692e8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=5) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=5) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83c0278) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83c0268) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83c0268) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83c0260) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 235 (Thread 0x7fb4b612e700 (LWP 172018)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82d91d0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82d91d0, reset_sig_count=2, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82d91d0, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=6, m1=m1@entry=0x7fb4b612d8e8, m2=m2@entry=0x7fb4b612d8e0, request=request@entry=0x7fb4b612d8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=6) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=6) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83c0618) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83c0608) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83c0608) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83c0600) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 234 (Thread 0x7faf6578f700 (LWP 172019)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82d9260) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82d9260, reset_sig_count=2, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82d9260, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=7, m1=m1@entry=0x7faf6578e8e8, m2=m2@entry=0x7faf6578e8e0, request=request@entry=0x7faf6578e8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=7) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=7) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83c09b8) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83c09a8) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83c09a8) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83c09a0) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 233 (Thread 0x7faf64f8e700 (LWP 172020)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82d92f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82d92f0, reset_sig_count=2, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82d92f0, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=8, m1=m1@entry=0x7faf64f8d8e8, m2=m2@entry=0x7faf64f8d8e0, request=request@entry=0x7faf64f8d8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=8) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=8) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83c0d58) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83c0d48) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83c0d48) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83c0d40) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 232 (Thread 0x7faf57d4e700 (LWP 172021)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82d9380) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82d9380, reset_sig_count=2, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82d9380, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=9, m1=m1@entry=0x7faf57d4d8e8, m2=m2@entry=0x7faf57d4d8e0, request=request@entry=0x7faf57d4d8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=9) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=9) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83c10f8) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83c10e8) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83c10e8) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83c10e0) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 231 (Thread 0x7faf5754d700 (LWP 172022)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82d9410) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82d9410, reset_sig_count=2, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82d9410, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=10, m1=m1@entry=0x7faf5754c8e8, m2=m2@entry=0x7faf5754c8e0, request=request@entry=0x7faf5754c8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=10) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=10) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83c1498) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83c1488) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83c1488) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83c1480) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 230 (Thread 0x7faf56d4c700 (LWP 172023)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82d94a0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82d94a0, reset_sig_count=2, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82d94a0, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=11, m1=m1@entry=0x7faf56d4b8e8, m2=m2@entry=0x7faf56d4b8e0, request=request@entry=0x7faf56d4b8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=11) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=11) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83c1838) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83c1828) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83c1828) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83c1820) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 229 (Thread 0x7faf5654b700 (LWP 172024)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82d9530) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82d9530, reset_sig_count=2, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82d9530, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=12, m1=m1@entry=0x7faf5654a8e8, m2=m2@entry=0x7faf5654a8e0, request=request@entry=0x7faf5654a8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=12) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=12) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83c1bd8) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83c1bc8) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83c1bc8) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83c1bc0) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 228 (Thread 0x7faf55d4a700 (LWP 172025)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82d95c0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82d95c0, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82d95c0, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=13, m1=m1@entry=0x7faf55d498e8, m2=m2@entry=0x7faf55d498e0, request=request@entry=0x7faf55d498f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=13) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=13) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83c1f78) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83c1f68) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83c1f68) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83c1f60) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 227 (Thread 0x7faf55549700 (LWP 172026)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82d9650) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82d9650, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82d9650, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=14, m1=m1@entry=0x7faf555488e8, m2=m2@entry=0x7faf555488e0, request=request@entry=0x7faf555488f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=14) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=14) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83c2318) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83c2308) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83c2308) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83c2300) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 226 (Thread 0x7faf54d48700 (LWP 172027)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82d96e0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82d96e0, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82d96e0, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=15, m1=m1@entry=0x7faf54d478e8, m2=m2@entry=0x7faf54d478e0, request=request@entry=0x7faf54d478f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=15) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=15) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83c26b8) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83c26a8) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83c26a8) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83c26a0) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 225 (Thread 0x7faaaf9be700 (LWP 172028)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82d9770) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82d9770, reset_sig_count=2, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82d9770, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=16, m1=m1@entry=0x7faaaf9bd8e8, m2=m2@entry=0x7faaaf9bd8e0, request=request@entry=0x7faaaf9bd8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=16) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=16) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83c2a58) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83c2a48) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83c2a48) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83c2a40) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 224 (Thread 0x7faaaf1bd700 (LWP 172029)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82d9800) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82d9800, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82d9800, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=17, m1=m1@entry=0x7faaaf1bc8e8, m2=m2@entry=0x7faaaf1bc8e0, request=request@entry=0x7faaaf1bc8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=17) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=17) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83c2df8) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83c2de8) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83c2de8) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83c2de0) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 223 (Thread 0x7faaae9bc700 (LWP 172030)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82d9890) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82d9890, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82d9890, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=18, m1=m1@entry=0x7faaae9bb8e8, m2=m2@entry=0x7faaae9bb8e0, request=request@entry=0x7faaae9bb8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=18) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=18) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83c3198) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83c3188) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83c3188) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83c3180) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 222 (Thread 0x7faaae1bb700 (LWP 172031)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82d9920) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82d9920, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82d9920, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=19, m1=m1@entry=0x7faaae1ba8e8, m2=m2@entry=0x7faaae1ba8e0, request=request@entry=0x7faaae1ba8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=19) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=19) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83c3538) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83c3528) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83c3528) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83c3520) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 221 (Thread 0x7faaad9ba700 (LWP 172032)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82d99b0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82d99b0, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82d99b0, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=20, m1=m1@entry=0x7faaad9b98e8, m2=m2@entry=0x7faaad9b98e0, request=request@entry=0x7faaad9b98f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=20) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=20) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83c38d8) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83c38c8) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83c38c8) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83c38c0) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 220 (Thread 0x7faaad1b9700 (LWP 172033)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82d9a40) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82d9a40, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82d9a40, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=21, m1=m1@entry=0x7faaad1b88e8, m2=m2@entry=0x7faaad1b88e0, request=request@entry=0x7faaad1b88f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=21) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=21) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83c3c78) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83c3c68) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83c3c68) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83c3c60) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 219 (Thread 0x7faaac9b8700 (LWP 172034)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82d9ad0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82d9ad0, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82d9ad0, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=22, m1=m1@entry=0x7faaac9b78e8, m2=m2@entry=0x7faaac9b78e0, request=request@entry=0x7faaac9b78f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=22) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=22) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83c4018) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83c4008) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83c4008) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83c4000) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 218 (Thread 0x7faa6f28a700 (LWP 172035)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82d9b60) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82d9b60, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82d9b60, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=23, m1=m1@entry=0x7faa6f2898e8, m2=m2@entry=0x7faa6f2898e0, request=request@entry=0x7faa6f2898f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=23) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=23) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83c43b8) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83c43a8) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83c43a8) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83c43a0) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 217 (Thread 0x7faa6ea89700 (LWP 172036)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82d9bf0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82d9bf0, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82d9bf0, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=24, m1=m1@entry=0x7faa6ea888e8, m2=m2@entry=0x7faa6ea888e0, request=request@entry=0x7faa6ea888f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=24) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=24) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83c4758) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83c4748) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83c4748) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83c4740) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 216 (Thread 0x7faa6e288700 (LWP 172037)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82d9c80) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82d9c80, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82d9c80, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=25, m1=m1@entry=0x7faa6e2878e8, m2=m2@entry=0x7faa6e2878e0, request=request@entry=0x7faa6e2878f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=25) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=25) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83c4af8) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83c4ae8) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83c4ae8) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83c4ae0) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 215 (Thread 0x7faa6da87700 (LWP 172038)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82d9d10) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82d9d10, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82d9d10, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=26, m1=m1@entry=0x7faa6da868e8, m2=m2@entry=0x7faa6da868e0, request=request@entry=0x7faa6da868f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=26) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=26) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83c4e98) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83c4e88) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83c4e88) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83c4e80) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 214 (Thread 0x7faa6d286700 (LWP 172039)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82d9da0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82d9da0, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82d9da0, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=27, m1=m1@entry=0x7faa6d2858e8, m2=m2@entry=0x7faa6d2858e0, request=request@entry=0x7faa6d2858f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=27) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=27) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83c5238) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83c5228) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83c5228) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83c5220) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 213 (Thread 0x7faa6ca85700 (LWP 172040)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82d9e30) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82d9e30, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82d9e30, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=28, m1=m1@entry=0x7faa6ca848e8, m2=m2@entry=0x7faa6ca848e0, request=request@entry=0x7faa6ca848f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=28) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=28) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83c55d8) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83c55c8) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83c55c8) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83c55c0) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 212 (Thread 0x7fa5af45c700 (LWP 172041)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82d9ec0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82d9ec0, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82d9ec0, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=29, m1=m1@entry=0x7fa5af45b8e8, m2=m2@entry=0x7fa5af45b8e0, request=request@entry=0x7fa5af45b8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=29) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=29) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83c5978) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83c5968) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83c5968) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83c5960) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 211 (Thread 0x7fa5aec5b700 (LWP 172042)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82d9f50) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82d9f50, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82d9f50, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=30, m1=m1@entry=0x7fa5aec5a8e8, m2=m2@entry=0x7fa5aec5a8e0, request=request@entry=0x7fa5aec5a8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=30) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=30) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83c5d18) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83c5d08) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83c5d08) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83c5d00) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 210 (Thread 0x7fa5ae45a700 (LWP 172043)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82d9fe0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82d9fe0, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82d9fe0, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=31, m1=m1@entry=0x7fa5ae4598e8, m2=m2@entry=0x7fa5ae4598e0, request=request@entry=0x7fa5ae4598f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=31) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=31) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83c60b8) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83c60a8) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83c60a8) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83c60a0) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 209 (Thread 0x7fa5adc59700 (LWP 172044)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82da070) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82da070, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82da070, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=32, m1=m1@entry=0x7fa5adc588e8, m2=m2@entry=0x7fa5adc588e0, request=request@entry=0x7fa5adc588f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=32) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=32) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83c6458) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83c6448) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83c6448) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83c6440) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 208 (Thread 0x7fa5ad458700 (LWP 172045)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82da100) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82da100, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82da100, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=33, m1=m1@entry=0x7fa5ad4578e8, m2=m2@entry=0x7fa5ad4578e0, request=request@entry=0x7fa5ad4578f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=33) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=33) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83c67f8) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83c67e8) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83c67e8) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83c67e0) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 207 (Thread 0x7fa5acc57700 (LWP 172046)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82da190) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82da190, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82da190, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=34, m1=m1@entry=0x7fa5acc568e8, m2=m2@entry=0x7fa5acc568e0, request=request@entry=0x7fa5acc568f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=34) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=34) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83c6b98) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83c6b88) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83c6b88) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83c6b80) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 206 (Thread 0x7fa0ae6e7700 (LWP 172047)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82da220) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82da220, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82da220, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=35, m1=m1@entry=0x7fa0ae6e68e8, m2=m2@entry=0x7fa0ae6e68e0, request=request@entry=0x7fa0ae6e68f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=35) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=35) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83c6f38) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83c6f28) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83c6f28) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83c6f20) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 205 (Thread 0x7fa0adee6700 (LWP 172048)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82da2b0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82da2b0, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82da2b0, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=36, m1=m1@entry=0x7fa0adee58e8, m2=m2@entry=0x7fa0adee58e0, request=request@entry=0x7fa0adee58f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=36) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=36) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83c72d8) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83c72c8) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83c72c8) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83c72c0) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 204 (Thread 0x7fa0ad6e5700 (LWP 172049)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82da340) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82da340, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82da340, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=37, m1=m1@entry=0x7fa0ad6e48e8, m2=m2@entry=0x7fa0ad6e48e0, request=request@entry=0x7fa0ad6e48f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=37) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=37) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83c7678) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83c7668) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83c7668) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83c7660) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 203 (Thread 0x7fa0acee4700 (LWP 172050)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82da3d0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82da3d0, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82da3d0, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=38, m1=m1@entry=0x7fa0acee38e8, m2=m2@entry=0x7fa0acee38e0, request=request@entry=0x7fa0acee38f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=38) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=38) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83c7a18) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83c7a08) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83c7a08) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83c7a00) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 202 (Thread 0x7fa08fd4e700 (LWP 172051)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82da460) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82da460, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82da460, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=39, m1=m1@entry=0x7fa08fd4d8e8, m2=m2@entry=0x7fa08fd4d8e0, request=request@entry=0x7fa08fd4d8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=39) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=39) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83c7db8) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83c7da8) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83c7da8) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83c7da0) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 201 (Thread 0x7fa08f54d700 (LWP 172052)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82da4f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82da4f0, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82da4f0, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=40, m1=m1@entry=0x7fa08f54c8e8, m2=m2@entry=0x7fa08f54c8e0, request=request@entry=0x7fa08f54c8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=40) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=40) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83c8158) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83c8148) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83c8148) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83c8140) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 200 (Thread 0x7fa08ed4c700 (LWP 172053)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82da580) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82da580, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82da580, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=41, m1=m1@entry=0x7fa08ed4b8e8, m2=m2@entry=0x7fa08ed4b8e0, request=request@entry=0x7fa08ed4b8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=41) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=41) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83c84f8) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83c84e8) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83c84e8) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83c84e0) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 199 (Thread 0x7fa08e54b700 (LWP 172054)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82da610) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82da610, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82da610, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=42, m1=m1@entry=0x7fa08e54a8e8, m2=m2@entry=0x7fa08e54a8e0, request=request@entry=0x7fa08e54a8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=42) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=42) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83c8898) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83c8888) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83c8888) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83c8880) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 198 (Thread 0x7fa08dd4a700 (LWP 172055)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82da6a0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82da6a0, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82da6a0, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=43, m1=m1@entry=0x7fa08dd498e8, m2=m2@entry=0x7fa08dd498e0, request=request@entry=0x7fa08dd498f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=43) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=43) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83c8c38) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83c8c28) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83c8c28) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83c8c20) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 197 (Thread 0x7fa08d549700 (LWP 172056)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82da730) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82da730, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82da730, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=44, m1=m1@entry=0x7fa08d5488e8, m2=m2@entry=0x7fa08d5488e0, request=request@entry=0x7fa08d5488f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=44) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=44) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83c8fd8) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83c8fc8) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83c8fc8) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83c8fc0) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 196 (Thread 0x7fa08cd48700 (LWP 172057)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82da7c0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82da7c0, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82da7c0, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=45, m1=m1@entry=0x7fa08cd478e8, m2=m2@entry=0x7fa08cd478e0, request=request@entry=0x7fa08cd478f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=45) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=45) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83c9378) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83c9368) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83c9368) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83c9360) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 195 (Thread 0x7f9bae998700 (LWP 172058)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82da850) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82da850, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82da850, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=46, m1=m1@entry=0x7f9bae9978e8, m2=m2@entry=0x7f9bae9978e0, request=request@entry=0x7f9bae9978f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=46) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=46) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83c9718) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83c9708) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83c9708) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83c9700) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 194 (Thread 0x7f9bae197700 (LWP 172059)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82da8e0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82da8e0, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82da8e0, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=47, m1=m1@entry=0x7f9bae1968e8, m2=m2@entry=0x7f9bae1968e0, request=request@entry=0x7f9bae1968f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=47) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=47) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83c9ab8) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83c9aa8) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83c9aa8) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83c9aa0) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 193 (Thread 0x7f9bad996700 (LWP 172060)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82da970) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82da970, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82da970, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=48, m1=m1@entry=0x7f9bad9958e8, m2=m2@entry=0x7f9bad9958e0, request=request@entry=0x7f9bad9958f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=48) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=48) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83c9e58) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83c9e48) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83c9e48) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83c9e40) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 192 (Thread 0x7f9bad195700 (LWP 172061)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82daa00) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82daa00, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82daa00, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=49, m1=m1@entry=0x7f9bad1948e8, m2=m2@entry=0x7f9bad1948e0, request=request@entry=0x7f9bad1948f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=49) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=49) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83ca1f8) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83ca1e8) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83ca1e8) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83ca1e0) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 191 (Thread 0x7f9bac994700 (LWP 172062)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82daa90) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82daa90, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82daa90, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=50, m1=m1@entry=0x7f9bac9938e8, m2=m2@entry=0x7f9bac9938e0, request=request@entry=0x7f9bac9938f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=50) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=50) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83ca598) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83ca588) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83ca588) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83ca580) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 190 (Thread 0x7f98a712c700 (LWP 172063)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82dab20) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82dab20, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82dab20, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=51, m1=m1@entry=0x7f98a712b8e8, m2=m2@entry=0x7f98a712b8e0, request=request@entry=0x7f98a712b8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=51) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=51) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83ca938) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83ca928) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83ca928) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83ca920) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 189 (Thread 0x7f98a692b700 (LWP 172064)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82dabb0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82dabb0, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82dabb0, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=52, m1=m1@entry=0x7f98a692a8e8, m2=m2@entry=0x7f98a692a8e0, request=request@entry=0x7f98a692a8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=52) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=52) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83cacd8) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83cacc8) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83cacc8) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83cacc0) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 188 (Thread 0x7f98a612a700 (LWP 172065)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82dac40) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82dac40, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82dac40, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=53, m1=m1@entry=0x7f98a61298e8, m2=m2@entry=0x7f98a61298e0, request=request@entry=0x7f98a61298f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=53) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=53) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83cb078) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83cb068) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83cb068) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83cb060) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 187 (Thread 0x7f98a5929700 (LWP 172066)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82dacd0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82dacd0, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82dacd0, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=54, m1=m1@entry=0x7f98a59288e8, m2=m2@entry=0x7f98a59288e0, request=request@entry=0x7f98a59288f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=54) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=54) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83cb418) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83cb408) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83cb408) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83cb400) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 186 (Thread 0x7f98a5128700 (LWP 172067)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82dad60) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82dad60, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82dad60, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=55, m1=m1@entry=0x7f98a51278e8, m2=m2@entry=0x7f98a51278e0, request=request@entry=0x7f98a51278f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=55) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=55) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83cb7b8) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83cb7a8) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83cb7a8) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83cb7a0) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 185 (Thread 0x7f98a4927700 (LWP 172068)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82dadf0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82dadf0, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82dadf0, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=56, m1=m1@entry=0x7f98a49268e8, m2=m2@entry=0x7f98a49268e0, request=request@entry=0x7f98a49268f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=56) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=56) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83cbb58) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83cbb48) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83cbb48) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83cbb40) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 184 (Thread 0x7f97e7fff700 (LWP 172069)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82dae80) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82dae80, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82dae80, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=57, m1=m1@entry=0x7f97e7ffe8e8, m2=m2@entry=0x7f97e7ffe8e0, request=request@entry=0x7f97e7ffe8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=57) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=57) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83cbef8) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83cbee8) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83cbee8) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83cbee0) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 183 (Thread 0x7f97e77fe700 (LWP 172070)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82f9840) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82f9840, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82f9840, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=58, m1=m1@entry=0x7f97e77fd8e8, m2=m2@entry=0x7f97e77fd8e0, request=request@entry=0x7f97e77fd8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=58) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=58) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83cc298) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83cc288) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83cc288) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83cc280) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 182 (Thread 0x7f97e6ffd700 (LWP 172071)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82f98d0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82f98d0, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82f98d0, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=59, m1=m1@entry=0x7f97e6ffc8e8, m2=m2@entry=0x7f97e6ffc8e0, request=request@entry=0x7f97e6ffc8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=59) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=59) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83cc638) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83cc628) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83cc628) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83cc620) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 181 (Thread 0x7f97e67fc700 (LWP 172072)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82f9960) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82f9960, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82f9960, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=60, m1=m1@entry=0x7f97e67fb8e8, m2=m2@entry=0x7f97e67fb8e0, request=request@entry=0x7f97e67fb8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=60) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=60) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83cc9d8) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83cc9c8) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83cc9c8) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83cc9c0) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 180 (Thread 0x7f97e5ffb700 (LWP 172073)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82f99f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82f99f0, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82f99f0, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=61, m1=m1@entry=0x7f97e5ffa8e8, m2=m2@entry=0x7f97e5ffa8e0, request=request@entry=0x7f97e5ffa8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=61) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=61) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83ccd78) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83ccd68) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83ccd68) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83ccd60) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 179 (Thread 0x7f97e57fa700 (LWP 172074)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82f9a80) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82f9a80, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82f9a80, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=62, m1=m1@entry=0x7f97e57f98e8, m2=m2@entry=0x7f97e57f98e0, request=request@entry=0x7f97e57f98f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=62) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=62) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83cd118) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83cd108) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83cd108) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83cd100) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 178 (Thread 0x7f97e4ff9700 (LWP 172075)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82f9b10) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82f9b10, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82f9b10, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=63, m1=m1@entry=0x7f97e4ff88e8, m2=m2@entry=0x7f97e4ff88e0, request=request@entry=0x7f97e4ff88f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=63) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=63) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83cd4b8) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83cd4a8) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83cd4a8) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83cd4a0) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 177 (Thread 0x7f97c3fff700 (LWP 172076)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82f9ba0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82f9ba0, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82f9ba0, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=64, m1=m1@entry=0x7f97c3ffe8e8, m2=m2@entry=0x7f97c3ffe8e0, request=request@entry=0x7f97c3ffe8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=64) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=64) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83cd858) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83cd848) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83cd848) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83cd840) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 176 (Thread 0x7f97c37fe700 (LWP 172077)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82f9c30) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82f9c30, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82f9c30, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=65, m1=m1@entry=0x7f97c37fd8e8, m2=m2@entry=0x7f97c37fd8e0, request=request@entry=0x7f97c37fd8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=65) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=65) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83cdbf8) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83cdbe8) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83cdbe8) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83cdbe0) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 175 (Thread 0x7f97c2ffd700 (LWP 172078)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82f9cc0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82f9cc0, reset_sig_count=326, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82f9cc0, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=66, m1=m1@entry=0x7f97c2ffc8e8, m2=m2@entry=0x7f97c2ffc8e0, request=request@entry=0x7f97c2ffc8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=66) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=66) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83cdf98) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83cdf88) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83cdf88) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83cdf80) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 174 (Thread 0x7f97c27fc700 (LWP 172079)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82f9d50) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82f9d50, reset_sig_count=45, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82f9d50, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=67, m1=m1@entry=0x7f97c27fb8e8, m2=m2@entry=0x7f97c27fb8e0, request=request@entry=0x7f97c27fb8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=67) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=67) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83ce338) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83ce328) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83ce328) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83ce320) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 173 (Thread 0x7f97c1ffb700 (LWP 172080)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82f9de0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82f9de0, reset_sig_count=192, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82f9de0, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=68, m1=m1@entry=0x7f97c1ffa8e8, m2=m2@entry=0x7f97c1ffa8e0, request=request@entry=0x7f97c1ffa8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=68) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=68) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83ce6d8) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83ce6c8) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83ce6c8) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83ce6c0) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 172 (Thread 0x7f97c17fa700 (LWP 172081)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82f9e70) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82f9e70, reset_sig_count=119, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82f9e70, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=69, m1=m1@entry=0x7f97c17f98e8, m2=m2@entry=0x7f97c17f98e0, request=request@entry=0x7f97c17f98f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=69) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=69) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83cea78) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83cea68) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83cea68) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83cea60) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 171 (Thread 0x7f97c0ff9700 (LWP 172082)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82f9f00) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82f9f00, reset_sig_count=178, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82f9f00, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=70, m1=m1@entry=0x7f97c0ff88e8, m2=m2@entry=0x7f97c0ff88e0, request=request@entry=0x7f97c0ff88f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=70) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=70) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83cee18) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83cee08) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83cee08) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83cee00) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 170 (Thread 0x7f97a3fff700 (LWP 172083)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82f9f90) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82f9f90, reset_sig_count=105, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82f9f90, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=71, m1=m1@entry=0x7f97a3ffe8e8, m2=m2@entry=0x7f97a3ffe8e0, request=request@entry=0x7f97a3ffe8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=71) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=71) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83cf1b8) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83cf1a8) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83cf1a8) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83cf1a0) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 169 (Thread 0x7f97a37fe700 (LWP 172084)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82fa020) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82fa020, reset_sig_count=127, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82fa020, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=72, m1=m1@entry=0x7f97a37fd8e8, m2=m2@entry=0x7f97a37fd8e0, request=request@entry=0x7f97a37fd8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=72) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=72) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83cf558) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83cf548) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83cf548) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83cf540) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 168 (Thread 0x7f97a2ffd700 (LWP 172085)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82fa0b0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82fa0b0, reset_sig_count=22, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82fa0b0, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=73, m1=m1@entry=0x7f97a2ffc8e8, m2=m2@entry=0x7f97a2ffc8e0, request=request@entry=0x7f97a2ffc8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=73) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=73) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83cf8f8) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83cf8e8) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83cf8e8) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83cf8e0) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 167 (Thread 0x7f97a27fc700 (LWP 172086)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82fa140) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82fa140, reset_sig_count=104, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82fa140, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=74, m1=m1@entry=0x7f97a27fb8e8, m2=m2@entry=0x7f97a27fb8e0, request=request@entry=0x7f97a27fb8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=74) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=74) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83cfc98) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83cfc88) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83cfc88) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83cfc80) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 166 (Thread 0x7f97a1ffb700 (LWP 172087)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82fa1d0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82fa1d0, reset_sig_count=5, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82fa1d0, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=75, m1=m1@entry=0x7f97a1ffa8e8, m2=m2@entry=0x7f97a1ffa8e0, request=request@entry=0x7f97a1ffa8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=75) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=75) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83d0038) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83d0028) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83d0028) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83d0020) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 165 (Thread 0x7f97a17fa700 (LWP 172088)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82fa260) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82fa260, reset_sig_count=84, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82fa260, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=76, m1=m1@entry=0x7f97a17f98e8, m2=m2@entry=0x7f97a17f98e0, request=request@entry=0x7f97a17f98f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=76) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=76) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83d03d8) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83d03c8) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83d03c8) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83d03c0) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 164 (Thread 0x7f97a0ff9700 (LWP 172089)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82fa2f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82fa2f0, reset_sig_count=15, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82fa2f0, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=77, m1=m1@entry=0x7f97a0ff88e8, m2=m2@entry=0x7f97a0ff88e0, request=request@entry=0x7f97a0ff88f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=77) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=77) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83d0778) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83d0768) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83d0768) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83d0760) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 163 (Thread 0x7f9783fff700 (LWP 172090)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82fa380) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82fa380, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82fa380, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=78, m1=m1@entry=0x7f9783ffe8e8, m2=m2@entry=0x7f9783ffe8e0, request=request@entry=0x7f9783ffe8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=78) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=78) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83d0b18) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83d0b08) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83d0b08) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83d0b00) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 162 (Thread 0x7f97837fe700 (LWP 172091)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82fa410) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82fa410, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82fa410, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=79, m1=m1@entry=0x7f97837fd8e8, m2=m2@entry=0x7f97837fd8e0, request=request@entry=0x7f97837fd8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=79) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=79) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83d0eb8) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83d0ea8) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83d0ea8) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83d0ea0) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 161 (Thread 0x7f9782ffd700 (LWP 172092)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82fa4a0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82fa4a0, reset_sig_count=4, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82fa4a0, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=80, m1=m1@entry=0x7f9782ffc8e8, m2=m2@entry=0x7f9782ffc8e0, request=request@entry=0x7f9782ffc8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=80) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=80) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83d1258) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83d1248) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83d1248) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83d1240) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 160 (Thread 0x7f97827fc700 (LWP 172093)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82fa530) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82fa530, reset_sig_count=4, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82fa530, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=81, m1=m1@entry=0x7f97827fb8e8, m2=m2@entry=0x7f97827fb8e0, request=request@entry=0x7f97827fb8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=81) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=81) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83d15f8) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83d15e8) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83d15e8) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83d15e0) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 159 (Thread 0x7f9781ffb700 (LWP 172094)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82fa5c0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82fa5c0, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82fa5c0, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=82, m1=m1@entry=0x7f9781ffa8e8, m2=m2@entry=0x7f9781ffa8e0, request=request@entry=0x7f9781ffa8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=82) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=82) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83d1998) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83d1988) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83d1988) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83d1980) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 158 (Thread 0x7f97817fa700 (LWP 172095)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82fa650) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82fa650, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82fa650, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=83, m1=m1@entry=0x7f97817f98e8, m2=m2@entry=0x7f97817f98e0, request=request@entry=0x7f97817f98f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=83) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=83) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83d1d38) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83d1d28) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83d1d28) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83d1d20) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 157 (Thread 0x7f9780ff9700 (LWP 172096)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82fa6e0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82fa6e0, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82fa6e0, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=84, m1=m1@entry=0x7f9780ff88e8, m2=m2@entry=0x7f9780ff88e0, request=request@entry=0x7f9780ff88f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=84) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=84) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83d20d8) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83d20c8) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83d20c8) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83d20c0) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 156 (Thread 0x7f9763fff700 (LWP 172097)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82fa770) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82fa770, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82fa770, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=85, m1=m1@entry=0x7f9763ffe8e8, m2=m2@entry=0x7f9763ffe8e0, request=request@entry=0x7f9763ffe8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=85) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=85) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83d2478) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83d2468) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83d2468) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83d2460) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 155 (Thread 0x7f97637fe700 (LWP 172098)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82fa800) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82fa800, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82fa800, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=86, m1=m1@entry=0x7f97637fd8e8, m2=m2@entry=0x7f97637fd8e0, request=request@entry=0x7f97637fd8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=86) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=86) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83d2818) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83d2808) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83d2808) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83d2800) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 154 (Thread 0x7f9762ffd700 (LWP 172099)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82fa890) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82fa890, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82fa890, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=87, m1=m1@entry=0x7f9762ffc8e8, m2=m2@entry=0x7f9762ffc8e0, request=request@entry=0x7f9762ffc8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=87) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=87) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83d2bb8) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83d2ba8) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83d2ba8) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83d2ba0) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 153 (Thread 0x7f97627fc700 (LWP 172100)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82fa920) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82fa920, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82fa920, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=88, m1=m1@entry=0x7f97627fb8e8, m2=m2@entry=0x7f97627fb8e0, request=request@entry=0x7f97627fb8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=88) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=88) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83d2f58) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83d2f48) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83d2f48) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83d2f40) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 152 (Thread 0x7f9761ffb700 (LWP 172101)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82fa9b0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82fa9b0, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82fa9b0, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=89, m1=m1@entry=0x7f9761ffa8e8, m2=m2@entry=0x7f9761ffa8e0, request=request@entry=0x7f9761ffa8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=89) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=89) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83d32f8) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83d32e8) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83d32e8) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83d32e0) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 151 (Thread 0x7f97617fa700 (LWP 172102)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82faa40) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82faa40, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82faa40, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=90, m1=m1@entry=0x7f97617f98e8, m2=m2@entry=0x7f97617f98e0, request=request@entry=0x7f97617f98f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=90) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=90) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83d3698) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83d3688) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83d3688) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83d3680) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 150 (Thread 0x7f9760ff9700 (LWP 172103)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82faad0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82faad0, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82faad0, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=91, m1=m1@entry=0x7f9760ff88e8, m2=m2@entry=0x7f9760ff88e0, request=request@entry=0x7f9760ff88f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=91) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=91) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83d3a38) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83d3a28) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83d3a28) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83d3a20) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 149 (Thread 0x7f9743fff700 (LWP 172104)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82fab60) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82fab60, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82fab60, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=92, m1=m1@entry=0x7f9743ffe8e8, m2=m2@entry=0x7f9743ffe8e0, request=request@entry=0x7f9743ffe8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=92) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=92) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83d3dd8) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83d3dc8) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83d3dc8) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83d3dc0) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 148 (Thread 0x7f97437fe700 (LWP 172105)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82fabf0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82fabf0, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82fabf0, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=93, m1=m1@entry=0x7f97437fd8e8, m2=m2@entry=0x7f97437fd8e0, request=request@entry=0x7f97437fd8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=93) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=93) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83d4178) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83d4168) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83d4168) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83d4160) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 147 (Thread 0x7f9742ffd700 (LWP 172106)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82fac80) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82fac80, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82fac80, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=94, m1=m1@entry=0x7f9742ffc8e8, m2=m2@entry=0x7f9742ffc8e0, request=request@entry=0x7f9742ffc8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=94) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=94) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83d4518) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83d4508) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83d4508) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83d4500) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 146 (Thread 0x7f97427fc700 (LWP 172107)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82fad10) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82fad10, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82fad10, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=95, m1=m1@entry=0x7f97427fb8e8, m2=m2@entry=0x7f97427fb8e0, request=request@entry=0x7f97427fb8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=95) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=95) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83d48b8) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83d48a8) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83d48a8) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83d48a0) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 145 (Thread 0x7f9741ffb700 (LWP 172108)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82fada0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82fada0, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82fada0, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=96, m1=m1@entry=0x7f9741ffa8e8, m2=m2@entry=0x7f9741ffa8e0, request=request@entry=0x7f9741ffa8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=96) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=96) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83d4c58) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83d4c48) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83d4c48) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83d4c40) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 144 (Thread 0x7f97417fa700 (LWP 172109)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82fae30) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82fae30, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82fae30, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=97, m1=m1@entry=0x7f97417f98e8, m2=m2@entry=0x7f97417f98e0, request=request@entry=0x7f97417f98f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=97) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=97) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83d4ff8) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83d4fe8) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83d4fe8) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83d4fe0) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 143 (Thread 0x7f9740ff9700 (LWP 172110)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82faec0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82faec0, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82faec0, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=98, m1=m1@entry=0x7f9740ff88e8, m2=m2@entry=0x7f9740ff88e0, request=request@entry=0x7f9740ff88f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=98) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=98) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83d5398) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83d5388) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83d5388) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83d5380) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 142 (Thread 0x7f9723fff700 (LWP 172111)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82faf50) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82faf50, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82faf50, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=99, m1=m1@entry=0x7f9723ffe8e8, m2=m2@entry=0x7f9723ffe8e0, request=request@entry=0x7f9723ffe8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=99) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=99) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83d5738) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83d5728) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83d5728) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83d5720) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 141 (Thread 0x7f97237fe700 (LWP 172112)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82fafe0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82fafe0, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82fafe0, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=100, m1=m1@entry=0x7f97237fd8e8, m2=m2@entry=0x7f97237fd8e0, request=request@entry=0x7f97237fd8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=100) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=100) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83d5ad8) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83d5ac8) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83d5ac8) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83d5ac0) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 140 (Thread 0x7f9722ffd700 (LWP 172113)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82fb070) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82fb070, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82fb070, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=101, m1=m1@entry=0x7f9722ffc8e8, m2=m2@entry=0x7f9722ffc8e0, request=request@entry=0x7f9722ffc8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=101) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=101) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83d5e78) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83d5e68) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83d5e68) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83d5e60) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 139 (Thread 0x7f97227fc700 (LWP 172114)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82fb100) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82fb100, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82fb100, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=102, m1=m1@entry=0x7f97227fb8e8, m2=m2@entry=0x7f97227fb8e0, request=request@entry=0x7f97227fb8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=102) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=102) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83d6218) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83d6208) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83d6208) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83d6200) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 138 (Thread 0x7f9721ffb700 (LWP 172115)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82fb190) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82fb190, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82fb190, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=103, m1=m1@entry=0x7f9721ffa8e8, m2=m2@entry=0x7f9721ffa8e0, request=request@entry=0x7f9721ffa8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=103) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=103) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83d65b8) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83d65a8) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83d65a8) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83d65a0) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 137 (Thread 0x7f97217fa700 (LWP 172116)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82fb220) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82fb220, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82fb220, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=104, m1=m1@entry=0x7f97217f98e8, m2=m2@entry=0x7f97217f98e0, request=request@entry=0x7f97217f98f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=104) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=104) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83d6958) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83d6948) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83d6948) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83d6940) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 136 (Thread 0x7f9720ff9700 (LWP 172117)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82fb2b0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82fb2b0, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82fb2b0, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=105, m1=m1@entry=0x7f9720ff88e8, m2=m2@entry=0x7f9720ff88e0, request=request@entry=0x7f9720ff88f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=105) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=105) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83d6cf8) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83d6ce8) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83d6ce8) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83d6ce0) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 135 (Thread 0x7f96fbfff700 (LWP 172118)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82fb340) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82fb340, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82fb340, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=106, m1=m1@entry=0x7f96fbffe8e8, m2=m2@entry=0x7f96fbffe8e0, request=request@entry=0x7f96fbffe8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=106) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=106) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83d7098) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83d7088) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83d7088) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83d7080) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 134 (Thread 0x7f9703fff700 (LWP 172119)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82fb3d0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82fb3d0, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82fb3d0, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=107, m1=m1@entry=0x7f9703ffe8e8, m2=m2@entry=0x7f9703ffe8e0, request=request@entry=0x7f9703ffe8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=107) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=107) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83d7438) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83d7428) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83d7428) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83d7420) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 133 (Thread 0x7f97037fe700 (LWP 172120)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82fb460) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82fb460, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82fb460, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=108, m1=m1@entry=0x7f97037fd8e8, m2=m2@entry=0x7f97037fd8e0, request=request@entry=0x7f97037fd8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=108) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=108) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83d77d8) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83d77c8) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83d77c8) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83d77c0) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 132 (Thread 0x7f9702ffd700 (LWP 172121)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82fb4f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82fb4f0, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82fb4f0, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=109, m1=m1@entry=0x7f9702ffc8e8, m2=m2@entry=0x7f9702ffc8e0, request=request@entry=0x7f9702ffc8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=109) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=109) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83d7b78) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83d7b68) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83d7b68) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83d7b60) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 131 (Thread 0x7f97027fc700 (LWP 172122)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82fb580) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82fb580, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82fb580, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=110, m1=m1@entry=0x7f97027fb8e8, m2=m2@entry=0x7f97027fb8e0, request=request@entry=0x7f97027fb8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=110) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=110) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83d7f18) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83d7f08) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83d7f08) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83d7f00) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 130 (Thread 0x7f9701ffb700 (LWP 172123)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82fb610) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82fb610, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82fb610, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=111, m1=m1@entry=0x7f9701ffa8e8, m2=m2@entry=0x7f9701ffa8e0, request=request@entry=0x7f9701ffa8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=111) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=111) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83d82b8) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83d82a8) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83d82a8) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83d82a0) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 129 (Thread 0x7f97017fa700 (LWP 172124)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82fb6a0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82fb6a0, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82fb6a0, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=112, m1=m1@entry=0x7f97017f98e8, m2=m2@entry=0x7f97017f98e0, request=request@entry=0x7f97017f98f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=112) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=112) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83d8658) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83d8648) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83d8648) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83d8640) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 128 (Thread 0x7f9700ff9700 (LWP 172125)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82fb730) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82fb730, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82fb730, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=113, m1=m1@entry=0x7f9700ff88e8, m2=m2@entry=0x7f9700ff88e0, request=request@entry=0x7f9700ff88f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=113) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=113) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83d89f8) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83d89e8) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83d89e8) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83d89e0) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 127 (Thread 0x7f96fb7fe700 (LWP 172126)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82fb7c0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82fb7c0, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82fb7c0, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=114, m1=m1@entry=0x7f96fb7fd8e8, m2=m2@entry=0x7f96fb7fd8e0, request=request@entry=0x7f96fb7fd8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=114) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=114) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83d8d98) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83d8d88) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83d8d88) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83d8d80) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 126 (Thread 0x7f96faffd700 (LWP 172127)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82fb850) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82fb850, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82fb850, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=115, m1=m1@entry=0x7f96faffc8e8, m2=m2@entry=0x7f96faffc8e0, request=request@entry=0x7f96faffc8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=115) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=115) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83d9138) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83d9128) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83d9128) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83d9120) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 125 (Thread 0x7f96fa7fc700 (LWP 172128)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82fb8e0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82fb8e0, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82fb8e0, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=116, m1=m1@entry=0x7f96fa7fb8e8, m2=m2@entry=0x7f96fa7fb8e0, request=request@entry=0x7f96fa7fb8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=116) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=116) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83d94d8) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83d94c8) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83d94c8) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83d94c0) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 124 (Thread 0x7f96f9ffb700 (LWP 172129)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82fb970) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82fb970, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82fb970, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=117, m1=m1@entry=0x7f96f9ffa8e8, m2=m2@entry=0x7f96f9ffa8e0, request=request@entry=0x7f96f9ffa8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=117) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=117) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83d9878) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83d9868) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83d9868) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83d9860) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 123 (Thread 0x7f96f97fa700 (LWP 172130)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82fba00) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82fba00, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82fba00, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=118, m1=m1@entry=0x7f96f97f98e8, m2=m2@entry=0x7f96f97f98e0, request=request@entry=0x7f96f97f98f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=118) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=118) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83d9c18) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83d9c08) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83d9c08) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83d9c00) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 122 (Thread 0x7f96f8ff9700 (LWP 172131)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82fba90) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82fba90, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82fba90, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=119, m1=m1@entry=0x7f96f8ff88e8, m2=m2@entry=0x7f96f8ff88e0, request=request@entry=0x7f96f8ff88f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=119) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=119) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83d9fb8) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83d9fa8) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83d9fa8) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83d9fa0) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 121 (Thread 0x7f96bbfff700 (LWP 172132)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82fbb20) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82fbb20, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82fbb20, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=120, m1=m1@entry=0x7f96bbffe8e8, m2=m2@entry=0x7f96bbffe8e0, request=request@entry=0x7f96bbffe8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=120) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=120) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83da358) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83da348) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83da348) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83da340) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 120 (Thread 0x7f96c3fff700 (LWP 172133)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82fbbb0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82fbbb0, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82fbbb0, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=121, m1=m1@entry=0x7f96c3ffe8e8, m2=m2@entry=0x7f96c3ffe8e0, request=request@entry=0x7f96c3ffe8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=121) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=121) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83da6f8) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83da6e8) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83da6e8) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83da6e0) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 119 (Thread 0x7f96c37fe700 (LWP 172134)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82fbc40) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82fbc40, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82fbc40, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=122, m1=m1@entry=0x7f96c37fd8e8, m2=m2@entry=0x7f96c37fd8e0, request=request@entry=0x7f96c37fd8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=122) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=122) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83daa98) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83daa88) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83daa88) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83daa80) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 118 (Thread 0x7f96c2ffd700 (LWP 172135)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82fbcd0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82fbcd0, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82fbcd0, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=123, m1=m1@entry=0x7f96c2ffc8e8, m2=m2@entry=0x7f96c2ffc8e0, request=request@entry=0x7f96c2ffc8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=123) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=123) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83dae38) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83dae28) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83dae28) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83dae20) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 117 (Thread 0x7f96c27fc700 (LWP 172136)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82fbd60) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82fbd60, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82fbd60, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=124, m1=m1@entry=0x7f96c27fb8e8, m2=m2@entry=0x7f96c27fb8e0, request=request@entry=0x7f96c27fb8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=124) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=124) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83db1d8) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83db1c8) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83db1c8) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83db1c0) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 116 (Thread 0x7f96c1ffb700 (LWP 172137)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82fbdf0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82fbdf0, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82fbdf0, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=125, m1=m1@entry=0x7f96c1ffa8e8, m2=m2@entry=0x7f96c1ffa8e0, request=request@entry=0x7f96c1ffa8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=125) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=125) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83db578) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83db568) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83db568) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83db560) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 115 (Thread 0x7f96c17fa700 (LWP 172138)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82fbe80) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82fbe80, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82fbe80, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=126, m1=m1@entry=0x7f96c17f98e8, m2=m2@entry=0x7f96c17f98e0, request=request@entry=0x7f96c17f98f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=126) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=126) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83db918) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83db908) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83db908) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83db900) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 114 (Thread 0x7f96c0ff9700 (LWP 172139)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82fbf10) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82fbf10, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82fbf10, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=127, m1=m1@entry=0x7f96c0ff88e8, m2=m2@entry=0x7f96c0ff88e0, request=request@entry=0x7f96c0ff88f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=127) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=127) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83dbcb8) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83dbca8) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83dbca8) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83dbca0) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 113 (Thread 0x7f96bb7fe700 (LWP 172140)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82fbfa0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82fbfa0, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82fbfa0, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=128, m1=m1@entry=0x7f96bb7fd8e8, m2=m2@entry=0x7f96bb7fd8e0, request=request@entry=0x7f96bb7fd8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=128) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=128) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83dc058) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83dc048) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83dc048) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83dc040) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 112 (Thread 0x7f96baffd700 (LWP 172141)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b82fc030) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=this@entry=0x7fb4b82fc030, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=event@entry=0x7fb4b82fc030, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x0000000002439ebb in os_aio_simulated_handler(unsigned long, fil_node_t**, void**, IORequest*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:7767
#5  0x000000000243a6e8 in os_aio_handler (segment=segment@entry=129, m1=m1@entry=0x7f96baffc8e8, m2=m2@entry=0x7f96baffc8e0, request=request@entry=0x7f96baffc8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0file.cc:6118
#6  0x00000000026814b2 in fil_aio_wait (segment=segment@entry=129) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fil/fil0fil.cc:8169
#7  0x00000000024ddeb0 in io_handler_thread (segment=129) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0start.cc:280
#8  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#9  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#10 __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#11 operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#12 operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83dc3f8) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#13 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#14 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#15 _M_invoke<0, 1, 2> (this=0x7fb4b83dc3e8) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#16 operator() (this=0x7fb4b83dc3e8) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#17 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83dc3e0) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#18 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#19 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#20 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 111 (Thread 0x7f96ba7fc700 (LWP 172142)):
#0  0x00007fb4dc3a7de2 in pthread_cond_timedwait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440b85 in os_event::timed_wait(timespec const*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  0x0000000002441a01 in os_event::wait_time_low (this=0x7fb4b8024b20, time_in_usec=<optimized out>, reset_sig_count=2) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:484
#3  0x00000000025bb8e8 in pc_sleep_if_needed (sig_count=2, next_loop_time=16064074597) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/buf/buf0flu.cc:2811
#4  buf_flush_page_coordinator_thread(unsigned long) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/buf/buf0flu.cc:3288
#5  0x00000000024ddfe0 in __invoke_impl<void, void (*&)(unsigned long), unsigned long&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#6  __invoke<void (*&)(unsigned long), unsigned long&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#7  __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#8  operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#9  operator()<void (*)(long unsigned int), long unsigned int> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07ddc>, this=0x7fb4b83ddcd8) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#10 __invoke_impl<void, Detached_thread, void (*)(unsigned long), unsigned long> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07db6>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#11 __invoke<Detached_thread, void (*)(unsigned long), unsigned long> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1dc25fc2, DIE 0x1dd07d82>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#12 _M_invoke<0, 1, 2> (this=0x7fb4b83ddcc8) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#13 operator() (this=0x7fb4b83ddcc8) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#14 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(unsigned long), unsigned long> > >::_M_run (this=0x7fb4b83ddcc0) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#15 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#16 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#17 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 110 (Thread 0x7f96b9ffb700 (LWP 172143)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b83dc8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=0x7fb4b83dc8f0, reset_sig_count=151, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=<optimized out>, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x00000000025bb017 in buf_flush_page_cleaner_thread() () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/buf/buf0flu.cc:3590
#5  0x0000000002405bcc in __invoke_impl<void, void (*&)()> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#6  __invoke<void (*&)()> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#7  __call<void> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#8  operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#9  operator()<void (*)()> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd4b3>, this=0x7f96900057c0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#10 __invoke_impl<void, Detached_thread, void (*)()> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd496>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#11 __invoke<Detached_thread, void (*)()> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd46b>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#12 _M_invoke<0, 1> (this=0x7f96900057b8) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#13 operator() (this=0x7f96900057b8) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#14 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)()> > >::_M_run (this=0x7f96900057b0) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#15 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#16 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#17 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 109 (Thread 0x7f96b97fa700 (LWP 172144)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b83dc8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=0x7fb4b83dc8f0, reset_sig_count=151, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=<optimized out>, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x00000000025bb017 in buf_flush_page_cleaner_thread() () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/buf/buf0flu.cc:3590
#5  0x0000000002405bcc in __invoke_impl<void, void (*&)()> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#6  __invoke<void (*&)()> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#7  __call<void> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#8  operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#9  operator()<void (*)()> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd4b3>, this=0x7f9690005b20) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#10 __invoke_impl<void, Detached_thread, void (*)()> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd496>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#11 __invoke<Detached_thread, void (*)()> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd46b>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#12 _M_invoke<0, 1> (this=0x7f9690005b18) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#13 operator() (this=0x7f9690005b18) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#14 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)()> > >::_M_run (this=0x7f9690005b10) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#15 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#16 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#17 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 108 (Thread 0x7f96b8ff9700 (LWP 172145)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b83dc8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=0x7fb4b83dc8f0, reset_sig_count=151, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=<optimized out>, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x00000000025bb017 in buf_flush_page_cleaner_thread() () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/buf/buf0flu.cc:3590
#5  0x0000000002405bcc in __invoke_impl<void, void (*&)()> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#6  __invoke<void (*&)()> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#7  __call<void> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#8  operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#9  operator()<void (*)()> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd4b3>, this=0x7f9690005e80) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#10 __invoke_impl<void, Detached_thread, void (*)()> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd496>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#11 __invoke<Detached_thread, void (*)()> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd46b>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#12 _M_invoke<0, 1> (this=0x7f9690005e78) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#13 operator() (this=0x7f9690005e78) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#14 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)()> > >::_M_run (this=0x7f9690005e70) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#15 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#16 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#17 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 107 (Thread 0x7f968bfff700 (LWP 172146)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b83dc8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=0x7fb4b83dc8f0, reset_sig_count=151, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=<optimized out>, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x00000000025bb017 in buf_flush_page_cleaner_thread() () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/buf/buf0flu.cc:3590
#5  0x0000000002405bcc in __invoke_impl<void, void (*&)()> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#6  __invoke<void (*&)()> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#7  __call<void> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#8  operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#9  operator()<void (*)()> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd4b3>, this=0x7f96900061e0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#10 __invoke_impl<void, Detached_thread, void (*)()> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd496>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#11 __invoke<Detached_thread, void (*)()> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd46b>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#12 _M_invoke<0, 1> (this=0x7f96900061d8) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#13 operator() (this=0x7f96900061d8) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#14 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)()> > >::_M_run (this=0x7f96900061d0) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#15 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#16 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#17 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 106 (Thread 0x7f968b7fe700 (LWP 172147)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b83dc8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=0x7fb4b83dc8f0, reset_sig_count=151, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=<optimized out>, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x00000000025bb017 in buf_flush_page_cleaner_thread() () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/buf/buf0flu.cc:3590
#5  0x0000000002405bcc in __invoke_impl<void, void (*&)()> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#6  __invoke<void (*&)()> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#7  __call<void> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#8  operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#9  operator()<void (*)()> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd4b3>, this=0x7f9690006540) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#10 __invoke_impl<void, Detached_thread, void (*)()> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd496>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#11 __invoke<Detached_thread, void (*)()> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd46b>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#12 _M_invoke<0, 1> (this=0x7f9690006538) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#13 operator() (this=0x7f9690006538) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#14 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)()> > >::_M_run (this=0x7f9690006530) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#15 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#16 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#17 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 105 (Thread 0x7f968affd700 (LWP 172148)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b83dc8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=0x7fb4b83dc8f0, reset_sig_count=151, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=<optimized out>, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x00000000025bb017 in buf_flush_page_cleaner_thread() () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/buf/buf0flu.cc:3590
#5  0x0000000002405bcc in __invoke_impl<void, void (*&)()> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#6  __invoke<void (*&)()> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#7  __call<void> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#8  operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#9  operator()<void (*)()> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd4b3>, this=0x7f96900068a0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#10 __invoke_impl<void, Detached_thread, void (*)()> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd496>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#11 __invoke<Detached_thread, void (*)()> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd46b>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#12 _M_invoke<0, 1> (this=0x7f9690006898) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#13 operator() (this=0x7f9690006898) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#14 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)()> > >::_M_run (this=0x7f9690006890) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#15 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#16 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#17 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 104 (Thread 0x7f968a7fc700 (LWP 172149)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b83dc8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=0x7fb4b83dc8f0, reset_sig_count=151, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=<optimized out>, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x00000000025bb017 in buf_flush_page_cleaner_thread() () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/buf/buf0flu.cc:3590
#5  0x0000000002405bcc in __invoke_impl<void, void (*&)()> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#6  __invoke<void (*&)()> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#7  __call<void> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#8  operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#9  operator()<void (*)()> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd4b3>, this=0x7f9690006c00) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#10 __invoke_impl<void, Detached_thread, void (*)()> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd496>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#11 __invoke<Detached_thread, void (*)()> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd46b>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#12 _M_invoke<0, 1> (this=0x7f9690006bf8) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#13 operator() (this=0x7f9690006bf8) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#14 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)()> > >::_M_run (this=0x7f9690006bf0) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#15 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#16 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#17 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 103 (Thread 0x7f9689ffb700 (LWP 172150)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b83dc8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=0x7fb4b83dc8f0, reset_sig_count=151, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=<optimized out>, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x00000000025bb017 in buf_flush_page_cleaner_thread() () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/buf/buf0flu.cc:3590
#5  0x0000000002405bcc in __invoke_impl<void, void (*&)()> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#6  __invoke<void (*&)()> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#7  __call<void> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#8  operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#9  operator()<void (*)()> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd4b3>, this=0x7f9690006fa0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#10 __invoke_impl<void, Detached_thread, void (*)()> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd496>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#11 __invoke<Detached_thread, void (*)()> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd46b>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#12 _M_invoke<0, 1> (this=0x7f9690006f98) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#13 operator() (this=0x7f9690006f98) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#14 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)()> > >::_M_run (this=0x7f9690006f90) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#15 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#16 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#17 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 102 (Thread 0x7f96897fa700 (LWP 172151)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b83dc8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=0x7fb4b83dc8f0, reset_sig_count=151, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=<optimized out>, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x00000000025bb017 in buf_flush_page_cleaner_thread() () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/buf/buf0flu.cc:3590
#5  0x0000000002405bcc in __invoke_impl<void, void (*&)()> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#6  __invoke<void (*&)()> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#7  __call<void> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#8  operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#9  operator()<void (*)()> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd4b3>, this=0x7f9690007340) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#10 __invoke_impl<void, Detached_thread, void (*)()> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd496>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#11 __invoke<Detached_thread, void (*)()> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd46b>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#12 _M_invoke<0, 1> (this=0x7f9690007338) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#13 operator() (this=0x7f9690007338) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#14 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)()> > >::_M_run (this=0x7f9690007330) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#15 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#16 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#17 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 101 (Thread 0x7f9688ff9700 (LWP 172152)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b83dc8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=0x7fb4b83dc8f0, reset_sig_count=151, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=<optimized out>, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x00000000025bb017 in buf_flush_page_cleaner_thread() () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/buf/buf0flu.cc:3590
#5  0x0000000002405bcc in __invoke_impl<void, void (*&)()> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#6  __invoke<void (*&)()> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#7  __call<void> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#8  operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#9  operator()<void (*)()> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd4b3>, this=0x7f96900076e0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#10 __invoke_impl<void, Detached_thread, void (*)()> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd496>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#11 __invoke<Detached_thread, void (*)()> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd46b>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#12 _M_invoke<0, 1> (this=0x7f96900076d8) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#13 operator() (this=0x7f96900076d8) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#14 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)()> > >::_M_run (this=0x7f96900076d0) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#15 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#16 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#17 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 100 (Thread 0x7f96887f8700 (LWP 172153)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b83dc8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=0x7fb4b83dc8f0, reset_sig_count=151, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=<optimized out>, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x00000000025bb017 in buf_flush_page_cleaner_thread() () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/buf/buf0flu.cc:3590
#5  0x0000000002405bcc in __invoke_impl<void, void (*&)()> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#6  __invoke<void (*&)()> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#7  __call<void> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#8  operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#9  operator()<void (*)()> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd4b3>, this=0x7f9690007a80) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#10 __invoke_impl<void, Detached_thread, void (*)()> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd496>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#11 __invoke<Detached_thread, void (*)()> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd46b>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#12 _M_invoke<0, 1> (this=0x7f9690007a78) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#13 operator() (this=0x7f9690007a78) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#14 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)()> > >::_M_run (this=0x7f9690007a70) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#15 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#16 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#17 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 99 (Thread 0x7f9687ff7700 (LWP 172154)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b83dc8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=0x7fb4b83dc8f0, reset_sig_count=151, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=<optimized out>, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x00000000025bb017 in buf_flush_page_cleaner_thread() () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/buf/buf0flu.cc:3590
#5  0x0000000002405bcc in __invoke_impl<void, void (*&)()> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#6  __invoke<void (*&)()> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#7  __call<void> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#8  operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#9  operator()<void (*)()> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd4b3>, this=0x7f9690007e20) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#10 __invoke_impl<void, Detached_thread, void (*)()> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd496>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#11 __invoke<Detached_thread, void (*)()> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd46b>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#12 _M_invoke<0, 1> (this=0x7f9690007e18) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#13 operator() (this=0x7f9690007e18) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#14 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)()> > >::_M_run (this=0x7f9690007e10) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#15 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#16 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#17 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 98 (Thread 0x7f96877f6700 (LWP 172155)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b83dc8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=0x7fb4b83dc8f0, reset_sig_count=151, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=<optimized out>, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x00000000025bb017 in buf_flush_page_cleaner_thread() () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/buf/buf0flu.cc:3590
#5  0x0000000002405bcc in __invoke_impl<void, void (*&)()> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#6  __invoke<void (*&)()> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#7  __call<void> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#8  operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#9  operator()<void (*)()> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd4b3>, this=0x7f96900081c0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#10 __invoke_impl<void, Detached_thread, void (*)()> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd496>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#11 __invoke<Detached_thread, void (*)()> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd46b>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#12 _M_invoke<0, 1> (this=0x7f96900081b8) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#13 operator() (this=0x7f96900081b8) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#14 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)()> > >::_M_run (this=0x7f96900081b0) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#15 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#16 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#17 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 97 (Thread 0x7f9686ff5700 (LWP 172156)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b83dc8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=0x7fb4b83dc8f0, reset_sig_count=151, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=<optimized out>, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x00000000025bb017 in buf_flush_page_cleaner_thread() () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/buf/buf0flu.cc:3590
#5  0x0000000002405bcc in __invoke_impl<void, void (*&)()> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#6  __invoke<void (*&)()> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#7  __call<void> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#8  operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#9  operator()<void (*)()> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd4b3>, this=0x7f9690009780) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#10 __invoke_impl<void, Detached_thread, void (*)()> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd496>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#11 __invoke<Detached_thread, void (*)()> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd46b>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#12 _M_invoke<0, 1> (this=0x7f9690009778) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#13 operator() (this=0x7f9690009778) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#14 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)()> > >::_M_run (this=0x7f9690009770) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#15 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#16 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#17 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 96 (Thread 0x7f96867f4700 (LWP 172157)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b83dc8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=0x7fb4b83dc8f0, reset_sig_count=151, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=<optimized out>, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x00000000025bb017 in buf_flush_page_cleaner_thread() () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/buf/buf0flu.cc:3590
#5  0x0000000002405bcc in __invoke_impl<void, void (*&)()> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#6  __invoke<void (*&)()> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#7  __call<void> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#8  operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#9  operator()<void (*)()> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd4b3>, this=0x7f9690009b20) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#10 __invoke_impl<void, Detached_thread, void (*)()> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd496>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#11 __invoke<Detached_thread, void (*)()> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd46b>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#12 _M_invoke<0, 1> (this=0x7f9690009b18) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#13 operator() (this=0x7f9690009b18) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#14 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)()> > >::_M_run (this=0x7f9690009b10) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#15 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#16 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#17 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 95 (Thread 0x7f9685ff3700 (LWP 172158)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b83dc8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=0x7fb4b83dc8f0, reset_sig_count=151, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=<optimized out>, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x00000000025bb017 in buf_flush_page_cleaner_thread() () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/buf/buf0flu.cc:3590
#5  0x0000000002405bcc in __invoke_impl<void, void (*&)()> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#6  __invoke<void (*&)()> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#7  __call<void> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#8  operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#9  operator()<void (*)()> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd4b3>, this=0x7f9690009ec0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#10 __invoke_impl<void, Detached_thread, void (*)()> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd496>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#11 __invoke<Detached_thread, void (*)()> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd46b>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#12 _M_invoke<0, 1> (this=0x7f9690009eb8) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#13 operator() (this=0x7f9690009eb8) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#14 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)()> > >::_M_run (this=0x7f9690009eb0) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#15 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#16 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#17 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 94 (Thread 0x7f96857f2700 (LWP 172159)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b83dc8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=0x7fb4b83dc8f0, reset_sig_count=151, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=<optimized out>, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x00000000025bb017 in buf_flush_page_cleaner_thread() () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/buf/buf0flu.cc:3590
#5  0x0000000002405bcc in __invoke_impl<void, void (*&)()> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#6  __invoke<void (*&)()> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#7  __call<void> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#8  operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#9  operator()<void (*)()> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd4b3>, this=0x7f969000a260) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#10 __invoke_impl<void, Detached_thread, void (*)()> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd496>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#11 __invoke<Detached_thread, void (*)()> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd46b>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#12 _M_invoke<0, 1> (this=0x7f969000a258) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#13 operator() (this=0x7f969000a258) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#14 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)()> > >::_M_run (this=0x7f969000a250) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#15 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#16 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#17 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 93 (Thread 0x7f9684ff1700 (LWP 172160)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b83dc8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=0x7fb4b83dc8f0, reset_sig_count=151, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=<optimized out>, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x00000000025bb017 in buf_flush_page_cleaner_thread() () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/buf/buf0flu.cc:3590
#5  0x0000000002405bcc in __invoke_impl<void, void (*&)()> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#6  __invoke<void (*&)()> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#7  __call<void> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#8  operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#9  operator()<void (*)()> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd4b3>, this=0x7f969000a600) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#10 __invoke_impl<void, Detached_thread, void (*)()> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd496>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#11 __invoke<Detached_thread, void (*)()> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd46b>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#12 _M_invoke<0, 1> (this=0x7f969000a5f8) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#13 operator() (this=0x7f969000a5f8) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#14 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)()> > >::_M_run (this=0x7f969000a5f0) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#15 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#16 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#17 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 92 (Thread 0x7f96847f0700 (LWP 172161)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b83dc8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=0x7fb4b83dc8f0, reset_sig_count=151, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=<optimized out>, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x00000000025bb017 in buf_flush_page_cleaner_thread() () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/buf/buf0flu.cc:3590
#5  0x0000000002405bcc in __invoke_impl<void, void (*&)()> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#6  __invoke<void (*&)()> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#7  __call<void> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#8  operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#9  operator()<void (*)()> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd4b3>, this=0x7f969000a9a0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#10 __invoke_impl<void, Detached_thread, void (*)()> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd496>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#11 __invoke<Detached_thread, void (*)()> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd46b>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#12 _M_invoke<0, 1> (this=0x7f969000a998) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#13 operator() (this=0x7f969000a998) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#14 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)()> > >::_M_run (this=0x7f969000a990) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#15 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#16 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#17 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 91 (Thread 0x7f9683fef700 (LWP 172162)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b83dc8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=0x7fb4b83dc8f0, reset_sig_count=151, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=<optimized out>, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x00000000025bb017 in buf_flush_page_cleaner_thread() () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/buf/buf0flu.cc:3590
#5  0x0000000002405bcc in __invoke_impl<void, void (*&)()> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#6  __invoke<void (*&)()> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#7  __call<void> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#8  operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#9  operator()<void (*)()> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd4b3>, this=0x7f969000ad40) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#10 __invoke_impl<void, Detached_thread, void (*)()> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd496>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#11 __invoke<Detached_thread, void (*)()> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd46b>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#12 _M_invoke<0, 1> (this=0x7f969000ad38) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#13 operator() (this=0x7f969000ad38) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#14 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)()> > >::_M_run (this=0x7f969000ad30) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#15 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#16 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#17 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 90 (Thread 0x7f96837ee700 (LWP 172163)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b83dc8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=0x7fb4b83dc8f0, reset_sig_count=151, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=<optimized out>, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x00000000025bb017 in buf_flush_page_cleaner_thread() () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/buf/buf0flu.cc:3590
#5  0x0000000002405bcc in __invoke_impl<void, void (*&)()> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#6  __invoke<void (*&)()> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#7  __call<void> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#8  operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#9  operator()<void (*)()> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd4b3>, this=0x7f969000b0e0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#10 __invoke_impl<void, Detached_thread, void (*)()> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd496>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#11 __invoke<Detached_thread, void (*)()> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd46b>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#12 _M_invoke<0, 1> (this=0x7f969000b0d8) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#13 operator() (this=0x7f969000b0d8) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#14 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)()> > >::_M_run (this=0x7f969000b0d0) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#15 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#16 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#17 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 89 (Thread 0x7f9682fed700 (LWP 172164)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b83dc8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=0x7fb4b83dc8f0, reset_sig_count=151, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=<optimized out>, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x00000000025bb017 in buf_flush_page_cleaner_thread() () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/buf/buf0flu.cc:3590
#5  0x0000000002405bcc in __invoke_impl<void, void (*&)()> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#6  __invoke<void (*&)()> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#7  __call<void> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#8  operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#9  operator()<void (*)()> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd4b3>, this=0x7f969000b480) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#10 __invoke_impl<void, Detached_thread, void (*)()> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd496>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#11 __invoke<Detached_thread, void (*)()> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd46b>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#12 _M_invoke<0, 1> (this=0x7f969000b478) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#13 operator() (this=0x7f969000b478) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#14 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)()> > >::_M_run (this=0x7f969000b470) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#15 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#16 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#17 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 88 (Thread 0x7f96827ec700 (LWP 172165)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b83dc8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=0x7fb4b83dc8f0, reset_sig_count=151, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=<optimized out>, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x00000000025bb017 in buf_flush_page_cleaner_thread() () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/buf/buf0flu.cc:3590
#5  0x0000000002405bcc in __invoke_impl<void, void (*&)()> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#6  __invoke<void (*&)()> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#7  __call<void> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#8  operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#9  operator()<void (*)()> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd4b3>, this=0x7f969000b820) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#10 __invoke_impl<void, Detached_thread, void (*)()> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd496>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#11 __invoke<Detached_thread, void (*)()> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd46b>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#12 _M_invoke<0, 1> (this=0x7f969000b818) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#13 operator() (this=0x7f969000b818) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#14 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)()> > >::_M_run (this=0x7f969000b810) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#15 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#16 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#17 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 87 (Thread 0x7f9681feb700 (LWP 172166)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b83dc8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=0x7fb4b83dc8f0, reset_sig_count=151, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=<optimized out>, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x00000000025bb017 in buf_flush_page_cleaner_thread() () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/buf/buf0flu.cc:3590
#5  0x0000000002405bcc in __invoke_impl<void, void (*&)()> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#6  __invoke<void (*&)()> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#7  __call<void> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#8  operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#9  operator()<void (*)()> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd4b3>, this=0x7f969000bbc0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#10 __invoke_impl<void, Detached_thread, void (*)()> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd496>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#11 __invoke<Detached_thread, void (*)()> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd46b>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#12 _M_invoke<0, 1> (this=0x7f969000bbb8) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#13 operator() (this=0x7f969000bbb8) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#14 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)()> > >::_M_run (this=0x7f969000bbb0) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#15 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#16 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#17 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 86 (Thread 0x7f96817ea700 (LWP 172167)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b83dc8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=0x7fb4b83dc8f0, reset_sig_count=151, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=<optimized out>, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x00000000025bb017 in buf_flush_page_cleaner_thread() () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/buf/buf0flu.cc:3590
#5  0x0000000002405bcc in __invoke_impl<void, void (*&)()> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#6  __invoke<void (*&)()> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#7  __call<void> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#8  operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#9  operator()<void (*)()> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd4b3>, this=0x7f969000bf60) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#10 __invoke_impl<void, Detached_thread, void (*)()> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd496>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#11 __invoke<Detached_thread, void (*)()> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd46b>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#12 _M_invoke<0, 1> (this=0x7f969000bf58) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#13 operator() (this=0x7f969000bf58) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#14 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)()> > >::_M_run (this=0x7f969000bf50) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#15 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#16 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#17 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 85 (Thread 0x7f9680fe9700 (LWP 172168)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b83dc8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=0x7fb4b83dc8f0, reset_sig_count=151, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=<optimized out>, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x00000000025bb017 in buf_flush_page_cleaner_thread() () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/buf/buf0flu.cc:3590
#5  0x0000000002405bcc in __invoke_impl<void, void (*&)()> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#6  __invoke<void (*&)()> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#7  __call<void> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#8  operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#9  operator()<void (*)()> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd4b3>, this=0x7f969000c300) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#10 __invoke_impl<void, Detached_thread, void (*)()> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd496>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#11 __invoke<Detached_thread, void (*)()> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd46b>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#12 _M_invoke<0, 1> (this=0x7f969000c2f8) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#13 operator() (this=0x7f969000c2f8) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#14 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)()> > >::_M_run (this=0x7f969000c2f0) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#15 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#16 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#17 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 84 (Thread 0x7f96807e8700 (LWP 172169)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b83dc8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=0x7fb4b83dc8f0, reset_sig_count=151, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=<optimized out>, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x00000000025bb017 in buf_flush_page_cleaner_thread() () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/buf/buf0flu.cc:3590
#5  0x0000000002405bcc in __invoke_impl<void, void (*&)()> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#6  __invoke<void (*&)()> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#7  __call<void> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#8  operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#9  operator()<void (*)()> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd4b3>, this=0x7f969000c6a0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#10 __invoke_impl<void, Detached_thread, void (*)()> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd496>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#11 __invoke<Detached_thread, void (*)()> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd46b>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#12 _M_invoke<0, 1> (this=0x7f969000c698) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#13 operator() (this=0x7f969000c698) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#14 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)()> > >::_M_run (this=0x7f969000c690) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#15 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#16 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#17 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 83 (Thread 0x7f967ffe7700 (LWP 172170)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b83dc8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=0x7fb4b83dc8f0, reset_sig_count=151, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=<optimized out>, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x00000000025bb017 in buf_flush_page_cleaner_thread() () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/buf/buf0flu.cc:3590
#5  0x0000000002405bcc in __invoke_impl<void, void (*&)()> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#6  __invoke<void (*&)()> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#7  __call<void> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#8  operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#9  operator()<void (*)()> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd4b3>, this=0x7f969000ca40) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#10 __invoke_impl<void, Detached_thread, void (*)()> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd496>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#11 __invoke<Detached_thread, void (*)()> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd46b>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#12 _M_invoke<0, 1> (this=0x7f969000ca38) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#13 operator() (this=0x7f969000ca38) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#14 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)()> > >::_M_run (this=0x7f969000ca30) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#15 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#16 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#17 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 82 (Thread 0x7f967f7e6700 (LWP 172171)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b83dc8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=0x7fb4b83dc8f0, reset_sig_count=151, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=<optimized out>, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x00000000025bb017 in buf_flush_page_cleaner_thread() () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/buf/buf0flu.cc:3590
#5  0x0000000002405bcc in __invoke_impl<void, void (*&)()> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#6  __invoke<void (*&)()> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#7  __call<void> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#8  operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#9  operator()<void (*)()> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd4b3>, this=0x7f969000cde0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#10 __invoke_impl<void, Detached_thread, void (*)()> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd496>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#11 __invoke<Detached_thread, void (*)()> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd46b>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#12 _M_invoke<0, 1> (this=0x7f969000cdd8) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#13 operator() (this=0x7f969000cdd8) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#14 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)()> > >::_M_run (this=0x7f969000cdd0) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#15 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#16 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#17 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 81 (Thread 0x7f967efe5700 (LWP 172172)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b83dc8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=0x7fb4b83dc8f0, reset_sig_count=151, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=<optimized out>, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x00000000025bb017 in buf_flush_page_cleaner_thread() () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/buf/buf0flu.cc:3590
#5  0x0000000002405bcc in __invoke_impl<void, void (*&)()> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#6  __invoke<void (*&)()> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#7  __call<void> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#8  operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#9  operator()<void (*)()> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd4b3>, this=0x7f969000d180) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#10 __invoke_impl<void, Detached_thread, void (*)()> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd496>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#11 __invoke<Detached_thread, void (*)()> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd46b>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#12 _M_invoke<0, 1> (this=0x7f969000d178) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#13 operator() (this=0x7f969000d178) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#14 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)()> > >::_M_run (this=0x7f969000d170) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#15 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#16 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#17 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 80 (Thread 0x7f967e7e4700 (LWP 172173)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b83dc8f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=0x7fb4b83dc8f0, reset_sig_count=151, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=<optimized out>, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x00000000025bb017 in buf_flush_page_cleaner_thread() () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/buf/buf0flu.cc:3590
#5  0x0000000002405bcc in __invoke_impl<void, void (*&)()> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#6  __invoke<void (*&)()> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#7  __call<void> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#8  operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#9  operator()<void (*)()> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd4b3>, this=0x7f969000d520) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#10 __invoke_impl<void, Detached_thread, void (*)()> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd496>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#11 __invoke<Detached_thread, void (*)()> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd46b>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#12 _M_invoke<0, 1> (this=0x7f969000d518) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#13 operator() (this=0x7f969000d518) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#14 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)()> > >::_M_run (this=0x7f969000d510) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#15 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#16 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#17 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 79 (Thread 0x7f9623259700 (LWP 172175)):
#0  0x00007fb4dc3a7de2 in pthread_cond_timedwait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440b85 in os_event::timed_wait(timespec const*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  0x0000000002441a01 in os_event::wait_time_low (this=0x7fb4b83f7a40, time_in_usec=<optimized out>, reset_sig_count=1) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:484
#3  0x00000000023f2087 in log_checkpointer(log_t*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/log/log0chkp.cc:1096
#4  0x00000000023fd930 in __invoke_impl<void, void (*&)(log_t*), log_t*&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#5  __invoke<void (*&)(log_t*), log_t*&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#6  __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#7  operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#8  operator()<void (*)(log_t*), log_t*> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c363908, DIE 0x1c3d6766>, this=0x7fb4b84ba688) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#9  __invoke_impl<void, Detached_thread, void (*)(log_t*), log_t*> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c363908, DIE 0x1c3d6740>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#10 __invoke<Detached_thread, void (*)(log_t*), log_t*> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c363908, DIE 0x1c3d670c>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#11 _M_invoke<0, 1, 2> (this=0x7fb4b84ba678) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#12 operator() (this=0x7fb4b84ba678) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#13 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(log_t*), log_t*> > >::_M_run (this=0x7fb4b84ba670) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#14 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#15 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#16 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 78 (Thread 0x7f9622a58700 (LWP 172176)):
#0  0x00007fb4dc3a7de2 in pthread_cond_timedwait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440b85 in os_event::timed_wait(timespec const*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  0x0000000002441a01 in os_event::wait_time_low (this=0x7fb4b83f7bf0, time_in_usec=<optimized out>, reset_sig_count=8484) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:484
#3  0x00000000024261ad in os_event_wait_for<log_flush_notifier(log_t*)::<lambda(bool)> > (condition=..., timeout=100000, spins_limit=<optimized out>, event=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/log/log0write.cc:2760
#4  wait<log_flush_notifier(log_t*)::<lambda(bool)> > (stop_condition=..., this=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/log/log0write.cc:1214
#5  log_flush_notifier(log_t*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/log/log0write.cc:2765
#6  0x00000000023fd930 in __invoke_impl<void, void (*&)(log_t*), log_t*&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#7  __invoke<void (*&)(log_t*), log_t*&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#8  __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#9  operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#10 operator()<void (*)(log_t*), log_t*> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c363908, DIE 0x1c3d6766>, this=0x7fb4b84b6f78) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#11 __invoke_impl<void, Detached_thread, void (*)(log_t*), log_t*> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c363908, DIE 0x1c3d6740>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#12 __invoke<Detached_thread, void (*)(log_t*), log_t*> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c363908, DIE 0x1c3d670c>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#13 _M_invoke<0, 1, 2> (this=0x7fb4b84b6f68) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#14 operator() (this=0x7fb4b84b6f68) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#15 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(log_t*), log_t*> > >::_M_run (this=0x7fb4b84b6f60) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#16 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#17 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#18 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 77 (Thread 0x7f9622257700 (LWP 172177)):
#0  0x00007fb4dc3a7de2 in pthread_cond_timedwait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440b85 in os_event::timed_wait(timespec const*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  0x0000000002441a01 in os_event::wait_time_low (this=0x7fb4b83f7d10, time_in_usec=<optimized out>, reset_sig_count=16869) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:484
#3  0x0000000002425030 in os_event_wait_for<log_flusher(log_t*)::<lambda(bool)> > (condition=..., timeout=100000, spins_limit=<optimized out>, event=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/log/log0write.cc:2496
#4  wait<log_flusher(log_t*)::<lambda(bool)> > (stop_condition=..., this=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/log/log0write.cc:1214
#5  log_flusher(log_t*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/log/log0write.cc:2542
#6  0x00000000023fd930 in __invoke_impl<void, void (*&)(log_t*), log_t*&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#7  __invoke<void (*&)(log_t*), log_t*&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#8  __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#9  operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#10 operator()<void (*)(log_t*), log_t*> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c363908, DIE 0x1c3d6766>, this=0x7fb4b84b72d8) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#11 __invoke_impl<void, Detached_thread, void (*)(log_t*), log_t*> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c363908, DIE 0x1c3d6740>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#12 __invoke<Detached_thread, void (*)(log_t*), log_t*> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c363908, DIE 0x1c3d670c>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#13 _M_invoke<0, 1, 2> (this=0x7fb4b84b72c8) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#14 operator() (this=0x7fb4b84b72c8) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#15 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(log_t*), log_t*> > >::_M_run (this=0x7fb4b84b72c0) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#16 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#17 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#18 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 76 (Thread 0x7f9621a56700 (LWP 172178)):
#0  0x00007fb4dc3a7de2 in pthread_cond_timedwait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440b85 in os_event::timed_wait(timespec const*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  0x0000000002441a01 in os_event::wait_time_low (this=0x7fb4b83f7b60, time_in_usec=<optimized out>, reset_sig_count=9102) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:484
#3  0x000000000242725d in os_event_wait_for<log_write_notifier(log_t*)::<lambda(bool)> > (condition=..., timeout=100000, spins_limit=<optimized out>, event=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/log/log0write.cc:2638
#4  wait<log_write_notifier(log_t*)::<lambda(bool)> > (stop_condition=..., this=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/log/log0write.cc:1214
#5  log_write_notifier(log_t*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/log/log0write.cc:2643
#6  0x00000000023fd930 in __invoke_impl<void, void (*&)(log_t*), log_t*&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#7  __invoke<void (*&)(log_t*), log_t*&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#8  __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#9  operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#10 operator()<void (*)(log_t*), log_t*> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c363908, DIE 0x1c3d6766>, this=0x7fb4b84b7638) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#11 __invoke_impl<void, Detached_thread, void (*)(log_t*), log_t*> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c363908, DIE 0x1c3d6740>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#12 __invoke<Detached_thread, void (*)(log_t*), log_t*> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c363908, DIE 0x1c3d670c>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#13 _M_invoke<0, 1, 2> (this=0x7fb4b84b7628) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#14 operator() (this=0x7fb4b84b7628) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#15 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(log_t*), log_t*> > >::_M_run (this=0x7fb4b84b7620) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#16 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#17 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#18 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 75 (Thread 0x7f9621255700 (LWP 172179)):
#0  0x00007fb4dc3a7de2 in pthread_cond_timedwait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440b85 in os_event::timed_wait(timespec const*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  0x0000000002441a01 in os_event::wait_time_low (this=0x7fb4b83f7c80, time_in_usec=<optimized out>, reset_sig_count=4067) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:484
#3  0x0000000002427fc8 in os_event_wait_for<log_writer(log_t*)::<lambda(bool)> > (condition=..., timeout=100000, spins_limit=<optimized out>, event=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/log/log0write.cc:2198
#4  wait<log_writer(log_t*)::<lambda(bool)> > (stop_condition=..., this=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/log/log0write.cc:1214
#5  log_writer (log_ptr=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/log/log0write.cc:2204
#6  0x00000000023fd930 in __invoke_impl<void, void (*&)(log_t*), log_t*&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#7  __invoke<void (*&)(log_t*), log_t*&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#8  __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#9  operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#10 operator()<void (*)(log_t*), log_t*> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c363908, DIE 0x1c3d6766>, this=0x7fb4b84b7998) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#11 __invoke_impl<void, Detached_thread, void (*)(log_t*), log_t*> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c363908, DIE 0x1c3d6740>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#12 __invoke<Detached_thread, void (*)(log_t*), log_t*> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c363908, DIE 0x1c3d670c>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#13 _M_invoke<0, 1, 2> (this=0x7fb4b84b7988) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#14 operator() (this=0x7fb4b84b7988) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#15 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(log_t*), log_t*> > >::_M_run (this=0x7fb4b84b7980) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#16 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#17 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#18 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 74 (Thread 0x7f963dfe0700 (LWP 172186)):
#0  0x00007fb4dc3a7de2 in pthread_cond_timedwait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440b85 in os_event::timed_wait(timespec const*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  0x0000000002441a01 in os_event::wait_time_low (this=0x7fb4b83bf870, time_in_usec=<optimized out>, reset_sig_count=1) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:484
#3  0x00000000023e9430 in lock_wait_timeout_thread() () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/lock/lock0wait.cc:1448
#4  0x0000000002405bcc in __invoke_impl<void, void (*&)()> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#5  __invoke<void (*&)()> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#6  __call<void> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#7  operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#8  operator()<void (*)()> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd4b3>, this=0x7fb4b850ec50) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#9  __invoke_impl<void, Detached_thread, void (*)()> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd496>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#10 __invoke<Detached_thread, void (*)()> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd46b>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#11 _M_invoke<0, 1> (this=0x7fb4b850ec48) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#12 operator() (this=0x7fb4b850ec48) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#13 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)()> > >::_M_run (this=0x7fb4b850ec40) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#14 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#15 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#16 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 73 (Thread 0x7f95a3fff700 (LWP 172187)):
#0  0x00007fb4dc3a7de2 in pthread_cond_timedwait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440b85 in os_event::timed_wait(timespec const*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  0x0000000002441a01 in os_event::wait_time_low (this=0x7fb4b8024970, time_in_usec=<optimized out>, reset_sig_count=1) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:484
#3  0x00000000024da86e in srv_error_monitor_thread() () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0srv.cc:1853
#4  0x0000000002405bcc in __invoke_impl<void, void (*&)()> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#5  __invoke<void (*&)()> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#6  __call<void> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#7  operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#8  operator()<void (*)()> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd4b3>, this=0x7fb4b850ae00) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#9  __invoke_impl<void, Detached_thread, void (*)()> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd496>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#10 __invoke<Detached_thread, void (*)()> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd46b>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#11 _M_invoke<0, 1> (this=0x7fb4b850adf8) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#12 operator() (this=0x7fb4b850adf8) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#13 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)()> > >::_M_run (this=0x7fb4b850adf0) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#14 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#15 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#16 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 72 (Thread 0x7f9620a54700 (LWP 172188)):
#0  0x00007fb4dc3a7de2 in pthread_cond_timedwait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440b85 in os_event::timed_wait(timespec const*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  0x0000000002441a01 in os_event::wait_time_low (this=0x7fb4b8024a00, time_in_usec=<optimized out>, reset_sig_count=1) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:484
#3  0x00000000024d8ff5 in srv_monitor_thread () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0srv.cc:1730
#4  0x0000000002405bcc in __invoke_impl<void, void (*&)()> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#5  __invoke<void (*&)()> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#6  __call<void> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#7  operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#8  operator()<void (*)()> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd4b3>, this=0x7fb4b850aec0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#9  __invoke_impl<void, Detached_thread, void (*)()> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd496>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#10 __invoke<Detached_thread, void (*)()> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd46b>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#11 _M_invoke<0, 1> (this=0x7fb4b850aeb8) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#12 operator() (this=0x7fb4b850aeb8) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#13 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)()> > >::_M_run (this=0x7fb4b850aeb0) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#14 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#15 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#16 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 71 (Thread 0x7f95a37fe700 (LWP 172189)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b8024c40) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=0x7fb4b8024c40, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=<optimized out>, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x00000000025a0bf5 in buf_resize_thread() () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/buf/buf0buf.cc:2494
#5  0x0000000002405bcc in __invoke_impl<void, void (*&)()> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#6  __invoke<void (*&)()> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#7  __call<void> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#8  operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#9  operator()<void (*)()> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd4b3>, this=0x7fb4b830f7a0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#10 __invoke_impl<void, Detached_thread, void (*)()> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd496>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#11 __invoke<Detached_thread, void (*)()> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd46b>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#12 _M_invoke<0, 1> (this=0x7fb4b830f798) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#13 operator() (this=0x7fb4b830f798) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#14 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)()> > >::_M_run (this=0x7fb4b830f790) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#15 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#16 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#17 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 70 (Thread 0x7f95a2ffd700 (LWP 172190)):
#0  0x00007fb4dc3aae9d in nanosleep () from /lib64/libpthread.so.0
#1  0x00000000024d9ff5 in sleep_for<long, std::ratio<1> > (__rtime=...) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0srv.cc:2614
#2  srv_master_sleep () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0srv.cc:2614
#3  srv_master_main_loop (slot=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0srv.cc:2655
#4  srv_master_thread () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0srv.cc:2721
#5  0x0000000002405bcc in __invoke_impl<void, void (*&)()> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#6  __invoke<void (*&)()> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#7  __call<void> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#8  operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#9  operator()<void (*)()> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd4b3>, this=0x7fb4b8c2bfa0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#10 __invoke_impl<void, Detached_thread, void (*)()> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd496>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#11 __invoke<Detached_thread, void (*)()> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd46b>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#12 _M_invoke<0, 1> (this=0x7fb4b8c2bf98) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#13 operator() (this=0x7fb4b8c2bf98) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#14 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)()> > >::_M_run (this=0x7fb4b8c2bf90) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#15 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#16 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#17 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 69 (Thread 0x7f95a27fc700 (LWP 172191)):
#0  0x00007fb4dc3a7de2 in pthread_cond_timedwait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440b85 in os_event::timed_wait(timespec const*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  0x0000000002441a01 in os_event::wait_time_low (this=0x7fb4b862fb80, time_in_usec=<optimized out>, reset_sig_count=11) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:484
#3  0x0000000002658dd6 in dict_stats_thread () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/dict/dict0stats_bg.cc:374
#4  0x0000000002405bcc in __invoke_impl<void, void (*&)()> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#5  __invoke<void (*&)()> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#6  __call<void> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#7  operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#8  operator()<void (*)()> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd4b3>, this=0x7fb4b862f870) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#9  __invoke_impl<void, Detached_thread, void (*)()> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd496>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#10 __invoke<Detached_thread, void (*)()> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd46b>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#11 _M_invoke<0, 1> (this=0x7fb4b862f868) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#12 operator() (this=0x7fb4b862f868) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#13 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)()> > >::_M_run (this=0x7fb4b862f860) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#14 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#15 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#16 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 68 (Thread 0x7f95a1ffb700 (LWP 172192)):
#0  0x00007fb4dc3a7de2 in pthread_cond_timedwait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440b85 in os_event::timed_wait(timespec const*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  0x0000000002441a01 in os_event::wait_time_low (this=0x7fb4b8911a00, time_in_usec=<optimized out>, reset_sig_count=1) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:484
#3  0x00000000025414ff in ib_wqueue_timedwait (wq=wq@entry=0x7fb4b8910f00, wait_in_usecs=wait_in_usecs@entry=5000000) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/ut/ut0wqueue.cc:128
#4  0x00000000026d205b in fts_optimize_thread(ib_wqueue_t*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/fts/fts0opt.cc:2844
#5  0x00000000026c7670 in __invoke_impl<void, void (*&)(ib_wqueue_t*), ib_wqueue_t*&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#6  __invoke<void (*&)(ib_wqueue_t*), ib_wqueue_t*&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#7  __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#8  operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#9  operator()<void (*)(ib_wqueue_t*), ib_wqueue_t*> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x2152ba0a, DIE 0x215d5ad3>, this=0x7fb4b8911b28) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#10 __invoke_impl<void, Detached_thread, void (*)(ib_wqueue_t*), ib_wqueue_t*> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x2152ba0a, DIE 0x215d5aad>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#11 __invoke<Detached_thread, void (*)(ib_wqueue_t*), ib_wqueue_t*> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x2152ba0a, DIE 0x215d5a79>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#12 _M_invoke<0, 1, 2> (this=0x7fb4b8911b18) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#13 operator() (this=0x7fb4b8911b18) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#14 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(ib_wqueue_t*), ib_wqueue_t*> > >::_M_run (this=0x7fb4b8911b10) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#15 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#16 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#17 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 67 (Thread 0x7fb4b77fe700 (LWP 172193)):
#0  0x00007fb4dc3a7de2 in pthread_cond_timedwait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x000000000289f810 in native_cond_timedwait (abstime=0x7fb4b77fd800, mutex=<optimized out>, cond=0x8ba0e38) at /data/adbbm/aidb_v5_dev/for_mysql/include/thr_cond.h:148
#2  my_cond_timedwait (abstime=0x7fb4b77fd800, mp=<optimized out>, cond=0x8ba0e38) at /data/adbbm/aidb_v5_dev/for_mysql/include/thr_cond.h:148
#3  inline_mysql_cond_timedwait (src_file=0x3629d50 "/data/adbbm/aidb_v5_dev/for_mysql/plugin/x/src/helper/multithread/cond.cc", src_line=42, abstime=0x7fb4b77fd800, mutex=<optimized out>, that=0x8ba0e38) at /data/adbbm/aidb_v5_dev/for_mysql/include/mysql/psi/mysql_cond.h:242
#4  xpl::Cond::timed_wait (this=this@entry=0x8ba0e38, mutex=..., nanoseconds=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/plugin/x/src/helper/multithread/cond.cc:42
#5  0x00000000028c1aae in ngs::Scheduler_dynamic::wait_if_idle_then_delete_worker(unsigned long long&) () at /data/adbbm/aidb_v5_dev/for_mysql/plugin/x/src/ngs/scheduler.cc:196
#6  0x00000000028c273e in ngs::Scheduler_dynamic::worker() () at /data/adbbm/aidb_v5_dev/for_mysql/plugin/x/src/ngs/scheduler.cc:243
#7  0x00000000027b21b4 in pfs_spawn_thread (arg=0x8b9c370) at /data/adbbm/aidb_v5_dev/for_mysql/storage/perfschema/pfs.cc:2946
#8  0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#9  0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 66 (Thread 0x7fb4b592d700 (LWP 172194)):
#0  0x00007fb4dc3a7de2 in pthread_cond_timedwait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x000000000289f810 in native_cond_timedwait (abstime=0x7fb4b592c800, mutex=<optimized out>, cond=0x8ba0e38) at /data/adbbm/aidb_v5_dev/for_mysql/include/thr_cond.h:148
#2  my_cond_timedwait (abstime=0x7fb4b592c800, mp=<optimized out>, cond=0x8ba0e38) at /data/adbbm/aidb_v5_dev/for_mysql/include/thr_cond.h:148
#3  inline_mysql_cond_timedwait (src_file=0x3629d50 "/data/adbbm/aidb_v5_dev/for_mysql/plugin/x/src/helper/multithread/cond.cc", src_line=42, abstime=0x7fb4b592c800, mutex=<optimized out>, that=0x8ba0e38) at /data/adbbm/aidb_v5_dev/for_mysql/include/mysql/psi/mysql_cond.h:242
#4  xpl::Cond::timed_wait (this=this@entry=0x8ba0e38, mutex=..., nanoseconds=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/plugin/x/src/helper/multithread/cond.cc:42
#5  0x00000000028c1aae in ngs::Scheduler_dynamic::wait_if_idle_then_delete_worker(unsigned long long&) () at /data/adbbm/aidb_v5_dev/for_mysql/plugin/x/src/ngs/scheduler.cc:196
#6  0x00000000028c273e in ngs::Scheduler_dynamic::worker() () at /data/adbbm/aidb_v5_dev/for_mysql/plugin/x/src/ngs/scheduler.cc:243
#7  0x00000000027b21b4 in pfs_spawn_thread (arg=0x8b9c7f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/perfschema/pfs.cc:2946
#8  0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#9  0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 65 (Thread 0x7fb46c116700 (LWP 172195)):
#0  0x00007fb4dc3a7de2 in pthread_cond_timedwait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x000000000289f810 in native_cond_timedwait (abstime=0x7fb46c115800, mutex=<optimized out>, cond=0x8ba1388) at /data/adbbm/aidb_v5_dev/for_mysql/include/thr_cond.h:148
#2  my_cond_timedwait (abstime=0x7fb46c115800, mp=<optimized out>, cond=0x8ba1388) at /data/adbbm/aidb_v5_dev/for_mysql/include/thr_cond.h:148
#3  inline_mysql_cond_timedwait (src_file=0x3629d50 "/data/adbbm/aidb_v5_dev/for_mysql/plugin/x/src/helper/multithread/cond.cc", src_line=42, abstime=0x7fb46c115800, mutex=<optimized out>, that=0x8ba1388) at /data/adbbm/aidb_v5_dev/for_mysql/include/mysql/psi/mysql_cond.h:242
#4  xpl::Cond::timed_wait (this=this@entry=0x8ba1388, mutex=..., nanoseconds=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/plugin/x/src/helper/multithread/cond.cc:42
#5  0x00000000028c1aae in ngs::Scheduler_dynamic::wait_if_idle_then_delete_worker(unsigned long long&) () at /data/adbbm/aidb_v5_dev/for_mysql/plugin/x/src/ngs/scheduler.cc:196
#6  0x00000000028c273e in ngs::Scheduler_dynamic::worker() () at /data/adbbm/aidb_v5_dev/for_mysql/plugin/x/src/ngs/scheduler.cc:243
#7  0x00000000027b21b4 in pfs_spawn_thread (arg=0x8b9cc70) at /data/adbbm/aidb_v5_dev/for_mysql/storage/perfschema/pfs.cc:2946
#8  0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#9  0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 64 (Thread 0x7fb4bf1c3700 (LWP 172200)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b8024a90) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=0x7fb4b8024a90, reset_sig_count=1, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=<optimized out>, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x00000000025b107c in buf_dump_thread () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/buf/buf0dump.cc:679
#5  0x0000000002405bcc in __invoke_impl<void, void (*&)()> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#6  __invoke<void (*&)()> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#7  __call<void> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#8  operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#9  operator()<void (*)()> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd4b3>, this=0x8b40fa0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#10 __invoke_impl<void, Detached_thread, void (*)()> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd496>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#11 __invoke<Detached_thread, void (*)()> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd46b>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#12 _M_invoke<0, 1> (this=0x8b40f98) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#13 operator() (this=0x8b40f98) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#14 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)()> > >::_M_run (this=0x8b40f90) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#15 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#16 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#17 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 63 (Thread 0x7f95a17fa700 (LWP 172201)):
#0  0x00007fb4dc3a7de2 in pthread_cond_timedwait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440b85 in os_event::timed_wait(timespec const*) () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  0x0000000002441a01 in os_event::wait_time_low (this=0x7fb4b82d4c40, time_in_usec=<optimized out>, reset_sig_count=2) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:484
#3  0x000000000260645f in Clone_persist_gtid::periodic_write() () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/clone/clone0repl.cc:605
#4  0x0000000002601f80 in __invoke_impl<void, void (*&)(Clone_persist_gtid*), Clone_persist_gtid*&> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#5  __invoke<void (*&)(Clone_persist_gtid*), Clone_persist_gtid*&> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#6  __call<void, 0> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#7  operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#8  operator()<void (*)(Clone_persist_gtid*), Clone_persist_gtid*> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1fc41764, DIE 0x1fd1592d>, this=0x8b1efa8) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#9  __invoke_impl<void, Detached_thread, void (*)(Clone_persist_gtid*), Clone_persist_gtid*> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1fc41764, DIE 0x1fd15907>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#10 __invoke<Detached_thread, void (*)(Clone_persist_gtid*), Clone_persist_gtid*> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1fc41764, DIE 0x1fd158d3>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#11 _M_invoke<0, 1, 2> (this=0x8b1ef98) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#12 operator() (this=0x8b1ef98) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#13 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)(Clone_persist_gtid*), Clone_persist_gtid*> > >::_M_run (this=0x8b1ef90) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#14 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#15 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#16 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 62 (Thread 0x7f95a0ff9700 (LWP 172202)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b80244f0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=0x7fb4b80244f0, reset_sig_count=reset_sig_count@entry=1782) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=<optimized out>, reset_sig_count=reset_sig_count@entry=1782) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x00000000024dc76d in srv_purge_coordinator_suspend (rseg_history_len=<optimized out>, slot=0x7fb4b8024050) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0srv.cc:2972
#5  srv_purge_coordinator_thread () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0srv.cc:3087
#6  0x0000000002405bcc in __invoke_impl<void, void (*&)()> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#7  __invoke<void (*&)()> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#8  __call<void> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#9  operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#10 operator()<void (*)()> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd4b3>, this=0x8b21ed0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#11 __invoke_impl<void, Detached_thread, void (*)()> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd496>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#12 __invoke<Detached_thread, void (*)()> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd46b>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#13 _M_invoke<0, 1> (this=0x8b21ec8) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#14 operator() (this=0x8b21ec8) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#15 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)()> > >::_M_run (this=0x8b21ec0) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#16 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#17 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#18 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 61 (Thread 0x7f958bfff700 (LWP 172203)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b8024730) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=0x7fb4b8024730, reset_sig_count=2397, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=<optimized out>, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x00000000024dbb9b in srv_worker_thread () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0srv.cc:2836
#5  0x0000000002405bcc in __invoke_impl<void, void (*&)()> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#6  __invoke<void (*&)()> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#7  __call<void> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#8  operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#9  operator()<void (*)()> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd4b3>, this=0x8b21f30) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#10 __invoke_impl<void, Detached_thread, void (*)()> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd496>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#11 __invoke<Detached_thread, void (*)()> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd46b>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#12 _M_invoke<0, 1> (this=0x8b21f28) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#13 operator() (this=0x8b21f28) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#14 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)()> > >::_M_run (this=0x8b21f20) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#15 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#16 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#17 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 60 (Thread 0x7f958b7fe700 (LWP 172204)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b8024580) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=0x7fb4b8024580, reset_sig_count=3123, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=<optimized out>, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x00000000024dbb9b in srv_worker_thread () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0srv.cc:2836
#5  0x0000000002405bcc in __invoke_impl<void, void (*&)()> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#6  __invoke<void (*&)()> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#7  __call<void> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#8  operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#9  operator()<void (*)()> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd4b3>, this=0x8b21840) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#10 __invoke_impl<void, Detached_thread, void (*)()> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd496>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#11 __invoke<Detached_thread, void (*)()> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd46b>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#12 _M_invoke<0, 1> (this=0x8b21838) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#13 operator() (this=0x8b21838) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#14 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)()> > >::_M_run (this=0x8b21830) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#15 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#16 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#17 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 59 (Thread 0x7f958affd700 (LWP 172205)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b8024610) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=0x7fb4b8024610, reset_sig_count=2783, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=<optimized out>, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x00000000024dbb9b in srv_worker_thread () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0srv.cc:2836
#5  0x0000000002405bcc in __invoke_impl<void, void (*&)()> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#6  __invoke<void (*&)()> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#7  __call<void> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#8  operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#9  operator()<void (*)()> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd4b3>, this=0x8b218a0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#10 __invoke_impl<void, Detached_thread, void (*)()> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd496>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#11 __invoke<Detached_thread, void (*)()> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd46b>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#12 _M_invoke<0, 1> (this=0x8b21898) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#13 operator() (this=0x8b21898) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#14 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)()> > >::_M_run (this=0x8b21890) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#15 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#16 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#17 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 58 (Thread 0x7f958a7fc700 (LWP 172206)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b80248e0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=0x7fb4b80248e0, reset_sig_count=1746, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=<optimized out>, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x00000000024dbb9b in srv_worker_thread () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0srv.cc:2836
#5  0x0000000002405bcc in __invoke_impl<void, void (*&)()> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#6  __invoke<void (*&)()> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#7  __call<void> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#8  operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#9  operator()<void (*)()> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd4b3>, this=0x8b21c90) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#10 __invoke_impl<void, Detached_thread, void (*)()> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd496>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#11 __invoke<Detached_thread, void (*)()> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd46b>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#12 _M_invoke<0, 1> (this=0x8b21c88) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#13 operator() (this=0x8b21c88) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#14 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)()> > >::_M_run (this=0x8b21c80) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#15 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#16 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#17 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 57 (Thread 0x7f9589ffb700 (LWP 172207)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b80247c0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=0x7fb4b80247c0, reset_sig_count=2230, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=<optimized out>, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x00000000024dbb9b in srv_worker_thread () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0srv.cc:2836
#5  0x0000000002405bcc in __invoke_impl<void, void (*&)()> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#6  __invoke<void (*&)()> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#7  __call<void> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#8  operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#9  operator()<void (*)()> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd4b3>, this=0x8c07c60) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#10 __invoke_impl<void, Detached_thread, void (*)()> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd496>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#11 __invoke<Detached_thread, void (*)()> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd46b>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#12 _M_invoke<0, 1> (this=0x8c07c58) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#13 operator() (this=0x8c07c58) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#14 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)()> > >::_M_run (this=0x8c07c50) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#15 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#16 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#17 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 56 (Thread 0x7f95897fa700 (LWP 172208)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b8024850) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=0x7fb4b8024850, reset_sig_count=2036, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=<optimized out>, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x00000000024dbb9b in srv_worker_thread () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0srv.cc:2836
#5  0x0000000002405bcc in __invoke_impl<void, void (*&)()> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#6  __invoke<void (*&)()> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#7  __call<void> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#8  operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#9  operator()<void (*)()> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd4b3>, this=0x8be6fa0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#10 __invoke_impl<void, Detached_thread, void (*)()> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd496>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#11 __invoke<Detached_thread, void (*)()> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd46b>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#12 _M_invoke<0, 1> (this=0x8be6f98) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#13 operator() (this=0x8be6f98) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#14 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)()> > >::_M_run (this=0x8be6f90) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#15 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#16 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#17 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 55 (Thread 0x7f9588ff9700 (LWP 172209)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000002440746 in wait (this=0x7fb4b80246a0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/sync0types.h:562
#2  os_event::wait_low (this=0x7fb4b80246a0, reset_sig_count=2537, reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:362
#3  0x0000000002440af5 in os_event_wait_low (event=<optimized out>, reset_sig_count=reset_sig_count@entry=0) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/os/os0event.cc:594
#4  0x00000000024dbb9b in srv_worker_thread () at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/srv/srv0srv.cc:2836
#5  0x0000000002405bcc in __invoke_impl<void, void (*&)()> (__f=<synthetic pointer>) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:216
#6  __invoke<void (*&)()> (__fn=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#7  __call<void> (__args=<optimized out>, this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:400
#8  operator()<> (this=<synthetic pointer>) at /opt/gcc-8.3/include/c++/8.3.0/functional:484
#9  operator()<void (*)()> (f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd4b3>, this=0x8bbb400) at /data/adbbm/aidb_v5_dev/for_mysql/storage/innobase/include/os0thread-create.h:193
#10 __invoke_impl<void, Detached_thread, void (*)()> (__f=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd496>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:60
#11 __invoke<Detached_thread, void (*)()> (__fn=<unknown type in /data/adbcs/ob_rel/mysql-8.0.27/bin/mysqld, CU 0x1c4054eb, DIE 0x1c4dd46b>) at /opt/gcc-8.3/include/c++/8.3.0/bits/invoke.h:95
#12 _M_invoke<0, 1> (this=0x8bbb3f8) at /opt/gcc-8.3/include/c++/8.3.0/thread:244
#13 operator() (this=0x8bbb3f8) at /opt/gcc-8.3/include/c++/8.3.0/thread:253
#14 std::thread::_State_impl<std::thread::_Invoker<std::tuple<Detached_thread, void (*)()> > >::_M_run (this=0x8bbb3f0) at /opt/gcc-8.3/include/c++/8.3.0/thread:196
#15 0x00007fb4da3eadbf in execute_native_thread_routine () at ../../../../../libstdc++-v3/src/c++11/thread.cc:80
#16 0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#17 0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 54 (Thread 0x7f9577fff700 (LWP 172211)):
#0  0x00007fb4d9b40e29 in syscall () from /lib64/libc.so.6
#1  0x0000000002a12b98 in futex_wait_private (timeout=<optimized out>, expected=800, addr1=0x8e5f3a8) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/sys_futex.h:40
#2  bthread::TimerThread::run() () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/timer_thread.cpp:431
#3  0x0000000002a13539 in bthread::TimerThread::run_this (arg=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/timer_thread.cpp:120
#4  0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#5  0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 53 (Thread 0x7f95777fe700 (LWP 172212)):
#0  0x00007fb4d9b0d9fd in nanosleep () from /lib64/libc.so.6
#1  0x00007fb4d9b3e2d4 in usleep () from /lib64/libc.so.6
#2  0x00000000029ff2eb in bthread::TaskControl::create_worker_thread(void*) () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_control.cpp:144
#3  0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#4  0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 52 (Thread 0x7f95767fc700 (LWP 172214)):
#0  0x00007fb4d9b40e29 in syscall () from /lib64/libc.so.6
#1  0x0000000002a07c54 in futex_wait_private (timeout=0x7f9550000938, expected=<optimized out>, addr1=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/sys_futex.h:40
#2  wait (expected_state=..., timeout=0x7f9550000938, this=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/parking_lot.h:62
#3  bthread::TaskGroup::wait_task (this=this@entry=0x7f95500008c0, tid=tid@entry=0x7f95767fb908) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:127
#4  0x0000000002a0bcfb in bthread::TaskGroup::run_main_task() () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:208
#5  0x00000000029ffaa9 in bthread::TaskControl::worker_thread(void*) () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_control.cpp:78
#6  0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#7  0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 51 (Thread 0x7f9574ff9700 (LWP 172217)):
#0  0x00007fb4d9b40e29 in syscall () from /lib64/libc.so.6
#1  0x0000000002a07c54 in futex_wait_private (timeout=0x7f9540000938, expected=<optimized out>, addr1=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/sys_futex.h:40
#2  wait (expected_state=..., timeout=0x7f9540000938, this=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/parking_lot.h:62
#3  bthread::TaskGroup::wait_task (this=this@entry=0x7f95400008c0, tid=tid@entry=0x7f9574ff8908) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:127
#4  0x0000000002a0bcfb in bthread::TaskGroup::run_main_task() () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:208
#5  0x00000000029ffaa9 in bthread::TaskControl::worker_thread(void*) () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_control.cpp:78
#6  0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#7  0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 50 (Thread 0x7f95567fc700 (LWP 172221)):
#0  0x00007fb4d9b40e29 in syscall () from /lib64/libc.so.6
#1  0x0000000002a07c54 in futex_wait_private (timeout=0x7f9530000938, expected=<optimized out>, addr1=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/sys_futex.h:40
#2  wait (expected_state=..., timeout=0x7f9530000938, this=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/parking_lot.h:62
#3  bthread::TaskGroup::wait_task (this=this@entry=0x7f95300008c0, tid=tid@entry=0x7f95567fb908) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:127
#4  0x0000000002a0bcfb in bthread::TaskGroup::run_main_task() () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:208
#5  0x00000000029ffaa9 in bthread::TaskControl::worker_thread(void*) () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_control.cpp:78
#6  0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#7  0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 49 (Thread 0x7f95557fa700 (LWP 172223)):
#0  0x00007fb4d9b40e29 in syscall () from /lib64/libc.so.6
#1  0x0000000002a07c54 in futex_wait_private (timeout=0x7f9528000938, expected=<optimized out>, addr1=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/sys_futex.h:40
#2  wait (expected_state=..., timeout=0x7f9528000938, this=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/parking_lot.h:62
#3  bthread::TaskGroup::wait_task (this=this@entry=0x7f95280008c0, tid=tid@entry=0x7f95557f9908) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:127
#4  0x0000000002a0bcfb in bthread::TaskGroup::run_main_task() () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:208
#5  0x00000000029ffaa9 in bthread::TaskControl::worker_thread(void*) () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_control.cpp:78
#6  0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#7  0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 48 (Thread 0x7f952d7fa700 (LWP 172230)):
#0  0x00007fb4d9b470e3 in epoll_wait () from /lib64/libc.so.6
#1  0x0000000002a37a13 in brpc::EventDispatcher::Run() () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/brpc/event_dispatcher_epoll.cpp:207
#2  0x0000000002a37b49 in brpc::EventDispatcher::RunThis (arg=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/brpc/event_dispatcher_epoll.cpp:193
#3  0x0000000002a0b5ef in bthread::TaskGroup::task_runner(long) () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:364
#4  0x0000000002b8e381 in bthread_make_fcontext ()
#5  0x0000000000000000 in ?? ()
Thread 47 (Thread 0x7f950a7fc700 (LWP 172235)):
#0  0x00007fb4d9b40e29 in syscall () from /lib64/libc.so.6
#1  0x0000000002a07c54 in futex_wait_private (timeout=0x7f94f8000938, expected=<optimized out>, addr1=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/sys_futex.h:40
#2  wait (expected_state=..., timeout=0x7f94f8000938, this=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/parking_lot.h:62
#3  bthread::TaskGroup::wait_task (this=this@entry=0x7f94f80008c0, tid=tid@entry=0x7f950a7fb908) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:127
#4  0x0000000002a0bcfb in bthread::TaskGroup::run_main_task() () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:208
#5  0x00000000029ffaa9 in bthread::TaskControl::worker_thread(void*) () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_control.cpp:78
#6  0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#7  0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 46 (Thread 0x7f94eb7fe700 (LWP 172240)):
#0  0x00007fb4d9b40e29 in syscall () from /lib64/libc.so.6
#1  0x0000000002a07c54 in futex_wait_private (timeout=0x7f94d8000938, expected=<optimized out>, addr1=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/sys_futex.h:40
#2  wait (expected_state=..., timeout=0x7f94d8000938, this=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/parking_lot.h:62
#3  bthread::TaskGroup::wait_task (this=this@entry=0x7f94d80008c0, tid=tid@entry=0x7f94eb7fd908) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:127
#4  0x0000000002a0bcfb in bthread::TaskGroup::run_main_task() () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:208
#5  0x00000000029ffaa9 in bthread::TaskControl::worker_thread(void*) () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_control.cpp:78
#6  0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#7  0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 45 (Thread 0x7f94ea7fc700 (LWP 172242)):
#0  0x00007fb4d9b40e29 in syscall () from /lib64/libc.so.6
#1  0x0000000002a07c54 in futex_wait_private (timeout=0x7f94d0000938, expected=<optimized out>, addr1=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/sys_futex.h:40
#2  wait (expected_state=..., timeout=0x7f94d0000938, this=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/parking_lot.h:62
#3  bthread::TaskGroup::wait_task (this=this@entry=0x7f94d00008c0, tid=tid@entry=0x7f94ea7fb908) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:127
#4  0x0000000002a0bcfb in bthread::TaskGroup::run_main_task() () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:208
#5  0x00000000029ffaa9 in bthread::TaskControl::worker_thread(void*) () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_control.cpp:78
#6  0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#7  0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 44 (Thread 0x7f94ce7fc700 (LWP 172249)):
#0  0x00007fb4d9b40e29 in syscall () from /lib64/libc.so.6
#1  0x0000000002a07c54 in futex_wait_private (timeout=0x7f94b8000938, expected=<optimized out>, addr1=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/sys_futex.h:40
#2  wait (expected_state=..., timeout=0x7f94b8000938, this=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/parking_lot.h:62
#3  bthread::TaskGroup::wait_task (this=this@entry=0x7f94b80008c0, tid=tid@entry=0x7f94ce7fb908) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:127
#4  0x0000000002a0bcfb in bthread::TaskGroup::run_main_task() () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:208
#5  0x00000000029ffaa9 in bthread::TaskControl::worker_thread(void*) () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_control.cpp:78
#6  0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#7  0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 43 (Thread 0x7f94cdffb700 (LWP 172250)):
#0  0x00007fb4d9b40e29 in syscall () from /lib64/libc.so.6
#1  0x0000000002a07c54 in futex_wait_private (timeout=0x7f94ac000938, expected=<optimized out>, addr1=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/sys_futex.h:40
#2  wait (expected_state=..., timeout=0x7f94ac000938, this=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/parking_lot.h:62
#3  bthread::TaskGroup::wait_task (this=this@entry=0x7f94ac0008c0, tid=tid@entry=0x7f94cdffa908) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:127
#4  0x0000000002a0bcfb in bthread::TaskGroup::run_main_task() () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:208
#5  0x00000000029ffaa9 in bthread::TaskControl::worker_thread(void*) () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_control.cpp:78
#6  0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#7  0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 42 (Thread 0x7f94cd7fa700 (LWP 172251)):
#0  0x00007fb4d9b40e29 in syscall () from /lib64/libc.so.6
#1  0x0000000002a07c54 in futex_wait_private (timeout=0x7f94b0000938, expected=<optimized out>, addr1=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/sys_futex.h:40
#2  wait (expected_state=..., timeout=0x7f94b0000938, this=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/parking_lot.h:62
#3  bthread::TaskGroup::wait_task (this=this@entry=0x7f94b00008c0, tid=tid@entry=0x7f94cd7f9908) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:127
#4  0x0000000002a0bcfb in bthread::TaskGroup::run_main_task() () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:208
#5  0x00000000029ffaa9 in bthread::TaskControl::worker_thread(void*) () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_control.cpp:78
#6  0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#7  0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 41 (Thread 0x7f94777fe700 (LWP 172268)):
#0  0x00007fb4d9b40e29 in syscall () from /lib64/libc.so.6
#1  0x0000000002a07c54 in futex_wait_private (timeout=0x7f9458000938, expected=<optimized out>, addr1=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/sys_futex.h:40
#2  wait (expected_state=..., timeout=0x7f9458000938, this=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/parking_lot.h:62
#3  bthread::TaskGroup::wait_task (this=this@entry=0x7f94580008c0, tid=tid@entry=0x7f94777fd908) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:127
#4  0x0000000002a0bcfb in bthread::TaskGroup::run_main_task() () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:208
#5  0x00000000029ffaa9 in bthread::TaskControl::worker_thread(void*) () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_control.cpp:78
#6  0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#7  0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 40 (Thread 0x7f94457fa700 (LWP 172279)):
#0  0x00007fb4d9b40e29 in syscall () from /lib64/libc.so.6
#1  0x0000000002a07c54 in futex_wait_private (timeout=0x7f9428000938, expected=<optimized out>, addr1=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/sys_futex.h:40
#2  wait (expected_state=..., timeout=0x7f9428000938, this=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/parking_lot.h:62
#3  bthread::TaskGroup::wait_task (this=this@entry=0x7f94280008c0, tid=tid@entry=0x7f94457f9908) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:127
#4  0x0000000002a0bcfb in bthread::TaskGroup::run_main_task() () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:208
#5  0x00000000029ffaa9 in bthread::TaskControl::worker_thread(void*) () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_control.cpp:78
#6  0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#7  0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 39 (Thread 0x7f940d7fa700 (LWP 172293)):
#0  0x00007fb4d9b40e29 in syscall () from /lib64/libc.so.6
#1  0x0000000002a07c54 in futex_wait_private (timeout=0x7f93f0000938, expected=<optimized out>, addr1=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/sys_futex.h:40
#2  wait (expected_state=..., timeout=0x7f93f0000938, this=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/parking_lot.h:62
#3  bthread::TaskGroup::wait_task (this=this@entry=0x7f93f00008c0, tid=tid@entry=0x7f940d7f9908) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:127
#4  0x0000000002a0bcfb in bthread::TaskGroup::run_main_task() () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:208
#5  0x00000000029ffaa9 in bthread::TaskControl::worker_thread(void*) () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_control.cpp:78
#6  0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#7  0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 38 (Thread 0x7f93eaffd700 (LWP 172297)):
#0  0x00007fb4d9b40e29 in syscall () from /lib64/libc.so.6
#1  0x0000000002a07c54 in futex_wait_private (timeout=0x7f93d4000938, expected=<optimized out>, addr1=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/sys_futex.h:40
#2  wait (expected_state=..., timeout=0x7f93d4000938, this=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/parking_lot.h:62
#3  bthread::TaskGroup::wait_task (this=this@entry=0x7f93d40008c0, tid=tid@entry=0x7f93eaffc908) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:127
#4  0x0000000002a0bcfb in bthread::TaskGroup::run_main_task() () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:208
#5  0x00000000029ffaa9 in bthread::TaskControl::worker_thread(void*) () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_control.cpp:78
#6  0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#7  0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 37 (Thread 0x7f93ea7fc700 (LWP 172298)):
#0  0x00007fb4d9b40e29 in syscall () from /lib64/libc.so.6
#1  0x0000000002a07c54 in futex_wait_private (timeout=0x7f93d8000938, expected=<optimized out>, addr1=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/sys_futex.h:40
#2  wait (expected_state=..., timeout=0x7f93d8000938, this=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/parking_lot.h:62
#3  bthread::TaskGroup::wait_task (this=this@entry=0x7f93d80008c0, tid=tid@entry=0x7f93ea7fb908) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:127
#4  0x0000000002a0bcfb in bthread::TaskGroup::run_main_task() () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:208
#5  0x00000000029ffaa9 in bthread::TaskControl::worker_thread(void*) () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_control.cpp:78
#6  0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#7  0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 36 (Thread 0x7f93e9ffb700 (LWP 172299)):
#0  0x00007fb4d9b40e29 in syscall () from /lib64/libc.so.6
#1  0x0000000002a07c54 in futex_wait_private (timeout=0x7f93cc000938, expected=<optimized out>, addr1=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/sys_futex.h:40
#2  wait (expected_state=..., timeout=0x7f93cc000938, this=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/parking_lot.h:62
#3  bthread::TaskGroup::wait_task (this=this@entry=0x7f93cc0008c0, tid=tid@entry=0x7f93e9ffa908) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:127
#4  0x0000000002a0bcfb in bthread::TaskGroup::run_main_task() () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:208
#5  0x00000000029ffaa9 in bthread::TaskControl::worker_thread(void*) () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_control.cpp:78
#6  0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#7  0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 35 (Thread 0x7f93e97fa700 (LWP 172300)):
#0  0x00007fb4d9b40e29 in syscall () from /lib64/libc.so.6
#1  0x0000000002a07c54 in futex_wait_private (timeout=0x7f93c8000938, expected=<optimized out>, addr1=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/sys_futex.h:40
#2  wait (expected_state=..., timeout=0x7f93c8000938, this=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/parking_lot.h:62
#3  bthread::TaskGroup::wait_task (this=this@entry=0x7f93c80008c0, tid=tid@entry=0x7f93e97f9908) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:127
#4  0x0000000002a0bcfb in bthread::TaskGroup::run_main_task() () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:208
#5  0x00000000029ffaa9 in bthread::TaskControl::worker_thread(void*) () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_control.cpp:78
#6  0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#7  0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 34 (Thread 0x7f93d27fc700 (LWP 172305)):
#0  0x00007fb4d9b40e29 in syscall () from /lib64/libc.so.6
#1  0x0000000002a07c54 in futex_wait_private (timeout=0x7f93b0000938, expected=<optimized out>, addr1=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/sys_futex.h:40
#2  wait (expected_state=..., timeout=0x7f93b0000938, this=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/parking_lot.h:62
#3  bthread::TaskGroup::wait_task (this=this@entry=0x7f93b00008c0, tid=tid@entry=0x7f93d27fb908) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:127
#4  0x0000000002a0bcfb in bthread::TaskGroup::run_main_task() () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:208
#5  0x00000000029ffaa9 in bthread::TaskControl::worker_thread(void*) () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_control.cpp:78
#6  0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#7  0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 33 (Thread 0x7f93affff700 (LWP 172309)):
#0  0x00007fb4d9b40e29 in syscall () from /lib64/libc.so.6
#1  0x0000000002a07c54 in futex_wait_private (timeout=0x7f939c000938, expected=<optimized out>, addr1=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/sys_futex.h:40
#2  wait (expected_state=..., timeout=0x7f939c000938, this=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/parking_lot.h:62
#3  bthread::TaskGroup::wait_task (this=this@entry=0x7f939c0008c0, tid=tid@entry=0x7f93afffe908) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:127
#4  0x0000000002a0bcfb in bthread::TaskGroup::run_main_task() () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:208
#5  0x00000000029ffaa9 in bthread::TaskControl::worker_thread(void*) () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_control.cpp:78
#6  0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#7  0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 32 (Thread 0x7f97a04f4700 (LWP 172316)):
#0  0x00007fb4dc3a7a35 in pthread_cond_wait@@GLIBC_2.3.2 () from /lib64/libpthread.so.0
#1  0x0000000001017483 in native_cond_wait (mutex=0x89c3528, cond=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/include/thr_cond.h:161
#2  my_cond_wait (mp=0x89c3528, cond=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/include/thr_cond.h:161
#3  inline_mysql_cond_wait (src_file=0x2ddc178 "/data/adbbm/aidb_v5_dev/for_mysql/sql/mysqld_thd_manager.cc", src_line=280, mutex=0x89c3528, that=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/include/mysql/psi/mysql_cond.h:198
#4  Global_THD_manager::wait_till_no_thd() () at /data/adbbm/aidb_v5_dev/for_mysql/sql/mysqld_thd_manager.cc:280
#5  0x0000000000ffc4af in close_connections () at /data/adbbm/aidb_v5_dev/for_mysql/sql/mysqld.cc:2306
#6  signal_hand () at /data/adbbm/aidb_v5_dev/for_mysql/sql/mysqld.cc:3632
#7  0x00000000027b21b4 in pfs_spawn_thread (arg=0xa3df330) at /data/adbbm/aidb_v5_dev/for_mysql/storage/perfschema/pfs.cc:2946
#8  0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#9  0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 31 (Thread 0x7f900cfde700 (LWP 210466)):
#0  0x00007fb4d9b40e29 in syscall () from /lib64/libc.so.6
#1  0x0000000002a07c54 in futex_wait_private (timeout=0x7f8dd0016138, expected=<optimized out>, addr1=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/sys_futex.h:40
#2  wait (expected_state=..., timeout=0x7f8dd0016138, this=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/parking_lot.h:62
#3  bthread::TaskGroup::wait_task (this=this@entry=0x7f8dd00160c0, tid=tid@entry=0x7f900cfdd908) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:127
#4  0x0000000002a0bcfb in bthread::TaskGroup::run_main_task() () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:208
#5  0x00000000029ffaa9 in bthread::TaskControl::worker_thread(void*) () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_control.cpp:78
#6  0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#7  0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 30 (Thread 0x7f8fd5ffe700 (LWP 210467)):
#0  0x00007fb4d9b40e29 in syscall () from /lib64/libc.so.6
#1  0x0000000002a07c54 in futex_wait_private (timeout=0x7f915c026418, expected=<optimized out>, addr1=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/sys_futex.h:40
#2  wait (expected_state=..., timeout=0x7f915c026418, this=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/parking_lot.h:62
#3  bthread::TaskGroup::wait_task (this=this@entry=0x7f915c0263a0, tid=tid@entry=0x7f8fd5ffd908) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:127
#4  0x0000000002a0bcfb in bthread::TaskGroup::run_main_task() () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:208
#5  0x00000000029ffaa9 in bthread::TaskControl::worker_thread(void*) () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_control.cpp:78
#6  0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#7  0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 29 (Thread 0x7f8fd57fd700 (LWP 210468)):
#0  0x00007fb4d9b40e29 in syscall () from /lib64/libc.so.6
#1  0x0000000002a07c54 in futex_wait_private (timeout=0x7f8f2c03cbf8, expected=<optimized out>, addr1=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/sys_futex.h:40
#2  wait (expected_state=..., timeout=0x7f8f2c03cbf8, this=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/parking_lot.h:62
#3  bthread::TaskGroup::wait_task (this=this@entry=0x7f8f2c03cb80, tid=tid@entry=0x7f8fd57fc908) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:127
#4  0x0000000002a0bcfb in bthread::TaskGroup::run_main_task() () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:208
#5  0x00000000029ffaa9 in bthread::TaskControl::worker_thread(void*) () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_control.cpp:78
#6  0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#7  0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 28 (Thread 0x7f8f55ffe700 (LWP 210473)):
#0  0x00007fb4d9b40e29 in syscall () from /lib64/libc.so.6
#1  0x0000000002a07c54 in futex_wait_private (timeout=0x7f911c027968, expected=<optimized out>, addr1=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/sys_futex.h:40
#2  wait (expected_state=..., timeout=0x7f911c027968, this=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/parking_lot.h:62
#3  bthread::TaskGroup::wait_task (this=this@entry=0x7f911c0278f0, tid=tid@entry=0x7f8f55ffd908) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:127
#4  0x0000000002a0bcfb in bthread::TaskGroup::run_main_task() () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:208
#5  0x00000000029ffaa9 in bthread::TaskControl::worker_thread(void*) () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_control.cpp:78
#6  0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#7  0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 27 (Thread 0x7f8f45ffe700 (LWP 210476)):
#0  0x00007fb4d9b40e29 in syscall () from /lib64/libc.so.6
#1  0x0000000002a07c54 in futex_wait_private (timeout=0x7f92d8030468, expected=<optimized out>, addr1=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/sys_futex.h:40
#2  wait (expected_state=..., timeout=0x7f92d8030468, this=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/parking_lot.h:62
#3  bthread::TaskGroup::wait_task (this=this@entry=0x7f92d80303f0, tid=tid@entry=0x7f8f45ffd908) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:127
#4  0x0000000002a0bcfb in bthread::TaskGroup::run_main_task() () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:208
#5  0x00000000029ffaa9 in bthread::TaskControl::worker_thread(void*) () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_control.cpp:78
#6  0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#7  0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 26 (Thread 0x7f8f44ffc700 (LWP 210478)):
#0  0x00007fb4d9b40e29 in syscall () from /lib64/libc.so.6
#1  0x0000000002a07c54 in futex_wait_private (timeout=0x7f84cc03c648, expected=<optimized out>, addr1=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/sys_futex.h:40
#2  wait (expected_state=..., timeout=0x7f84cc03c648, this=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/parking_lot.h:62
#3  bthread::TaskGroup::wait_task (this=this@entry=0x7f84cc03c5d0, tid=tid@entry=0x7f8f44ffb908) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:127
#4  0x0000000002a0bcfb in bthread::TaskGroup::run_main_task() () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:208
#5  0x00000000029ffaa9 in bthread::TaskControl::worker_thread(void*) () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_control.cpp:78
#6  0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#7  0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 25 (Thread 0x7f8f35ffe700 (LWP 210479)):
#0  0x00007fb4d9b40e29 in syscall () from /lib64/libc.so.6
#1  0x0000000002a07c54 in futex_wait_private (timeout=0x7f8eb400b0a8, expected=<optimized out>, addr1=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/sys_futex.h:40
#2  wait (expected_state=..., timeout=0x7f8eb400b0a8, this=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/parking_lot.h:62
#3  bthread::TaskGroup::wait_task (this=this@entry=0x7f8eb400b030, tid=tid@entry=0x7f8f35ffd908) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:127
#4  0x0000000002a0bcfb in bthread::TaskGroup::run_main_task() () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:208
#5  0x00000000029ffaa9 in bthread::TaskControl::worker_thread(void*) () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_control.cpp:78
#6  0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#7  0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 24 (Thread 0x7f8f357fd700 (LWP 210480)):
#0  0x00007fb4d9b40e29 in syscall () from /lib64/libc.so.6
#1  0x0000000002a07c54 in futex_wait_private (timeout=0x7f951c068ba8, expected=<optimized out>, addr1=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/sys_futex.h:40
#2  wait (expected_state=..., timeout=0x7f951c068ba8, this=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/parking_lot.h:62
#3  bthread::TaskGroup::wait_task (this=this@entry=0x7f951c068b30, tid=tid@entry=0x7f8f357fc908) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:127
#4  0x0000000002a0bcfb in bthread::TaskGroup::run_main_task() () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:208
#5  0x00000000029ffaa9 in bthread::TaskControl::worker_thread(void*) () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_control.cpp:78
#6  0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#7  0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 23 (Thread 0x7f8f21ffc700 (LWP 210482)):
#0  0x00007fb4d9b40e29 in syscall () from /lib64/libc.so.6
#1  0x0000000002a07c54 in futex_wait_private (timeout=0x7f9138044df8, expected=<optimized out>, addr1=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/sys_futex.h:40
#2  wait (expected_state=..., timeout=0x7f9138044df8, this=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/parking_lot.h:62
#3  bthread::TaskGroup::wait_task (this=this@entry=0x7f9138044d80, tid=tid@entry=0x7f8f21ffb908) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:127
#4  0x0000000002a0bcfb in bthread::TaskGroup::run_main_task() () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:208
#5  0x00000000029ffaa9 in bthread::TaskControl::worker_thread(void*) () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_control.cpp:78
#6  0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#7  0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 22 (Thread 0x7f8f20ffa700 (LWP 210484)):
#0  0x00007fb4d9b40e29 in syscall () from /lib64/libc.so.6
#1  0x0000000002a07c54 in futex_wait_private (timeout=0x7f80cc0269a8, expected=<optimized out>, addr1=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/sys_futex.h:40
#2  wait (expected_state=..., timeout=0x7f80cc0269a8, this=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/parking_lot.h:62
#3  bthread::TaskGroup::wait_task (this=this@entry=0x7f80cc026930, tid=tid@entry=0x7f8f20ff9908) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:127
#4  0x0000000002a0bcfb in bthread::TaskGroup::run_main_task() () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:208
#5  0x00000000029ffaa9 in bthread::TaskControl::worker_thread(void*) () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_control.cpp:78
#6  0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#7  0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 21 (Thread 0x7f8f097f5700 (LWP 210487)):
#0  0x00007fb4d9b40e29 in syscall () from /lib64/libc.so.6
#1  0x0000000002a07c54 in futex_wait_private (timeout=0x7f930c031a58, expected=<optimized out>, addr1=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/sys_futex.h:40
#2  wait (expected_state=..., timeout=0x7f930c031a58, this=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/parking_lot.h:62
#3  bthread::TaskGroup::wait_task (this=this@entry=0x7f930c0319e0, tid=tid@entry=0x7f8f097f4908) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:127
#4  0x0000000002a0bcfb in bthread::TaskGroup::run_main_task() () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:208
#5  0x00000000029ffaa9 in bthread::TaskControl::worker_thread(void*) () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_control.cpp:78
#6  0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#7  0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 20 (Thread 0x7f8ebdffe700 (LWP 213044)):
#0  0x00007fb4d9b40e29 in syscall () from /lib64/libc.so.6
#1  0x0000000002a07c54 in futex_wait_private (timeout=0x7f91f801fca8, expected=<optimized out>, addr1=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/sys_futex.h:40
#2  wait (expected_state=..., timeout=0x7f91f801fca8, this=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/parking_lot.h:62
#3  bthread::TaskGroup::wait_task (this=this@entry=0x7f91f801fc30, tid=tid@entry=0x7f8ebdffd908) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:127
#4  0x0000000002a0bcfb in bthread::TaskGroup::run_main_task() () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:208
#5  0x00000000029ffaa9 in bthread::TaskControl::worker_thread(void*) () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_control.cpp:78
#6  0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#7  0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 19 (Thread 0x7f8e90ffc700 (LWP 213052)):
#0  0x00007fb4d9b40e29 in syscall () from /lib64/libc.so.6
#1  0x0000000002a07c54 in futex_wait_private (timeout=0x7f84940308c8, expected=<optimized out>, addr1=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/sys_futex.h:40
#2  wait (expected_state=..., timeout=0x7f84940308c8, this=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/parking_lot.h:62
#3  bthread::TaskGroup::wait_task (this=this@entry=0x7f8494030850, tid=tid@entry=0x7f8e90ffb908) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:127
#4  0x0000000002a0bcfb in bthread::TaskGroup::run_main_task() () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:208
#5  0x00000000029ffaa9 in bthread::TaskControl::worker_thread(void*) () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_control.cpp:78
#6  0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#7  0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 18 (Thread 0x7f8e60ffc700 (LWP 213061)):
#0  0x00007fb4d9b40e29 in syscall () from /lib64/libc.so.6
#1  0x0000000002a07c54 in futex_wait_private (timeout=0x7f85140322f8, expected=<optimized out>, addr1=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/sys_futex.h:40
#2  wait (expected_state=..., timeout=0x7f85140322f8, this=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/parking_lot.h:62
#3  bthread::TaskGroup::wait_task (this=this@entry=0x7f8514032280, tid=tid@entry=0x7f8e60ffb908) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:127
#4  0x0000000002a0bcfb in bthread::TaskGroup::run_main_task() () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:208
#5  0x00000000029ffaa9 in bthread::TaskControl::worker_thread(void*) () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_control.cpp:78
#6  0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#7  0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 17 (Thread 0x7f8e49ffa700 (LWP 213062)):
#0  0x00007fb4d9b40e29 in syscall () from /lib64/libc.so.6
#1  0x0000000002a07c54 in futex_wait_private (timeout=0x7f92f4033548, expected=<optimized out>, addr1=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/sys_futex.h:40
#2  wait (expected_state=..., timeout=0x7f92f4033548, this=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/parking_lot.h:62
#3  bthread::TaskGroup::wait_task (this=this@entry=0x7f92f40334d0, tid=tid@entry=0x7f8e49ff9908) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:127
#4  0x0000000002a0bcfb in bthread::TaskGroup::run_main_task() () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:208
#5  0x00000000029ffaa9 in bthread::TaskControl::worker_thread(void*) () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_control.cpp:78
#6  0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#7  0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 16 (Thread 0x7f8e40ffc700 (LWP 213067)):
#0  0x00007fb4d9b40e29 in syscall () from /lib64/libc.so.6
#1  0x0000000002a07c54 in futex_wait_private (timeout=0x7f94bc03f568, expected=<optimized out>, addr1=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/sys_futex.h:40
#2  wait (expected_state=..., timeout=0x7f94bc03f568, this=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/parking_lot.h:62
#3  bthread::TaskGroup::wait_task (this=this@entry=0x7f94bc03f4f0, tid=tid@entry=0x7f8e40ffb908) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:127
#4  0x0000000002a0bcfb in bthread::TaskGroup::run_main_task() () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:208
#5  0x00000000029ffaa9 in bthread::TaskControl::worker_thread(void*) () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_control.cpp:78
#6  0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#7  0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 15 (Thread 0x7f8e29ff6700 (LWP 213068)):
#0  0x00007fb4d9b40e29 in syscall () from /lib64/libc.so.6
#1  0x0000000002a07c54 in futex_wait_private (timeout=0x7f8e000127f8, expected=<optimized out>, addr1=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/sys_futex.h:40
#2  wait (expected_state=..., timeout=0x7f8e000127f8, this=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/parking_lot.h:62
#3  bthread::TaskGroup::wait_task (this=this@entry=0x7f8e00012780, tid=tid@entry=0x7f8e29ff5908) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:127
#4  0x0000000002a0bcfb in bthread::TaskGroup::run_main_task() () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:208
#5  0x00000000029ffaa9 in bthread::TaskControl::worker_thread(void*) () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_control.cpp:78
#6  0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#7  0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 14 (Thread 0x7f8dedffe700 (LWP 213074)):
#0  0x00007fb4d9b40e29 in syscall () from /lib64/libc.so.6
#1  0x0000000002a07c54 in futex_wait_private (timeout=0x7f917c0204d8, expected=<optimized out>, addr1=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/sys_futex.h:40
#2  wait (expected_state=..., timeout=0x7f917c0204d8, this=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/parking_lot.h:62
#3  bthread::TaskGroup::wait_task (this=this@entry=0x7f917c020460, tid=tid@entry=0x7f8dedffd908) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:127
#4  0x0000000002a0bcfb in bthread::TaskGroup::run_main_task() () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:208
#5  0x00000000029ffaa9 in bthread::TaskControl::worker_thread(void*) () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_control.cpp:78
#6  0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#7  0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 13 (Thread 0x7f8dddffe700 (LWP 213080)):
#0  0x00007fb4d9b40e29 in syscall () from /lib64/libc.so.6
#1  0x0000000002a07c54 in futex_wait_private (timeout=0x7f9454000978, expected=<optimized out>, addr1=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/sys_futex.h:40
#2  wait (expected_state=..., timeout=0x7f9454000978, this=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/parking_lot.h:62
#3  bthread::TaskGroup::wait_task (this=this@entry=0x7f9454000900, tid=tid@entry=0x7f8dddffd908) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:127
#4  0x0000000002a0bcfb in bthread::TaskGroup::run_main_task() () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:208
#5  0x00000000029ffaa9 in bthread::TaskControl::worker_thread(void*) () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_control.cpp:78
#6  0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#7  0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 12 (Thread 0x7f8d7dff2700 (LWP 213089)):
#0  0x00007fb4d9b40e29 in syscall () from /lib64/libc.so.6
#1  0x0000000002a07c54 in futex_wait_private (timeout=0x7f91800097f8, expected=<optimized out>, addr1=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/sys_futex.h:40
#2  wait (expected_state=..., timeout=0x7f91800097f8, this=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/parking_lot.h:62
#3  bthread::TaskGroup::wait_task (this=this@entry=0x7f9180009780, tid=tid@entry=0x7f8d7dff1908) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:127
#4  0x0000000002a0bcfb in bthread::TaskGroup::run_main_task() () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:208
#5  0x00000000029ffaa9 in bthread::TaskControl::worker_thread(void*) () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_control.cpp:78
#6  0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#7  0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 11 (Thread 0x7f8d7d7f1700 (LWP 213090)):
#0  0x00007fb4d9b40e29 in syscall () from /lib64/libc.so.6
#1  0x0000000002a07c54 in futex_wait_private (timeout=0x7f8da0020dc8, expected=<optimized out>, addr1=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/sys_futex.h:40
#2  wait (expected_state=..., timeout=0x7f8da0020dc8, this=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/parking_lot.h:62
#3  bthread::TaskGroup::wait_task (this=this@entry=0x7f8da0020d50, tid=tid@entry=0x7f8d7d7f0908) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:127
#4  0x0000000002a0bcfb in bthread::TaskGroup::run_main_task() () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:208
#5  0x00000000029ffaa9 in bthread::TaskControl::worker_thread(void*) () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_control.cpp:78
#6  0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#7  0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 10 (Thread 0x7f8d58ff2700 (LWP 213098)):
#0  0x00007fb4d9b40e29 in syscall () from /lib64/libc.so.6
#1  0x0000000002a07c54 in futex_wait_private (timeout=0x7f92980208a8, expected=<optimized out>, addr1=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/sys_futex.h:40
#2  wait (expected_state=..., timeout=0x7f92980208a8, this=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/parking_lot.h:62
#3  bthread::TaskGroup::wait_task (this=this@entry=0x7f9298020830, tid=tid@entry=0x7f8d58ff1908) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:127
#4  0x0000000002a0bcfb in bthread::TaskGroup::run_main_task() () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:208
#5  0x00000000029ffaa9 in bthread::TaskControl::worker_thread(void*) () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_control.cpp:78
#6  0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#7  0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 9 (Thread 0x7f8d517fd700 (LWP 213100)):
#0  0x00007fb4d9b40e29 in syscall () from /lib64/libc.so.6
#1  0x0000000002a07c54 in futex_wait_private (timeout=0x7f9310026bc8, expected=<optimized out>, addr1=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/sys_futex.h:40
#2  wait (expected_state=..., timeout=0x7f9310026bc8, this=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/parking_lot.h:62
#3  bthread::TaskGroup::wait_task (this=this@entry=0x7f9310026b50, tid=tid@entry=0x7f8d517fc908) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:127
#4  0x0000000002a0bcfb in bthread::TaskGroup::run_main_task() () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:208
#5  0x00000000029ffaa9 in bthread::TaskControl::worker_thread(void*) () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_control.cpp:78
#6  0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#7  0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 8 (Thread 0x7f8d38ffc700 (LWP 213107)):
#0  0x00007fb4d9b40e29 in syscall () from /lib64/libc.so.6
#1  0x0000000002a07c54 in futex_wait_private (timeout=0x7f57a000c558, expected=<optimized out>, addr1=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/sys_futex.h:40
#2  wait (expected_state=..., timeout=0x7f57a000c558, this=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/parking_lot.h:62
#3  bthread::TaskGroup::wait_task (this=this@entry=0x7f57a000c4e0, tid=tid@entry=0x7f8d38ffb908) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:127
#4  0x0000000002a0bcfb in bthread::TaskGroup::run_main_task() () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:208
#5  0x00000000029ffaa9 in bthread::TaskControl::worker_thread(void*) () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_control.cpp:78
#6  0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#7  0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 7 (Thread 0x7f8d30ffc700 (LWP 213110)):
#0  0x00007fb4d9b40e29 in syscall () from /lib64/libc.so.6
#1  0x0000000002a07c54 in futex_wait_private (timeout=0x7f9010005918, expected=<optimized out>, addr1=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/sys_futex.h:40
#2  wait (expected_state=..., timeout=0x7f9010005918, this=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/parking_lot.h:62
#3  bthread::TaskGroup::wait_task (this=this@entry=0x7f90100058a0, tid=tid@entry=0x7f8d30ffb908) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:127
#4  0x0000000002a0bcfb in bthread::TaskGroup::run_main_task() () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:208
#5  0x00000000029ffaa9 in bthread::TaskControl::worker_thread(void*) () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_control.cpp:78
#6  0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#7  0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 6 (Thread 0x7f85e9c5e700 (LWP 213111)):
#0  0x00007fb4d9b40e29 in syscall () from /lib64/libc.so.6
#1  0x0000000002a07c54 in futex_wait_private (timeout=0x7f5fc4020e88, expected=<optimized out>, addr1=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/sys_futex.h:40
#2  wait (expected_state=..., timeout=0x7f5fc4020e88, this=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/parking_lot.h:62
#3  bthread::TaskGroup::wait_task (this=this@entry=0x7f5fc4020e10, tid=tid@entry=0x7f85e9c5d908) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:127
#4  0x0000000002a0bcfb in bthread::TaskGroup::run_main_task() () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:208
#5  0x00000000029ffaa9 in bthread::TaskControl::worker_thread(void*) () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_control.cpp:78
#6  0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#7  0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 5 (Thread 0x7f85e945d700 (LWP 213112)):
#0  0x00007fb4d9b40e29 in syscall () from /lib64/libc.so.6
#1  0x0000000002a07c54 in futex_wait_private (timeout=0x7f90f4068318, expected=<optimized out>, addr1=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/sys_futex.h:40
#2  wait (expected_state=..., timeout=0x7f90f4068318, this=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/parking_lot.h:62
#3  bthread::TaskGroup::wait_task (this=this@entry=0x7f90f40682a0, tid=tid@entry=0x7f85e945c908) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:127
#4  0x0000000002a0bcfb in bthread::TaskGroup::run_main_task() () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:208
#5  0x00000000029ffaa9 in bthread::TaskControl::worker_thread(void*) () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_control.cpp:78
#6  0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#7  0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 4 (Thread 0x7f85e8c5c700 (LWP 213113)):
#0  0x00007fb4d9b40e29 in syscall () from /lib64/libc.so.6
#1  0x0000000002a07c54 in futex_wait_private (timeout=0x7f8dcc000b38, expected=<optimized out>, addr1=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/sys_futex.h:40
#2  wait (expected_state=..., timeout=0x7f8dcc000b38, this=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/parking_lot.h:62
#3  bthread::TaskGroup::wait_task (this=this@entry=0x7f8dcc000ac0, tid=tid@entry=0x7f85e8c5b908) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:127
#4  0x0000000002a0bcfb in bthread::TaskGroup::run_main_task() () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:208
#5  0x00000000029ffaa9 in bthread::TaskControl::worker_thread(void*) () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_control.cpp:78
#6  0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#7  0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 3 (Thread 0x7f8550ffa700 (LWP 213119)):
#0  0x00007fb4d9b40e29 in syscall () from /lib64/libc.so.6
#1  0x0000000002a07c54 in futex_wait_private (timeout=0x7f84a00228e8, expected=<optimized out>, addr1=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/sys_futex.h:40
#2  wait (expected_state=..., timeout=0x7f84a00228e8, this=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/parking_lot.h:62
#3  bthread::TaskGroup::wait_task (this=this@entry=0x7f84a0022870, tid=tid@entry=0x7f8550ff9908) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:127
#4  0x0000000002a0bcfb in bthread::TaskGroup::run_main_task() () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:208
#5  0x00000000029ffaa9 in bthread::TaskControl::worker_thread(void*) () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_control.cpp:78
#6  0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#7  0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 2 (Thread 0x7f8540ffc700 (LWP 213122)):
#0  0x00007fb4d9b40e29 in syscall () from /lib64/libc.so.6
#1  0x0000000002a07c54 in futex_wait_private (timeout=0x7f8f8c0f5ad8, expected=<optimized out>, addr1=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/sys_futex.h:40
#2  wait (expected_state=..., timeout=0x7f8f8c0f5ad8, this=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/parking_lot.h:62
#3  bthread::TaskGroup::wait_task (this=this@entry=0x7f8f8c0f5a60, tid=tid@entry=0x7f8540ffb908) at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:127
#4  0x0000000002a0bcfb in bthread::TaskGroup::run_main_task() () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_group.cpp:208
#5  0x00000000029ffaa9 in bthread::TaskControl::worker_thread(void*) () at /data/adbbm/aidb_v5_dev/for_mysql/3rd/brpc/src/bthread/task_control.cpp:78
#6  0x00007fb4dc3a3ea5 in start_thread () from /lib64/libpthread.so.0
#7  0x00007fb4d9b46b0d in clone () from /lib64/libc.so.6
Thread 1 (Thread 0x7fb4dc7c9c00 (LWP 171930)):
#0  0x00007fb4dc3a5017 in pthread_join () from /lib64/libpthread.so.0
#1  0x000000000228b488 in my_thread_join (thread=<optimized out>, value_ptr=<optimized out>) at /data/adbbm/aidb_v5_dev/for_mysql/mysys/my_thread.cc:122
#2  0x00000000010142a1 in mysqld_main(int, char**) () at /data/adbbm/aidb_v5_dev/for_mysql/sql/mysqld.cc:7834
#3  0x00007fb4d9a6a555 in __libc_start_main () from /lib64/libc.so.6
#4  0x0000000000ff6664 in _start () at /data/adbbm/aidb_v5_dev/for_mysql/include/my_sys.h:864
