# $NetBSD: Makefile,v 1.12 2011/10/16 13:55:27 hiramatsu Exp $

DISTNAME=	Test-WWW-Mechanize-1.38
PKGNAME=	p5-${DISTNAME}
SVR4_PKGNAME=	p5twm
CATEGORIES=	www perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Test/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Test-WWW-Mechanize/
COMMENT=	Perl5 module providing testing-specific WWW::Mechanize subclass
LICENSE=	${PERL5_LICENSE}

PKG_DESTDIR_SUPPORT=	user-destdir

PERL5_PACKLIST=		auto/Test/WWW/Mechanize/.packlist

DEPENDS+=	p5-Carp-Assert-More-[0-9]*:../../devel/p5-Carp-Assert-More
DEPENDS+=	p5-HTML-Tree-[0-9]*:../../www/p5-HTML-Tree
DEPENDS+=	p5-HTTP-Server-Simple>=0.42:../../www/p5-HTTP-Server-Simple
DEPENDS+=	p5-libwww>=6.02:../../www/p5-libwww
DEPENDS+=	p5-Test-LongString>=0.15:../../devel/p5-Test-LongString
DEPENDS+=	p5-URI-[0-9]*:../../www/p5-URI
DEPENDS+=	p5-WWW-Mechanize>=1.68:../../www/p5-WWW-Mechanize

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
