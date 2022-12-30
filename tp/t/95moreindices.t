use strict;

use lib '.';
use Texinfo::ModulePath (undef, undef, undef, 'updirs' => 2);

require 't/test_utils.pl';

# These tests are supposed to test the same things as tests
# under tp/tests did, but to be faster, as we are avoiding the
# start-up time of perl for every one.
my @test_cases = (
['double_index_entry',
  undef,
  {'test_file' => 'double_index_entry.texi' },
  {'SPLIT' => '', 'USE_NODES' => 0}
],
['split_chapter_index',
  undef,
  {'test_file' => 'split_chapter_index.texi' },
  {'SPLIT' => 'chapter', 'USE_NODES' => 0}
],
['index_split',
  undef,
  # we use CHECK_NORMAL_MENU_STRUCTURE as this tests
  # for a case that may only be tested here (Top before node)
  # It also tests for node with directions after section which is
  # also in 96moresectioning.t
  {'test_file' => 'index_split.texi', 'CHECK_NORMAL_MENU_STRUCTURE' => 1},
  {'SPLIT' => 'chapter', 'USE_NODES' => 0}
],
['index_split_nodes',
  undef,
  {'test_file' => 'index_split.texi' },
],
['index_no_node',
  undef,
  {'test_file' => 'index_no_node.texi' },
  {'SPLIT' => 'chapter', 'USE_NODES' => 0}
],
['nodes_before_top',
  undef,
  {'test_file' => 'nodes_before_top.texi' },
  {'USE_NODES' => 1, 'SPLIT' => 'chapter'}
],
['nodes_before_top_nodes',
  undef,
  {'test_file' => 'nodes_before_top.texi' },
],
['nodes_before_top_no_nodes',
  undef,
  {'test_file' => 'nodes_before_top.texi' },
  {'SPLIT' => 'chapter', 'USE_NODES' => 0}
],
['nodes_before_top_and_sections',
  undef,
  {'test_file' => 'nodes_before_top_and_sections.texi' },
  {'SPLIT' => '', 'USE_NODES' => 0}
],
['nodes_before_top_and_sections_chapter',
  undef,
  {'test_file' => 'nodes_before_top_and_sections.texi' },
  {'SPLIT' => 'chapter'},
],
['nodes_before_top_and_sections_chapter_no_node',
  undef,
  {'test_file' => 'nodes_before_top_and_sections.texi' },
  {'SPLIT' => 'chapter', 'USE_NODES' => 0}
],
);

foreach my $test (@test_cases) {
  if (!$test->[2]->{'test_formats'}) {
    push @{$test->[2]->{'test_formats'}}, 'file_html';
  }
  $test->[3]->{'PROGRAM'} = 'texi2any';
  $test->[3]->{'PACKAGE_URL'} = 'http://www.gnu.org/software/texinfo/';
}

run_all('moreindices', [@test_cases]);
