# $NetBSD: Makefile,v 1.7 2011/04/22 13:44:15 obache Exp $
#

DISTNAME=	gnonlin-0.10.17
PKGNAME=	gst-gnonlin-0.10.17
PKGREVISION=	2
CATEGORIES=	multimedia
MASTER_SITES=	http://gstreamer.freedesktop.org/src/gnonlin/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://gstreamer.freedesktop.org/modules/gnonlin.html
COMMENT=	Non-linear editing components for gstreamer

PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_TOOLS+=	pkg-config

.include "../../devel/glib2/buildlink3.mk"
.include "../../multimedia/gstreamer0.10/buildlink3.mk"
.include "../../multimedia/gst-plugins0.10-base/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
