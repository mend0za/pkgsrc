# $NetBSD: Makefile,v 1.3 2011/04/22 13:45:22 obache Exp $
#

PKGNAME=	${DISTNAME:S/crudesaml-/cy2-saml-/}
PKGREVISION=	2
COMMENT=	Crude SAML assertion validator for bridging WebSSO and SASL

PLUGINDIR=	${PREFIX}/lib/sasl2

PKG_DESTDIR_SUPPORT=    user-destdir

INSTALLATION_DIRS=	${PKGMANDIR}/man5 ${PLUGINDIR}

do-install:
	${SHLIBTOOL} --mode=install \
		${INSTALL_PROGRAM} ${WRKSRC}/libsaml.la ${DESTDIR}${PLUGINDIR}
	${INSTALL_MAN} ${WRKSRC}/cy2_saml.5 \
		${DESTDIR}${PREFIX}/${PKGMANDIR}/man5

.include "../../security/crudesaml/Makefile.common"
