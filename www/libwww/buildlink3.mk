# $NetBSD: buildlink3.mk,v 1.10 2006/07/08 23:11:12 jlam Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
LIBWWW_BUILDLINK3_MK:=	${LIBWWW_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	libwww
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nlibwww}
BUILDLINK_PACKAGES+=	libwww
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}libwww

.if !empty(LIBWWW_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.libwww+=	libwww>=5.3.2nb2
BUILDLINK_ABI_DEPENDS.libwww+=	libwww>=5.4.0nb5
BUILDLINK_PKGSRCDIR.libwww?=	../../www/libwww
.endif	# LIBWWW_BUILDLINK3_MK

.include "../../mk/bsd.prefs.mk"

.if !defined(PKG_BUILD_OPTIONS.libwww)
PKG_BUILD_OPTIONS.libwww!= \
	cd ${BUILDLINK_PKGSRCDIR.libwww} && \
	${MAKE} show-var ${MAKEFLAGS} VARNAME=PKG_OPTIONS
MAKEFLAGS+=	PKG_BUILD_OPTIONS.libwww=${PKG_BUILD_OPTIONS.libwww:Q}
.endif
MAKEVARS+=	PKG_BUILD_OPTIONS.libwww

.if !empty(PKG_BUILD_OPTIONS.libwww:Msocks4)
.include "../../net/socks4/buildlink3.mk"
.endif

.if !empty(PKG_BUILD_OPTIONS.libwww:Msocks5)
.include "../../net/socks5/buildlink3.mk"
.endif

.include "../../devel/zlib/buildlink3.mk"
.include "../../security/openssl/buildlink3.mk"

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH:S/+$//}
