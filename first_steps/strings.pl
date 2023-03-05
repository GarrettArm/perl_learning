#!/usr/bin/perl
use strict;
use warnings;


# From https://learn.perl.org/books/beginning-perl/

## Strings
# scalar literal
print "hello world\n";                                # hello world

{
    print "Braces\n";                                   # Braces
    print "can help clear up\n";                        # can help clear up
    print "things\n";                                 # things
}

print ("parentheses ", "are ", "optional\n");           # parentheses are optional
print "to ", "make ", "reading ", "easier\n";           # to make reading easier

print ("be careful, it'll drop things\n"), "like";      # be careful, it'll drop things     Useless use of a constant ("like") in void context

# double-quoted strings are interpolated
print ("this\tis\tinterpolated\n");                   # this    is      interpolated
# single-quoted strings are not interpolated
print ('this\tis\tnot\tinterpolated', "\n");          # this\tis\tnot\tinterpolated

# escape characters are like regex escapes
print 'ex\\ er\\' , ' ci\' se\'' , "\n";                # ex\ er\ ci' se'

# qq selects an alternate delimiter
print(qq?What's the frequency Kenneth\n?);              # What's the frequency Kenneth

# Here-documents are another way of marking strings
print <<EOF;
This is a multiline text.                               # This is a multiline text.
It has a nice formatting in the code                    # It has a nice formatting in the code
which is preserved.                                     # which is preserved.
There's a single-quoted format with different behavior. # There's a single-quoted format with different behavior.
                                                        # 
EOF

# perl casts numbers to strings if needed, 
# unless they're hex, binary, or octal
print "3\t", "3"*5, "\t075\t", oct("075")*2, "\n";      # 3   15  075     122

# but throws away trailing characts that don't make sense
print(oct("056789"), "\n");                             # 375                               Illegal octal digit '8' ignored at strings.pl line 47.

# there's no bin(0110) function, 
# but oct() works for bin
print(oct("0b01000"), "\n");                            # 8

# a numbers operation triggers str -> num
print"12 monkeys" + 0, "\n";                            # 12                            Argument "12 monkeys" isn't numeric in addition (+)
print "Eleven to fly" + 0, "\n";                        # 0                             Argument "Eleven to fly" isn't numeric in addition (+)
print "UB40" + 0, "\n";                                 # 0                             Argument "UB40" isn't numeric in addition (+)
print "-20 10" + 0, "\n";                               # -20                           Argument "-20 10" isn't numeric in addition (+)
print "0x30" + 0, "\n";                                 # 0                             Argument "0x30" isn't numeric in addition (+)

# perl 5.6 introduced utf8 support


## Operations

# concat `.`
print "Print " , "one ", "string " , "here" , "\n";     # Print one string here
print "Print " . "one ". "string " . "here" . "\n";     # Print one string here

# Multiplication `x__`
print "Repeat!"x3, "\n";                                # Repeat!Repeat!Repeat!
print ("n"x3*4 . "\n");                                 # 0                                 Argument "nnn" isn't numeric in multiplication (*)
print ("n"x(3*4) . "\n");                               # nnnnnnnnnnnn

# Comparison by character code
# gt, lt, ne, ge, le, cmp
print "hello" lt "hi", "\n";                            # 1
print "aisle" cmp "zebra", "\n";                        # -1

# terniary x?y:z
print 1?"first":"second", "\n";                         # first

# range ...
# list builder ,
# magic =>
# regex =~ !~
# escape \
# bitshift << >>
# magic ->