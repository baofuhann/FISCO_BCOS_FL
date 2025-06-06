/* MHD_config.h.  Generated from MHD_config.h.in by configure.  */
/* MHD_config.h.in.  Generated from configure.ac by autoheader.  */

/* Define if building universal (internal helper macro) */
/* #undef AC_APPLE_UNIVERSAL_BUILD */

/* Define to 1 if libmicrohttpd is compiled with basic Auth support. */
#define BAUTH_SUPPORT 1

/* This is a Cygwin system */
/* #undef CYGWIN */

/* Define to 1 if libmicrohttpd is compiled with digest Auth support. */
#define DAUTH_SUPPORT 1

/* Define to 1 if translation of program messages to the user's native
   language is requested. */
#define ENABLE_NLS 1

/* Define to 1 to enable epoll support */
/* #undef EPOLL_SUPPORT */

/* This is a FreeBSD system */
/* #undef FREEBSD */

/* Define to `1' if host machine runs on GNU Hurd. */
/* #undef GNU_HURD */

/* Define to 1 if you have the `accept4' function. */
/* #undef HAVE_ACCEPT4 */

/* Define to 1 if you have the <arpa/inet.h> header file. */
#define HAVE_ARPA_INET_H 1

/* Define if you have usable assert() and assert.h */
/* #undef HAVE_ASSERT */

/* Define to 1 if you have the `gmtime_s' function in C11 form. */
/* #undef HAVE_C11_GMTIME_S */

/* Define to 1 if you have the usable `calloc' function. */
#define HAVE_CALLOC 1

/* Define to 1 if you have the Mac OS X function CFLocaleCopyCurrent in the
   CoreFoundation framework. */
#define HAVE_CFLOCALECOPYCURRENT 1

/* Define to 1 if you have the Mac OS X function CFPreferencesCopyAppValue in
   the CoreFoundation framework. */
#define HAVE_CFPREFERENCESCOPYAPPVALUE 1

/* Have clock_gettime */
#define HAVE_CLOCK_GETTIME 1

/* Define to 1 if you have `clock_get_time', `host_get_clock_service' and
   `mach_port_deallocate' functions. */
#define HAVE_CLOCK_GET_TIME 1

/* Define to 1 if C supports variable-length arrays. */
#define HAVE_C_VARARRAYS 1

/* Define to 1 if you have Darwin-style sendfile(2). */
#define HAVE_DARWIN_SENDFILE 1

/* Define if the GNU dcgettext() function is already present or preinstalled.
   */
#define HAVE_DCGETTEXT 1

/* Define to 1 if you have the declaration of `getsockname', and to 0 if you
   don't. */
#define HAVE_DECL_GETSOCKNAME 1

/* Define to 1 if you have the declaration of `SOCK_NONBLOCK', and to 0 if you
   don't. */
#define HAVE_DECL_SOCK_NONBLOCK 0

/* Define to 1 if you have the <dlfcn.h> header file. */
#define HAVE_DLFCN_H 1

/* Define to 1 if you have the <endian.h> header file. */
/* #undef HAVE_ENDIAN_H */

/* Define if you have epoll_create1 function. */
/* #undef HAVE_EPOLL_CREATE1 */

/* Define to 1 if you have the <errno.h> header file. */
#define HAVE_ERRNO_H 1

/* Define to 1 if you have the <fcntl.h> header file. */
#define HAVE_FCNTL_H 1

/* Define to 1 if you have the usable `fork' function. */
#define HAVE_FORK 1

/* Define to 1 if you have FreeBSD-style sendfile(2). */
/* #undef HAVE_FREEBSD_SENDFILE */

/* Define to 1 if fseeko (and presumably ftello) exists and is declared. */
#define HAVE_FSEEKO 1

/* Define to 1 if you have the <gcrypt.h> header file. */
/* #undef HAVE_GCRYPT_H */

/* Define to 1 if you have `gethrtime' function. */
/* #undef HAVE_GETHRTIME */

/* Define to 1 if you have the `getsockname' function. */
#define HAVE_GETSOCKNAME 1

/* Define if the GNU gettext() function is already present or preinstalled. */
#define HAVE_GETTEXT 1

/* Define to 1 if you have the `gettimeofday' function. */
#define HAVE_GETTIMEOFDAY 1

/* Define to 1 if you have the `gmtime_r' function. */
#define HAVE_GMTIME_R 1

/* Define to 1 if you have the <gnutls/gnutls.h> header file. */
/* #undef HAVE_GNUTLS_GNUTLS_H */

/* Define if you have the iconv() function and it works. */
#define HAVE_ICONV 1

/* Provides IPv6 headers */
#define HAVE_INET6 1

/* Define to 1 if you have the <inetLib.h> header file. */
/* #undef HAVE_INETLIB_H */

/* Define to 1 if you have the <inttypes.h> header file. */
#define HAVE_INTTYPES_H 1

/* Define to 1 if you have a functional curl library. */
/* #undef HAVE_LIBCURL */

/* Define to 1 if you have suitable libmagic. */
/* #undef HAVE_LIBMAGIC */

/* Define to 1 if you have the <limits.h> header file. */
#define HAVE_LIMITS_H 1

/* Define to 1 if you have linux-style sendfile(2). */
/* #undef HAVE_LINUX_SENDFILE */

/* can use shutdown on listen sockets */
/* #undef HAVE_LISTEN_SHUTDOWN */

/* Define to 1 if you have the <locale.h> header file. */
#define HAVE_LOCALE_H 1

/* Define to 1 if you have the `lseek64' function. */
/* #undef HAVE_LSEEK64 */

/* Define to 1 if you have the <machine/endian.h> header file. */
#define HAVE_MACHINE_ENDIAN_H 1

/* Define to 1 if you have the <machine/param.h> header file. */
#define HAVE_MACHINE_PARAM_H 1

/* Define to 1 if you have the <math.h> header file. */
#define HAVE_MATH_H 1

/* Define to 1 if you have the `memmem' function. */
#define HAVE_MEMMEM 1

/* Define to 1 if you have the <memory.h> header file. */
#define HAVE_MEMORY_H 1

/* Define to 1 to enable support for error messages. */
/* #undef HAVE_MESSAGES */

/* Define to 1 if you have the `[nanosleep]' function. */
#define HAVE_NANOSLEEP 1

/* Define to 1 if you have the <netdb.h> header file. */
#define HAVE_NETDB_H 1

/* Define to 1 if you have the <netinet/in.h> header file. */
#define HAVE_NETINET_IN_H 1

/* Define to 1 if you have the <netinet/ip.h> header file. */
#define HAVE_NETINET_IP_H 1

/* Define to 1 if you have the <netinet/tcp.h> header file. */
#define HAVE_NETINET_TCP_H 1

/* Define to 1 if you have the <net/if.h> header file. */
#define HAVE_NET_IF_H 1

/* Define if you have usable pipe2(2) function */
/* #undef HAVE_PIPE2_FUNC */

/* Define to 1 if you have the `poll' function. */
#define HAVE_POLL 1

/* Define to 1 if you have the <poll.h> header file. */
#define HAVE_POLL_H 1

/* Define to 1 if libmicrohttpd is compiled with postprocessor support. */
/* #undef HAVE_POSTPROCESSOR */

/* Define to 1 if you have the `pread' function. */
#define HAVE_PREAD 1

/* Define to 1 if you have the `pread64' function. */
/* #undef HAVE_PREAD64 */

/* Define if you have IBM i form of pthread_attr_setname_np(3) function. */
/* #undef HAVE_PTHREAD_ATTR_SETNAME_NP_IBMI */

/* Define if you have NetBSD form (or OSF1 form) of pthread_attr_setname_np(3)
   function. */
/* #undef HAVE_PTHREAD_ATTR_SETNAME_NP_NETBSD */

/* Define to 1 if you have the <pthread.h> header file. */
#define HAVE_PTHREAD_H 1

/* Define to 1 if you have the <pthread_np.h> header file. */
/* #undef HAVE_PTHREAD_NP_H */

/* Have PTHREAD_PRIO_INHERIT. */
#define HAVE_PTHREAD_PRIO_INHERIT 1

/* Define if you have Darwin form of pthread_setname_np(3) function. */
#define HAVE_PTHREAD_SETNAME_NP_DARWIN 1

/* Define if you have GNU/Linux form of pthread_setname_np(3) function. */
/* #undef HAVE_PTHREAD_SETNAME_NP_GNU */

/* Define if you have NetBSD form (or OSF1 form) of pthread_setname_np(3)
   function. */
/* #undef HAVE_PTHREAD_SETNAME_NP_NETBSD */

/* Define if you have FreeBSD form of pthread_set_name_np(3) function. */
/* #undef HAVE_PTHREAD_SET_NAME_NP_FREEBSD */

/* Define to 1 if you have the `rand' function. */
#define HAVE_RAND 1

/* Define to 1 if you have the `random' function. */
#define HAVE_RANDOM 1

/* Define to 1 if you have the real boolean type. */
#define HAVE_REAL_BOOL 1

/* Define to 1 if you have the <search.h> header file and your system have
   properly functioning tsearch(), tfind() and tdelete() functions */
#define HAVE_SEARCH_H 1

/* Define to 1 if you have the `sendfile64' function. */
/* #undef HAVE_SENDFILE64 */

/* Define to 1 if you have the `snprintf' function. */
#define HAVE_SNPRINTF 1

/* Do we have sockaddr_in.sin_len? */
#define HAVE_SOCKADDR_IN_SIN_LEN 1

/* Define to 1 if you have the <sockLib.h> header file. */
/* #undef HAVE_SOCKLIB_H */

/* SOCK_NONBLOCK is defined in a socket header */
/* #undef HAVE_SOCK_NONBLOCK */

/* Define to 1 if you have Solaris-style sendfile(3). */
/* #undef HAVE_SOLARIS_SENDFILE */

/* Define to 1 if you have the <stdbool.h> header file and <stdbool.h> defines
   'bool' type. */
#define HAVE_STDBOOL_H 1

/* Define to 1 if you have the <stddef.h> header file. */
#define HAVE_STDDEF_H 1

/* Define to 1 if you have the <stdint.h> header file. */
#define HAVE_STDINT_H 1

/* Define to 1 if you have the <stdio.h> header file. */
#define HAVE_STDIO_H 1

/* Define to 1 if you have the <stdlib.h> header file. */
#define HAVE_STDLIB_H 1

/* Define to 1 if you have the <strings.h> header file. */
#define HAVE_STRINGS_H 1

/* Define to 1 if you have the <string.h> header file. */
#define HAVE_STRING_H 1

/* Define to 1 if you have the <sys/byteorder.h> header file. */
/* #undef HAVE_SYS_BYTEORDER_H */

/* Define to 1 if you have the <sys/endian.h> header file. */
/* #undef HAVE_SYS_ENDIAN_H */

/* Define to 1 if you have the <sys/eventfd.h> header file. */
/* #undef HAVE_SYS_EVENTFD_H */

/* Define to 1 if you have the <sys/ioctl.h> header file. */
#define HAVE_SYS_IOCTL_H 1

/* Define to 1 if you have the <sys/isa_defs.h> header file. */
/* #undef HAVE_SYS_ISA_DEFS_H */

/* Define to 1 if you have the <sys/machine.h> header file. */
/* #undef HAVE_SYS_MACHINE_H */

/* Define to 1 if you have the <sys/mman.h> header file. */
#define HAVE_SYS_MMAN_H 1

/* Define to 1 if you have the <sys/msg.h> header file. */
#define HAVE_SYS_MSG_H 1

/* Define to 1 if you have the <sys/param.h> header file. */
#define HAVE_SYS_PARAM_H 1

/* Define to 1 if you have the <sys/select.h> header file. */
#define HAVE_SYS_SELECT_H 1

/* Define to 1 if you have the <sys/socket.h> header file. */
#define HAVE_SYS_SOCKET_H 1

/* Define to 1 if you have the <sys/stat.h> header file. */
#define HAVE_SYS_STAT_H 1

/* Define to 1 if you have the <sys/time.h> header file. */
#define HAVE_SYS_TIME_H 1

/* Define to 1 if you have the <sys/types.h> header file. */
#define HAVE_SYS_TYPES_H 1

/* Define to 1 if you have the <time.h> header file. */
#define HAVE_TIME_H 1

/* Define to 1 if you have the `tsearch' function. */
#define HAVE_TSEARCH 1

/* Define to 1 if you have the <unistd.h> header file. */
#define HAVE_UNISTD_H 1

/* Define to 1 if you have the `usleep' function. */
#define HAVE_USLEEP 1

/* Define to 1 if you have the `gmtime_s' function in W32 form. */
/* #undef HAVE_W32_GMTIME_S */

/* Define to 1 if you have the usable `waitpid' function. */
/* #undef HAVE_WAITPID */

/* Define to 1 if you have the <winsock2.h> header file. */
/* #undef HAVE_WINSOCK2_H */

/* Define to 1 if you have the <ws2tcpip.h> header file. */
/* #undef HAVE_WS2TCPIP_H */

/* Define to 1 if you have the <zlib.h> header file. */
#define HAVE_ZLIB_H 1

/* Define to 1 if libmicrohttpd is compiled with HTTPS support. */
/* #undef HTTPS_SUPPORT */

/* Define to 1 if your C compiler supports inline functions. */
#define INLINE_FUNC 1

/* Defined if libcurl supports AsynchDNS */
/* #undef LIBCURL_FEATURE_ASYNCHDNS */

/* Defined if libcurl supports IDN */
/* #undef LIBCURL_FEATURE_IDN */

/* Defined if libcurl supports IPv6 */
/* #undef LIBCURL_FEATURE_IPV6 */

/* Defined if libcurl supports KRB4 */
/* #undef LIBCURL_FEATURE_KRB4 */

/* Defined if libcurl supports libz */
/* #undef LIBCURL_FEATURE_LIBZ */

/* Defined if libcurl supports NTLM */
/* #undef LIBCURL_FEATURE_NTLM */

/* Defined if libcurl supports SSL */
/* #undef LIBCURL_FEATURE_SSL */

/* Defined if libcurl supports SSPI */
/* #undef LIBCURL_FEATURE_SSPI */

/* Defined if libcurl supports DICT */
/* #undef LIBCURL_PROTOCOL_DICT */

/* Defined if libcurl supports FILE */
/* #undef LIBCURL_PROTOCOL_FILE */

/* Defined if libcurl supports FTP */
/* #undef LIBCURL_PROTOCOL_FTP */

/* Defined if libcurl supports FTPS */
/* #undef LIBCURL_PROTOCOL_FTPS */

/* Defined if libcurl supports HTTP */
/* #undef LIBCURL_PROTOCOL_HTTP */

/* Defined if libcurl supports HTTPS */
/* #undef LIBCURL_PROTOCOL_HTTPS */

/* Defined if libcurl supports IMAP */
/* #undef LIBCURL_PROTOCOL_IMAP */

/* Defined if libcurl supports LDAP */
/* #undef LIBCURL_PROTOCOL_LDAP */

/* Defined if libcurl supports POP3 */
/* #undef LIBCURL_PROTOCOL_POP3 */

/* Defined if libcurl supports RTSP */
/* #undef LIBCURL_PROTOCOL_RTSP */

/* Defined if libcurl supports SMTP */
/* #undef LIBCURL_PROTOCOL_SMTP */

/* Defined if libcurl supports TELNET */
/* #undef LIBCURL_PROTOCOL_TELNET */

/* Defined if libcurl supports TFTP */
/* #undef LIBCURL_PROTOCOL_TFTP */

/* This is a Linux kernel */
/* #undef LINUX */

/* Define to the sub-directory where libtool stores uninstalled libraries. */
#define LT_OBJDIR ".libs/"

/* Define to `1' if HTTPS require initialisation of libgcrypt */
/* #undef MHD_HTTPS_REQUIRE_GCRYPT */

/* Define to 1 to disable setting name on generated threads */
/* #undef MHD_NO_THREAD_NAMES */

/* tls plugins */
#define MHD_PLUGIN_INSTALL_PREFIX "/usr/local/lib/libmicrohttpd"

/* gnuTLS lib version - used in conjunction with cURL */
/* #undef MHD_REQ_CURL_GNUTLS_VERSION */

/* NSS lib version - used in conjunction with cURL */
/* #undef MHD_REQ_CURL_NSS_VERSION */

/* required cURL SSL version to run tests */
/* #undef MHD_REQ_CURL_OPENSSL_VERSION */

/* required cURL version to run tests */
/* #undef MHD_REQ_CURL_VERSION */

/* Define if you have usable `getsockname' function. */
/* #undef MHD_USE_GETSOCKNAME */

/* define to use pthreads */
#define MHD_USE_POSIX_THREADS 1

/* define to use W32 threads */
/* #undef MHD_USE_W32_THREADS */

/* This is a MinGW system */
/* #undef MINGW */

/* Define to disable usage of debug asserts. */
#define NDEBUG 1

/* This is a NetBSD system */
/* #undef NETBSD */

/* This is an OpenBSD system */
/* #undef OPENBSD */

/* This is a OS/390 system */
/* #undef OS390 */

/* This is an OS X system */
#define OSX 1

/* Some strange OS */
/* #undef OTHEROS */

/* Name of package */
#define PACKAGE "libmicrohttpd"

/* Define to the address where bug reports for this package should be sent. */
#define PACKAGE_BUGREPORT "libmicrohttpd@gnu.org"

/* Define to the full name of this package. */
#define PACKAGE_NAME "GNU Libmicrohttpd"

/* Define to the full name and version of this package. */
#define PACKAGE_STRING "GNU Libmicrohttpd 0.9.63"

/* Define to the one symbol short name of this package. */
#define PACKAGE_TARNAME "libmicrohttpd"

/* Define to the home page for this package. */
#define PACKAGE_URL "http://www.gnu.org/software/libmicrohttpd/"

/* Define to the version of this package. */
#define PACKAGE_VERSION "0.9.63"

/* Define to necessary symbol if this constant uses a non-standard name on
   your system. */
/* #undef PTHREAD_CREATE_JOINABLE */

/* This is a Solaris system */
/* #undef SOLARIS */

/* This is a BSD system */
/* #undef SOMEBSD */

/* Define to 1 if you have the ANSI C header files. */
#define STDC_HEADERS 1

/* Define to 1 if libmicrohttpd is compiled with HTTP Upgrade support. */
#define UPGRADE_SUPPORT 1

/* Version number of package */
#define VERSION "0.9.63"

/* This is a Windows system */
/* #undef WINDOWS */

/* Define WORDS_BIGENDIAN to 1 if your processor stores words with the most
   significant byte first (like Motorola and SPARC, unlike Intel). */
#if defined AC_APPLE_UNIVERSAL_BUILD
# if defined __BIG_ENDIAN__
#  define WORDS_BIGENDIAN 1
# endif
#else
# ifndef WORDS_BIGENDIAN
/* #  undef WORDS_BIGENDIAN */
# endif
#endif

/* Define to 1 if it is required by headers to expose additional symbols */
/* #undef _ALL_SOURCE */

/* Define to 1 if it is required by headers to expose additional symbols */
/* #undef _BSD_SOURCE */

/* Define to 1 if it is required by headers to expose additional symbols */
#define _DARWIN_C_SOURCE 1

/* Enable large inode numbers on Mac OS X 10.5.  */
#ifndef _DARWIN_USE_64_BIT_INODE
# define _DARWIN_USE_64_BIT_INODE 1
#endif

/* Define to use debug asserts. */
/* #undef _DEBUG */

/* Number of bits in a file offset, on hosts where this is settable. */
/* #undef _FILE_OFFSET_BITS */

/* Define to 1 to enable GNU-related header features */
#define _GNU_SOURCE 1

/* Define to 1 to make fseeko visible on some hosts (e.g. glibc 2.2). */
/* #undef _LARGEFILE_SOURCE */

/* Define for large files, on AIX-style hosts. */
/* #undef _LARGE_FILES */

/* defines how to decorate public symbols while building */
#define _MHD_EXTERN __attribute__((visibility("default"))) extern

/* Define to use eventFD for inter-thread communication */
/* #undef _MHD_ITC_EVENTFD */

/* Define to use pipe for inter-thread communication */
#define _MHD_ITC_PIPE 1

/* Define to use socketpair for inter-thread communication */
/* #undef _MHD_ITC_SOCKETPAIR */

/* Define to prefix which will be used with MHD static inline functions. */
#define _MHD_static_inline static inline __attribute__((always_inline))

/* Define to 1 if it is required by headers to expose additional symbols */
/* #undef _NETBSD_SOURCE */

/* Need with solaris or errno doesnt work */
/* #undef _REENTRANT */

/* Define to 1 if it is required by headers to expose additional symbols */
/* #undef _TANDEM_SOURCE */

/* Define to maximum value supported by system headers */
/* #undef _XOPEN_SOURCE */

/* Define to 1 if _XOPEN_SOURCE is defined to value less than 500 and system
   headers requre this symbol */
/* #undef _XOPEN_SOURCE_EXTENDED */

/* Define to maximum value supported by system headers if _XOPEN_SOURCE is
   defined to value less than 500 and headers do not support
   _XOPEN_SOURCE_EXTENDED */
/* #undef _XOPEN_VERSION */

/* Define to 1 if it is required by headers to expose additional symbols */
/* #undef __BSD_VISIBLE */

/* Define to 1 if it is required by headers to expose additional symbols */
/* #undef __EXTENSIONS__ */

/* Define to type name which will be used as boolean type. */
/* #undef bool */

/* Define curl_free() as free() if our version of curl lacks curl_free. */
/* #undef curl_free */

/* Define to value interpreted by compiler as boolean "false", if "false" is
   not defined by system headers. */
/* #undef false */

/* Define to value interpreted by compiler as boolean "true", if "true" is not
   defined by system headers. */
/* #undef true */
