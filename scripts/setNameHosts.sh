#- every 5 minutes in crontab
# */5 * * * * root /root/scripts/setNameHosts.sh
rm /etc/resolv.conf
# https://blog.uncensoreddns.org/
# anycast, global
echo 'nameserver 91.239.100.100' | cat >> /etc/resolv.conf
# physically in Denmark
echo 'nameserver 89.233.43.71' | cat >> /etc/resolv.conf
# FreeDNS
echo 'nameserver 45.33.97.5' | cat >> /etc/resolv.conf
# https://www.opennic.org
echo 'nameserver 66.187.76.168' | cat >> /etc/resolv.conf

<<COMMENT1
From https://www.lifewire.com/free-and-public-dns-servers-2626062
2020-02-02
Google 	8.8.8.8 	8.8.4.4
Quad9 	9.9.9.9 	149.112.112.112
OpenDNS Home 	208.67.222.222 	208.67.220.220
Cloudflare 	1.1.1.1 	1.0.0.1
CleanBrowsing 	185.228.168.9 	185.228.169.9
Verisign 	64.6.64.6 	64.6.65.6
Alternate DNS 	198.101.242.72 	23.253.163.53
AdGuard DNS 	176.103.130.130 	176.103.130.131

Also:
DNS.WATCH 	84.200.69.80 	84.200.70.40
Comodo Secure DNS 	8.26.56.26 	8.20.247.20
CenturyLink (Level3) 	205.171.3.66 	205.171.202.166
GreenTeamDNS 	81.218.119.11 	209.88.198.133
SafeDNS 	195.46.39.39 	195.46.39.40
OpenNIC 	66.187.76.168 	147.135.76.183
Dyn 	216.146.35.35 	216.146.36.36
FreeDNS 	45.33.97.5 	37.235.1.177
UncensoredDNS 	91.239.100.100 	89.233.43.71
Hurricane Electric 	74.82.42.42 	 
puntCAT 	109.69.8.51 	 



COMMENT1
: '
 your comments here
Multi-line comment, perhaps bash-only
'
#- EOF
