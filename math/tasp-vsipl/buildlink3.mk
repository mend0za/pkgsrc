# $NetBSD: buildlink3.mk,v 1.5 2006/07/08 22:39:29 jlam Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
TASP_VSIPL_BUILDLINK3_MK:=	${TASP_VSIPL_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	tasp-vsipl
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Ntasp-vsipl}
BUILDLINK_PACKAGES+=	tasp-vsipl
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}tasp-vsipl

.if !empty(TASP_VSIPL_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.tasp-vsipl+=	tasp-vsipl>=20030710
BUILDLINK_ABI_DEPENDS.tasp-vsipl?=	tasp-vsipl>=20030710nb1
BUILDLINK_PKGSRCDIR.tasp-vsipl?=	../../math/tasp-vsipl
.endif	# TASP_VSIPL_BUILDLINK3_MK

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH:S/+$//}
