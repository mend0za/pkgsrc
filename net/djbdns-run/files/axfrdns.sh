#!@RCD_SCRIPTS_SHELL@
#
# $NetBSD: axfrdns.sh,v 1.2 2004/09/02 08:23:02 schmonz Exp $
#
# @PKGNAME@ script to control axfrdns (DNS zone-transfer and TCP service)
#

# PROVIDE: axfrdns named
# REQUIRE: SERVERS tinydns
# BEFORE:  DAEMON

name="axfrdns"

# User-settable rc.conf variables and their default values:
axfrdns_tcpflags=${axfrdns_tcpflags-"-vDRHl0"}
axfrdns_datalimit=${axfrdns_datalimit-"300000"}
axfrdns_logcmd=${axfrdns_logcmd-"@LOCALBASE@/bin/setuidgid dnslog logger -t nb${name} -p daemon.info"}

if [ -f /etc/rc.subr ]; then
	. /etc/rc.subr
fi

rcvar=${name}
required_files="@PKG_SYSCONFDIR@/axfrdns/tcp.cdb"
command="@LOCALBASE@/bin/tcpserver"
procname=${name}
start_precmd="axfrdns_precmd"
extra_commands="cdb"
cdb_cmd="axfrdns_cdb"

axfrdns_precmd()
{
 	command="@SETENV@ - ROOT=@PKG_SYSCONFDIR@/tinydns IP=${tinydns_ip} @LOCALBASE@/bin/envuidgid axfrdns @LOCALBASE@/bin/softlimit -d ${axfrdns_datalimit} @LOCALBASE@/bin/argv0 @LOCALBASE@/bin/tcpserver ${name} ${axfrdns_tcpflags} -x @PKG_SYSCONFDIR@/axfrdns/tcp.cdb -- ${tinydns_ip} 53 @LOCALBASE@/bin/axfrdns </dev/null 2>&1 | ${axfrdns_logcmd}"
	command_args="&"
	rc_flags=""
}

axfrdns_cdb()
{
	@ECHO@ "Reloading @PKG_SYSCONFDIR@/axfrdns/tcp."
	cd @PKG_SYSCONFDIR@/axfrdns
	@LOCALBASE@/bin/tcprules tcp.cdb tcp.tmp < tcp
}

if [ -f /etc/rc.subr ]; then
	load_rc_config $name
	run_rc_command "$1"
else
	@ECHO_N@ " ${name}"
	axfrdns_precmd
	eval ${command} ${axfrdns_flags} ${command_args}
fi
