# $NetBSD: Makefile,v 1.3 2010/01/23 23:05:14 joerg Exp $
#

DISTNAME=		swish-e-0.5
PKGNAME=		${PYPKGPREFIX}-swish-e-0.5
PKGREVISION=		1
CATEGORIES=		textproc python
MASTER_SITES=		http://download.berlios.de/py-swish-e/

WRKSRC=			${WRKDIR}/SwishE-0.5

MAINTAINER=		joerg@NetBSD.org
HOMEPAGE=		http://py-swish-e.berlios.de/
COMMENT=		Simple Python binding for Swish-E
LICENSE=		2-clause-bsd

PKG_DESTDIR_SUPPORT=	user-destdir

EGG_NAME=		SwishE-${PKGVERSION_NOREV}

.include "../../lang/python/distutils.mk"
.include "../../www/swish-e/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
