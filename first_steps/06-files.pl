#!/usr/bin/perl
use strict;
use warnings;


## reading
open NAME, "lists.pl" or die $!;

my $lineno = 1;
while (<NAME>) {
    print("$lineno: $_");
    $lineno++;
}


open OTHER, "hash.pl" or die $!;
my @text = <OTHER>;
print(@text);

## writing
open NEWFILE, "> trash.txt" or die $!;
print NEWFILE @text;


## binary files

# open binmode FILEHANDLE, ........

## getting output from another script
open LISTOUTPUT, "perl lists.pl |" or die $!;
my @output = <LISTOUTPUT>;
print @output;
