#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

# from: https://www.runoob.com/perl/perl-regular-expressions.html
# 匹配前的字符串: welcome to
# 匹配的字符串: run
# 匹配后的字符串: oob site.

my $string = "welcome to runoob site.";
$string =~ m/run/;
print "匹配前的字符串: $`\n";
print "匹配的字符串: $&\n";
print "匹配后的字符串: $'\n";

