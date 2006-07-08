# $NetBSD: buildlink3.mk,v 1.11 2006/07/08 22:39:35 jlam Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
TETEX_BIN_BUILDLINK3_MK:=	${TETEX_BIN_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	teTeX-bin
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:NteTeX-bin}
BUILDLINK_PACKAGES+=	teTeX-bin
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}teTeX-bin

.if !empty(TETEX_BIN_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.teTeX-bin+=	teTeX-bin-2.[0-9]*
BUILDLINK_ABI_DEPENDS.teTeX-bin?=	teTeX-bin>=2.0.2nb6
BUILDLINK_PKGSRCDIR.teTeX-bin?=	../../print/teTeX-bin
.endif	# TETEX_BIN_BUILDLINK3_MK

TEX=tex
PDFTEX=pdftex
PKG_TEXMFPREFIX=	${PREFIX}/share/texmf
PKG_LOCALTEXMFPREFIX=	${PREFIX}/share/texmf-local
PLIST_SUBST+=	PKG_TEXMFPREFIX=${PKG_TEXMFPREFIX:C|^${PREFIX}/||}
PLIST_SUBST+=	PKG_LOCALTEXMFPREFIX=${PKG_LOCALTEXMFPREFIX:C|^${PREFIX}/||}

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH:S/+$//}
