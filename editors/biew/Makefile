# $NetBSD: Makefile,v 1.19 2006/09/09 02:41:58 obache Exp $
#

DISTNAME=	biew562
PKGNAME=	biew-5.6.2
PKGREVISION=	1
CATEGORIES=	editors
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=biew/}
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://biew.sourceforge.net/en/biew.html
COMMENT=	Binary viewer/editor

ONLY_FOR_PLATFORM=	*-*-i386

PKG_DESTDIR_SUPPORT=	user-destdir

USE_TOOLS+=	gmake
MAKE_FILE=	makefile
WRKSRC=		${WRKDIR}/biew-562

INSTALLATION_DIRS=	bin

do-install:
	${INSTALL_DATA_DIR} ${DESTDIR}${PREFIX}/share/biew
	${INSTALL_DATA_DIR} ${DESTDIR}${PREFIX}/share/doc/biew
	${INSTALL_PROGRAM} ${WRKSRC}/biew ${DESTDIR}${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/bin_rc/biew.hlp ${DESTDIR}${PREFIX}/share/biew
	${INSTALL_DATA} ${WRKSRC}/bin_rc/skn/assembly.skn ${DESTDIR}${PREFIX}/share/biew
	${INSTALL_DATA} ${WRKSRC}/bin_rc/skn/golded.skn ${DESTDIR}${PREFIX}/share/biew
	${INSTALL_DATA} ${WRKSRC}/bin_rc/skn/insight.skn ${DESTDIR}${PREFIX}/share/biew
	${INSTALL_DATA} ${WRKSRC}/bin_rc/skn/standard.skn ${DESTDIR}${PREFIX}/share/biew
	${INSTALL_DATA} ${WRKSRC}/doc/biew_en.txt ${DESTDIR}${PREFIX}/share/doc/biew

.include "../../devel/libslang/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
