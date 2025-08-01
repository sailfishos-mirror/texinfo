use strict;

use lib '.';
use Texinfo::ModulePath (undef, undef, undef, 'updirs' => 2);

require 't/test_utils.pl';

my $two_footnotes_in_nodes_text = 
'@node Top
@top 2 footnotes in 2 nodes

A@footnote{Footnote Top/1

para2}

B@footnote{Footnote Top/2

para2}

@menu
* chapter::
@end menu

@node chapter
@chapter chapter

C@footnote{Footnote chapter/1

para2}

D@footnote{Footnote chapter/2

para2}

';

my @test_cases = (
['simple', '@b{in  b}.'],
['empty_second_email_argument', '@email{ a@@b.c, }'],
['email_possibilities',
'@email{--a,--b}
@email{,--b}
@email{--a}
'],
['abbr_acronym',
'@acronym{--a,an accronym}
@acronym{--a}
@acronym{--a,an accronym @comma{} @enddots{}}

@abbr{@\'E--a. @comma{}A., @\'Etude--@comma{} @b{Autonome} }
@abbr{@\'E--a. @comma{}A.}
'],
['recursive_acronym',
'@acronym{GNU, @acronym{GNU}\'s Not Unix}
'],
['recursive_acronym_definition',
'@acronym{GNU, @acronym{GNU, @acronym{GNU, is something}\'s Not Unix}\'s Not Unix}
'],
['uref_url',
'@uref{--a,--b}
@uref{--c}
@uref{,--d}
@uref{--e,--f,--g}
@uref{,--h,--i}
@uref{--j,,--k}
@uref{,,--l}
@url{--m,--n}
@url{--o,--p,--q}
'],
['uref_with_commands_characters',
'@uref{http://my-host.com/~@strong{toto}%5Cs\'q"a&e?b@}b@{ba@@s\s p+h#aaa, see that @strong{@LaTeX{}}}
'],
['empty_commands',
'@titlefont{}

@uref{} @abbr{} @email{} @code{}@footnote{} @~{} @dotless{} @verb{;;}
'],
['nested', 'type the characters @kbd{l o g o u t @key{RET}}.'],
['nested_args', '@xref{@@ @samp{in samp}, descr @b{in b}, S@~{e}ction, 
@cite{manual}}.'],
['one_argument_leading_trailing_spaces',
'@code{ in code } @slanted{ in slanted } @var{ var } @sub{ sub }
@hyphenation{ a-b c-d }
@indicateurl{ http://example.com } @U{ 1234 } @w{ w } @verb{: verb :}.
@^{ e } @ringaccent{ a } @dotless{ i } @tieaccent{ bb }
@aa{ i } @enddots{ ei }
'],
['command_in_dotless',
'@dotless{@code{i}}'],
['command_in_U',
'@U{@code{09AF}}'],
['brace_command_no_braces', '@xref'],
['image_no_braces', '@image '],
['abbr_no_braces', '@abbr'],
['email_no_braces', '@email'],
['url_no_braces', '@url'],
['math_no_braces', '@math'],
['strong_no_braces', '@strong'],
['caption_no_braces', '@caption'],
['footnote_no_braces', '@footnote'],
['U_no_braces', '@U'],
['hyphenation_no_braces', '@hyphenation'],
['titlefont_no_braces', '@titlefont'],
['definfoenclose_no_braces', '@definfoenclose phoo,;,:
@phoo'],
# tests a brace command without braces on a line command at the end of a
# document
['seeentry_no_braces', '@node Top
@top top

@node chap
@chapter chap

@printindex cp

@cindex aa @seeentry'],
['verb_in_xref',
'@anchor{point}

@xref{point, @verb{*with
verb

ggg *}}.
'],
['nested_in_sc',
'@sc{@sc{aaa @~n @aa{} @TeX{} @~{@aa{}} @footnote{In footnote}, @abbr{ABr, expl}, 
@verb{:in verb:}}}
'],
['ref_in_style_command', '@samp{@ref{(manula)other node}}.'],
['uref_in_ref',
'@ref{(file)node, cross ref with uref @uref{href://http/myhost.com/index.html,uref1}, title with uref2 @uref{href://http/myhost.com/index2.html,uref2}, info file with uref3 @uref{href://http/myhost.com/index3.html,uref3}, printed manual with uref4 @uref{href://http/myhost.com/index4.html,uref4}}
'],
['too_much_args', '@abbr{AZE, A truc Z b, E eep}'],
['inforef_too_much_args',
'@node chapter

@inforef{chapter, cross ref name, file name, spurious arg}
'],
['footnote', 'text@footnote{in footnote.

@r{in footnote r}. } after footnote.'],
['space_in_footnote','text@footnote{ in footnote.}'],
['footnote_ending_on_empty_line','text@footnote{ in footnote.

}'],
['footnote_ending_on_empty_line_spaces','text@footnote{ in footnote.

  }'],
['heading_in_footnote',
'T@footnote{
AAA
@heading H1
@cindex ind e
BBB
}
'],
['footnote_no_node',
'@top top

F@footnote{In footnote}.
'],
['space_in_image','@image{ a ,bb, cc,dd ,.e }. @image{ f }.'],
['space_command_in_image', '@image{f--ile,,,@ } @image{f--ile,,,@:}'],
['end_line_in_anchor',
'@anchor{an
anchor}
'],
['space_in_anchor',
'@anchor{   anchor  name   }.
'],
['test_w',
'@w{aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa bbbbbbbbbbbbb bbbbb bbb b b b b b b b b b bb .
ccc dddd}.

a a a a a a a a a a a a a a a a a a a a a a a a a a a a  @w{b a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a}


@w{}

@w{ a rr   
  ggg.}

AA@w{}bbb.

FF@w{d}nnn.

aa@w{  f  f}ggg.

aa2@w{  f  f }ggg2.


aa3 @w{  f  f }ggg3.


aa4 @w{  f  f } ggg4.

aa5 @w{} ggg5.

aa6 @w{}ggg6.

aa6@w{} ggg6.

aaf @w{ } bbb.

begin and end quotations: @w{@t{`@w{}`@dots{}\'@w{}\'}}.  This
convention should be followed in Texinfo files.  TeX converts
two single quotes to left- and right-hand doubled.
'],
['w_end_sentence',
'a. @w{b}'],
['test_image',
'@macro files-char
@image{f@@i--le@/.@.  a@@<"%@@@verb{:  < & @ % " :} ,,,,.ext@@i--le@/.@.  a@@<"%@@@verb{:  < & @ % " :}}

In text @image{f@@i--le@/.@.  a@@<"%@@@verb{:  < & @ % " :} ,1in, 1cm, alt @b{@^{@dotless{i}}--le@/.@.}  a@*<"%@@@verb{:  < & @ % " :}  ,.ext@@i--le@/.@.  a@@<"%@@@verb{:  < & @ % " :}}.
@end macro

@copying
Text in copying.
@files-char{}
@end copying

@node Top
@node chapter

@files-char{}

Insertcopying
@insertcopying

@example
@files-char{}
@end example

@float Image, Image with commands
@files-char{}

@caption{@files-char{}}
@end float

@listoffloats Image

', {'test_formats' => ['html']} ],
['format_on_first_footnote_line',
'Texte@footnote{@quotation
in quotation on the first footnote line
@end quotation
}.

Last text @footnote{@example
in example
@end example

}
'],
['kbd',
'kbd: @code{in kbd}.

kbd in code: @code{in first @kbd{in nested kbd}}.

kbd in kbd: @kbd{in top kbd @kbd{in nested kbd}}.

kbd in @@example:

@example 
in example
@code{in example in kbd}.
@end example

kbd in @@format:

@format 
in format
@code{in format in kbd}.
@end format
'],
['two_footnotes_in_nodes',
$two_footnotes_in_nodes_text,
, {'test_formats' => ['html', 'info'], 'full_document' => 1} ],
['two_footnotes_in_nodes_separate',
'@footnotestyle separate
'.$two_footnotes_in_nodes_text,
, {'test_formats' => ['html', 'info'], 'full_document' => 1} ],
['two_footnotes_in_nodes_separate_no_header',
'@footnotestyle separate
'.$two_footnotes_in_nodes_text,
, {'test_formats' => ['html', 'info'], 'full_document' => 1},
  {'HEADERS' => 0} ],
# could be in @test_invalid too, but also allows to test what happens
# to formatting with empty first email first argument
['empty_line_in_email',
'@email{ 

mail,

text
}'],
# here even if invalid as we want to see how the @sortas is in index
['contain_plain_text_nestings',
'@node Top
@top top

@node chap
@chapter Chap

Text @w{@code{code in w} text}.
@hyphenation{@code{code in hyphenation} text}
@key{@code{code in key} text}
@cindex ii @sortas{@code{code in sortas} text}

@c no warning for @ref in @w
Text @w{@ref{Top, cross in w} text}.
@hyphenation{@ref{Top, cross in hyphenation} text}
@key{@ref{Top, cross in key} text}
@cindex ii @sortas{@ref{Top, cross in sortas} text}

@printindex cp
'],
['definfoenclose_texinfo_commands',
'@definfoenclose verb,;;,!!
@definfoenclose TeX,aa,bb
@definfoenclose strong,(,)
@definfoenclose quotation,q,e

@verb{*aaa*}.

@TeX{}. @strong{in strong}.

@quotation important
in quotation
@end quotation
'],
);

my @test_invalid = (
['no_brace', '@TeX and @code code and @footnote footnote ', 
{'test_formats' => ['html_text']}
],
['no_brace_space_end_line',
'@code {c}.

@TeX
text
@code
Arg.'
],
['empty_line_in_anchor',
'@anchor{an

anchor}
'],
['unmatched_brace','@samp{Closing} @samp{ @} without opening macro }.}'],
['brace_opened_no_command','anchor{truc@} @anchor{truc}.
@bye'],
['caption_not_closed',
'@float Text

@caption{Not closed caption

The caption is closed as soon as @@end float is encountered, since
as much as possible is closed in order to find the @@float beginning.

@end float

@bye
'],
['code_not_closed','@code{in code'],
['anchor_not_closed',
'@anchor{my anchor

'],
['footnote_not_closed',
'AAA@footnote{ in footnote

Second paragraph.
'],
['empty_line_in_math','@math{a

b}'],
['math_not_closed','@math{\delta + 2'],
['math_bracketed_not_closed','@math{{x^i}\over{\tan '],
['math_bracketed_inside_not_closed','@math{{x^i}\over{\tan}'],
['math_bracketed_not_closed_next_line',
'@math{aa {

'],
['math_leading_trailing_spaces','@math{ a = b }'],
['empty_line_in_braces_in_math',
'@math{a{bb

c}d}'],
['empty_line_in_braces_in_math_at_begin_line',
'@math{a

{b

} c
}'],
['empty_line_in_command_in_math',
'@math{a @code{in code

after line} b}'],
['unknown_command_with_braces',
'Unknown thing @thing{}

Unknown macro @unknown{ first paragraph

second paragraph}

@unknown2{ first paragraph

second paragraph

third}
'],
['footnote_in_command_not_closed',
'aaa@code{in code@footnote{in footnote'],
['empty_images',
'@image{}

@image{ ,aa,bb,cc ,dd}

@image{,,,@ }
@image{,,,@:}
'],
['empty_ref',
'
@ref{} @xref{,,something}. @inforef{ }
 @inforef{ , arg}.
'],
['ref_empty_node',
'
@ref{,,,manual} @ref{,,, , Manual} @inforef{,,imanual}
@xref{ , Bidule, Truc, file, Printed}.
'],
['definfoenclose_bad_argument', '@definfoenclose #phoo,;,:'],
);

foreach my $test (@test_cases) {
  push @{$test->[2]->{'test_formats'}}, 'plaintext';
  push @{$test->[2]->{'test_formats'}}, 'html_text'
    unless grep {$_ eq 'html'} @{$test->[2]->{'test_formats'}};
  push @{$test->[2]->{'test_formats'}}, 'latex_text';
  push @{$test->[2]->{'test_formats'}}, 'docbook';
}

run_all('coverage_braces', [@test_cases, @test_invalid]);
