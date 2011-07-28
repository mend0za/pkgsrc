$NetBSD$

--- ioport.c.orig	2011-05-06 19:01:44.000000000 +0000
+++ ioport.c
@@ -179,7 +179,7 @@ static uint32_t ioport_readb_thunk(void 
     IORange *ioport = opaque;
     uint64_t data;
 
-    ioport->ops->read(ioport, addr - ioport->base, 1, &data);
+    (ioport->ops->read)(ioport, addr - ioport->base, 1, &data);
     return data;
 }
 
@@ -188,7 +188,7 @@ static uint32_t ioport_readw_thunk(void 
     IORange *ioport = opaque;
     uint64_t data;
 
-    ioport->ops->read(ioport, addr - ioport->base, 2, &data);
+    (ioport->ops->read)(ioport, addr - ioport->base, 2, &data);
     return data;
 }
 
@@ -197,7 +197,7 @@ static uint32_t ioport_readl_thunk(void 
     IORange *ioport = opaque;
     uint64_t data;
 
-    ioport->ops->read(ioport, addr - ioport->base, 4, &data);
+    (ioport->ops->read)(ioport, addr - ioport->base, 4, &data);
     return data;
 }
 