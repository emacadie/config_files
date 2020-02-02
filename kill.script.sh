REGEX_1=$1
for i in `pgrep -f .*$REGEX_1.*`
 do
   kill -9 $i
 done
