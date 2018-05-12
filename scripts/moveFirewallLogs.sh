TIME_VAR=`date +%Y-%m-%d_%H.%M.%S`
mkdir /root/ulogFiles/$TIME_VAR
mv -v /var/log/ulog/* /root/ulogFiles/$TIME_VAR
#- EOF
