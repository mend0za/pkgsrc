# $NetBSD: Makefile,v 1.2 2011/08/21 04:25:08 minskim Exp $

DISTNAME=	jekyll-0.11.0
PKGREVISION=	1
CATEGORIES=	www

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/mojombo/jekyll
COMMENT=	Blog-aware, static site generator in Ruby

DEPENDS+=	${RUBY_PKGPREFIX}-albino>=1.3.2:../../textproc/ruby-albino
DEPENDS+=	${RUBY_PKGPREFIX}-classifier>=1.3.1:../../textproc/ruby-classifier
DEPENDS+=	${RUBY_PKGPREFIX}-directory-watcher>=1.1.1:../../sysutils/ruby-directory-watcher
DEPENDS+=	${RUBY_PKGPREFIX}-kramdown>=0.13.2:../../textproc/ruby-kramdown
DEPENDS+=	${RUBY_PKGPREFIX}-liquid>=1.9.0:../../www/ruby-liquid
DEPENDS+=	${RUBY_PKGPREFIX}-maruku>=0.5.9:../../textproc/ruby-maruku
LICENSE=	mit

.include "../../lang/ruby/gem.mk"
.include "../../mk/bsd.pkg.mk"
