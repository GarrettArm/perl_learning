#!/usr/bin/perl
use strict;
use warnings;

{
    my @list1 = (1, 2, 3);
    print @list1, "\n";                                                 #123
    my $list1 = 'different variable';
    print $list1, "\n";                                                 #different variable
}

# any delimiter is ok
print qw/one two three four/;                                           #onetwothreefour
print "\n";
print qw(one two three four);                                           #onetwothreefour
print "\n";
print qw<one two three four>;                                           #onetwothreefour
print "\n";
print qw{one two three four};                                           #onetwothreefour
print "\n";
print qw[one two three four];                                           #onetwothreefour
print "\n";
print qw|one two three four|;                                           #onetwothreefour
print "\n";
print qw(
    one
    two
    three
    four
);                                                                      #onetwothreefour
print "\n";

# but not
print qw(one,two,three,four);                                           # Possible attempt to separate words with commas
                                                                        # one,two,three,four
print "\n";

# lists are flattened
my @a = (1, 2, 3, 4);                                                   # same list
my @b = (1, (2, 3), 4);
my @c = ((1, 2, 3, 4));
my @d = (qw(1 2 3), 4);
my @e = (qw(1 2), q(3), 4);
my @f = (qw(1 2 3 4));

# indexing
my @g = ("a", "b", "c", "d", "e", "f");                                               
print $g[1];                                                            #b
print "\n";
print $g[-1];                                                           #f
print "\n";
print @g[2,3,4];                                                        #cde
print "\n";

my $month = 3;
print qw(
    January February March
    April May June
    July August September
    October November December
)[$month];                                                              #April
print "\n";

# unpacking

my $x; my $y;
($x, $y) = (5, 10);
print ("$x $y");                                                    #5 10
print "\n";

# ranges

my @z = ( 'h' .. 'l');                      
print @z;                                                               #hijkl
print "\n";
my @i = ( 12 .. 16 );
print @i;                                                               #1213141516
print "\n";
my @w = ( '12' .. '15' );
print @w;                                                               #12131415
print "\n";
my @r = (-2 .. 2);
print reverse@r;                                                        #210-1-2
print "\n";

# edge case,  ranges str & int ~~> str = 0
my @m = ('a' .. 5);                                                     # Argument "a" isn't numeric in range
print @m;                                                               #012345
print "\n";

# slice in range
my @q = (1,2,3,4,5);
print @q[2..4];                                                         #345
print "\n";

# the scalar value of an array is its size
my @l = (6,7,8,9);
my $l = @l;
print @l;                                                               #6789
print $l;                                                               #4
print scalar @l;                                                        #4
print "\n";

# Appending
my @t = (1,2,3,4,5);
my @u = ('a', 'b', @t, 'c');
print @u;                                                               #ab12345c
print "\n";

# in-place modificaton
my @p = (1,2,3,4,5);
($p[1], $p[2]) = ($p[2], $p[1]);
print @p;                                                               #13345  --nope
print "\n";

@p = (1,2,3,4,5);
@p[2,1] = @p[1,2];
print @p;                                                               #12254  --nope
print "\n";

# looping
my @t = (1,2,3,4);
for my $i (@t) {
    print $i;                                                           #1234
}
print "\n";
# magic $_ variable
for (@t) {
    print $_;                                                           #1234                                      
}
print "\n";
# counter
for (0..$#t) {
    print 'counter at: ', $_, "\n";                                     #counter at: 0   etc.
}

## built-in functions

@t = reverse(@t);                                                       # (4,3,2,1)

my $x = pop @t;                                                         # x=1, t=(4,3,2)
push @t, $x;                                                            # t=(4,3,2,1)
push @t, $x, $x;                                                        # t=(4,3,2,1,1,1)
print @t, "\n";

# shift/unshift do the same to the beginning of the array

# sort compares char by char, ok for string. bad for numbers.  21 < 5
my @s = sort @t;
print @s, "\n";                                                         # 111234

# a magic syntax for sorting numbers
@s = sort { $a <=> $b } @t;                                                        
print @s, "\n";                                                         # 111234

