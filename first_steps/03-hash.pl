#!/usr/bin/perl
use strict;
use warnings;

# unordered key:value pairs

# one way
my %where=(
    "Gary" , "Dallas",
    "Lucy" , "Exeter",
    "Ian" , "Reading",
    "Samantha" , "Oregon"
);
print $where{Gary}, "\n";           # Dallas

# another
%where=(
    "Gary" => "Dallas",
    "Lucy" => "Exeter",
    "Ian" => "Reading",
    "Samantha" => "Oregon"
);
print $where{Gary}, "\n";           # Dallas

# another
my @array = qw(Gary Dallas Lucy Exeter Ian Reading Samantha Oregon);
%where = @array;
print $where{Gary}, "\n";           # Dallas

# dear lord
@array = qw(Gary Dallas Lucy Exeter Ian Reading Samantha Oregon);
my %who = reverse @array;
print $who{Dallas}, "\n";           # Dallas

# delete
delete $who{Dallas};
print %who, "\n";

# built-in functions (keys, values, each)
for (keys %who) {
    print $who{$_}, "\n";
}

for (values %who) {
    print $_, "\n";
}

print (!exists $who{'absent key'}, "\n")        #1