use strict;

use lib '.';
use Texinfo::ModulePath (undef, undef, undef, 'updirs' => 2);

require 't/test_utils.pl';

# These tests are supposed to test the same things as tests
# under tp/tests did, but to be faster, as we are avoiding the
# start-up time of perl for every one.
my @test_cases = (
['master_menu_fr',
  undef, {'test_file'
           => '../../tests/many_input_files/input_files/no_master_menu_fr.texi' },
#  {'TREE_TRANSFORMATIONS' => ''}
],
);

foreach my $test (@test_cases) {
  if (!$test->[2]->{'test_formats'}) {
    push @{$test->[2]->{'test_formats'}}, 'file_html';
  }
}

our ($arg_test_case, $arg_generate, $arg_debug);

run_all('transformations', [@test_cases]);
