# $NetBSD: buildlink3.mk,v 1.5 2006/04/12 10:27:22 rillig Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
SUN_JRE15_BUILDLINK3_MK:=	${SUN_JRE15_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	sun-jre15
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nsun-jre15}
BUILDLINK_PACKAGES+=	sun-jre15

.if !empty(SUN_JRE15_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.sun-jre15+=		sun-jre15-[0-9]*
BUILDLINK_ABI_DEPENDS.sun-jre15?=		sun-jre15>=5.0.6nb2
BUILDLINK_PKGSRCDIR.sun-jre15?=		../../lang/sun-jre15
BUILDLINK_JAVA_PREFIX.sun-jre15=	${PREFIX}/java/sun-1.5

UNLIMIT_RESOURCES+=	datasize	# Must be at least 131204
.endif	# SUN_JRE15_BUILDLINK3_MK

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH:S/+$//}
