# $NetBSD: buildlink3.mk,v 1.9 2006/07/08 22:39:32 jlam Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
ORBIT_BUILDLINK3_MK:=	${ORBIT_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	ORBit
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:NORBit}
BUILDLINK_PACKAGES+=	ORBit
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}ORBit

.if !empty(ORBIT_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.ORBit+=	ORBit>=0.5.15nb5
BUILDLINK_ABI_DEPENDS.ORBit+=	ORBit>=0.5.17nb1
BUILDLINK_PKGSRCDIR.ORBit?=	../../net/ORBit
.endif	# ORBIT_BUILDLINK3_MK

.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../devel/glib/buildlink3.mk"
.include "../../security/tcp_wrappers/buildlink3.mk"

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH:S/+$//}
