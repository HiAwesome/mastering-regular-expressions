#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';
# 打印具体的报错信息
use diagnostics;
use Time::HiRes 'time';

my $start_time = time();
"abababdedfg" =~ m/^(a|b|c|d|e|f|g)+$/;
my $end_time = time();

printf("Alternation takes %.3f seconds.\n", $end_time - $start_time);

$start_time = time();
"abababdedfg" =~ m/^[a-g]+$/;
$end_time = time();
printf("Character class takes %.3f seconds.\n", $end_time - $start_time);
