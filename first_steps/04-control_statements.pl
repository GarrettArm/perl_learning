#!/usr/bin/perl
use strict;
use warnings;

## die
(2 + 2 == 4) || die "math not working";

## If Else

if (5 == 2) {
    print "equal\n";
} elsif (5 == 3) {
    print "other equal\n";
} else {
    print "different\n";
}

# if can come before or after statement
print("not printed\n")
    if (2 == 3);                #

# switch case
my $variable = 2;
for ($variable) {
    $_ == 1 && print("one\n");
    $_ == 2 && print("two\n");
    $_ == 3 && print("three\n");    
}

## for loop
my @list = ('a','b','c','d');
for (@list) {
    print "$_\n";
}

## while loop
my $l = 4;
while ($l > 0) {
    print("once\n");
    $l--;
}

## do while
$l = 2;
do {
    print "first\n";
    $l--;
}
while ($l > 0);

## breaking loop
$l = 10;
for (0 .. $l) {
    if ($_ == 2) {
        last;
    }
    print($_, "\n");
}

## continue
for (0 .. $l) {
    if ($_ % 2 == 0) {
        next;
    }
    print($_, "\n");
}

## labels for layers
BOOGER: for my $booger (0 .. $l) {
    for (4 .. 10) {
        if ($_ == $booger) {
            last BOOGER;
        }
        print("$booger\n");
    }
}