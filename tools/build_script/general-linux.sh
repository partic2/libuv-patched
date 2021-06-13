

# LIBUV_SOURCE_ROOT='C:\Users\Public\fs\msys\home\repo-storage\libuv-patched'

LDFLAGS="$LDLAGS  -lpthread -ldl -lrt "
CFLAGS="$CFLAGS  -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -D_GNU_SOURCE -D_POSIX_C_SOURCE=200112 -I${LIBUV_SOURCE_ROOT}/include -I${LIBUV_SOURCE_ROOT}/src"
uv_source=" ${LIBUV_SOURCE_ROOT}/src/fs-poll.c ${LIBUV_SOURCE_ROOT}/src/idna.c ${LIBUV_SOURCE_ROOT}/src/inet.c ${LIBUV_SOURCE_ROOT}/src/random.c ${LIBUV_SOURCE_ROOT}/src/strscpy.c ${LIBUV_SOURCE_ROOT}/src/threadpool.c ${LIBUV_SOURCE_ROOT}/src/timer.c ${LIBUV_SOURCE_ROOT}/src/uv-common.c ${LIBUV_SOURCE_ROOT}/src/uv-data-getter-setters.c ${LIBUV_SOURCE_ROOT}/src/version.c ${LIBUV_SOURCE_ROOT}/src/unix/async.c ${LIBUV_SOURCE_ROOT}/src/unix/core.c ${LIBUV_SOURCE_ROOT}/src/unix/dl.c ${LIBUV_SOURCE_ROOT}/src/unix/fs.c ${LIBUV_SOURCE_ROOT}/src/unix/getaddrinfo.c ${LIBUV_SOURCE_ROOT}/src/unix/getnameinfo.c ${LIBUV_SOURCE_ROOT}/src/unix/loop-watcher.c ${LIBUV_SOURCE_ROOT}/src/unix/loop.c ${LIBUV_SOURCE_ROOT}/src/unix/pipe.c ${LIBUV_SOURCE_ROOT}/src/unix/poll.c ${LIBUV_SOURCE_ROOT}/src/unix/process.c ${LIBUV_SOURCE_ROOT}/src/unix/random-devurandom.c ${LIBUV_SOURCE_ROOT}/src/unix/signal.c ${LIBUV_SOURCE_ROOT}/src/unix/stream.c ${LIBUV_SOURCE_ROOT}/src/unix/tcp.c ${LIBUV_SOURCE_ROOT}/src/unix/thread.c ${LIBUV_SOURCE_ROOT}/src/unix/tty.c ${LIBUV_SOURCE_ROOT}/src/unix/udp.c ${LIBUV_SOURCE_ROOT}/src/unix/proctitle.c ${LIBUV_SOURCE_ROOT}/src/unix/linux-core.c ${LIBUV_SOURCE_ROOT}/src/unix/linux-inotify.c ${LIBUV_SOURCE_ROOT}/src/unix/linux-syscalls.c ${LIBUV_SOURCE_ROOT}/src/unix/procfs-exepath.c ${LIBUV_SOURCE_ROOT}/src/unix/random-getrandom.c ${LIBUV_SOURCE_ROOT}/src/unix/random-sysctl-linux.c "
rm -R build
mkdir build
cd build
$CC -c $CFLAGS $uv_source
$CC -shared -o libuv.so *.o