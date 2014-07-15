$dateCommand = "date  +%Y-%m-%d\\ %H:%M:%S\\ %A\\ %Z\\ %z";
print "Starting the script\n";
open( FILE, "pingableHosts.txt" );
print "opened the file\n";

while ( <FILE> ) {
	$hostName = $_;
    chomp $hostName;
	print "Here is the hostname: ", $hostName, "\n";
	# $result = exec( `ping $hostName count 4` );
    # print "result is: $result \n";
	$pingCommand = "ping -c 4 " . $hostName;
    print "Here is \$pingCommand: $pingCommand\n";
    print `$pingCommand`; 
    # print "\n";
	# print $pingCommand, "\n"; # $result, "\n";
	# $output = `ping $hostName`;
	# print $output;
    print `$dateCommand`;
	print "\n\n";
	sleep( 1 );
} # end while ( <FILE> )



