$NetBSD$

--- include/qwt3d_openglhelper.h.orig	2012-01-23 14:34:35.000000000 +0000
+++ include/qwt3d_openglhelper.h
@@ -6,6 +6,7 @@
 #include <qgl.h>
 #else
 #include <QtOpenGL/qgl.h>
+#include <GL/glu.h>
 #endif
 
 namespace Qwt3D
