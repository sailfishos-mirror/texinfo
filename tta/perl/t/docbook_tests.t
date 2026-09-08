use strict;

use lib '.';
use Texinfo::ModulePath (undef, undef, undef, 'updirs' => 2);

require 't/test_utils.pl';

# special docbook quotations are tested for in 181quotation.t
my @test_cases = (
['empty_quotation_with_arg_followed_by_quotation',
'@quotation something
@end quotation

@quotation
In quotation
@end quotation
'],
['special_docbook_unnumbered',
'@node Top
@top top

This is the top.

@menu
* Dedication::
* preface::
* colophon::
* acknowledgements::
@end menu

@node Dedication
@unnumbered a dedication

Dedicated

@node preface
@unnumbered The Preface

Preface.

@node colophon
@unnumbered A colophon

Glossary

@node acknowledgements
@chapter A chapter Acnkowledgements

Ack!
'],
['between_node_and_section',
'
@node chap
@chapter Chap

@node sec1
@section sec1

@node sec2
@anchor{Old name}
@section sec2
'],
['multiple_documentlanguage',
'@documentlanguage ja

@node Top
@top top

@node chap
@chapter Chap no new language

@documentlanguage fr
@node chapter fr
@chapter chapter fr

@documentlanguage pt
@node subnode pt
@section section pt

@documentlanguage fr
@node subnode fr
@section section fr

'],
);

my @test_doc = (
['titlefont_for_docbook',
'@titlefont{Reference Manual}
'],
['maketitle_documentinfo_publication',
undef, {'test_file' => 'maketitle_documentinfo_publication.texi'},
],
# similar with 'shadow_links_to_sections' in t/converters_tests.t but with
# several constructs in Top node.
['shadow_links_to_sections_in_top_node',
'@node Top
@top Shadow

@xref{two}. --- goes to one of the section named two

@chapter foo

Aaaaaaaaaa.  @xref{bar}.

@chapter bar

Bbbbbbbbbbb.  @xref{foo}. -- goes to baz chapter.

@section two

CCCCCCC.

@xref{baz}. --- fails

@node foo
@chapter baz

LLLLLLLLLLL.

@section two

DDDDDDDDD.

@section with @ref{foo, b} after

@xref{with foo after}. --- link to section with @@ref in name

@xref{two}. --- another link to a section named two.
', {'test_formats' => ['latex']}]
);

foreach my $test (@test_cases) {
  $test->[2]->{'test_formats'} = ['docbook'];
}

foreach my $test (@test_doc) {
  push @{$test->[2]->{'test_formats'}}, 'docbook_doc';
}


run_all('docbook_tests', [@test_cases, @test_doc]);
