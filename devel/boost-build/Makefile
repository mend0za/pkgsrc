# $NetBSD: Makefile,v 1.12 2010/11/26 20:46:59 adam Exp $

BOOST_PACKAGE=		build
BOOST_COMMENT=		(Boost.Build framework)
BOOST_CONFIG=		no

PKG_DESTDIR_SUPPORT=	user-destdir

USE_TOOLS+=	pax

.include "../../meta-pkgs/boost/Makefile.common"

SUBST_CLASSES+=		confdir
SUBST_MESSAGE.confdir=	Fixing path to site-config.jam.
SUBST_STAGE.confdir=	pre-build
SUBST_FILES.confdir=	tools/build/v2/build-system.jam
SUBST_SED.confdir=	-e 's,/etc,${PKG_SYSCONFDIR},g'

EGDIR=			${PREFIX}/share/examples/boost-build
CONF_FILES=		${EGDIR}/site-config.jam \
			${PKG_SYSCONFDIR}/site-config.jam

# contains /usr/bin/python
CHECK_INTERPRETER_SKIP=	share/boost-build/example/customization/inline_file.py
CHECK_INTERPRETER_SKIP+=share/boost-build/tools/doxproc.py
CHECK_INTERPRETER_SKIP+=share/boost-build/test/*.py
# contains /bin/bash
CHECK_INTERPRETER_SKIP+=share/boost-build/nightly.sh
CHECK_INTERPRETER_SKIP+=share/boost-build/roll.sh

INSTALLATION_DIRS+=	share/boost-build

.include "toolset.mk"

post-extract:
	${FIND} ${WRKSRC}/tools/build/v2 -type d -exec ${CHMOD} 755 {} \;
	${FIND} ${WRKSRC}/tools/build/v2 -type f -exec ${CHMOD} 644 {} \;

do-build:
	{ ${ECHO} '# System wide configuration file for Boost.Build.' ; \
	  ${ECHO} ; \
	  ${ECHO} 'using ${BOOST_TOOLSET} ;' ; } >${WRKDIR}/site-config.jam

do-install:
	cd ${WRKSRC}/tools/build/v2 && pax -r -w -p pm -s ':^./engine.*$$::' \
		-s ':^.*\.orig$$::' . ${DESTDIR}${PREFIX}/share/boost-build
	${INSTALL_DATA_DIR} ${DESTDIR}${EGDIR}
	${INSTALL_DATA} ${WRKDIR}/site-config.jam ${DESTDIR}${EGDIR}

.include "../../mk/bsd.pkg.mk"
