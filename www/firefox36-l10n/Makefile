# $NetBSD: Makefile,v 1.6 2011/12/19 06:26:55 obache Exp $
#

FIREFOX_VER=	3.6.27
PKGNAME=	firefox36-l10n-${FIREFOX_VER}
DISTNAME=	# empty
CATEGORIES=	www
MASTER_SITES=	${MASTER_SITE_MOZILLA:=firefox/releases/${FIREFOX_VER}/linux-i686/xpi/}

MAINTAINER=	tnn@NetBSD.org
HOMEPAGE=	http://www.mozilla.com/en-US/firefox/
COMMENT=	Language packs for www/firefox36

PKG_DESTDIR_SUPPORT=	user-destdir

DIST_SUBDIR=	${PKGNAME_NOREV}
DISTFILES=	${XPI_FILES}

NO_BUILD=	yes

FIREFOX_LOCALES=	af ar as ast be bg bn-BD bn-IN ca cs cy		\
			da de el en-GB eo es-AR es-CL es-ES es-MX et	\
			eu fa fi fr fy-NL ga-IE gd gl gu-IN he hi-IN	\
			hr hu id is it ja ka kk kn ko			\
			ku lt lv mk ml mr nb-NO nl nn-NO oc		\
			or pa-IN pl pt-BR pt-PT rm ro ru si sk		\
			sl sq sr sv-SE ta-LK ta te th tr uk		\
			vi zh-CN zh-TW

EXTENSIONS_DIR=		${PREFIX}/lib/firefox36/extensions
XPI_FILES=		${FIREFOX_LOCALES:=.xpi}

# remove head of 3 empty lines
SUBST_CLASSES+=		chop
SUBST_STAGE.chop=	post-configure
SUBST_FILES.chop=	ta-LK/install.rdf
SUBST_SED.chop=		-e '1,3d'

.include "../../devel/xulrunner/xpi.mk"
.include "../../mk/bsd.pkg.mk"
