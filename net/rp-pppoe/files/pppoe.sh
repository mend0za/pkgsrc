#!/bin/sh
#
# $NetBSD$
#
# PROVIDE: pppoe
# REQUIRE: ipnat

test -f /etc/ppp/pppoe.conf || exit 1

case $1 in
start)
	. /etc/ppp/pppoe.conf 
	ifconfig $ETH up
	${PREFIX}/sbin/adsl-start
	;;
stop)
	${PREFIX}/sbin/adsl-stop
	. /etc/ppp/pppoe.conf 
	ifconfig $ETH down
	;;
restart)
	sh $0 stop
	sleep 5
	sh $0 start
	;;
*)
	echo "Usage: $0 {start|stop|restart}"
	exit 1
esac
