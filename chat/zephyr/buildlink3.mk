# $NetBSD: buildlink3.mk,v 1.6 2006/07/08 22:39:03 jlam Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
ZEPHYR_BUILDLINK3_MK:=	${ZEPHYR_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	zephyr
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nzephyr}
BUILDLINK_PACKAGES+=	zephyr
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}zephyr

.if !empty(ZEPHYR_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.zephyr+=	zephyr>=20010518nb1
BUILDLINK_ABI_DEPENDS.zephyr?=	zephyr>=20010518nb4
BUILDLINK_PKGSRCDIR.zephyr?=	../../chat/zephyr
BUILDLINK_DEPMETHOD.zephyr?=	build
.endif	# ZEPHYR_BUILDLINK3_MK

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH:S/+$//}
