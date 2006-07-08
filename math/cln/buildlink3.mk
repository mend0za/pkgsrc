# $NetBSD: buildlink3.mk,v 1.7 2006/07/08 22:39:26 jlam Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
CLN_BUILDLINK3_MK:=	${CLN_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	cln
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Ncln}
BUILDLINK_PACKAGES+=	cln
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}cln

.if !empty(CLN_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.cln+=		cln>=1.1.6
BUILDLINK_ABI_DEPENDS.cln+=	cln>=1.1.9nb1
BUILDLINK_PKGSRCDIR.cln?=	../../math/cln
.endif	# CLN_BUILDLINK3_MK

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH:S/+$//}
