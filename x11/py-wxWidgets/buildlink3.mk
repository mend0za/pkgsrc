# $NetBSD: buildlink3.mk,v 1.8 2006/04/17 13:46:04 wiz Exp $

BUILDLINK_DEPTH:=			${BUILDLINK_DEPTH}+
PY_WXWIDGETS_BUILDLINK3_MK:=	${PY_WXWIDGETS_BUILDLINK3_MK}+

.include "../../lang/python/pyversion.mk"

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	${PYPKGPREFIX}-wxWidgets
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:N${PYPKGPREFIX}-wxWidgets}
BUILDLINK_PACKAGES+=	${PYPKGPREFIX}-wxWidgets

.if !empty(PY_WXWIDGETS_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.${PYPKGPREFIX}-wxWidgets+=	${PYPKGPREFIX}-wxWidgets>=2.6.1.0
BUILDLINK_ABI_DEPENDS.${PYPKGPREFIX}-wxWidgets?=	${PYPKGPREFIX}-wxWidgets>=2.6.1.0nb4
BUILDLINK_PKGSRCDIR.${PYPKGPREFIX}-wxWidgets?=	../../x11/py-wxWidgets

.include "../../x11/wxGTK/buildlink3.mk"

.endif	# PY_WXWIDGETS_BUILDLINK3_MK

BUILDLINK_DEPTH:=			${BUILDLINK_DEPTH:S/+$//}
