#!/usr/bin/perl
use strict;
use warnings;

my @array = (1, 2, 3);
my $array_r = \@array;

my $int = 5;
my %hash = (
    name => 'hello',
    age => 15
); 

my $int_r = \$int;
my $hash_r = \%hash;

print $array_r, "\n";       # ARRAY(0x14b025988)
print $int_r, "\n";         # SCALAR(0x14b0258e0)
print $hash_r, "\n";        # HASH(0x14b0259e8)

my $grouped = (\$int, \%hash, \@array);
print $grouped, "\n";       # ARRAY(0x12f025988)

my @eng = ('first', 'second');
my @fre = ('premiere', 'douxieme');
my %translations = (
    english => \@eng,
    french => \@fre
);
print $translations{english}[1], "\n";      # second


# nesting lists in lists
my @first = (1, 2, 3);
my @second = (5, 6, 7);
my @combined = (@first, @second);
print @combined, "\n";      # 123567


# getting to normal notation
my $normal = [1, 2, 3, 4];
print $normal, "\n";        # ARRAY(0x11e8460d0)

my $hash2 = {name => 'Gilbert', job => 'Comedian'};
print $hash2, "\n";         # HASH(0x13e845ff8)


# dereference to get the value
# (curly brackets are optional)
print @{$normal}, "\n";     # 1234
print %{$hash2}, "\n";      # nameGilbertjobComedian

for (@{$normal}) {
    print $_, ", ";         
}                           # 1, 2, 3, 4

# modifying referenced
${$normal}[0] = 5;
print "\n", @{$normal}, "\n";   # 5234

# arrow notation
print $normal->[0], "\n";       # 5

# autocreation
$thing->{a}->{b}->{c}->[d]->{e} = f;
# builds "thing = {a: {b: {c: {d: {e: f}}}}}"
