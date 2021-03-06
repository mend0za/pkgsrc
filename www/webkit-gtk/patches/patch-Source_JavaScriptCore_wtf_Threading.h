--- Source/JavaScriptCore/wtf/Threading.h.orig	2011-03-21 19:41:47.000000000 +0100
+++ Source/JavaScriptCore/wtf/Threading.h	2011-09-13 17:47:57.423475599 +0200
@@ -113,6 +113,8 @@ using WTF::createThread;
 using WTF::currentThread;
 using WTF::detachThread;
 using WTF::waitForThreadCompletion;
+#if !OS(SOLARIS)
 using WTF::yield;
+#endif
 
 #endif // Threading_h
