# $NetBSD: Makefile,v 1.5 2010/08/21 16:35:02 seb Exp $

DISTNAME=		Email-MIME-ContentType-1.015
PKGNAME=		p5-${DISTNAME}
PKGREVISION=		2
SVR4_PKGNAME=		p5emc
CATEGORIES=		mail perl5
MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=Email/}

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://search.cpan.org/dist/Email-MIME-ContentType/
COMMENT=		Perl module for parsing a MIME Content-Type header

PKG_DESTDIR_SUPPORT=	user-destdir

PERL5_PACKLIST=		auto/Email/MIME/ContentType/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
