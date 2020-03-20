#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';
# 打印具体的报错信息
use diagnostics;

print "Enter a temperature in Celsius:\n";
my $input = <STDIN>; # 从用户处接受一个输入
chomp($input);       # 去掉后面的换行符

# Enter a temperature in Celsius:
# 22F
# -5.56 C is 22.00 F
# Enter a temperature in Celsius:
# 22C
# 22.00 C is 71.60 F
if ($input =~ m/^([-+]?[0-9]+(?:\.[0-9]*))\s*([CF])$/i) {
    # 如果程序运行到此，则已经匹配。$1 保存数字，$2 保存 C 或者 F
    my $InputNum = $1;
    my $type = $2;
    my $celsius;
    my $fahrenheit;

    if ($type eq "C") {
        $celsius = $InputNum;
        $fahrenheit = ($celsius * 9 / 5) + 32;
    }
    else {
        $fahrenheit = $InputNum;
        $celsius = ($fahrenheit - 32) * 5 / 9;
    }

    # 格式化显示数据
    printf "%.2f C is %.2f F\n", $celsius, $fahrenheit;
}
else {
    print "Expecting a number followed by \"C\" or \"F\", so I don't understand \"$input\".\n"
}