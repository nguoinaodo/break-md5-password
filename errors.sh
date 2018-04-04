# ERROR:
# run only rank 0
[client:20480] *** Process received signal ***
[client:20480] Signal: Aborted (6)
[client:20480] Signal code:  (-6)
[client:20480] [ 0] /lib/x86_64-linux-gnu/libpthread.so.0(+0x11390)[0x7f5e8b56d390]
[client:20480] [ 1] /lib/x86_64-linux-gnu/libc.so.6(gsignal+0x38)[0x7f5e8b1c7428]
[client:20480] [ 2] /lib/x86_64-linux-gnu/libc.so.6(abort+0x16a)[0x7f5e8b1c902a]
[client:20480] [ 3] /lib/x86_64-linux-gnu/libc.so.6(+0x777ea)[0x7f5e8b2097ea]
[client:20480] [ 4] /lib/x86_64-linux-gnu/libc.so.6(__fortify_fail+0x5c)[0x7f5e8b2ab11c]
[client:20480] [ 5] /lib/x86_64-linux-gnu/libc.so.6(__fortify_fail+0x0)[0x7f5e8b2ab0c0]
[client:20480] [ 6] ./main[0x402a17]
[client:20480] [ 7] ./main[0x402230]
[client:20480] [ 8] ./main[0x40193d]
[client:20480] [ 9] /lib/x86_64-linux-gnu/libc.so.6(__libc_start_main+0xf0)[0x7f5e8b1b2830]
[client:20480] [10] ./main[0x400d79]
[client:20480] *** End of error message ***
--------------------------------------------------------------------------
mpirun noticed that process rank 0 with PID 20480 on node client exited on signal 6 (Aborted).
# error in generate_hash_compare()
# error in md5 hash
# TRY FIX: do not use strcat
# use strcpy:
uint8_t *p;
char temp[8];

p=(uint8_t *)&h0;
sprintf(temp, "%2.2x%2.2x%2.2x%2.2x", p[0], p[1], p[2], p[3]);
strcpy(out, temp);

p=(uint8_t *)&h1;
sprintf(temp, "%2.2x%2.2x%2.2x%2.2x", p[0], p[1], p[2], p[3]);
strcpy(out + 8, temp);

p=(uint8_t *)&h2;
sprintf(temp, "%2.2x%2.2x%2.2x%2.2x", p[0], p[1], p[2], p[3]);
strcpy(out + 16, temp);

p=(uint8_t *)&h3;
sprintf(temp, "%2.2x%2.2x%2.2x%2.2x", p[0], p[1], p[2], p[3]);
strcpy(out + 24, temp);
# FIXED

########################################################################
# ERROR
# string length: use char hashed[32] --> error because length must be 32 (md5) + 1 ('\0')
# FIX: 
char hashed[33];
# FIXED