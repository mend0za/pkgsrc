$NetBSD$

--- src/classes/optFileWriter.cc.orig	2011-11-24 01:07:58.000000000 +0000
+++ src/classes/optFileWriter.cc
@@ -1,5 +1,6 @@
 #include "optFileWriter.h"
-
+#include <stdlib.h>
+#include <string.h>
 
 optFileWriter::optFileWriter(char *what_file, nodes *what_nodes) {
   filename = strdup(what_file);
