# $NetBSD: Makefile,v 1.25 2011/11/01 06:02:37 sbd Exp $

PKG_DESTDIR_SUPPORT=	user-destdir

.include "../../meta-pkgs/xfce4/Makefile.common"

XFCE4_VERSION=	0.4.0

DISTNAME=	xfce4-netload-plugin-${XFCE4_VERSION}
PKGREVISION=	8
CATEGORIES=	sysutils
MASTER_SITES=	http://goodies.xfce.org/releases/xfce4-netload-plugin/
COMMENT=	Xfce network load plugin

.include "../../x11/xfce4-panel/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
