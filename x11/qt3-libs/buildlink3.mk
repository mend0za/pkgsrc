# $NetBSD$

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
QT3_LIBS_BUILDLINK3_MK:=	${QT3_LIBS_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	qt3-libs
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nqt3-libs}
BUILDLINK_PACKAGES+=	qt3-libs

.if !empty(QT3_LIBS_BUILDLINK3_MK:M+)
BUILDLINK_DEPENDS.qt3-libs+=	qt3-libs>=3.2.3
BUILDLINK_PKGSRCDIR.qt3-libs?=	../../x11/qt3-libs
.endif	# QT3_LIBS_BUILDLINK3_MK

QTDIR=	${BUILDLINK_PREFIX.qt3-libs}/qt3
                                                                                
BUILDLINK_INCDIRS.qt3-libs+=	${QTDIR}/include
BUILDLINK_LIBDIRS.qt3-libs+=	${QTDIR}/lib
                                                                                
PTHREAD_OPTS+=	require

.include "../../devel/zlib/buildlink3.mk"
.include "../../fonts/Xft2/buildlink3.mk"
.include "../../graphics/jpeg/buildlink3.mk"
.include "../../graphics/MesaLib/buildlink3.mk"
.include "../../graphics/glu/buildlink3.mk"
.include "../../graphics/mng/buildlink3.mk"
.include "../../graphics/png/buildlink3.mk"
.include "../../graphics/freetype2/buildlink3.mk"
.include "../../x11/Xrandr/buildlink3.mk"
.include "../../x11/xcursor/buildlink3.mk"
.include "../../mk/pthread.buildlink3.mk"

CONFIGURE_ENV+=		MOC="${QTDIR}/bin/moc"
MAKE_ENV+=		MOC="${QTDIR}/bin/moc"
LDFLAGS+=		-Wl,${RPATH_FLAG}${QTDIR}/lib

.if !defined(BUILD_QT3)
CONFIGURE_ENV+=		QTDIR="${QTDIR}"
MAKE_ENV+=		QTDIR="${QTDIR}"
.endif

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
