# $NetBSD: Makefile,v 1.2 2011/01/19 16:35:06 minskim Exp $

DISTNAME=	a4wide
PKGNAME=	tex-${DISTNAME}-2010
PKGREVISION=	1
TEXLIVE_REV=	20943

MAINTAINER=	minskim@NetBSD.org
COMMENT=	Wide a4 layout for LaTeX

CONFLICTS+=	tex-ltxmisc<2009
DEPENDS+=	tex-ntgclass-[0-9]*:../../print/tex-ntgclass

.include "../../print/texlive/package.mk"
.include "../../mk/bsd.pkg.mk"
