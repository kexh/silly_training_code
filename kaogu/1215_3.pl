my $i = 0;
my @array = (210,4748, 5);
print (scalar @array);
while($i < scalar @array) {
	print $i, ": ", $array[$i];
	print "\n";
	$i++;
}
my $i = 0;
until($i >= scalar @array) {
	print $i, ": ", $array[$i];
	$i++;
}

my $i = 0;
do {
	print $i, ": ", $array[$i];
	$i++;
}while($i < scalar @array);
print "\n";
print "\n";
for(my $i = 0; $i < scalar @array; $i++) {
	print $i, ": ", $array[$i];
	print "\n";
}
print "\n";
for(my $i = 5; $i > scalar @array; $i--) {
	print $i, ": ";
	print "\n";
}

foreach my $string ( @array ) {
	print $string;
}

foreach my $i (0 .. $#array ) { # range 运算符
	print $i, ": ", $array[$i];
}

# foreach my $key (sort keys %scientists) {
	# print $key, ": ", $scientists{$key};
# }
print "\n";
foreach ( @array ) {
	print $_;
}
print "\n";
print $_ foreach @array;

use Math::Complex;
    print sqrt(-4); 
print "\n";
# CANDIDATE: for my $candidate ( 2 .. 100 ) {
	# for my $divisor ( 2 .. sqrt $candidate ) {
		# next CANDIDATE if $candidate % $divisor == 0;
	# }
	# print $candidate." is prime\n";
# }
    
my @stack = ("Fred", "Eileen", "Denise", "Charlie");
print ( @stack);
print "\n";
print pop @stack;
print @stack;
# 这段没有成功
# sub nary_print {
	# my $n = shift;
	# while (my @next_n = splice @_, 0, $n) {
		# say join q{ -- }, @next_n;
	# }
# }
# nary_print(3, qw(a b c d e f g h));
print "\n";
print splice(@stack, 1, 4, "<<<", ">>>"); # "GraceEileenDeniseBob"
print @stack;  
print "\n";
my @capitals = ("Baton Rouge", "Indianapolis", "Columbus", "Montgomery", "Helena", "Denver", "Boise");
print join(", ", map { uc $_ } @capitals);
print join ", ", grep { length $_ == 6 } @capitals;

print "\n";
my @capitals = ("Columbus", "Columbus", "Columbus", "Montgomery", "Helena", "Denver", "Boise");
print scalar grep { $_ eq "Columbus" } @capitals; 
print scalar @capitals;

my @elevations = (19, 1, 2, 100, 3, 98, 100, 1056);
print join ", ", sort { $a <=> $b } @elevations;

print "\n";
sub hyphenate {

	# 从array中取出第一个参数，忽略其他
	my $word = shift @_;
	print $word;
	# 聪明过头的list comprehension
	$word = join "-", map { substr $word, $_, 1 } (0 .. (length $word) - 1);
	return $word;
}

print hyphenate("exterminate"); # "e-x-t-e-r-m-i-n-a-t-e"

# print "\n";
# print "\n";
# my $test = "exterminate";
# print join '-', map {substr $test, $_, 1} ();

print "\n";
print "\n";
my $text = `C:\\Perl64\\bin\\perl.exe F:\\kaogu\\1216_1.pl foo bar baz`;
print $text; # "foobarbaz"
my @text = `C:\\Perl64\\bin\\perl.exe F:\\kaogu\\1216_1.pl foo bar baz`;
print $_ foreach @text; # "foobarbaz"

my $line = <STDIN>;
print $line;
my $a = 22;
print $a;

