# $NetBSD: Makefile,v 1.50 2009/12/05 14:53:39 bad Exp $
#

DISTNAME=	cgoban-java-3.4.14
CATEGORIES=	games java
MASTER_SITES=	${MASTER_SITE_LOCAL}
# Mirrored from http://files.gokgs.com/javaBin/cgoban.jar
EXTRACT_SUFX=	.jar

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.gokgs.com/
COMMENT=	Client for the KGS Go Server and SGF viewer/editor

PKG_DESTDIR_SUPPORT=	user-destdir

WRKSRC=		${WRKDIR}
USE_JAVA=	run
USE_JAVA2=	yes
USE_TOOLS+=	printf

INSTALLATION_DIRS=	bin lib/java

do-build:
	printf "#! ${SH}\\nexec ${JAVA_BINPREFIX}-java -jar ${PREFIX}/lib/java/${DISTNAME}.jar \"\$$@\"\\n" > ${WRKSRC}/cgoban-java.sh

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/cgoban-java.sh \
		${DESTDIR}${PREFIX}/bin/cgoban-java
	${INSTALL_DATA} ${WRKSRC}/${DISTNAME}.jar \
		${DESTDIR}${PREFIX}/lib/java/${DISTNAME}.jar

.include "../../mk/java-vm.mk"
.include "../../mk/bsd.pkg.mk"
