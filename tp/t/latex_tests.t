use strict;

use lib '.';
use Texinfo::ModulePath (undef, undef, 'updirs' => 2);

require 't/test_utils.pl';

my @test_cases = (
['kbdinputstyle_and_kbd',
'
@kbd{default kbdinputstyle}
@example
@kbd{in example default kbdinputstyle}
@end example

@kbdinputstyle code
@kbd{code kbdinputstyle}
@example
@kbd{in example code kbdinputstyle}
@end example

@kbdinputstyle example
@kbd{example kbdinputstyle}
@example
@kbd{in example example kbdinputstyle}
@end example

@kbdinputstyle distinct
@kbd{distinct kbdinputstyle}
@example
@kbd{in example distinct kbdinputstyle}
@end example
'],
);

foreach my $test (@test_cases) {
  $test->[2]->{'test_formats'} = ['latex'];
}

our ($arg_test_case, $arg_generate, $arg_debug);

run_all ('latex_tests', [@test_cases], $arg_test_case,
   $arg_generate, $arg_debug);

1;
