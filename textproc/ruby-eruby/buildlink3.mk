# $NetBSD: buildlink3.mk,v 1.7 2006/07/08 22:39:42 jlam Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
RUBY_ERUBY_BUILDLINK3_MK:=	${RUBY_ERUBY_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	${RUBY_PKGPREFIX}-eruby
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:N${RUBY_PKGPREFIX}-eruby}
BUILDLINK_PACKAGES+=	${RUBY_PKGPREFIX}-eruby
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}${RUBY_PKGPREFIX}-eruby

.if !empty(RUBY_ERUBY_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.ruby18-eruby+=	${RUBY_PKGPREFIX}-eruby>=0.9.7
BUILDLINK_PKGSRCDIR.ruby18-eruby?=	../../textproc/ruby-eruby
.endif	# RUBY_ERUBY_BUILDLINK3_MK

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH:S/+$//}
