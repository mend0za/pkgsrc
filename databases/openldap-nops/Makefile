# $NetBSD: Makefile,v 1.10 2010/07/24 11:15:17 ghen Exp $

PKGNAME=	${DISTNAME:S/-/-nops-/}
PKGREVISION=	1
COMMENT=	Remove null-ops for OpenLDAP

CONFLICTS+=	openldap<2.3.23nb1
DEPENDS+=	openldap-server>=2.4.13nb1:../../databases/openldap-server

PKG_DESTDIR_SUPPORT=	user-destdir

USE_LIBTOOL=		yes

BUILD_DIRS=		include contrib/slapd-modules/nops
INSTALLATION_DIRS=	lib/openldap ${PKGMANDIR}/man5

do-install:
	${INSTALL_MAN} ${WRKSRC}/contrib/slapd-modules/nops/slapo-nops.5\
		${DESTDIR}${PREFIX}/${PKGMANDIR}/man5
	${LIBTOOL} --mode=install ${INSTALL_DATA}			\
		   ${WRKSRC}/contrib/slapd-modules/nops/nops.la		\
		   ${DESTDIR}${PREFIX}/lib/openldap

.include "../../databases/openldap/Makefile.common"
.include "../../databases/openldap-client/buildlink3.mk"
.include "../../databases/openldap-server/options.mk"
.include "../../mk/bsd.pkg.mk"
