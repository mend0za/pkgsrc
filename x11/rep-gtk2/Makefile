# $NetBSD: Makefile,v 1.17 2011/11/01 06:03:08 sbd Exp $

DISTNAME=		rep-gtk-0.90.4
PKGNAME=		${DISTNAME:S/gtk/gtk2/}
PKGREVISION=		3
CATEGORIES=		x11 lang
MASTER_SITES=		http://download.tuxfamily.org/sawfish/rep-gtk/
EXTRACT_SUFX=		.tar.bz2

MAINTAINER=		tnn@NetBSD.org
HOMEPAGE=		http://rep-gtk.sourceforge.net/
COMMENT=		librep bindings for gtk2 (used by wm/sawfish)

PKG_DESTDIR_SUPPORT=	user-destdir

CONFLICTS=		rep-gtk-[0-9]*

USE_LIBTOOL=		yes
GNU_CONFIGURE=		yes
USE_TOOLS+=		gmake pkg-config
PKGCONFIG_OVERRIDE=	rep-gtk.pc.in

.include "../../lang/librep/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
