# $NetBSD: buildlink3.mk,v 1.5 2006/07/08 22:39:22 jlam Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
ERLANG_BUILDLINK3_MK:=		${ERLANG_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=		erlang
.endif

BUILDLINK_PACKAGES:=		${BUILDLINK_PACKAGES:Nerlang}
BUILDLINK_PACKAGES+=		erlang
BUILDLINK_ORDER:=		${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}erlang

.if !empty(ERLANG_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.erlang+=	erlang>=10.1
BUILDLINK_ABI_DEPENDS.erlang?=	erlang>=10.1.9nb1
BUILDLINK_PKGSRCDIR.erlang?=	../../lang/erlang
.endif	# ERLANG_BUILDLINK3_MK

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH:S/+$//}
