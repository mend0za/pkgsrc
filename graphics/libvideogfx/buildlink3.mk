# $NetBSD: buildlink3.mk,v 1.14 2010/12/23 11:44:42 dsainty Exp $

BUILDLINK_TREE+=	libvideogfx

.if !defined(LIBVIDEOGFX_BUILDLINK3_MK)
LIBVIDEOGFX_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libvideogfx+=	libvideogfx>=1.0.3
BUILDLINK_ABI_DEPENDS.libvideogfx+=	libvideogfx>=1.0.3nb7
BUILDLINK_PKGSRCDIR.libvideogfx?=	../../graphics/libvideogfx

.include "../../mk/jpeg.buildlink3.mk"
.include "../../graphics/png/buildlink3.mk"
.include "../../x11/libX11/buildlink3.mk"
.endif # LIBVIDEOGFX_BUILDLINK3_MK

BUILDLINK_TREE+=	-libvideogfx
