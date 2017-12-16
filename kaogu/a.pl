# !usr/bin/perl
# helloworld.pl
# scalar: $
# array: @
# hashes: %
# 变量定义：my
# None: undef
# 数值运算符：  <,  >, <=, >=, ==, !=, <=>, +, *
# 字符串运算符：    lt, gt, le, ge, eq, ne, cmp, ., x
# 参数列表被保存在内置的array变量@ARGV中
# 列表可以被赋值到一个array或者hash变量
# =>只是,的一种伪装
# ("one", 1, "three", 3, "five", 5)
# ("one" => 1, "three" => 3, "five" => 5)
# 列表不能嵌套
# 用方括号声明匿名array，而用花括号声明匿名hash
# use foo;
# use strict;
# use warnings;
print "hello world";

my $undef = undef;
print $undef;

my $undef2;
print $undef2;

my $num = 4040.5;
print $num;

my $string = "world";
print $string;

print "Hello ".$string;

print "yes" == "no"; # "1" 并且抛出两个警告，按数值方式参与运算，两边求值结果都是0

my @array = (
	"print",
	"these",
	"strings",
	"out",
	"for",
	"me", # 末尾多余的逗号语法上是允许的
);
print "This array has ".(scalar @array)."elements"; # "This array has 6 elements"
print "The last populated index is ".$#array;       # "The last populated index is 5"

print "Hello $string"; # "Hello world"
print "@array";        # "print these strings out for me"
print "Hello \$string"; # "Hello $string"
print 'Hello $string';  # "Hello $string"
print "\@array";        # "@array"
print '@array';         # "@array"

my %scientists = (
	"Newton"   => "Isaac",
	"Einstein" => "Albert",
	"Darwin"   => "Charles",
);
print $scientists{"Newton"};   # "Isaac"
print $scientists{"Einstein"}; # "Albert"
print $scientists{"Darwin"};   # "Charles"
print $scientists{"Dyson"};    # 返回undef，打印""并且抛出一个警告

my %account = (
	"number" => "31415926",
	"opened" => "3000-01-01",
	"owners" => [
		{
			"name" => "Philip Fry",
			"DOB"  => "1974-08-06",
		},
		{
			"name" => "Hubert Farnsworth",
			"DOB"  => "2841-04-09",
		},
	],
);

