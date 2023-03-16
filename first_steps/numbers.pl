#!/usr/bin/perl
use strict;
use warnings;

## Numbers
# scalar literal
print (10_000, ": integers can have _ as syntatic separator\n");


# be careful, some computers have only 32bit for a number.  Math::BigInt
# ints larger than 32bits may get converted into floats
print(3.141592653589793238462643383279, " ", 1234567890123456789012345678901234567890, " <-- cut off some digits\n\n");

# octal number start with 0
# hex numbers start with 0x
# binary numbers start with 0b

# Same order of operations as others
print "3 + 4 * 10 = ", 3 + 4 * 10, "\n\n";

# negative sign lower in order of operations than power:  -1**2 == -1 
print -2**4, " -2**4 acts like -(2**4)\n"; 
print ((-2)**4, " (-2)**4\n");

# > == < 