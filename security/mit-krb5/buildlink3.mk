# $NetBSD: buildlink3.mk,v 1.7 2006/07/08 22:39:37 jlam Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
MIT_KRB5_BUILDLINK3_MK:=	${MIT_KRB5_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	mit-krb5
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nmit-krb5}
BUILDLINK_PACKAGES+=	mit-krb5
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}mit-krb5

.if !empty(MIT_KRB5_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.mit-krb5+=		mit-krb5>=1.3.1
BUILDLINK_ABI_DEPENDS.mit-krb5+=	mit-krb5>=1.4nb1
BUILDLINK_PKGSRCDIR.mit-krb5?=		../../security/mit-krb5
.endif	# MIT_KRB5_BUILDLINK3_MK

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH:S/+$//}
