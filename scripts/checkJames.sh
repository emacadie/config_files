#!/bin/bash

LOGGER="/usr/bin/logger"
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-i386
export PATH=/usr/lib/jvm/java-8-openjdk-i386:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games
CLASSPATH=.:$JAVA_HOME/jre/lib/rt.jar
JAMES_HOME=/usr/local/java/james-2.3.2/

#- A function that will log what we do
log() {
  echo "$1"
  test -x "$LOGGER" && $LOGGER -p info "$1"
}


log 'seeing if we need to restart james'


total=0
for i in `pgrep -f .*java.*james.*`
 do
    (( total =  total + 1 ))
 done
echo $total
if [ $total = 0 ]; then
    echo "Total is 0"
    log 'total is 0, calling restart james'
    /etc/init.d/james.sh restart
    log 'just called restart james'
else 
    echo "Total is more than 0"
    log 'no need to call restart james'

fi
