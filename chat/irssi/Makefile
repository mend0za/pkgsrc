# $NetBSD: Makefile,v 1.56 2011/04/22 13:43:06 obache Exp $

DISTNAME=		${IRSSI_DISTNAME}
PKGREVISION=		3
CATEGORIES=		chat
MASTER_SITES=		http://www.irssi.org/files/
EXTRACT_SUFX=		${IRSSI_EXTRACT_SUFX}

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://www.irssi.org/
COMMENT=		Secure and modular IRC client with text mode user interface
LICENSE=		gnu-gpl-v2

PKG_DESTDIR_SUPPORT=	user-destdir

.include "../../mk/bsd.prefs.mk"
.include "Makefile.common"

GNU_CONFIGURE=		yes
USE_LIBTOOL=		yes
USE_TOOLS+=		pkg-config

CONFIGURE_ARGS+=	--with-terminfo \
			--with-proxy \
			--without-ncurses \
			--sysconfdir=${PKG_SYSCONFDIR}

EGDIR=		${PREFIX}/share/examples/irssi
CONF_FILES=	${EGDIR}/irssi.conf ${PKG_SYSCONFDIR}/irssi.conf

INSTALL_MAKE_FLAGS+=	sysconfdir=${EGDIR}

.include "options.mk"
.include "../../devel/glib2/buildlink3.mk"

post-install:
	${INSTALL_DATA} ${WRKSRC}/irssi-config ${DESTDIR}${IRSSI_CONFIG}

.include "../../mk/bsd.pkg.mk"
