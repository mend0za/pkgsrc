# $NetBSD: Makefile,v 1.2 2008/05/24 21:45:14 tnn Exp $
#

DISTNAME=		fontcacheproto-0.1.3
CATEGORIES=		x11
MASTER_SITES=		${MASTER_SITE_XORG:=proto/}
EXTRACT_SUFX=		.tar.bz2

MAINTAINER=		joerg@NetBSD.org
HOMEPAGE=		http://xorg.freedesktop.org/
COMMENT=		Fontcache extension headers from X.org

PKG_DESTDIR_SUPPORT=	user-destdir

USE_PKGLOCALEDIR=	yes
PKGCONFIG_OVERRIDE+=	fontcacheproto.pc.in
GNU_CONFIGURE=		yes

.include "../../mk/bsd.pkg.mk"
