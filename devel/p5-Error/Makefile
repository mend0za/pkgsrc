# $NetBSD: Makefile,v 1.20 2010/08/21 16:33:38 seb Exp $

DISTNAME=	Error-0.17016
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	2
SVR4_PKGNAME=	p5err
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Error/}

MAINTAINER=	rhaen@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Error/
COMMENT=	Perl extension module for try/throw/catch exception handling
LICENSE=	${PERL5_LICENSE}

PKG_INSTALLATION_TYPES=	overwrite pkgviews
PKG_DESTDIR_SUPPORT=	user-destdir

PERL5_PACKLIST=		auto/Error/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
