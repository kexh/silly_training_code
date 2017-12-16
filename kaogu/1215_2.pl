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

my @array1 = (1, 2, 3, 4, 5);
print @array1; # "12345"
print "\n";
print @array1[0]; # "12345"
print "\n";
my @array2 = [1, 2, 3, 4, 5];
print @array2; # e.g. "ARRAY(0x182c180)"
print "\n";
print @array2[0];
print "\n";
my $array3Ref = [1, 2, 3, 4, 5];
print $array3Ref;      # e.g. "ARRAY(0x22710c0)"
print @{ $array3Ref }; # "12345" 这个scalar是一个含有5个元素的匿名array的引用
print @$array3Ref;     # "12345"

print "\n";
my $word = "antidisestablishmentarianism";
my $strlen = length $word;

if($strlen >= 15) {
	print "'", $word, "' is a very long word";
} elsif(10 <= $strlen && $strlen < 15) {
	print "'", $word, "' is a medium-length word";
} else {
	print "'", $word, "' is a short word";
}

print "\n";
print "'", $word, "' is actually enormous" if $strlen = 2;
print "\n";
my $temperature = 20;

unless($temperature > 30) {
	print $temperature, " degrees Celsius is not very hot";
} else {
	print $temperature, " degrees Celsius is actually pretty hot";
}

print "Oh no it's too cold" unless $temperature > 15;

print "\n";
my $gain = 48;
print "You gained ", $gain, " ", ($gain == 1 ? "experience point" : "experience points"), "!";
my $gain_new = 60;
print "You gained ", $gain_new, " ", ", it is ", ($gain_new >= 60 ? "及格分" : "不及格"), "!";

my $lost = 1;
print "\n";
print "You lost ", $lost, " t", ($lost == 1 ? "oo" : "ee"), "th!";
print "\n";
print "You lost ", $lost, ($lost == 1 ? " tooth!" : " teeth!");

my $eggs = 5;
print "You have ", $eggs == 0 ? "no eggs" :
                   $eggs == 1 ? "an egg"  :
                   "some eggs";
print "\n";
print "You have ", ($eggs == 0 ? "no eggs" : $eggs == 1 ? "an egg" : "some eggs");                   
print "\n3.";
print "You have ";
if($eggs == 0){
	print "no eggs";
} elsif($eggs == 1){
	print "an egg";
}else{
	print "some eggs"
}




