# $NetBSD: Makefile,v 1.16 2006/12/27 13:37:43 joerg Exp $
#

DISTNAME=	unclutter-8
PKGREVISION=	1
CATEGORIES=	x11
MASTER_SITES=	${MASTER_SITE_XCONTRIB:=utilities/}
EXTRACT_SUFX=	.tar.Z

MAINTAINER=	pkgsrc-users@NetBSD.org
COMMENT=	Remove idle cursor image from screen

PKG_DESTDIR_SUPPORT=	user-destdir

WRKSRC=		${WRKDIR}/unclutter
USE_IMAKE=	yes

.include "../../x11/libX11/buildlink3.mk"
.include "../../x11/libXext/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
