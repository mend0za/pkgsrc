# $NetBSD: buildlink3.mk,v 1.3 2011/04/22 13:42:15 obache Exp $

BUILDLINK_TREE+=	gst-buzztard

.if !defined(GST_BUZZTARD_BUILDLINK3_MK)
GST_BUZZTARD_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.gst-buzztard+=	gst-buzztard>=0.5.0
BUILDLINK_ABI_DEPENDS.gst-buzztard?=	gst-buzztard>=0.5.0nb3
BUILDLINK_PKGSRCDIR.gst-buzztard?=	../../audio/gst-buzztard

.include "../../devel/glib2/buildlink3.mk"
.include "../../multimedia/gst-plugins0.10-base/buildlink3.mk"
.include "../../multimedia/gstreamer0.10/buildlink3.mk"
.endif # GST_BUZZTARD_BUILDLINK3_MK

BUILDLINK_TREE+=	-gst-buzztard
