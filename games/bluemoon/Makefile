# $NetBSD: Makefile,v 1.11 2011/11/01 06:01:14 sbd Exp $
#

DISTNAME=	bluemoon-1.3.2
PKGREVISION=	8
CATEGORIES=	games
MASTER_SITES=	http://keldon.net/bluemoon/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://keldon.net/bluemoon/
COMMENT=	Blue Moon game with AI

PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=		yes
USE_PKGLOCALEDIR=	yes
USE_TOOLS+=		pkg-config

.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
