#
# $Id: op.t,v 1.1 1996/03/17 08:49:23 jah Exp jah $
#

use Set::Scalar;

print "1..8\n";

$no_create_test = 0; # fool -w
$no_create_test = 1;

require 't/create.t'; # $a $b $d $i $n $u get created

$o = Set::Scalar->union($a, $b);
print 'not ' unless ("$o" eq '(a b c d e f)');
print "ok 1\n";

$o = $a + $b;
print 'not ' unless ("$o" eq '(a b c d e f)');
print "ok 2\n";

$o = Set::Scalar->intersection($a, $b);
print 'not ' unless ("$o" eq '(c d)');
print "ok 3\n";

$o = $a * $b;
print 'not ' unless ("$o" eq '(c d)');
print "ok 4\n";

$o = Set::Scalar->symmetric_difference($a, $b);
print 'not ' unless ("$o" eq '(a b e f)');
print "ok 5\n";

$o = $a % $b;
print 'not ' unless ("$o" eq '(a b e f)');
print "ok 6\n";

$o = Set::Scalar->difference($a, $b);
print 'not ' unless ("$o" eq '(a b)');
print "ok 7\n";

$o = $a - $b;
print 'not ' unless ("$o" eq '(a b)');
print "ok 8\n";

# eof
