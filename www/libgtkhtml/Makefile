# $NetBSD: Makefile,v 1.56 2011/11/01 06:02:46 sbd Exp $
#

DISTNAME=	libgtkhtml-2.6.3
PKGREVISION=	19
CATEGORIES=	www devel gnome
MASTER_SITES=	${MASTER_SITE_GNOME:=sources/libgtkhtml/2.6/}
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.gnome.org/
COMMENT=	Lightweight HTML rendering GTK2 widget

PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=		yes
USE_TOOLS+=		gmake msgfmt pkg-config
USE_LIBTOOL=		yes

PKGCONFIG_OVERRIDE=	libgtkhtml-2.0.pc.in

.include "../../textproc/libxml2/buildlink3.mk"
BUILDLINK_API_DEPENDS.gtk2+=	gtk2+>=2.14.0
.include "../../x11/gtk2/buildlink3.mk"
.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
