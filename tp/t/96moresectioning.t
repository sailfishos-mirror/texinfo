use strict;

use lib '.';
use Texinfo::ModulePath (undef, undef, undef, 'updirs' => 2);

require 't/test_utils.pl';

my @test_cases = (
['top_node_up_implicit',
  undef,
  {'test_file' => 'top_node_up_implicit.texi'},
  {'TEXI2HTML' => 1, 'TOP_NODE_UP_URL' => 'http://itop.example.org'}
],
['top_node_up_explicit',
  undef,
  {'test_file' => 'top_node_up_explicit.texi'},
  {'TEXI2HTML' => 1, 'TOP_NODE_UP_URL' => 'http://etop.example.org'}
],
);

foreach my $test (@test_cases) {
  push @{$test->[2]->{'test_formats'}}, 'file_html';
  $test->[2]->{'test_input_file_name'} = $test->[0] . '.texi';
}

run_all('moresectioning', [@test_cases]);
