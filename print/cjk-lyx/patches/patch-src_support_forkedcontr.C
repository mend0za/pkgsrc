$NetBSD$

--- src/support/forkedcontr.C.orig	2011-11-25 17:05:52.000000000 +0000
+++ src/support/forkedcontr.C
@@ -24,6 +24,7 @@
 
 #include <cerrno>
 #include <cstdlib>
+#include <cstring>
 #include <unistd.h>
 #include <sys/wait.h>
 
