# $NetBSD$
#

PKG_OPTIONS_VAR=	PKG_OPTIONS.ruby
PKG_SUPPORTED_OPTIONS=	readline ruby-build-ri-db

#
# GNU readline supports multi bytes characters.
#
PKG_SUGGESTED_OPTIONS=	readline ruby-build-ri-db

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Mreadline)
USE_BUILTIN.readline=	no
CONFIGURE_ARGS+=	--disable-libedit
.else
CONFIGURE_ARGS+=	--enable-libedit
.endif
