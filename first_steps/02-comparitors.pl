# bitwise operators
# | ^ & ~

# falsey values are 0, "", undefined, []
# string repr may return "1" or ""

# x <=> y.  gives -1, 0, or 1
print ("is 5 <=> 6: ", 5 <=> 6, "\n");
print ("is 6 <=> 6: ", 6 <=> 6, "\n");
print ("is 7 <=> 6: ", 7 <=> 6, "\n");

# boolean operators
# && || !() 
# and or not xor, but these behave differently from their symbol form

# a riddle.  why is the `and 3 > 4, "\n";` discarded?
print"Test one: ", 6 > 3 && 3 > 4, "\n";
print "Test two: ", 6 > 3 and 3 > 4, "\n";

