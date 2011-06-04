# $NetBSD: dist.mk,v 1.1 2010/09/17 07:11:41 obache Exp $

PY_DISTVERSION=	2.5.6
DISTNAME=	Python-${PY_DISTVERSION}
EXTRACT_SUFX=	.tar.bz2
DISTINFO_FILE=	${.CURDIR}/../../lang/python25/distinfo
PATCHDIR=	${.CURDIR}/../../lang/python25/patches
MASTER_SITES=	http://www.python.org/ftp/python/${PY_DISTVERSION}/
