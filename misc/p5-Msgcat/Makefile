# $NetBSD: Makefile,v 1.17 2010/08/21 16:35:18 seb Exp $
#

DISTNAME=		Msgcat-1.03
PKGNAME=		p5-${DISTNAME}
PKGREVISION=		3
SVR4_PKGNAME=		p5lco
CATEGORIES=		misc perl5
MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=Locale/}

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://search.cpan.org/dist/Msgcat/
COMMENT=		Perl5 module to use the message catalog functions

PKG_DESTDIR_SUPPORT=	user-destdir

PERL5_PACKLIST=		auto/Locale/Msgcat/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
