$NetBSD$

--- mozilla/media/libvpx/vpx_config_c.c.orig	2011-11-07 21:08:15.000000000 +0000
+++ mozilla/media/libvpx/vpx_config_c.c
@@ -12,11 +12,11 @@
 /* 32 bit MacOS. */
 #include "vpx_config_x86-darwin9-gcc.c"
 
-#elif defined(__linux__) && defined(__i386__)
+#elif (defined(__linux__) || defined(__DragonFly__)) && defined(__i386__)
 /* 32 bit Linux. */
 #include "vpx_config_x86-linux-gcc.c"
 
-#elif defined(__linux__) && defined(__x86_64__)
+#elif (defined(__linux__) || defined(__DragonFly__)) && defined(__x86_64__)
 /* 64 bit Linux. */
 #include "vpx_config_x86_64-linux-gcc.c"
 
