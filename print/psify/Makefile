# $NetBSD: Makefile,v 1.10 2007/02/22 19:22:25 wiz Exp $
#

DISTNAME=	psify-19980216
CATEGORIES=	print
MASTER_SITES=	${HOMEPAGE}
DISTFILES=	Makefile psify.c psify.lex psify.man

MAINTAINER=	kim@tac.nyc.ny.us
HOMEPAGE=	http://mit.edu/~mkgray/jik/sipbsrc/src/psify/
COMMENT=	Pretty print C, CLU, SCHEME, Java and ARGUS source files

PKG_DESTDIR_SUPPORT=	user-destdir

WRKSRC=		${WRKDIR}
DIST_SUBDIR=	psify
EXTRACT_ONLY=	#empty

NO_CONFIGURE=	yes
USE_TOOLS+=	lex

INSTALLATION_DIRS=	bin ${PKGMANDIR}/man1
INSTALL_MAKE_FLAGS=	prefix=${DESTDIR}${PREFIX}

post-extract:
	@for i in ${DISTFILES}; \
	do \
	    ${CP} ${_DISTDIR}/$$i ${WRKSRC}; \
	done

.include "../../mk/bsd.pkg.mk"
