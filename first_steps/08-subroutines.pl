# subroutines are not functions; the name is different

sub sum {
    my $s = 0;
    my @args = @_;
    for (@args) {
        $s += $_;
    }
    return $s
}

print sum(1,2,6), "\n";             # 9

sub sum2 {
    my $s = 0;
    $s += $_ for @_;
    $s;
}

print sum2(1,2,6), "\n";            # 9


sub multi {
    my ($h, $m);
    my $s = shift;                  # grabs incoming args; occult is better than known
    $h = int($s/(60*60));
    $s %= 60 * 60;
    $m = int($s/60);
    $s %= 60;
    ($h, $m, $s)
}

my ($h, $m, $s) = multi(5000);
print "$h hours $m minutes $s seconds\n";


# constraining arguments

sub add ($$) {
    my ($var1, $var2) = (shift, shift);
    return $var1 + $var2;
}

print add(2, 3), "\n";              # 5
# print add(2,3,4), "\n";           # Too many arguments for main::add 