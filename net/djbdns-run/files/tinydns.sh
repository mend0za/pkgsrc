#!@RCD_SCRIPTS_SHELL@
#
# $NetBSD: tinydns.sh,v 1.2 2004/09/02 08:23:02 schmonz Exp $
#
# @PKGNAME@ script to control tinydns (authoritative DNS service)
#

# PROVIDE: tinydns named
# REQUIRE: SERVERS
# BEFORE:  DAEMON

name="tinydns"

# User-settable rc.conf variables and their default values:
tinydns_ip=${tinydns_ip-"127.0.0.2"}
tinydns_datalimit=${tinydns_datalimit-"300000"}
tinydns_logcmd=${tinydns_logcmd-"@LOCALBASE@/bin/setuidgid dnslog logger -t nb${name} -p daemon.info"}

if [ -f /etc/rc.subr ]; then
	. /etc/rc.subr
fi

rcvar=${name}
required_files="@PKG_SYSCONFDIR@/tinydns/data.cdb"
command="@LOCALBASE@/bin/${name}"
start_precmd="tinydns_precmd"
extra_commands="cdb"
cdb_cmd="tinydns_cdb"

tinydns_precmd()
{
 	command="@SETENV@ - ROOT=@PKG_SYSCONFDIR@/tinydns IP=${tinydns_ip} @LOCALBASE@/bin/envuidgid tinydns @LOCALBASE@/bin/softlimit -d ${tinydns_datalimit} @LOCALBASE@/bin/tinydns </dev/null 2>&1 | ${tinydns_logcmd}"
	command_args="&"
	rc_flags=""
}

tinydns_cdb()
{
	@ECHO@ "Reloading @PKG_SYSCONFDIR@/tinydns/data."
	cd @PKG_SYSCONFDIR@/tinydns
	@LOCALBASE@/bin/tinydns-data
}

if [ -f /etc/rc.subr ]; then
	load_rc_config $name
	run_rc_command "$1"
else
	@ECHO_N@ " ${name}"
	tinydns_precmd
	eval ${command} ${tinydns_flags} ${command_args}
fi
