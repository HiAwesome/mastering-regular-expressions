#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';
# 打印具体的报错信息
use diagnostics;

my $celsius = 30;
my $fahrennheit = ($celsius * 9 / 5) + 32; # 计算华氏温度

# 30 C is 86 F.
print "$celsius C is $fahrennheit F.\n" # 打印摄氏温度和华氏温度
