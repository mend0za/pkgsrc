# $NetBSD: buildlink3.mk,v 1.5 2007/08/01 21:33:40 tnn Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
COMPAT_HEADERS_BUILDLINK3_MK:=	${COMPAT_HEADERS_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	compat_headers
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Ncompat_headers}
BUILDLINK_PACKAGES+=	compat_headers
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}compat_headers

.if !empty(COMPAT_HEADERS_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.compat_headers+=	compat_headers>=0.1
BUILDLINK_ABI_DEPENDS.compat_headers+=	compat_headers>=0.1
BUILDLINK_PKGSRCDIR.compat_headers?=	../../pkgtools/compat_headers
BUILDLINK_DEPMETHOD.compat_headers?=	build
.endif	# COMPAT_HEADERS_BUILDLINK3_MK

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH:S/+$//}
