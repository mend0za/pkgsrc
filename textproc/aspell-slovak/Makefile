# $NetBSD: Makefile,v 1.16 2008/06/20 01:09:37 joerg Exp $
#

DISTNAME=	aspell-sk-0.52-0
PKGNAME=	${DISTNAME:C/sk-(.*)-(.*)/slovak-\1.\2/}
PKGREVISION=	4
CATEGORIES=	textproc
MASTER_SITES=	http://sk-spell.sk.cx/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	salo@NetBSD.org
HOMEPAGE=	http://sk-spell.sk.cx/
COMMENT=	Slovak language support for aspell

PKG_DESTDIR_SUPPORT=	user-destdir

HAS_CONFIGURE=	YES

.include "../../textproc/aspell/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
