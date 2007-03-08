# $NetBSD: check-perms.mk,v 1.6 2007/01/06 14:11:16 rillig Exp $
#
# This file checks that after installation of a package, all files and
# directories of that package have sensible permissions set.
#
# To use this check in bulk builds, add
#	BULK_PREREQ+= sysutils/checkperms
# to your mk.conf file.
#
# User-settable variables:
#
# CHECK_PERMS
#	Specifies whether the permissions check should be run at all.
#
#	Possible values: yes, no.
#
#	Default value: yes for PKG_DEVELOPER, no otherwise.
#
# Package-settable variables:
#
# CHECK_PERMS_SKIP
#	A list of shell patterns (like man/*) that should be excluded
#	from the check. Note that a * in a pattern also matches a slash
#	in a pathname.
#
#	Default value: empty.
#
# CHECK_PERMS_AUTOFIX
#	If set to yes, any unusual permissions are fixed automatically.
#
#	Possible values: yes, no.
#

.if defined(PKG_DEVELOPER)
CHECK_PERMS?=		yes
.else
CHECK_PERMS?=		no
.endif

CHECK_PERMS_SKIP?=	# none
CHECK_PERMS_AUTOFIX?=	no

# The checkperms command does not yet support Interix with the -c flag.
# See PR 34968.
.if !empty(MACHINE_PLATFORM:MInterix-*-*)
_CHECK_PERMS_FLAGS=
.elif !empty(CHECK_PERMS_AUTOFIX:M[Yy][Ee][Ss])
_CHECK_PERMS_FLAGS=	-cff
.else
_CHECK_PERMS_FLAGS=	-c
.endif

.if !empty(CHECK_PERMS:M[Yy][Ee][Ss])
privileged-install-hook: _check-perms
.endif

_CHECK_PERMS_CMD=	${LOCALBASE}/bin/checkperms
_CHECK_PERMS_GETDIRS_AWK=						\
	/.*/ {								\
		print $$0;						\
		dir = $$0;						\
		while (sub("/[^/]*$$", "", dir) && dir != "") {		\
			if (!(dir in dirs)) {				\
				dirs[dir] = "done";			\
				print dir;				\
			}						\
		}							\
	}

_check-perms: .PHONY
	@${STEP_MSG} "Checking file permissions in ${PKGNAME}"
	${_PKG_SILENT}${_PKG_DEBUG} set -eu;				\
	${PKG_INFO} -qe "checkperms>=1.1"				\
	|| {								\
		${WARNING_MSG} "[check-perms.mk] Skipping file permissions check."; \
		${WARNING_MSG} "[check-perms.mk] Install sysutils/checkperms to enable this check."; \
		exit 0;							\
	};								\
	${PKG_FILELIST_CMD}						\
	| sort								\
	| sed -e 's,\\,\\\\,g'						\
	| while read file; do						\
		case "$$file" in					\
		${CHECK_PERMS_SKIP:@p@${PREFIX}/${p}|${p}) continue ;;@}\
		*) ;;							\
		esac;							\
		printf "%s\\n" "$$file";				\
	  done								\
	| awk ${_CHECK_PERMS_GETDIRS_AWK:Q}				\
	| ${_CHECK_PERMS_CMD} ${_CHECK_PERMS_FLAGS}
