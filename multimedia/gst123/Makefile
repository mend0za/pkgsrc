# $NetBSD: Makefile,v 1.7 2012/02/06 12:41:04 wiz Exp $
#

DISTNAME=	gst123-0.2.2
CATEGORIES=	multimedia
MASTER_SITES=	http://space.twc.de/~stefan/gst123/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	ryoon@NetBSD.org
HOMEPAGE=	http://space.twc.de/~stefan/gst123.php
COMMENT=	The gst123 is designed to be a more flexible command line player
LICENSE=	gnu-gpl-v2

PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=	yes
USE_LANGUAGES=	c c++

USE_TOOLS+=	pkg-config gmake

USE_NCURSES=	yes

.include "../../multimedia/gstreamer0.10/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.include "../../multimedia/gst-plugins0.10-base/buildlink3.mk"
.include "../../devel/ncurses/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
