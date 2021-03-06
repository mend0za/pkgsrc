# $NetBSD: Makefile,v 1.3 2012/02/01 23:55:16 taca Exp $

DISTNAME=	drupal-7.12
CATEGORIES=	www
MASTER_SITES=	http://drupal.org/files/projects/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://drupal.org/
COMMENT=	Open source content management system
LICENSE=	gnu-gpl-v2

PKG_DESTDIR_SUPPORT=	user-destdir

.include "../../lang/php/phpversion.mk"

.if ${PKG_PHP_VERSION} == "5"
DEPENDS+=	php>=5.2.0<5.3:../../lang/php5
.endif
DEPENDS+=	${PHP_PKG_PREFIX}-gd>=5.2.0:../../graphics/php-gd
DEPENDS+=	${PHP_PKG_PREFIX}-json>=5.2.0:../../textproc/php-json

NO_BUILD=	YES
DRUPAL=		share/drupal
PAX_DIRS=	includes misc modules profiles scripts themes
DOCS=		CHANGELOG.txt COPYRIGHT.txt INSTALL.mysql.txt \
		INSTALL.pgsql.txt INSTALL.sqlite.txt INSTALL.txt LICENSE.txt \
		MAINTAINERS.txt README.txt UPGRADE.txt

PKG_GROUPS_VARS+=	WWW_GROUP
PKG_USERS_VARS+=	WWW_USER

BUILD_DEFS+=		WWW_USER WWW_GROUP
USE_TOOLS+=		perl:run pax
REPLACE_PERL=		scripts/code-style.pl

OWN_DIRS_PERMS+=	${DRUPAL}/sites/default \
			${WWW_USER} ${WWW_GROUP} 0750

CONF_FILES=	share/examples/drupal/drupal.conf \
		${PKG_SYSCONFDIR}/drupal.conf \
		share/examples/drupal/default.settings.php \
		${DRUPAL}/sites/default/default.settings.php

CONF_FILES_PERMS+=	share/examples/drupal/default.settings.php \
		${DRUPAL}/sites/default/settings.php \
		${WWW_USER} ${WWW_GROUP} 0640

REPLACE_INTERPRETER+=	php
REPLACE.php.old=	.*php[^ ]*
REPLACE.php.new=	${PREFIX}/bin/php
REPLACE_FILES.php=	scripts/drupal.sh scripts/password-hash.sh

SUBST_CLASSES+=		conf
SUBST_STAGE.conf=	pre-install
SUBST_FILES.conf=	drupal.conf
SUBST_SED.conf=		-e "s|@DRUPAL@|${DRUPAL}|g"
SUBST_SED.conf=		-e "s|@PREFIX@|${PREFIX}|g"
SUBST_MESSAGE.conf=	Fixing configuration files.

INSTALLATION_DIRS+=	${DRUPAL}/files ${DRUPAL}/sites/all \
			share/doc/drupal share/examples/drupal

.include "options.mk"

post-extract:
	${CP} ${FILESDIR}/drupal.conf ${WRKSRC}

do-install:
	${INSTALL_DATA} ${WRKSRC}/robots.txt ${DESTDIR}${PREFIX}/${DRUPAL}
	${INSTALL_DATA} ${WRKSRC}/sites/all/README.txt \
		${DESTDIR}${PREFIX}/${DRUPAL}/sites/all
	${INSTALL_DATA} ${WRKSRC}/drupal.conf \
		${DESTDIR}${PREFIX}/share/examples/drupal
	${INSTALL_DATA} ${WRKSRC}/sites/default/default.settings.php \
		${DESTDIR}${PREFIX}/share/examples/drupal
	${INSTALL_DATA} ${WRKSRC}/*.php ${DESTDIR}${PREFIX}/${DRUPAL}
.for i in ${PAX_DIRS}
	cd ${WRKSRC}/${i} && ${PAX} -rw . ${DESTDIR}${PREFIX}/${DRUPAL}/${i}
.endfor
.for i in ${DOCS}
	${INSTALL_DATA} ${WRKSRC}/${i} ${DESTDIR}${PREFIX}/share/doc/drupal
.endfor

post-install:
	${FIND} ${DESTDIR}${PREFIX}/${DRUPAL} \
		\( -name '*.jpg' -o -name '*.png' \) | ${XARGS} ${CHMOD} 0644

.include "../../mk/bsd.pkg.mk"
