#!/usr/bin/perl
use strict;
use warnings;

## Variable scope
# all variables are global unless otherwise
# our global
# my local

# {} blocks create local scope
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
