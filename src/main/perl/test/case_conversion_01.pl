#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';
# 打印具体的报错信息
use diagnostics;

open my $fh, '<', 'src/main/resources/data/test29.txt' or die "Can't open file $!";
my $file_content = do {
    local $/;
    <$fh>
};

print($file_content);
print("\n");
print("--------------\n");

# Perl 表达式实现正则表达式大小写替换。
if ($file_content =~ s/(<[hH]1>)(.*?)(<\/[hH]1>)/$1\U$2\E$3/) {
    print "替换后的字符串为: $file_content\n";
}