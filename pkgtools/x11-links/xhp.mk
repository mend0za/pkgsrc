# $NetBSD$

.if ${OS_VERSION} == "11.11" && ${OBJECT_FMT} == "SOM"
FILES_LIST=	${FILESDIR}/xhp
.else
PKG_FAIL_REASON+=	"No native X11 support for this HP-UX release."
PKG_FAIL_REASON+=	"Try X11_TYPE=modular"
.endif

