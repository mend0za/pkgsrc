# $NetBSD: buildlink3.mk,v 1.7 2006/07/08 22:39:08 jlam Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
FLORIST_BUILDLINK3_MK:=	${FLORIST_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	florist
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nflorist}
BUILDLINK_PACKAGES+=	florist
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}florist

.if !empty(FLORIST_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.florist+=	florist>=3.15p
BUILDLINK_ABI_DEPENDS.florist?=	florist>=3.15pnb2
BUILDLINK_PKGSRCDIR.florist?=	../../devel/florist
.endif	# FLORIST_BUILDLINK3_MK

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH:S/+$//}
