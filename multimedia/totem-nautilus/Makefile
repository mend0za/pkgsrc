# $NetBSD: Makefile,v 1.19 2011/11/01 06:02:15 sbd Exp $
#

PKG_DESTDIR_SUPPORT=	user-destdir

.include "../../multimedia/totem/Makefile.common"

PKGNAME=	${DISTNAME:S/totem/totem-nautilus/}
PKGREVISION=	5

# override Makefile.common
PLIST_SRC=      ${.CURDIR}/PLIST
GCONF_SCHEMAS=	# none
CONFIGURE_ARGS+= --with-plugins=properties

COMMENT+=	(nautilus plugin)

PKG_DESTDIR_SUPPORT=	user-destdir

INSTALLATION_DIRS=	lib/nautilus/extensions-2.0

do-install:
	cd ${WRKSRC}/src && ${LIBTOOL} --mode=install ${INSTALL_DATA} \
	 libtotem-properties-page.la ${DESTDIR}${PREFIX}/lib/nautilus/extensions-2.0

BUILDLINK_API_DEPENDS.shared-mime-info+=	shared-mime-info>=0.22
.include "../../databases/shared-mime-info/buildlink3.mk"
.include "../../multimedia/gst-plugins0.10-base/buildlink3.mk"
.include "../../multimedia/gst-plugins0.10-good/buildlink3.mk"
.include "../../multimedia/gstreamer0.10/buildlink3.mk"
.include "../../sysutils/nautilus/buildlink3.mk"
.include "../../x11/libunique/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
