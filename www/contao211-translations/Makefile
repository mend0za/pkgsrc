# $NetBSD: Makefile,v 1.1.1.1 2012/02/19 16:24:17 taca Exp $
#

DISTNAME=	contao${CT_VER}-translations-${VERS}
CATEGORIES=	www
MASTER_SITES=	# defined for each distfiles
DISTFILES=	${CT_DISTFILES}
EXTRACT_DIR=	${WRKSRC}

MAINTAINER=	taca@NetBSD.org
HOMEPAGE=	http://www.contao.org/download.html
COMMENT=	Language files for Contao CMS
LICENSE=	gnu-lgpl-v3

PKG_DESTDIR_SUPPORT=	user-destdir

DEPENDS+=	contao${CT_VER}>=${CT_PKGVER}:../../www/contao${CT_VER}

# Use time stamp of latest translation.
VERS=		201202240
CT_VERS=	211

USE_TOOLS=	pax
NO_BUILD=	yes
NO_CONFIGURE=	yes

INSTALL_TEMPLATES?=	${.CURDIR}/../../www/contao/INSTALL.translations
PLIST_SRC=	${WRKDIR}/PLIST

.include "options.mk"

pre-install:
	${RM} -f ${WRKSRC}/system/modules/backend/languages/*/tl_task.php
	${FIND} ${WRKSRC}/system/modules \
		\( -name "*.orig*" -o -name tl_flash.php \) -exec ${RM} -f {} \;
	${FIND} ${WRKSRC} -type f -exec ${CHMOD} -x {} \;

do-install:
	cd ${WRKSRC}; pax -rw . ${DESTDIR}${PREFIX}/${CT_WEBDIR}
	${SED} -e 1q PLIST.master > ${PLIST_SRC}
	for lang in ${CT_LANGUAGES}; do \
		${SED} -e 1d -e "s|@lang@|$${lang}|" PLIST.master; \
	done | ${SORT} >> ${PLIST_SRC}

.include "../../www/contao/Makefile.common"
.include "../../lang/php/phpversion.mk"
.include "../../mk/bsd.pkg.mk"
