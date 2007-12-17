# $NetBSD: buildlink3.mk,v 1.3 2006/11/05 16:55:28 joerg Exp $

.include "../../mk/bsd.fast.prefs.mk"

.if ${X11_TYPE} != "modular" && !exists(${X11BASE}/lib/pkgconfig/ice.pc)
.include "../../mk/x11.buildlink3.mk"
.else

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
LIBICE_BUILDLINK3_MK:=	${LIBICE_BUILDLINK3_MK}+

.if ${BUILDLINK_DEPTH} == "+"
BUILDLINK_DEPENDS+=	libICE
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:NlibICE}
BUILDLINK_PACKAGES+=	libICE
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}libICE

.if ${LIBICE_BUILDLINK3_MK} == "+"
BUILDLINK_API_DEPENDS.libICE+=	libICE>=0.99.1
BUILDLINK_PKGSRCDIR.libICE?=	../../x11/libICE
.endif	# LIBICE_BUILDLINK3_MK

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH:S/+$//}

.endif
