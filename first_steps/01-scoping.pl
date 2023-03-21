#!/usr/bin/perl
use strict;
use warnings;

## Variable scope
# all variables are global unless otherwise
# our global
# my local

# {} blocks create local scope

our $veryOuter = 5;
{
    our $record = 4;
    print "We're at record ", $record, "\n";                        # 4
    {
        my $record;
        $record = 7;
        print "Inside the block, we're at record ", $record, "\n";  # 7
    }
    print "We're still at record ", $record, "\n";                  # 4
}
undef $veryOuter;

# variables are out of scope
# print $veryOuter;                                                 # Use of uninitialized value $veryOuter
# print $record;                                                    # Variable "$record" is not imported


# declaring other packages
# getting variable from other package
our $var3 = 8;
package Other;
our $var3 = 5;
package main;
print $Other::var3, "\n";                                           # 5