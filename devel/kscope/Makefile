# $NetBSD: Makefile,v 1.32 2012/02/06 12:39:52 wiz Exp $
#

DISTNAME=		kscope-1.6.0
PKGREVISION=		13
CATEGORIES=		devel kde
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=kscope/}

MAINTAINER=		martijn.van.buul@gmail.com
HOMEPAGE=		http://kscope.sourceforge.net/
COMMENT=		KDE frontend for cscope

PKG_DESTDIR_SUPPORT=	user-destdir

DEPENDS+=		cscope>=15.6:../../devel/cscope
DEPENDS+=		exctags>=5.5.4:../../devel/exctags

GNU_CONFIGURE=		yes
SET_LIBDIR=		yes
USE_TOOLS+=		gmake flex pkg-config bison

CONFIGURE_ENV+=		ac_cv_prog_HAVE_YACC=yes

USE_LIBTOOL=		yes
USE_LANGUAGES=		c c++

INSTALLATION_DIRS+=	${KDEDIR}/share/kde/config

post-build:
	sed -e "s,@LOCALBASE@,${LOCALBASE},g" \
		${FILESDIR}/kscoperc > ${WRKDIR}/kscoperc

pre-install:
	${INSTALL_DATA} ${WRKDIR}/kscoperc ${DESTDIR}${KDEDIR}/share/kde/config

.include "../../meta-pkgs/kde3/kde3.mk"

.include "../../graphics/graphviz/buildlink3.mk"
.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
.include "../../x11/kdebase3/buildlink3.mk"
.include "../../x11/kdelibs3/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
