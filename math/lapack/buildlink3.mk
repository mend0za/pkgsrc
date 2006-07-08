# $NetBSD: buildlink3.mk,v 1.6 2006/07/08 22:39:28 jlam Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
LAPACK_BUILDLINK3_MK:=	${LAPACK_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	lapack
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nlapack}
BUILDLINK_PACKAGES+=	lapack
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}lapack

.if !empty(LAPACK_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.lapack+=	lapack>=20010201nb1
BUILDLINK_ABI_DEPENDS.lapack+=	lapack>=20010201nb2
BUILDLINK_PKGSRCDIR.lapack?=	../../math/lapack
.endif	# LAPACK_BUILDLINK3_MK

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH:S/+$//}
