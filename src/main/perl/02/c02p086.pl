#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';
# 打印具体的报错信息
use diagnostics;

my $celsius = 20;

# 20 C is 68 F.
# 25 C is 77 F.
# 30 C is 86 F.
# 35 C is 95 F.
# 40 C is 104 F.
# 45 C is 113 F.
while ($celsius <= 45) {
    my $fahrenheit = ($celsius * 9 / 5) + 32;
    print "$celsius C is $fahrenheit F.\n";
    $celsius += 5;
}