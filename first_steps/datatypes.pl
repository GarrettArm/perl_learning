###     Scalars
#       numbers, strings    $variable_name
###     Lists               @variable_name
###     Hashes              %variable_name

#       $variable = 
{
    $name = "joe";
    print "My name is ", $name, "\n";                                   # My name is joe               
    $name = "bill";
    print "Well, actually, it's ", $name, "\n";                         # Well, actually, it's bill
}
#      operations
#   =, **=, *=, +=, -=, /=, .=, %=, &=, |=, ^=, <<=, >>=, &&= and ||= 

#       inplace modifiers (numbers)
#   ++, --
{
    $a=4;
    $b=10;
    print "Our variables are ", $a, " and ", $b, "\n";                  # Our variables are 4 and 10
    $b=$a++*2;
    print "After post incrementing, we have ", $a, " and ", $b, "\n";   # After post incrementing, we have 5 and 8
    $b=++$a*2;
    print "After pre incrementing, we have ", $a, " and ", $b, "\n";    # After pre incrementing, we have 6 and 12
}
#       inplace modifier (strings)
{
    $a = "A9"; print ++$a, "\n";                                        # B0
    $a = "bz"; print ++$a, "\n";                                        # ca
    $a = "Zz"; print ++$a, "\n";                                        # AAa
    $a = "z9"; print ++$a, "\n";                                        # aa0
    $a = "9z"; print ++$a, "\n";                                        # 10
}
#       multiple assignments
{
    $d = $c = $b = $a = 1;
    print $d, $c, $b, $a, "\n";                                         # 1111
    $d = $c = 1 + ($b = $a = 1);
    print $d, $c, $b, $a, "\n";                                         # 2211
}
