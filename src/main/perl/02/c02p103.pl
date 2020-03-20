#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';
# 打印具体的报错信息
use diagnostics;

open my $fh, '<', 'src/main/resources/data/text103.txt' or die "Can't open file $!";
my $letter = do {
    local $/;
    <$fh>
};

print($letter);
print("\n");
print("--------------\n");

my $given = "Tom";
my $family = "Cruise";
my $wander_price = "100% genuine faux diamond";


$letter =~ s/=FIRST=/$given/g;
$letter =~ s/=FAMILY=/$family/g;
$letter =~ s/=SUCKER=/$given $family/g;
$letter =~ s/=TRINKET=/fabulous $wander_price/g;

print("$letter")

# Dear =FIRST=,
# You have been chosen to win a brand new =TRINKET=! Free!
# Could you use another =TRINKET= in the =FAMILY= household?
# Yes =SUCKER=, I bet you could! Just respond by...
# --------------
# Dear Tom,
# You have been chosen to win a brand new fabulous 100% genuine faux diamond! Free!
# Could you use another fabulous 100% genuine faux diamond in the Cruise household?
# Yes Tom Cruise, I bet you could! Just respond by...