#!/usr/bin/perl
use strict;
use warnings;

my $term = "this is a sentance.\n";

if ($term =~ /This/i ) {
    print "match\n";
}
