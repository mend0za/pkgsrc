# $NetBSD: buildlink3.mk,v 1.4 2006/07/08 22:39:09 jlam Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
LIBBEGEMOT_BUILDLINK3_MK:=	${LIBBEGEMOT_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	libbegemot
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nlibbegemot}
BUILDLINK_PACKAGES+=	libbegemot
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}libbegemot

.if !empty(LIBBEGEMOT_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.libbegemot+=	libbegemot>=1.9nb1
BUILDLINK_PKGSRCDIR.libbegemot?=	../../devel/libbegemot
.endif	# LIBBEGEMOT_BUILDLINK3_MK

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH:S/+$//}
