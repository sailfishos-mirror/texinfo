use strict;

use lib '.';
use Texinfo::ModulePath (undef, undef, undef, 'updirs' => 2);

require 't/test_utils.pl';

my @test_cases = (
['htmlxref',
  undef, {'test_file' => 'test_refs.texi' },
  {'HTMLXREF_FILE' => 'htmlxref.cnf',
   'SPLIT' => '', 'NODE_NAME_IN_MENU' => 0,
   'USE_NODES' => 0, 'FORMAT_MENU' => 'menu'}
],
['htmlxref_nodes',
  undef, {'test_file' => 'test_refs.texi' },
  {'HTMLXREF_FILE' => 'htmlxref.cnf',
   'SPLIT' => 'node', 'FORMAT_MENU' => 'menu',
   'USE_NODES' => 1, 'NODE_FILES' => 1}
],
['htmlxref_only_mono',
  undef, {'test_file' => 'test_refs.texi' },
  {'HTMLXREF_FILE' => 'htmlxref-mono.cnf',
   'SPLIT' => '', 'NODE_NAME_IN_MENU' => 0,
   'USE_NODES' => 0, 'FORMAT_MENU' => 'menu'}
],
['htmlxref_only_mono_nodes',
  undef, {'test_file' => 'test_refs.texi' },
  {'HTMLXREF_FILE' => 'htmlxref-mono.cnf',
   'SPLIT' => 'node', 'FORMAT_MENU' => 'menu',
   'USE_NODES' => 1, 'NODE_FILES' => 1}
],
['htmlxref_only_split',
  undef, {'test_file' => 'test_refs.texi' },
  {'HTMLXREF_FILE' => 'htmlxref-split.cnf',
   'SPLIT' => '', 'NODE_NAME_IN_MENU' => 0,
   'USE_NODES' => 0, 'FORMAT_MENU' => 'menu'}
],
['htmlxref_only_split_nodes',
  undef, {'test_file' => 'test_refs.texi' },
  {'HTMLXREF_FILE' => 'htmlxref-split.cnf',
   'SPLIT' => 'node', 'FORMAT_MENU' => 'menu',
   'USE_NODES' => 1, 'NODE_FILES' => 1}
],

);

foreach my $test (@test_cases) {
  push @{$test->[2]->{'test_formats'}}, 'file_html';
}

our ($arg_test_case, $arg_generate, $arg_debug);

run_all('htmlxref', [@test_cases]);
