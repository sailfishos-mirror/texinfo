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
['more_sections_than_nodes',
'@node Top
@top top

@menu
* n c2::
* n c3::
* n c3 s1 s2::
@end menu

@chapter c1

@node n c2
@chapter c2

@section s1

@node n c3, n c3 s1 s2, n c2, Top
@chapter c3

@menu 
* n c3 s 2::
@end menu

@section C3 s1

@node n c3 s 2
@section c3 s2

@section c3 s3

@chapter c4

@section c3 s1

@subsection c3 s1 s1

@node n c3 s1 s2,,n c3,Top
@subsection c3 s1 s2

@appendix appendix
', {},
# to test texi2html style directions in that case
{'TEXI2HTML' => 1}],
['no_element',
'@settitle no_element test
@documentencoding ISO-8859-1


@anchor{An anchor}

Ref to the anchor:
@ref{An anchor}

Ref to the anchor in footnote:
@ref{Anchor in footnote}.

@footnote{In footnote.

@anchor{Anchor in footnote}

Ref to main text anchor
@ref{An anchor}
}

@float , float anchor
In float
@end float

Ref to float
@ref{float anchor}.

@menu
* An anchor::                menu entry pointing to the anchor.
@end menu

@cindex index entry
', {}, {'SHOW_TITLE' => 1}],
['placed_things_before_element',
'@anchor{An anchor}

Ref to the anchor:
@ref{An anchor}

Ref to the anchor in footnote:
@ref{Anchor in footnote}.

@footnote{In footnote.

@anchor{Anchor in footnote}

Ref to main text anchor
@ref{An anchor}
}

@float , float anchor
In float
@end float

Ref to float
@ref{float anchor}.

@menu
* An anchor::                menu entry pointing to the anchor.
@end menu

@cindex index entry

@section section

Ref to anchor
@ref{An anchor}

Ref to footnote anchor
@ref{Anchor in footnote}
',{},{'FORMAT_MENU' => 'menu'}],
['placed_things_before_node',
'@anchor{An anchor}

Ref to the anchor:
@ref{An anchor}

Ref to the anchor in footnote:
@ref{Anchor in footnote}.

@footnote{In footnote.

@anchor{Anchor in footnote}

Ref to main text anchor
@ref{An anchor}
}

@float , float anchor
In float
@end float

Ref to float
@ref{float anchor}.

@menu
* An anchor::                menu entry pointing to the anchor.
@end menu

@cindex index entry

@node Top
@top top section

Ref to anchor
@ref{An anchor}

Ref to footnote anchor
@ref{Anchor in footnote}
'],
['empty_top_node_up',
'@node Top
@top empty top node up

@menu
* first::
@end menu

@node first
',{},{'TOP_NODE_UP' => ''}
],
['internal_top_node_up',
'@node Top
@top internal top node up

@menu
* first::
@end menu

@node first
',{'test_split' => 'node'}, {'TOP_NODE_UP' => 'node@@ node'}
],
['top_node_up_url',
'@node Top
@top internal top node up

@menu
* first::
@end menu

@node first
',{'test_split' => 'node'},
  {'TOP_NODE_UP' => '@acronym{GNU, @acronym{GNU}\'s Not Unix} manuals',
   'TOP_NODE_UP_URL' => 'http://www.gnu.org/manual/'}
],
['non_automatic_top_node_up_url',
'@node Top, first, (dir), (dir)
@top internal top node up

@menu
* first::
@end menu

@node first, , Top, (dir)
',{'test_split' => 'node'},{'TOP_NODE_UP_URL' => 'http://www.gnu.org/manual/'}
],
['non_automatic_internal_top_node_up',
'@node Top, first, @acronym{GNU, @acronym{GNU}\'s Not Unix} manuals, @acronym{GNU, @acronym{GNU}\'s Not Unix} manuals
@top internal top node up

@menu
* first::
@end menu

@node first, , Top, @acronym{GNU, @acronym{GNU}\'s Not Unix} manuals
',{'test_split' => 'node'},
  {'TOP_NODE_UP' => '@acronym{GNU, @acronym{GNU}\'s Not Unix} manuals'}
],
['non_automatic_top_node_up_and_url',
'@node Top, first, @acronym{GNU, @acronym{GNU}\'s Not Unix} manuals, @acronym{GNU, @acronym{GNU}\'s Not Unix} manuals
@top internal top node up

@menu
* first::
@end menu

@node first, , Top, @acronym{GNU, @acronym{GNU}\'s Not Unix} manuals
',{'test_split' => 'node'},
  {'TOP_NODE_UP' => '@acronym{GNU, @acronym{GNU}\'s Not Unix} manuals',
   'TOP_NODE_UP_URL' => 'http://www.gnu.org/manual/'}
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
  'more_sections_than_nodes' => 1,
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
