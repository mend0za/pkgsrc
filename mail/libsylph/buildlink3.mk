# $NetBSD: buildlink3.mk,v 1.5 2011/04/22 13:42:02 obache Exp $

BUILDLINK_TREE+=	libsylph

.if !defined(LIBSYLPH_BUILDLINK3_MK)
LIBSYLPH_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libsylph+=	libsylph>=0.3.0
BUILDLINK_ABI_DEPENDS.libsylph?=	libsylph>=0.3.0nb4
BUILDLINK_PKGSRCDIR.libsylph?=	../../mail/libsylph

.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../devel/glib2/buildlink3.mk"
.include "../../security/openssl/buildlink3.mk"
.endif # LIBSYLPH_BUILDLINK3_MK

BUILDLINK_TREE+=	-libsylph
