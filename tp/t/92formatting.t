use strict;

use lib '.';
use Texinfo::ModulePath (undef, undef, undef, 'updirs' => 2);

require 't/test_utils.pl';

# These tests are supposed to test the same things as tests
# under tp/tests did, but to be faster, as we are avoiding the
# start-up time of perl for every one.
my @test_cases = (
['split_for_format_not_split',
  undef,
  {'test_file' => 'simplest.texi',
   'test_formats' => ['file_xml']
  },
  {'SPLIT' => 'chapter'}
],

);

run_all('formatting', [@test_cases]);
