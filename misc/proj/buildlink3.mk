# $NetBSD$

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	proj
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nproj}
BUILDLINK_PACKAGES+=	proj

.if !empty(PROJ_BUILDLINK3_MK:M+)
BUILDLINK_DEPENDS.proj+=	proj>=4.4.7nb1
BUILDLINK_PKGSRCDIR.proj?=	../../misc/proj
.endif	# PROJ_BUILDLINK3_MK

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
