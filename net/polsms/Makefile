# $NetBSD: Makefile,v 1.32 2011/08/23 13:06:53 obache Exp $
#

DISTNAME=	sms-2.0.3
PKGNAME=	pol${DISTNAME}
PKGREVISION=	7
CATEGORIES=	net
MASTER_SITES=	http://www.ceti.pl/~miki/komputery/download/sms/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.ceti.pl/~miki/komputery/sms.html
COMMENT=	Send SMS to cellular phones in Poland (Plus, Idea, Era)

PKG_DESTDIR_SUPPORT=	user-destdir

USE_LANGUAGES=	c++
USE_TOOLS+=	gmake

INSTALLATION_DIRS=	bin share/sms/contrib share/sms/doc

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/sms ${DESTDIR}${PREFIX}/bin
	${LN} -sf sms ${DESTDIR}${PREFIX}/bin/smsaddr
	${INSTALL_DATA} ${WRKSRC}/README ${DESTDIR}${PREFIX}/share/sms/doc
	${INSTALL_DATA} ${WRKSRC}/README.smsrc ${DESTDIR}${PREFIX}/share/sms/doc
	${INSTALL_DATA} ${WRKSRC}/doc/readme.html ${DESTDIR}${PREFIX}/share/sms/doc
	${INSTALL_DATA} ${WRKSRC}/contrib/mimecut ${DESTDIR}${PREFIX}/share/sms/contrib
	${INSTALL_DATA} ${WRKSRC}/contrib/procmailrc ${DESTDIR}${PREFIX}/share/sms/contrib

.include "../../databases/gdbm/buildlink3.mk"
.include "../../devel/pcre/buildlink3.mk"
.include "../../devel/pcre++/buildlink3.mk"
.include "../../www/curl/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
