# $NetBSD: Makefile,v 1.3 2011/11/01 06:11:52 sbd Exp $
#

DISTNAME=	openbabel-2.3.0
PKGREVISION=	2
CATEGORIES=	biology
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=openbabel/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://openbabel.org/
COMMENT=	Chemistry file translation program
LICENSE=	gnu-gpl-v2

PKG_DESTDIR_SUPPORT=	user-destdir

USE_LANGUAGES=	c c++

USE_CMAKE=	yes

.include "options.mk"

.include "../../devel/zlib/buildlink3.mk"
.include "../../math/eigen2/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
