# $NetBSD: buildlink3.mk,v 1.3 2006/07/08 22:39:16 jlam Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
GDAL_LIB_BUILDLINK3_MK:=	${GDAL_LIB_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	gdal-lib
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Ngdal-lib}
BUILDLINK_PACKAGES+=	gdal-lib
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}gdal-lib

.if !empty(GDAL_LIB_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.gdal-lib+=	gdal-lib>=1.3.1
BUILDLINK_PKGSRCDIR.gdal-lib?=	../../geography/gdal-lib
.endif	# GDAL_LIB_BUILDLINK3_MK

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH:S/+$//}
