# $NetBSD: Makefile,v 1.7 2011/12/02 20:51:28 marino Exp $
#

DISTNAME=	ethos-0.2.2
PKGREVISION=	6
CATEGORIES=	devel
MASTER_SITES=	http://ftp.dronelabs.com/sources/ethos/0.2/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://git.dronelabs.com/ethos/about/
COMMENT=	Plugin interface library
#LICENSE=	# TODO: (see mk/license.mk)

PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_TOOLS+=	pkg-config intltool gmake msgfmt

PKGCONFIG_OVERRIDE+=	ethos-ui.pc.in
PKGCONFIG_OVERRIDE+=	ethos.pc.in

TEST_TARGET=	check

.include "../../devel/glib2/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
