# $NetBSD: Makefile,v 1.6 2011/04/05 17:55:47 minskim Exp $
#

DISTNAME=	Geo-IPfree-1.100470
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	1
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Geo/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/~bricas/${DISTNAME}/
COMMENT=	Gets country name by IP or hostname

PKG_INSTALLATION_TYPES=	overwrite pkgviews
PKG_DESTDIR_SUPPORT=	user-destdir

PERL5_PACKLIST=	auto/Geo/IPfree/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
