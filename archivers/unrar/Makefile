# $NetBSD: Makefile,v 1.64 2011/03/12 15:42:22 adam Exp $

DISTNAME=	unrarsrc-4.1.4
PKGNAME=	${DISTNAME:S/src//}
CATEGORIES=	archivers
MASTER_SITES=	http://www.rarlab.com/rar/

MAINTAINER=	wiz@NetBSD.org
HOMEPAGE=	http://www.rarlab.com/
COMMENT=	Extract, view & test RAR archives
LICENSE=	unrar-license

RESTRICTED=	Do not charge a fee for redistribution.  Do not use to develop a rar archiver.
# Reading the license implies NO_BIN_ON_FTP should be set because no
# permission is granted to distribute derived works (e.g., binaries).
# From private mail addressed to pkgsrc maintainers:
#
# Date: Wed, 10 Sep 2008 18:27:35 +0600
# From: Eugene Roshal <roshal@rarlab.com>
# You can redistribute either original or modified binaries or sources.
NO_SRC_ON_CDROM=${RESTRICTED}
NO_BIN_ON_CDROM=${RESTRICTED}

PKG_INSTALLATION_TYPES=	overwrite pkgviews
PKG_DESTDIR_SUPPORT=	user-destdir

NO_CONFIGURE=	YES
USE_LANGUAGES=	c++
# XXX: makefile.unix has DOS line endings
USE_TOOLS+=	gmake

MAKE_FILE=	makefile.unix

WRKSRC=		${WRKDIR}/unrar

INSTALLATION_DIRS=	bin share/doc/unrar

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/unrar ${DESTDIR}${PREFIX}/bin
	cd ${WRKSRC} && ${INSTALL_DATA} readme.txt license.txt	\
		${DESTDIR}${PREFIX}/share/doc/unrar

.include "../../mk/bsd.prefs.mk"

# Don't set _LARGEFILE_SOURCE for platforms w/o ftello() and fseeko().
#
.for platform in Interix-* NetBSD-1.5*
.  if ${MACHINE_PLATFORM:M${platform}} != ""
.MAKEFLAGS+=	DEFINES=""
.  endif
.endfor

.include "../../mk/bsd.pkg.mk"
