# $NetBSD: Makefile,v 1.21 2012/02/06 12:40:58 wiz Exp $

#DISTNAME=	kdepim-runtime-${_KDE_VERSION}
DISTNAME=	kdepim-runtime-4.4.9
MASTER_SITES=	${MASTER_SITE_KDE:=kdepim-4.4.9/src/}
PKGREVISION=	7
CATEGORIES=	misc
COMMENT=	Runtime requirements for the KDE PIM tools

.include "../../meta-pkgs/kde4/Makefile.kde4"

# BUILD_MAKE_FLAGS+= VERBOSE=1

.include "../../meta-pkgs/kde4/kde4.mk"

.include "../../misc/kdepimlibs4/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../x11/kdelibs4/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
