# $NetBSD: Makefile,v 1.16 2011/10/25 14:55:49 shattered Exp $

DISTNAME=	tmux-1.6
CATEGORIES=	misc
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tmux/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://tmux.sourceforge.net/
COMMENT=	BSD-licensed terminal multiplexer (GNU Screen alternative)
LICENSE=	modified-bsd

PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=	yes
USE_TERMINFO=	yes

.include "../../devel/libevent/buildlink3.mk"
BUILDLINK_API_DEPENDS.libevent+=	libevent>=1.1b
.include "../../mk/terminfo.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
