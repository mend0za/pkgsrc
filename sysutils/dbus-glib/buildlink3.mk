# $NetBSD: buildlink3.mk,v 1.9 2006/07/08 22:39:38 jlam Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
DBUS_GLIB_BUILDLINK3_MK:=	${DBUS_GLIB_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	dbus-glib
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Ndbus-glib}
BUILDLINK_PACKAGES+=	dbus-glib
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}dbus-glib

.if !empty(DBUS_GLIB_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.dbus-glib+=	dbus-glib>=0.61
BUILDLINK_PKGSRCDIR.dbus-glib?=	../../sysutils/dbus-glib
.endif	# DBUS_GLIB_BUILDLINK3_MK

.include "../../devel/glib2/buildlink3.mk"
.include "../../sysutils/dbus/buildlink3.mk"
.include "../../textproc/expat/buildlink3.mk"

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH:S/+$//}
