#!@RCD_SCRIPTS_SHELL@
#
# $NetBSD: winbindd.sh,v 1.1 2004/01/11 02:26:31 jlam Exp $
#
# PROVIDE: winbindd
# REQUIRE: nmbd

. /etc/rc.subr

name="winbindd"
rcvar=$name
command="@PREFIX@/sbin/${name}"
required_vars="nmbd"
required_files="@SAMBA_ETCDIR@/smb.conf"
extra_commands="reload"
command_args="-B"

load_rc_config $name
load_rc_config_var nmbd nmbd
run_rc_command "$1"
