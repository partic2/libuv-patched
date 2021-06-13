

# LIBUV_SOURCE_ROOT='C:\Users\Public\fs\msys\home\repo-storage\libuv-patched'

LDFLAGS="$LDLAGS  -lpsapi -luser32 -ladvapi32 -liphlpapi -luserenv -lws2_32 "
CFLAGS="$CFLAGS  -DWIN32_LEAN_AND_MEAN -D_WIN32_WINNT=0x0602 -I${LIBUV_SOURCE_ROOT}/include -I${LIBUV_SOURCE_ROOT}/src"
uv_source=" ${LIBUV_SOURCE_ROOT}/src/fs-poll.c ${LIBUV_SOURCE_ROOT}/src/idna.c ${LIBUV_SOURCE_ROOT}/src/inet.c ${LIBUV_SOURCE_ROOT}/src/random.c ${LIBUV_SOURCE_ROOT}/src/strscpy.c ${LIBUV_SOURCE_ROOT}/src/threadpool.c ${LIBUV_SOURCE_ROOT}/src/timer.c ${LIBUV_SOURCE_ROOT}/src/uv-common.c ${LIBUV_SOURCE_ROOT}/src/uv-data-getter-setters.c ${LIBUV_SOURCE_ROOT}/src/version.c ${LIBUV_SOURCE_ROOT}/src/win/async.c ${LIBUV_SOURCE_ROOT}/src/win/core.c ${LIBUV_SOURCE_ROOT}/src/win/detect-wakeup.c ${LIBUV_SOURCE_ROOT}/src/win/dl.c ${LIBUV_SOURCE_ROOT}/src/win/error.c ${LIBUV_SOURCE_ROOT}/src/win/fs.c ${LIBUV_SOURCE_ROOT}/src/win/fs-event.c ${LIBUV_SOURCE_ROOT}/src/win/getaddrinfo.c ${LIBUV_SOURCE_ROOT}/src/win/getnameinfo.c ${LIBUV_SOURCE_ROOT}/src/win/handle.c ${LIBUV_SOURCE_ROOT}/src/win/loop-watcher.c ${LIBUV_SOURCE_ROOT}/src/win/pipe.c ${LIBUV_SOURCE_ROOT}/src/win/thread.c ${LIBUV_SOURCE_ROOT}/src/win/poll.c ${LIBUV_SOURCE_ROOT}/src/win/process.c ${LIBUV_SOURCE_ROOT}/src/win/process-stdio.c ${LIBUV_SOURCE_ROOT}/src/win/signal.c ${LIBUV_SOURCE_ROOT}/src/win/snprintf.c ${LIBUV_SOURCE_ROOT}/src/win/stream.c ${LIBUV_SOURCE_ROOT}/src/win/tcp.c ${LIBUV_SOURCE_ROOT}/src/win/tty.c ${LIBUV_SOURCE_ROOT}/src/win/udp.c ${LIBUV_SOURCE_ROOT}/src/win/util.c ${LIBUV_SOURCE_ROOT}/src/win/winapi.c ${LIBUV_SOURCE_ROOT}/src/win/winsock.c "
rm -R build
mkdir build
cd build
$CC -c $CFLAGS $uv_source
$CC -shared -o libuv.dll *.o $LDFLAGS