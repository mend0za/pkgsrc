# $NetBSD: Makefile,v 1.7 2010/02/14 20:00:12 joerg Exp $
#

DISTNAME=	unfs3-0.9.22
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=unfs3/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://unfs3.sourceforge.net/
COMMENT=	Userspace NFSv3 server

PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=	yes
USE_TOOLS+=	flex bison

.include "../../mk/bsd.prefs.mk"

LIBS+=	-lfl

CONF_FILES+=		${PREFIX}/share/examples/unfs3/exports \
			    ${PKG_SYSCONFDIR}/exports
RCD_SCRIPTS=		unfsd

INSTALLATION_DIRS+=	share/examples/unfs3

SUBST_CLASSES+=		exports
SUBST_STAGE.exports=	pre-configure
SUBST_MESSAGE.exports=	Fixing path to exports(5)
SUBST_FILES.exports=	daemon.c unfsd.8
SUBST_SED.exports=	-e 's,/etc/exports,${PKG_SYSCONFDIR}/exports,g'

pre-build:
	cd ${WRKSRC}/Config && ${MAKE_PROGRAM} clean

post-install:
	${INSTALL_DATA} ${FILESDIR}/exports \
	    ${DESTDIR}${PREFIX}/share/examples/unfs3

.include "../../devel/flex/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
