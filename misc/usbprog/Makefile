# $NetBSD: Makefile,v 1.6 2011/11/01 06:02:09 sbd Exp $
#

DISTNAME=	usbprog-0.2.0
PKGREVISION=	6
CATEGORIES=	misc
MASTER_SITES=	http://download.berlios.de/usbprog/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.embedded-projects.net/index.php?page_id=165
COMMENT=	Firmware loader for "usbprog" programming adapter
LICENSE=	gnu-gpl-v2

PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=	yes
USE_LANGUAGES=	c c++
USE_LIBTOOL=	yes

.include "../../www/curl/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../devel/libusb/buildlink3.mk"
.include "../../devel/readline/buildlink3.mk"
.include "../../x11/wxGTK28/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../mk/bsd.pkg.mk"
