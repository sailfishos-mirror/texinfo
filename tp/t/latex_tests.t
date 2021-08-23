use strict;

use lib '.';
use Texinfo::ModulePath (undef, undef, 'updirs' => 2);

require 't/test_utils.pl';

my @test_cases = (
['kbdinputstyle_and_kbd',
'
@kbd{default kbdinputstyle}
@example
@kbd{in example default kbdinputstyle}
@end example

@kbdinputstyle code
@kbd{code kbdinputstyle}
@example
@kbd{in example code kbdinputstyle}
@end example

@kbdinputstyle example
@kbd{example kbdinputstyle}
@example
@kbd{in example example kbdinputstyle}
@end example

@kbdinputstyle distinct
@kbd{distinct kbdinputstyle}
@example
@kbd{in example distinct kbdinputstyle}
@end example
'],
);

my @file_tests = (
['settitle_and_headings',
'@setfilename settitle_and_headings.info
@settitle Title @* for a manual

@headings double

@chapter chap
'],
# default case
['titlepage_and_headings',
'@setfilename titlepage_and_headings.info

@titlepage
in titlepage
@end titlepage

'],
# note that those tests with 'latex' do not really correspond to
# what happens for real documents, as in real documents,
# LaTeX default (start chapter on odd page) is switched
# to Texinfo default (@setchapternewpage on).  With 'file_latex',
# the correspond to the actual output
['titlepage_and_setchapternewpage_odd',
'@setfilename titlepage_and_setchapternewpage_odd.info

@setchapternewpage odd

@titlepage
in titlepage
@end titlepage

'],
['no_titlepage_and_setchapternewpage_odd',
'@setfilename no_titlepage_and_setchapternewpage_odd.info
@setchapternewpage odd
'],
['titlepage_and_setchapternewpage_on',
'@setfilename titlepage_and_setchapternewpage_on.info
@setchapternewpage on

@titlepage
in titlepage
@end titlepage

'],
['no_titlepage_and_setchapternewpage_on',
'@setfilename no_titlepage_and_setchapternewpage_on.info
@setchapternewpage on
'],
['two_setchapternewpage_odd_on',
'@setfilename two_setchapternewpage_odd_on.info
@setchapternewpage odd

@setchapternewpage on
'],
['two_setchapternewpage_on_odd',
'@setfilename two_setchapternewpage_on_odd.info
@setchapternewpage on

@setchapternewpage odd
'],
['three_setchapternewpage_on_odd_off',
'@setfilename three_setchapternewpage_on_odd_off.info
@setchapternewpage on

@setchapternewpage odd

@setchapternewpage off
'],
# With 'latex' test type this is more like what would actually 
# happen in the default case with output to a file, switching
# to @setchapternewpage on in preamble, then odd and then the
# title page
['setchapternewpage_on_odd_titlepage',
'@setfilename setchapternewpage_on_odd_titlepage.info
@setchapternewpage on

@setchapternewpage odd

@titlepage
in titlepage
@end titlepage
'],
['titlepage_in_top_node',
'@setfilename titlepage_in_top_node.info

@node Top
@top top sectionning

In top

@titlepage
@title the TTitle
@end titlepage

@node chap
@chapter chap

in chap
'],
['shorttitlepage',
'@setfilename shorttitlepage.info

@shorttitlepage the title with shorttitlepage @* it can be long

@node Top
@top section top

@node chapter
@chapter Chapter

In chapter
'],
['titlepage_no_author',
'@setfilename titlepage_no_author.info
@titlepage
@title Some manual tested
@end titlepage

@node Top
@top section top

@node chapter
@chapter Chapter

In chapter
'],
['titlepage_no_title',
'@setfilename titlepage_no_title.info
@titlepage
@titlefont{Some manual tested}

@author Some Author
@end titlepage

@node Top
@top section top

@node chapter
@chapter Chapter

In chapter
'],
['titlepage_long_title',
'@setfilename titlepage_long_title.info
@titlepage
@title a title than is long, very long, veeeeeeeeeeeeeeeeery long, it seems to never stop and it is not so interesting only very long oh an end of line @* and the title continue and keep on being unfinished until it is the end

@end titlepage

@node Top
@top section top

@node chapter
@chapter Chapter

In chapter
'],
['titlepage_classical',
'@setfilename titlepage_classical.info

@copying
in Copying
@end copying

@titlepage
@title Some manual tested
@subtitle Subtitle manual tested
@subtitle Subtitle 2 manual tested
@author First author
@author Second author

@page
@c The following two commands start the copyright page.
@page
@vskip 0pt plus 1filll
@insertcopying
@end titlepage

@node Top
@top section top

@node chapter
@chapter Chapter

In chapter

'],
['titlepage_with_commands_classical',
'@setfilename titlepage_with_commands_classical.info

@copying
in Copying
@end copying

@titlepage
@title Some manual @* tested
@subtitle Subtitle manual @* tested
@subtitle Subtitle 2 manual @* tested
@author First @* author
@author Second @* author@footnote{Something
about the address of author.

Something about the life. 
@displaymath
\frac{a}{b}
@end displaymath
}
@page
@c The following two commands start the copyright page.
@page
@vskip 0pt plus 1filll
@insertcopying
@end titlepage

@node Top
@top section top

@node chapter
@chapter Chapter

In chapter

'],
['float_and_refs',
'@setfilename float_and_refs.info

@node Top
@top top

@node chapter
@chapter chapter

@float , no type
no type
@caption{no type float}
@shortcaption{short no type float}
@end float

@float Thing, with type
Something with
@caption{with type float}
@shortcaption{short with type float}
@end float

@float Figure, my figure
In figure
@caption{caption for figure}
@shortcaption{short caption for figure}
@end float

@chapter refs

@xref{no type}.
@xref{no type, two}.
@xref{no type, two, three}.
@xref{no type, two, three, four}.
@xref{no type, two, three, four, five}.

@xref{with type}.
@xref{with type, two}.
@xref{with type, two, three}.
@xref{with type, two, three, four}.
@xref{with type, two, three, four, five}.

@xref{my figure}.
@xref{my figure, two}.
@xref{my figure, two, three}.
@xref{my figure, two, three, four}.
@xref{my figure, two, three, four, five}.

@chapter lists

@listoffloats 
@listoffloats Figure
@listoffloats Thing

'],
['anchor_links_xref_xrefautomaticsectiontitle',
'@setfilename anchor_links_xref_xrefautomaticsectiontitle.info

@node node before

In node before
@anchor{anch: in node before}

@node Top
@top top sectionning

in node Top
@anchor{anch: in node top}

@node after

in node after
@anchor{anch: in node after}

@node chap
@chapter chap

in chap
@anchor{anch: in chap}

@xrefautomaticsectiontitle on
@xref{anch: in node before}.
@xref{anch: in node top}.
@xref{anch: in node after}.
@xref{anch: in chap}.

@xrefautomaticsectiontitle off
@xref{anch: in node before}.
@xref{anch: in node top}.
@xref{anch: in node after}.
@xref{anch: in chap}.
'],
['fonttextsize',
'@setfilename fonttextsize.info

@fonttextsize 10

@node Top
@top section top

@node chapter
@chapter Chapter

@section section

@subsection Subsection 10pts
In 10pts

@fonttextsize 11
@subsection Subsection 11pts

In 11pts

@fonttextsize 8
@subsection Subsection 8pts

In 8pts

@fonttextsize 15
@subsection Subsection 15pts

In 15pts
'],
['pagetype',
'@setfilename pagetype.info

@afourpaper

@afourwide

@node Top
@top section top

@node chapter
@chapter Chapter

@smallbook

@Chapter In smallbook

In smallbook
@afourpaper

After afourpaper

@chapter afourpaper reset

In afourpaper reset
'],
['pagesizes',
'@setfilename pagesizes.info

@pagesizes 200mm,150mm

@node Top
@top section top

@node chapter
@chapter Chapter

@pagesizes 11.5in

@chapter other pagesizes

@pagesizes , 130mm

@pagesizes , 
'],
['verbatim_in_smallformat',
'@setfilename verbatim_in_smallformat.info

@smallformat
@verbatim
... still verbatim, but in a smaller font ...
@end verbatim
@end smallformat
'],
['example_in_cartouche',
'@setfilename example_in_cartouche.info

@cartouche
Normal cartouche

New para
@end cartouche

@cartouche
@example
% pwd
/usr/local/share/emacs
@end example
@end cartouche
'],
['nested_itemize',
'@setfilename nested_itemize.info
@itemize
   @item First level item
   @item First level item
@itemize
     @item Second level item
     @item Second level item
@itemize
       @item Third level item
       @item Third level item
@itemize
         @item Fourth level item
         @item Fourth level item
@end itemize
@end itemize
@end itemize
@end itemize

'],
['nested_enumerate',
'@setfilename nested_enumerate.info

@enumerate
   @item First level item
   @item First level item
@enumerate
     @item Second level item
     @item Second level item
@enumerate
       @item Third level item
       @item Third level item
@enumerate
         @item Fourth level item
         @item Fourth level item
@end enumerate
@end enumerate
@end enumerate
@end enumerate

'],
['enumerate_arguments',
'@setfilename enumerate_arguments.info

@enumerate a
@item value
@item value
@end enumerate

@enumerate A
@item value
@item value
@end enumerate

@enumerate c
@item value
@item value
@end enumerate

@enumerate C
@item value
@item value
@end enumerate

@enumerate 1
@item value
@item value
@end enumerate

@enumerate 3
@item value
@item value
@end enumerate

'],
['indices',
'@setfilename indices.info

@node Top
@top top section

@node chapter
@chapter Index

@cindex @math{a!"@@b} "!@@ @"a @"{o} @subentry @sortas{a!"@@b} sub@math{a!"@@b} sub "!@@ @"a @"{o} @seealso{@math{a!"@@b} "!@@ @"a @"{o}}

@printindex cp
']

);

foreach my $test (@test_cases) {
  $test->[2]->{'test_formats'} = ['latex'];
}

foreach my $test (@file_tests) {
  $test->[2]->{'test_formats'} = ['latex', 'file_latex'];
}

our ($arg_test_case, $arg_generate, $arg_debug);

run_all ('latex_tests', [@test_cases, @file_tests], $arg_test_case,
   $arg_generate, $arg_debug);

1;
