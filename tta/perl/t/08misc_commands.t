use strict;

use lib '.';
use Texinfo::ModulePath (undef, undef, undef, 'updirs' => 2);

require 't/test_utils.pl';

my @test_cases = (
['simple', '@defindex idx'],
['many_lines', 'pagesizes @pagesizes 200mm,150mm following @@pagesizes arg
afourpaper @afourpaper on line following afourpaper
smallbook @smallbook on line following smallbook
headings @headings on line following headings
oddfooting @oddfooting on line following oddfooting
everyheading @everyheading on line following everyheading
everyfooting @everyfooting on line following everyfooting
evenheading @evenheading on line following evenheading
evenfooting @evenfooting on line following evenfooting
oddheading @oddheading on line following
need @need 0.1 on line following
need @need 0.1
setchapternewpage @setchapternewpage on line following setchapternewpage
raisesections @raisesections on line following raisesections
lowersections @lowersections on line following lowersections
kbdinputstyle code @kbdinputstyle code something
afourpaper @afourpaper on line following afourpaper
afourlatex @afourlatex on line following afourlatex
afourwide @afourwide on line following afourwide
paragraphindent asis @paragraphindent asis
paragraphindent 0 @paragraphindent 0
paragraphindent none @paragraphindent none
paragraphindent 4 @paragraphindent 4
firstparagraphindent insert @firstparagraphindent insert
firstparagraphindent 3 @firstparagraphindent 3
exampleindent 6 @exampleindent 6 on line following exampleindent
exampleindent 6 @exampleindent 6
footnotestyle @footnotestyle end 
footnotestyle @footnotestyle separate 
documentencoding @documentencoding US-ascii encoding name
@documentencoding ISO-8859-1
frenchspacing @frenchspacing on
frenchspacing @frenchspacing off
fonttextsize @fonttextsize 10
everyheadingmarks @everyheadingmarks bottom on line following everyheadingmarks
@allowcodebreaks false
@allowcodebreaks true

Text line followed by finalout on the same line and another below @finalout
@finalout
Text line after the finalout followed by a fianlout @finalout
Text line after the text line followed by the finalout.

Test text after finalout
@finalout a word after finalout
Line after finalout
'],
['documentencoding_zero',
'@documentencoding 0
'],
['also_not_line',
'

page @page 
noindent @noindent refill @refill something

@noindent     noindent at beginning of line
@noindent  
noindent on the preceding line
  @noindent    noindent after space at beginning of line
@page         page at beginning of line
@page
After page on its own line.

page @page   
noindent @noindent    refill @refill 
novalidate @novalidate something

@subheading special

Only valid between iftex:
vskip @vskip 

exdent @exdent line after exdent
'],
['sp',
'
Text line followed on the same line and another below @sp 1
@sp 2
Text line after the sp followed by a sp @sp 1
Text line after the text line followed by the sp.
@ifnottex
@sp 2 a number after sp
@end ifnottex
'],
['clickstyle',
'@clickstyle @result

A @click{} (result).

@clickstyle@equiv

A @click{} (equiv no space)

'],
['clickstyle_no_end_of_line',
'@clickstyle @result',
],
['bye',
'@bye
'],
['text_before_and_after_bye',
'Before bye @bye on bye line

after bye
'],
['invalid_clickstyle',
'
@clickstyle @result on the same line

A @click{} (result on the same line).

@clickstyle @nocmd

A @click{} (nocmd).

@clickstyle something

A @click{} (something).
'],
['clickstyle_and_comments',
'@clickstyle@comment a
@clickstyle @comment b
@clickstyle nocmd@comment c
@clickstyle more than one word @comment d
@clickstyle @result@comment e
@clickstyle @result   @comment f
@clickstyle @result on the same line @comment g
'],
['contents','
first @@contents @contents line following first content
second @@contents @contents line following second content
Third content on the following line on his own
@contents
Line following contents
shortcontents @shortcontents eol
shortcontents @shortcontents eol
summarycontents @summarycontents line following summarycontents
'],
['contents_arg_and_comment',
'@contents aa @comment v
'],
['invalid_kbdinputstyle',
'kbdinputstyle @kbdinputstyle wrong arg on line following kbdinputstyle
'],
['index_entries',
'@cindex cindex entry

@defindex truc

@trucindex index truc
'],
['command_line_in_paragraph',
'documentlanguage on its line
@documentlanguage  en  
line following documentlanguage
'],
['bad_documentlanguage',
'
documentlanguage @documentlanguage  en 

@documentlanguage  en @documentlanguage  en  

@documentlanguage  en  after documentlanguage
'],
['empty_documentencoding',
'@documentencoding   
'],
['invalid_documentencoding',
'@c this one is valid
@documentencoding us-ascii@asis{}

@documentencoding latin1@asis{a}
@documentencoding YS-ASCII
@@documentencoding @documentencoding bad encoding name
@documentencoding 1
@documentencoding %
@documentencoding @@
@documentencoding AAA@TeX{}
@documentencoding BBB@\'e
'],
['defindex_too_much_args',
'@defindex chose    machin'
],
['synindex_too_much_args',
'@syncodeindex cp fn    truc
'],
['command_not_closed_in_documentencoding',
'@documentencoding @strong{'],
['text_before_line_command',
'before title @title the title

i@node LD Version Scripts
--- @chapter LD Version Scripts

ddd @contents

@quotation
aaa @author quotation author
quotation
@end quotation
'],
['author_outside_titlepage_quotation',
'@author Some One
'],
['double_exdent',
'@example
Example   Hoho.
@example
Nested Other line
@exdent @exdent double  exdented nested other line
@end example
@end example
'],
);

my @converted_test_cases = (
['setfilename',
'@setfilename file_comment@c comment
@setfilename file_and_spaces   
@setfilename file_space_comment @c comment
@setfilename @ @verb{: name :}@ 

', {'full_document' => 1}],
# this tests seems somewhat pointless, but it is not, as in perl
# utf8 may mean a lax handling of UTF-8.  We want to avoid using
# that lax handling of UTF-8, better get errors early.
['documentencoding_utf8',
'@documentencoding utf8

'],
['command_not_closed_on_center_line',
'@center c @strong{
st}
'],
['comment_without_line',
'@comment'],
['definfoenclose',
'
definfoenclose phoo,//,\\  @definfoenclose phoo,//,\\

@phoo{bar}

definfoenclose phi,:,:  @definfoenclose phi,:,:

@phi{bar}

@strong{very strong}

@definfoenclose strong,(strong:,:)

@strong{ is it really strong? }
'],
['definfoenclose_with_empty_arg',
'
@definfoenclose headword, , :

My @headword{something}.

'],
['definfoenclose_nestings',
'@definfoenclose phoo,//,\\

@code{@phoo{in phoo in code}}.

@phoo{@code{in code in phoo}}.

@phoo{
@center in center in phoo
}
'],
['no_empty_line_between_headings',
'@top Top
@subheading Subheading
@chapter Chapter
@section Section
'],
['comments_in_text',
'
@c lone comment

Text line followed by a comment on the same line and another below @c comment
@c comment
Text line after the comment followed by a comment @comment c
Text line after the text line followed by the comment.

Comment at the end of the line @c comment
'],
['noindent_indent',
'
@indent
First para

@noindent
qsddsqkdsqkkmljsqjsqodmmdsqdsmqj dqs sdq sqd sdq dsq sdq sqd sqd sdq sdq 
qsd dsq sdq dsq dssdq sdq sdq sdq dsq sdq dsq dsq sdq dsq sdqsd q

@noindent noindent in para.

@indent unneeded indent
'],
['indent_in_quotation',
'@quotation
@indent
indent in quotation
@end quotation
'],
['indent_with_command_after_without_space',
'@indent@AA{} b
'],
# Need to use a trick such as @value to have a text following
# @indent without being part of the command name
['indent_with_text_after_without_space',
'@set myvalue a

@indent@value{myvalue} b
'],
['noindent_after_smallexample',
'To obtain.
@smallexample
$ wget \'http://savannah.gnu.org/cgi-bin/viewcvs/config/config/config.guess?rev=HEAD&content-type=text/plain\'
$ wget \'http://savannah.gnu.org/cgi-bin/viewcvs/config/config/config.sub?rev=HEAD&content-type=text/plain\'
@end smallexample
@noindent
Less recent versions are also present.
'],
['noindent_in_paragraph',
'Begin para
@noindent
after noindent.

Begin para2
@noindent
after noindent2.
'],
['noindent_empty_para',
'@noindent

aaa
'],
['indent_in_command_in_paragraph',
'In para @code{@indent}.  @asis{@b{in double command@noindent}}.
'],
['empty_center',
'@center 
'],
['empty_center_with_arg',
'@center @w{}
'],
['ref_in_center',
'@node Top
@top top

@node chap
@chapter Chapter

@center @ref{Top}

@center @ref{Top, ,title
very long}
', {'full_document' => 1}],
['nodedescription',
'@nodedescription out of any node

@node Top
@top top

@node chap
@chapter Chapter

@nodedescription @emph{first description} of chapter

@nodedescription second description @
  of chapter
'],
['footnote_in_center',
'@center Centered text with a footnote@footnote{This footnote
shows an important feature of the centered text.

@example
@table @asis
@item item
line
@end table 
@end example
} and text after the footnote.
'],
['test_allowcodebreaks',
'@node Top
@node chap

@macro testallowcodebreakspara {nr}
Out of code --- out-of-code.
@code{1aaa} @code{2aaa-} @code{-3bbb} @code{4aaa-bbb} 
@code{ 5aaa-bb} @code{6aaa-bb } @code{ccc 7aaa-bbb} @code{ccc 8aaa-bbb ddd}
@code{9aaa-bbb rrr_vv}
@samp{fff-- --- minus@minus{}b aa-tt@\'eff_gg aa@r{r-oman} 
anc-hor@anchor{A node\nr\}}
@end macro

@macro testallowcodebreaksexample{}

@example
@code{in-example}
@end example
@end macro

Before first allowcodebreaks
@testallowcodebreakspara{0}
@testallowcodebreaksexample{}

@allowcodebreaks false
After false
@testallowcodebreakspara{1}
@testallowcodebreaksexample{}

In w:
@w{@testallowcodebreakspara{w}
}

@example
@w{@code{in-example}}
@end example

@allowcodebreaks true
After true
@testallowcodebreakspara{2}
@testallowcodebreaksexample{}
', {'full_document' => 1}],
['incorrect_allowcodebreaks_argument',
'@allowcodebreaks _arg
@code{b a}
'],
['codequoteundirected_codequotebacktick',
'@macro quotes
``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{} @*
code: @code{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
asis: @asis{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
strong: @strong{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
kbd: @kbd{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
samp: @samp{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
@end macro

@macro allquotes
@quotes{}

@example
@@codequoteundirected on
@@codequotebacktick on
@end example
@codequoteundirected
@codequotebacktick
@quotes{}

@example
@@codequoteundirected off
@@codequotebacktick off
@end example
@codequoteundirected off
@codequotebacktick off
@quotes{}
@end macro

@copying
@allquotes{}
@end copying
@titlepage
Titlepage
@insertcopying
@end titlepage


@node Top 
@top test quotes

@node chap
@chapter Chapter

@allquotes{}

@example
@allquotes{}
@end example

', {'full_document' => 1}],
['comment_space_command_on_line',
'@settitle Settitle @ @c settittle

@node Top  @comment @node Top
@top top element@  @comment @top

@node chap @comment @node chap
@chapter Chapter@  @comment @chapter

@frenchspacing on @c comment frenchspacing

@microtype off@c comment microtype

@cindex index entry @  @c index entry

@heading Heading @     @c heading

@printindex cp @c printindex 

@float Text, label
float
@end float @c end

@listoffloats Text @ @c listoffloats

@bye @c bye
'],
['command_in_heading_footing',
'@everyheading something @thispage @thischapternum

In text @thispage @thischapternum text.

In code @code{@thissection}.
'],
# got LaTeX formatting errors when in @example
['heading_command_in_commands',
'
@code{
@everyheading in code
}

@example
@everyheading in example
@end example

@quotation
@everyheading in quotation
@end quotation
'],
['vskip',
'@vskip 0pt plus 1filll
'],
['kbdinputstyle',
'@macro codekbdmacro
@code{in code out of example @code{in nested code}}.
@kbd{kbd out of example}.
@code{kbd @kbd{in code}}.
@code{for nesting @r{r in code @kbd{in r in code}}}

in example
@example
@code{in code in example @code{in nested code}}.
@kbd{kbd in example}.
@code{kbd @kbd{in code} in example}.
@code{for nesting in example @r{r in code in example @kbd{in r in code in example}}}
@end example
@end macro

@@kbdinputstyle code

@kbdinputstyle code

@codekbdmacro{}

@@kbdinputstyle example

@kbdinputstyle example

@codekbdmacro{}

@@kbdinputstyle distinct

@kbdinputstyle distinct

@codekbdmacro{}
'],
['kbdinputstyle_in_table',
'@macro codekbdmacro
@table @kbd
@item i--tem out of example
@end table

@table @kbd{}
@item braced i--tem out of example
@end table

in example
@example
@table @kbd
@item i--tem in example
@end table
@table @kbd{}
@item braced i--tem in example
@end table
@end example
@end macro

@@kbdinputstyle code

@kbdinputstyle code

@codekbdmacro{}

@@kbdinputstyle example

@kbdinputstyle example

@codekbdmacro{}

@@kbdinputstyle distinct

@kbdinputstyle distinct

@codekbdmacro{}
'],
['exdent_no_line',
'@exdent'],
);

# info and xml
my %info_tests = (
  'comment_space_command_on_line' => 1,
  'setfilename' => 1,
  'documentencoding_utf8' => 1,
);

my %xml_tests = (
  'codequoteundirected_codequotebacktick' => 1,
  'definfoenclose_with_empty_arg' => 1,
  'vskip' => 1,
);

my %docbook_tests = (
  'setfilename' => 1,
  'definfoenclose' => 1,
  'no_empty_line_between_headings' => 1,
  'comments_in_text' => 1,
  'noindent_indent' => 1,
  'empty_center' => 1,
  'ref_in_center' => 1,
  'footnote_in_center' => 1,
  'command_in_heading_footing' => 1,
  'command_not_closed_on_center_line' => 1,
  'comment_without_line' => 1,
);

my %docbooc_doc_tests = (
  'codequoteundirected_codequotebacktick' => 1,
  'comment_space_command_on_line' => 1,
);

my %latex_tests = (
  'noindent_indent' => 1,
  'kbdinputstyle' => 1,
  'kbdinputstyle_in_table' => 1,
  'definfoenclose' => 1,
);

foreach my $test (@converted_test_cases) {
  push @{$test->[2]->{'test_formats'}}, 'plaintext';
  push @{$test->[2]->{'test_formats'}}, 'html_text';
  push @{$test->[2]->{'test_formats'}}, 'latex';
  if ($docbook_tests{$test->[0]}) {
    push @{$test->[2]->{'test_formats'}}, 'docbook';
  } elsif ($docbooc_doc_tests{$test->[0]}) {
   push @{$test->[2]->{'test_formats'}}, 'docbook_doc';
  }
  if ($info_tests{$test->[0]}) {
    push @{$test->[2]->{'test_formats'}}, 'info';
    push @{$test->[2]->{'test_formats'}}, 'xml';
  } 
  if ($xml_tests{$test->[0]}) {
    push @{$test->[2]->{'test_formats'}}, 'xml';
  }
}

run_all('misc_commands', [@test_cases, @converted_test_cases]);
