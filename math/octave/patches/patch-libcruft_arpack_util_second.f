$NetBSD$

--- libcruft/arpack/util/second.f.orig	2011-09-01 13:38:52.000000000 +0000
+++ libcruft/arpack/util/second.f
@@ -21,12 +21,13 @@
 *     ..
 *     .. External Functions ..
       REAL               ETIME
-      INTRINSIC          ETIME
+*      INTRINSIC          ETIME
 *     ..
 *     .. Executable Statements ..
 *
 
-      T1 = ETIME( TARRAY )
+*      T1 = ETIME( TARRAY )
+      T1 = 0
       T  = TARRAY( 1 )
 
       RETURN
