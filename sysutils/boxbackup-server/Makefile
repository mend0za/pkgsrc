# $NetBSD: Makefile,v 1.6 2011/07/18 19:18:09 drochner Exp $
#

DISTNAME=	boxbackup-0.11.1
PKGNAME=	boxbackup-server-0.11.1
CATEGORIES=	sysutils
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=boxbackup/}
EXTRACT_SUFX=	.tgz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.boxbackup.org/
COMMENT=	Backup tool

PKG_DESTDIR_SUPPORT=	user-destdir

PATCHDIR=	${.CURDIR}/../../sysutils/boxbackup-client/patches
DISTINFO_FILE=	${.CURDIR}/../../sysutils/boxbackup-client/distinfo

MAKE_JOBS_SAFE=	no

GNU_CONFIGURE=	yes
USE_LANGUAGES=	c++
USE_TOOLS+=	perl:run

REPLACE_PERL+=	bin/bbstored/bbstored-certs bin/bbstored/bbstored-config
REPLACE_PERL+=	lib/raidfile/raidfile-config

INSTALLATION_DIRS+=	bin

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/parcels/boxbackup*-backup-server-*/bbstoreaccounts ${DESTDIR}${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/parcels/boxbackup*-backup-server-*/bbstored ${DESTDIR}${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/parcels/boxbackup*-backup-server-*/bbstored-certs ${DESTDIR}${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/parcels/boxbackup*-backup-server-*/bbstored-config ${DESTDIR}${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/parcels/boxbackup*-backup-server-*/raidfile-config ${DESTDIR}${PREFIX}/bin

.include "../../devel/zlib/buildlink3.mk"
.include "../../security/openssl/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
