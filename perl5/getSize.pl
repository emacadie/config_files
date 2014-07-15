#!/usr/bin/perl -w

# written by postalid -> EKMacAdie

use File::Find;

$total_size = 0;

use Cwd;
$dir = getcwd;

find( \&findlarge, $dir );

print "The files in this directory add up to ";
print commify( $total_size ), " bytes \n";
print $total_size/1024, " KB\n";
print $total_size/1024/1024, " MB\n";
print $total_size/1024/1024/1024, " GB\n";

# added in jmacs

sub findlarge {

#    print "compressing $File::Find::name\n" if !($_ =~ /\w+.Z/) && !(-d $_ );
#    print `compress -f $File::Find::name` if !($_ =~ /\w+.Z/) && !(-d $_ );

    $total_size += (-s $File::Find::name);

} # end findlarge


=head2 MORE DESCRIPTION

Look!! More POD!!
STOP SLEEPING SO MUCH!!
=cut

#print "\n";

sub commify {
    my $text = reverse $_[ 0 ];
    $text =~ s/(\d\d\d)(?=\d)(?!\d*\.)/$1,/g;
    return scalar reverse $text;
} # end commify
