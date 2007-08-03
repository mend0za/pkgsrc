# $NetBSD$

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
CLAWS_MAIL_BUILDLINK3_MK:=	${CLAWS_MAIL_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	claws-mail
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nclaws-mail}
BUILDLINK_PACKAGES+=	claws-mail
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}claws-mail

.if ${CLAWS_MAIL_BUILDLINK3_MK} == "+"
BUILDLINK_API_DEPENDS.claws-mail+= claws-mail>=2.4.0
BUILDLINK_PKGSRCDIR.claws-mail?=	../../mail/claws-mail
.endif	# CLAWS_MAIL_BUILDLINK3_MK

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH:S/+$//}
