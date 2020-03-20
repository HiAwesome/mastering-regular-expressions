#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';
# 打印具体的报错信息
use diagnostics;

print "Enter a temperature in Celsius:\n";
my $celsius = <STDIN>; # 从用户处接受一个输入
chomp($celsius);       # 去掉后面的换行符

# Enter a temperature in Celsius:
# 10
# 10 C is 50 F
# Enter a temperature in Celsius:
# sss
# Expecting a number, so I don't understand "sss".
if ($celsius =~ m/^[0-9]+$/) {
    my $fahrenheit = ($celsius * 9 / 5) + 32;
    print "$celsius C is $fahrenheit F\n";
}
else {
    print "Expecting a number, so I don't understand \"$celsius\".\n"
}