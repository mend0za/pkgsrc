# $NetBSD: Makefile,v 1.10 2011/11/01 06:01:12 sbd Exp $
#

DISTNAME=	gbdfed-1.5
PKGREVISION=	8
CATEGORIES=	fonts
MASTER_SITES=	http://www.math.nmsu.edu/~mleisher/Software/gbdfed/
EXTRACT_SUFX=	.tbz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.math.nmsu.edu/~mleisher/Software/gbdfed/
COMMENT=	GTK-based BDF font editor

PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=	yes
USE_TOOLS+=	pkg-config
USE_LIBTOOL=	yes

AUTO_MKDIRS=	yes
BINDIR=		${PREFIX}/bin
MAN1DIR=	${PREFIX}/${PKGMANDIR}/man1

do-install:
	cd ${WRKSRC:Q} && \
		${LIBTOOL} --mode=install ${INSTALL_PROGRAM} gbdfed \
			${DESTDIR:Q}${BINDIR:Q} && \
		${INSTALL_MAN} gbdfed.man ${DESTDIR:Q}${MAN1DIR:Q}/gbdfed.1

.include "../../graphics/freetype2/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.include "../../x11/libSM/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
