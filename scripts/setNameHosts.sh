#- every 5 minutes in crontab
# */5 * * * * root /root/scripts/setNameHosts.sh
# Google
# echo 'nameserver 8.8.8.8' | cat >> /etc/resolv.conf
# echo 'nameserver 8.8.4.4' | cat >> /etc/resolv.conf
# https://blog.uncensoreddns.org/
echo '# https://blog.uncensoreddns.org/' > /etc/resolv.conf
echo 'nameserver 91.239.100.100' | cat >> /etc/resolv.conf
echo 'nameserver 89.233.43.71' | cat >> /etc/resolv.conf
# https://freedns.zone/en/
echo '# https://freedns.zone/en/' | cat >> /etc/resolv.conf
echo 'nameserver 37.235.1.174' | cat >> /etc/resolv.conf
echo 'nameserver 37.235.1.177' | cat >> /etc/resolv.conf
# https://www.opennic.org
echo '# https://www.opennic.org' | cat >> /etc/resolv.conf
echo 'nameserver 45.76.27.27' | cat >> /etc/resolv.conf
echo 'nameserver 96.90.175.167' | cat >> /etc/resolv.conf 
echo 'nameserver 23.94.60.240' | cat >> /etc/resolv.conf
# dot o
echo '# dot o' | cat >> /etc/resolv.conf
echo 'nameserver 45.76.27.27' | cat >> /etc/resolv.conf
echo 'nameserver 138.197.25.214' | cat >> /etc/resolv.conf
#- EOF
