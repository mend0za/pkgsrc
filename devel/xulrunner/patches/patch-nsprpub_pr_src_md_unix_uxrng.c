$NetBSD$

--- nsprpub/pr/src/md/unix/uxrng.c.orig	2011-09-02 20:15:44.000000000 +0000
+++ nsprpub/pr/src/md/unix/uxrng.c
@@ -126,7 +126,7 @@ GetHighResClock(void *buf, size_t maxbyt
 
 #elif (defined(LINUX) || defined(FREEBSD) || defined(__FreeBSD_kernel__) \
     || defined(NETBSD) || defined(__NetBSD_kernel__) || defined(OPENBSD) \
-    || defined(SYMBIAN))
+    || defined(SYMBIAN)) || defined(__DragonFly__)
 #include <sys/types.h>
 #include <sys/stat.h>
 #include <fcntl.h>
