# $NetBSD: Makefile,v 1.11 2009/07/07 20:39:13 joerg Exp $
#

DISTNAME=	TclXML-1.2
PKGNAME=	tcl-xml-1.2
CATEGORIES=	textproc www tcl
MASTER_SITES=	http://www.zveno.com/in-tclxml/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.zveno.com/zm.cgi/in-tclxml/
COMMENT=	XML parser implemented entirely in Tcl

PKG_DESTDIR_SUPPORT=	user-destdir

DEPENDS+=	tcl>=8.3.2:../../lang/tcl

# old name for this package...
CONFLICTS+=	TclXML-[0-9]*

NO_CONFIGURE=	yes
NO_BUILD=	yes

INSTALLATION_DIRS=	lib/tcl/TclXML share/doc/tcl/TclXML

do-install:
	${INSTALL_DATA} ${WRKSRC}/pkgIndex.tcl ${DESTDIR}${PREFIX}/lib/tcl/TclXML
	${INSTALL_DATA} ${WRKSRC}/sgml.tcl ${DESTDIR}${PREFIX}/lib/tcl/TclXML
	${INSTALL_DATA} ${WRKSRC}/xml.tcl ${DESTDIR}${PREFIX}/lib/tcl/TclXML
	${INSTALL_DATA} ${WRKSRC}/docs/reference.html ${DESTDIR}${PREFIX}/share/doc/tcl/TclXML
	${INSTALL_DATA} ${WRKSRC}/changes ${DESTDIR}${PREFIX}/share/doc/tcl/TclXML

.include "../../mk/bsd.pkg.mk"
