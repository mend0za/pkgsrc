# $NetBSD: buildlink3.mk,v 1.14 2012/01/13 10:55:03 obache Exp $

BUILDLINK_TREE+=	libspectrum

.if !defined(LIBSPECTRUM_BUILDLINK3_MK)
LIBSPECTRUM_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libspectrum+=		libspectrum>=0.2.2
BUILDLINK_ABI_DEPENDS.libspectrum+=	libspectrum>=1.0.0nb3
BUILDLINK_PKGSRCDIR.libspectrum?=	../../emulators/libspectrum

.include "../../archivers/bzip2/buildlink3.mk"
.include "../../audio/libaudiofile/buildlink3.mk"
.include "../../devel/glib2/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../security/libgcrypt/buildlink3.mk"
.endif # LIBSPECTRUM_BUILDLINK3_MK

BUILDLINK_TREE+=	-libspectrum
