# $NetBSD: Makefile,v 1.8 2011/03/01 08:59:45 he Exp $

DISTNAME=	pcc-${DATE_STR}
PKGNAME=	pcc-current-${DATE_STR}
CATEGORIES=	lang
MASTER_SITES=	ftp://pcc.ludd.ltu.se/pub/pcc/
EXTRACT_SUFX=	.tgz

MAINTAINER=	he@NetBSD.org
HOMEPAGE=	http://pcc.ludd.ltu.se/
COMMENT=	Portable C compiler
LICENSE=	pcc-license

DATE_STR=	20120208

PKG_DESTDIR_SUPPORT=	user-destdir

CONFLICTS=	pcc-[0-9]*

USE_TOOLS+=	lex yacc
GNU_CONFIGURE=	yes

.include "../../mk/bsd.pkg.mk"
