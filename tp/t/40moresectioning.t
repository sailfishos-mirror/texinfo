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
);

my @test_cases = (
['sectioning_part_appendix',
$test_text,
{'test_split' => 'section'}],
['sectioning_part_appendix_no_top',
$sections_no_top_text,
{'test_split' => 'section'}],
);

foreach my $test (@tests_converted) {
  push @{$test->[2]->{'test_formats'}}, 'plaintext';
  push @{$test->[2]->{'test_formats'}}, 'html';
  $test->[2]->{'full_document'} = 1 unless (exists($test->[2]->{'full_document'}));
}

foreach my $test (@test_cases) {
  push @{$test->[2]->{'test_formats'}}, 'xml';
}

run_all('moresectioning', [@test_cases, @tests_converted]);
