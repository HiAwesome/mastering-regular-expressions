#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';
# 打印具体的报错信息
use diagnostics;

open my $fh, '<', 'src/main/resources/data/text107.txt' or die "Can't open file $!";
my $letter = do {
    local $/;
    <$fh>
};

print($letter);
print("\n");
print("--------------\n");
