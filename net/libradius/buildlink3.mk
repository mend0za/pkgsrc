# $NetBSD: buildlink3.mk,v 1.1 2004/11/09 22:40:32 manu Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
LIBRADIUS_LINUX_BUILDLINK3_MK:=	${LIBRADIUS_LINUX_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	libradius-linux
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nlibradius-linux}
BUILDLINK_PACKAGES+=	libradius-linux

.if !empty(LIBRADIUS_LINUX_BUILDLINK3_MK:M+)
BUILDLINK_DEPENDS.libradius-linux+=	libradius-linux>=20040827
BUILDLINK_PKGSRCDIR.libradius-linux?=	../../net/libradius
BUILDLINK_DEPMETHOD.libradius-linux?=	build
.endif	# LIBRADIUS_LINUX_BUILDLINK3_MK

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
