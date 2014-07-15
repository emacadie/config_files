$dateCommand = "date  +%Y-%m-%d\\ %H:%M:%S\\ %A\\ %Z\\ %z";
print "Starting the script\n";
open( FILE, "pingableHosts.txt" );
print "opened the file\n";

# Dell - not working
# $dnsServer = "143.166.82.81"; 
$dnsServer = "8.8.4.4"; 
# $dnsServer = "8.8.8.8"; 
# Lone Star Ruby Conf
# $dnsServer = "209.18.47.61";

while ( <FILE> ) {
    $hostName = $_;
    chomp $hostName;
    print "Here is the hostname: ", $hostName, "\n";
    # $result = exec( `ping $hostName count 4` );
    # print "result is: $result \n";
    $dnsCommand = "host " . $hostName . " $dnsServer";
    # $dnsCommand = "dig " . $hostName . " @" . "$dnsServer";
    print "Here is \$dnsCommand: $dnsCommand\n";
    print `$dnsCommand`; 
    # print "\n";
    # print $dnsCommand, "\n"; # $result, "\n";
    # $output = `ping $hostName`;
    # print $output;
    print `$dateCommand`;
    print "\n\n";
    # sleep( 1 );
} # end while ( <FILE> )



