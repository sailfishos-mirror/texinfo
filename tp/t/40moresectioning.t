use strict;

use lib '.';
use Texinfo::ModulePath (undef, undef, undef, 'updirs' => 2);

require 't/test_utils.pl';

my $sections_no_top_text =
'@chapter chapter

@section section

@subsection subsection

@subsubsection subsubsection

@part part

@chapter chapter in part

@chapter second chapter in part

@unnumbered unnumbered

@appendix appendix

@appendixsec appendixsec
';

my $test_text =
'@top top

'.$sections_no_top_text;

my @tests_converted = (
['contents',
$test_text.
'
@contents
'],
['shortcontents',
$test_text.
'
@shortcontents
'],
['contents_and_shortcontents',
$test_text.
'
@shortcontents

@contents
'],
# used as a possible comparison with the next two
['sections_test',
$test_text
],
['sections_test_no_use_nodes',
$test_text
,{},{'USE_NODES' => 0}],
['sections_test_no_use_nodes_use_node_directions',
$test_text
,{},{'USE_NODES' => 0, 'USE_NODE_DIRECTIONS' => 1}],
['section_in_unnumbered_plaintext',
undef, {'test_file' => 'section_in_unnumbered_text.texi'},
],
);


my $anchor_in_footnote_text = '@node Top
@top Top

In top node@footnote{in footnote
@anchor{Anchor in footnote}.
}

@menu
* chapter::
@end menu

@node chapter
@chapter Chap

@ref{Anchor in footnote}.
';

my @tests_info = (
['character_and_spaces_in_refs',
undef, {'test_file' => 'character_and_spaces_in_refs_text.texi'}],
['special_spaces_in_nodes',
undef, {'test_file' => 'special_spaces_in_nodes.texi',
        'skip' => ($] < 5.014) ? 'Perl too old: /a regex flag needed' : undef, }],
['only_special_spaces_node',
undef, {'test_file' => 'only_special_spaces_node.texi',
        'skip' => ($] < 5.018) ? 'Perl too old: LINE TABULATION in /a needed' : undef, }],
['equivalent_nodes_defined_linked',
'@node Top, @asis{node}

@menu
* @strong{node}::
@end menu

@node node

@float Figure, @samp{node}
A figure
@end float

@listoffloats Figure

Ref to node @ref{node}.

Ref to @@samp@{node@} @ref{@samp{node}}.
', {}, {'FORMAT_MENU' => 'menu'}],
['anchor_in_footnote',
$anchor_in_footnote_text
],
['anchor_in_footnote_separate',
'@footnotestyle separate
'.
$anchor_in_footnote_text
],
['section_in_unnumbered_info',
undef, {'test_file' => 'section_in_unnumbered_text.texi'},
],
);


my $chapter_sections_text =
'@unnumbered unnumbered

@chapter First chapter

@section second

@chapter Chapter

@section Section of chapter

@subsection subsection 1

@subsection subsection 2

@chapter Chapter 2
';

my $top_chapter_sections_text =
'@top top

'.$chapter_sections_text;

my @test_cases = (
['sectioning_part_appendix',
$test_text,
{'test_split' => 'section'}],
['sectioning_part_appendix_no_top',
$sections_no_top_text,
{'test_split' => 'section'}],
['chapter_sections',
$chapter_sections_text,
{'test_split' => 'section'}],
['top_chapter_sections',
$top_chapter_sections_text,
{'test_split' => 'section'}],
);


my %xml_tests_converted_tests = (
  'section_in_unnumbered_plaintext' => 1,
);

foreach my $test (@tests_converted) {
  push @{$test->[2]->{'test_formats'}}, 'plaintext';
  push @{$test->[2]->{'test_formats'}}, 'html';
  push @{$test->[2]->{'test_formats'}}, 'xml'
    if ($xml_tests_converted_tests{$test->[0]});

  $test->[2]->{'full_document'} = 1 unless (exists($test->[2]->{'full_document'}));
}

foreach my $test (@test_cases) {
  push @{$test->[2]->{'test_formats'}}, 'xml';
}

my %xml_tests_info_tests = (
  'only_special_spaces_node' => 1,
);

my %docbook_tests_info_tests = (
  'character_and_spaces_in_refs' => 1,
);

my %latex_tests_info_tests = (
  'character_and_spaces_in_refs' => 1,
);

foreach my $test (@tests_info) {
  push @{$test->[2]->{'test_formats'}}, 'info';
  push @{$test->[2]->{'test_formats'}}, 'html';
  push @{$test->[2]->{'test_formats'}}, 'xml'
    if ($xml_tests_info_tests{$test->[0]});
  push @{$test->[2]->{'test_formats'}}, 'docbook'
    if ($docbook_tests_info_tests{$test->[0]});
  if ($latex_tests_info_tests{$test->[0]}) {
    push @{$test->[2]->{'test_formats'}}, 'latex_text';
    $test->[2]->{'full_document'} = 1 unless (exists($test->[2]->{'full_document'}));
  }
}

run_all('moresectioning', [@test_cases, @tests_converted, @tests_info]);
