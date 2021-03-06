# $NetBSD$

PKG_OPTIONS_VAR=	PKG_OPTIONS.pcsc-lite
PKG_SUPPORTED_OPTIONS=	extendedapdu

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Mextendedapdu)
CONFIGURE_ARGS+=	--enable-extendedapdu
.else
CONFIGURE_ARGS+=       --enable-extendedapdu=no
.endif
