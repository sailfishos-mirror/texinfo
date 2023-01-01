use strict;

use lib '.';
use Texinfo::ModulePath (undef, undef, undef, 'updirs' => 2);

require 't/test_utils.pl';

# These tests are supposed to test the same things as tests
# under tp/tests did, but to be faster, as we are avoiding the
# start-up time of perl for every one.
my @test_cases = (
# in this test, there are three nodes with the same transliterations
# that end up in the same file even when split at node
['node_footnote_use_node',
  undef,
  {'test_file' => 'node_footnote.texi'},
  {'FORMAT_MENU' => 'menu'}
],
['node_footnote_end',
  undef,
  # also tests for node with section command nor directions after
  # a section, and Top without @top and chapter in menu
  {'test_file' => 'node_footnote.texi', 'CHECK_NORMAL_MENU_STRUCTURE' => 1},
  {'SPLIT' => '', 'USE_NODES' => 0}
],
# actually the same output as node_footnote_end.
['node_footnote_separated',
  undef,
  {'test_file' => 'node_footnote.texi'},
  {'SPLIT' => '', 'USE_NODES' => 0,
   'footnotestyle' => 'separate'}
],
['node_footnote_use_node_separate',
  undef,
  {'test_file' => 'node_footnote.texi'},
  {'footnotestyle' => 'separate', 'FORMAT_MENU' => 'menu'}
],
['nodes_after_top_before_chapter',
  undef,
  {'test_file' => 'nodes_after_top_before_chapter.texi'},
  {'TEXI2HTML' => 1, }
],
['nodes_after_top_before_chapter_use_nodes_chapter',
  undef,
  {'test_file' => 'nodes_after_top_before_chapter.texi'},
  {'TEXI2HTML' => 1, 'USE_NODES' => 1, 'SPLIT' => 'chapter'}
],
['nodes_after_top_before_section',
  undef,
  {'test_file' => 'nodes_after_top_before_section.texi'},
  {'TEXI2HTML' => 1, 'SPLIT' => 'chapter'}
],
['nodes_after_top_before_section_use_nodes',
  undef,
  {'test_file' => 'nodes_after_top_before_section.texi'},
  {'TEXI2HTML' => 1, 'USE_NODES' => 1}
],
['nodes_after_top_before_section_use_nodes_chapter',
  undef,
  {'test_file' => 'nodes_after_top_before_section.texi'},
  {'TEXI2HTML' => 1, 'USE_NODES' => 1, 'SPLIT' => 'chapter'}
],
['sectioning_frames',
  undef,
  # tests for node with directions after section
  {'test_file' => 'sectioning.texi', 'CHECK_NORMAL_MENU_STRUCTURE' => 1},
  {'TEXI2HTML' => 1, 'SPLIT' => 'chapter', 'FRAMES' => 1}
],
['placed_things_before_element',
  undef,
  {'test_file' => 'placed_things_before_element.texi'},
  {'TEXI2HTML' => 1, }
],
['more_sections_than_nodes',
  undef,
  {'test_file' => 'more_sections_than_nodes.texi'},
  {'TEXI2HTML' => 1, }
],
['two_footnotes_in_nodes',
  undef,
  {'test_file' => 'two_footnotes_in_nodes.texi'},
  {'TEXI2HTML' => 1, }
],
['two_footnotes_in_nodes_separated',
  undef,
  {'test_file' => 'two_footnotes_in_nodes.texi'},
  {'TEXI2HTML' => 1, 'footnotestyle' => 'separate'}
],
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
}

run_all('moresectioning', [@test_cases]);
