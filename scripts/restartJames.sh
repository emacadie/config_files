#!/bin/sh

#- to put into all runlevels on Debian:
#- update-rc.d sliceScript.sh start 95 0 1 2 3 4 5 6 S .
#- in /etc/crontab:
#- # every day at 3:15 AM
#- 15 3 * * * root /etc/init.d/sliceScript.sh


LOGGER="/usr/bin/logger"

# get environmental variables
# source /root/bashrc

export JAVA_HOME=/usr/lib/jvm/java-6-sun
export PATH=/usr/lib/jvm/java-6-sun/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games
CLASSPATH=.:$JAVA_HOME/jre/lib/rt.jar
JAMES_HOME=/usr/local/java/james-2.3.2/
TIME_VAR=`date +%Y-%m-%d_%H.%M.%S`
ULOG_SOURCE=/var/log/ulog/
ULOG_DEST=/root/ulogFiles/

#- A function that will log what we do
log() {
  echo "$1"
  test -x "$LOGGER" && $LOGGER -p info "$1"
}

log 'running /root/scripts/restartJames.sh'

#- 1. stop james
/usr/local/java/james-2.3.2/bin/phoenix.sh stop

log 'stopped james, about to sleep for 45 seconds'
sleep 45

#- 2. reallyKillJames
log 'calling reallyKillJames'
for i in `pgrep -f .*java.*james.*`
 do
   kill -9 $i
 done

#- 3. move phoenix log
log 'about to move phoenix log'

mv /usr/local/java/james-2.3.2/logs/phoenix.log /usr/local/java/james-2.3.2/logs/archive/phoenix.$TIME_VAR.log

#- 4. move james logs
log 'about to move james logs'
JAMES_LOG_DIR="/usr/local/java/james-2.3.2/apps/james/logs"
mv $JAMES_LOG_DIR/connections-* $JAMES_LOG_DIR/connections/
mv $JAMES_LOG_DIR/default-* $JAMES_LOG_DIR/default/
mv $JAMES_LOG_DIR/dnsserver-* $JAMES_LOG_DIR/dnsserver/
mv $JAMES_LOG_DIR/fetchmail-* $JAMES_LOG_DIR/fetchmail/
mv $JAMES_LOG_DIR/james-* $JAMES_LOG_DIR/james/
mv $JAMES_LOG_DIR/mailet-* $JAMES_LOG_DIR/mailet/
mv $JAMES_LOG_DIR/mailstore-* $JAMES_LOG_DIR/mailstore/
mv $JAMES_LOG_DIR/nntpserver-* $JAMES_LOG_DIR/nntpserver/
mv $JAMES_LOG_DIR/nntpstore-* $JAMES_LOG_DIR/nntpstore/
mv $JAMES_LOG_DIR/objectstore-* $JAMES_LOG_DIR/objectstore/
mv $JAMES_LOG_DIR/pop3server-* $JAMES_LOG_DIR/pop3server/
mv $JAMES_LOG_DIR/remotemanager-* $JAMES_LOG_DIR/remotemanager/
mv $JAMES_LOG_DIR/scheduler-* $JAMES_LOG_DIR/scheduler/
mv $JAMES_LOG_DIR/smtpserver-* $JAMES_LOG_DIR/smtpserver/
mv $JAMES_LOG_DIR/sockets-* $JAMES_LOG_DIR/sockets/
mv $JAMES_LOG_DIR/spoolmanager-* $JAMES_LOG_DIR/spoolmanager/
mv $JAMES_LOG_DIR/usersstore-* $JAMES_LOG_DIR/usersstore/

sleep 10

#- 5. restart james
log 'slept for 45 seconds, about to start james: /usr/local/java/james-2.3.2/bin/phoenix.sh start'
#- /usr/local/java/james-2.3.2/bin/phoenix.sh start
/etc/init.d/james.sh start
log 'just started james'

#- EOF
