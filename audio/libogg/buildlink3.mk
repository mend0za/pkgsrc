# $NetBSD$

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
LIBOGG_BUILDLINK3_MK:=	${LIBOGG_BUILDLINK3_MK}+

.if !empty(LIBOGG_BUILDLINK3_MK:M\+)
BUILDLINK_DEPENDS.libogg?=	libogg>=1.0.0.8
BUILDLINK_PKGSRCDIR.libogg?=	../../audio/libogg
.endif	# LIBOGG_BUILDLINK3_MK

.if !empty(BUILDLINK_DEPTH:M\+)
BUILDLINK_DEPENDS+=	libogg
.endif

.if !empty(LIBOGG_BUILDLINK3_MK:M\+)
BUILDLINK_PACKAGES+=	libogg
.endif	# LIBOGG_BUILDLINK3_MK

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH:C/\+$//}
