#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';
# 打印具体的报错信息
use diagnostics;
use Time::HiRes 'time';

my $times_todo = 1000;
my $test_string = "abababdedfg" x 1000;

my $count = $times_todo;
my $start_time = time();
while ($count-- > 0) {
    $test_string =~ m/^(a|b|c|d|e|f|g)+$/;
}
my $end_time = time();
printf("Alternation takes %.3f seconds.\n", $end_time - $start_time);


$count = $times_todo;
$start_time = time();
while ($count-- > 0) {
    $test_string =~ m/^[a-g]+$/;
}
$end_time = time();
printf("Character class takes %.3f seconds.\n", $end_time - $start_time);
# Alternation takes 0.305 seconds.
# Character class takes 0.007 seconds.