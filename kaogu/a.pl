# !usr/bin/perl
# helloworld.pl
# scalar: $
# array: @
# hashes: %
# �������壺my
# None: undef
# ��ֵ�������  <,  >, <=, >=, ==, !=, <=>, +, *
# �ַ����������    lt, gt, le, ge, eq, ne, cmp, ., x
# �����б����������õ�array����@ARGV��
# �б���Ա���ֵ��һ��array����hash����
# =>ֻ��,��һ��αװ
# ("one", 1, "three", 3, "five", 5)
# ("one" => 1, "three" => 3, "five" => 5)
# �б���Ƕ��
# �÷�������������array�����û�������������hash
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

print "yes" == "no"; # "1" �����׳��������棬����ֵ��ʽ�������㣬������ֵ�������0

my @array = (
	"print",
	"these",
	"strings",
	"out",
	"for",
	"me", # ĩβ����Ķ����﷨���������
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
print $scientists{"Dyson"};    # ����undef����ӡ""�����׳�һ������

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

