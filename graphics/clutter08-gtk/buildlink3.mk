# $NetBSD: buildlink3.mk,v 1.7 2011/11/01 06:01:27 sbd Exp $
#

BUILDLINK_TREE+=	clutter08-gtk

.if !defined(CLUTTER08_GTK_BUILDLINK3_MK)
CLUTTER08_GTK_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.clutter08-gtk+=	clutter08-gtk>=0.8.0
BUILDLINK_ABI_DEPENDS.clutter08-gtk?=	clutter08-gtk>=0.8.3nb7
BUILDLINK_PKGSRCDIR.clutter08-gtk?=	../../graphics/clutter08-gtk

.include "../../x11/gtk2/buildlink3.mk"
.include "../../graphics/clutter08/buildlink3.mk"
.endif # CLUTTER_GTK_BUILDLINK3_MK

BUILDLINK_TREE+=	-clutter08-gtk
