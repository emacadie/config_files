#- every 5 minutes in crontab
# */5 * * * * root /root/scripts/setNameHosts.sh

echo 'nameserver 8.8.8.8' | cat >> /etc/resolv.conf
echo 'nameserver 8.8.4.4' | cat >> /etc/resolv.conf
