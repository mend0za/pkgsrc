# $NetBSD: Makefile,v 1.23 2010/04/19 19:52:13 zafer Exp $

DISTNAME=	socat-1.7.1.3
CATEGORIES=	net
MASTER_SITES=	http://www.dest-unreach.org/socat/download/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.dest-unreach.org/socat/
COMMENT=	"netcat++" (extended design, new implementation)
LICENSE=	gnu-gpl-v2

PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=		YES
USE_GNU_READLINE=	YES
ONLY_FOR_COMPILER=	gcc	# uses -Werror in the configure script

CONFIGURE_ARGS+=	--disable-libwrap
CONFIGURE_ARGS+=	--with-readline=${BUILDLINK_PREFIX.readline}

SUBST_CLASSES+=		paths
SUBST_MESSAGE.paths=	Fixing hardcoded paths.
SUBST_STAGE.paths=	post-patch
SUBST_FILES.paths=	doc/socat.1
SUBST_SED.paths=	-e 's,/usr/,${PREFIX}/,g'

SUBST_CLASSES+=		makefile
SUBST_MESSAGE.makefile=	Fixing Makefile CCOPTS.
SUBST_STAGE.makefile=	post-patch
SUBST_FILES.makefile=	Makefile.in
SUBST_SED.makefile=	-e '/CCOPTS/ s/-Wall -Wno-parentheses//'

.include "options.mk"

.include "../../security/openssl/buildlink3.mk"
.include "../../devel/readline/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
