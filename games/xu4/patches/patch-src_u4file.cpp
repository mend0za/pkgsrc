$NetBSD$

Add missing header.

--- src/u4file.cpp.orig	2004-11-29 05:38:26.000000000 +0000
+++ src/u4file.cpp
@@ -3,6 +3,7 @@
  */
 
 #include <cctype>
+#include <stdlib.h>
 
 #include "u4file.h"
 #include "unzip.h"
