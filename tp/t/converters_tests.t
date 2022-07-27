use strict;

use lib '.';
use Texinfo::ModulePath (undef, undef, 'updirs' => 2);

require 't/test_utils.pl';

my $inline_text = '
@inlinefmt{html, <blink>html</blink> ``}, 
@inlinefmt{plaintext, plaintext ``}, 
@inlinefmt{xml, <para>xml</para> ``},
@inlinefmt{docbook, <emphasis>docbook</emphasis> ``}, 
@inlinefmt{tex, $\underline{a < b @code{tex \hbox{ code }}}$ ``}
@inlinefmt{latex, @math{\frac{a < b @code{tex \hbox{ code }}}{b}} ``}


@inlineraw{html, raw <blink>html</blink> ``}, 
@inlineraw{plaintext, raw plaintext ``}, 
@inlineraw{xml, raw <para>xml</para> ``},
@inlineraw{docbook, raw <emphasis>docbook</emphasis> ``}, 
@inlineraw{tex, raw $\underline{a < b @code{tex \hbox{ code }}}$ ``}
@inlineraw{latex, raw $\frac{a < b @code{tex \hbox{ code }}}{b}$ ``}
';

my $raw_commands_text = '
@html
<blink>html</blink> ``}
@end html

@xml
<para>xml</para> ``}
@end xml

@docbook
<emphasis>docbook</emphasis> ``}
@end docbook

@tex
$\underline{a < b @code{tex \hbox{ code }}}$ ``}
@end tex

@latex
$\frac{a < b @code{tex \hbox{ code }}}{b}$ ``
@end latex
';

# do not only use @node Top as it is ignored in LaTeX output
my $top_in_ref_text = 
'@node Top

@node refs node

@code{@@ref@{Top,cross ref name@}} @ref{Top,cross ref name}
@code{@@ref@{Top,,title@}} @ref{Top,,title}
@code{@@ref@{Top,,,file name@}} @ref{Top,,,file name}
@code{@@ref@{Top,,,,manual@}} @ref{Top,,,,manual}
@code{@@ref@{Top,cross ref name,title,@}} @ref{Top,cross ref name,title,}
@code{@@ref@{Top,cross ref name,,file name@}} @ref{Top,cross ref name,,file name}
@code{@@ref@{Top,cross ref name,,,manual@}} @ref{Top,cross ref name,,,manual}
@code{@@ref@{Top,cross ref name,title,file name@}} @ref{Top,cross ref name,title,file name}
@code{@@ref@{Top,cross ref name,title,,manual@}} @ref{Top,cross ref name,title,,manual}
@code{@@ref@{Top,cross ref name,title, file name, manual@}} @ref{Top,cross ref name,title, file name, manual}
@code{@@ref@{Top,,title,file name@}} @ref{Top,,title,file name}
@code{@@ref@{Top,,title,,manual@}} @ref{Top,,title,,manual}
@code{@@ref@{Top,,title, file name, manual@}} @ref{Top,,title, file name, manual}
@code{@@ref@{Top,,,file name,manual@}} @ref{Top,,,file name,manual}

@code{@@ref@{(pman)Top,cross ref name@}} @ref{(pman)Top,cross ref name}
@code{@@ref@{(pman)Top,,title@}} @ref{(pman)Top,,title}
@code{@@ref@{(pman)Top,,,file name@}} @ref{(pman)Top,,,file name}
@code{@@ref@{(pman)Top,,,,manual@}} @ref{(pman)Top,,,,manual}
@code{@@ref@{(pman)Top,cross ref name,title,@}} @ref{(pman)Top,cross ref name,title,}
@code{@@ref@{(pman)Top,cross ref name,,file name@}} @ref{(pman)Top,cross ref name,,file name}
@code{@@ref@{(pman)Top,cross ref name,,,manual@}} @ref{(pman)Top,cross ref name,,,manual}
@code{@@ref@{(pman)Top,cross ref name,title,file name@}} @ref{(pman)Top,cross ref name,title,file name}
@code{@@ref@{(pman)Top,cross ref name,title,,manual@}} @ref{(pman)Top,cross ref name,title,,manual}
@code{@@ref@{(pman)Top,cross ref name,title, file name, manual@}} @ref{(pman)Top,cross ref name,title, file name, manual}
@code{@@ref@{(pman)Top,,title,file name@}} @ref{(pman)Top,,title,file name}
@code{@@ref@{(pman)Top,,title,,manual@}} @ref{(pman)Top,,title,,manual}
@code{@@ref@{(pman)Top,,title, file name, manual@}} @ref{(pman)Top,,title, file name, manual}
@code{@@ref@{(pman)Top,,,file name,manual@}} @ref{(pman)Top,,,file name,manual}

@code{@@inforef@{Top, cross ref name, file name@}} @inforef{Top, cross ref name, file name}
@code{@@inforef@{Top@}} @inforef{Top}
@code{@@inforef@{Top, cross ref name@}} @inforef{Top, cross ref name}
@code{@@inforef@{Top,,file name@}} @inforef{Top,,file name}
';

my $non_empty_part_text =
'@part part before

Content before

@node Top
@top top

@menu
* chapter node::
* part chapter node::
@end menu

@part part I

Content I

@chapter chap in Top node

@part Part II

Content II

@node part chapter node
@part part III

Content III

@chapter chapter with part node

@part Part IV

Content IV

@part Part V

Content V

@chapter with part no node

@part Part VI

Content VI

@node node between part and chapter

@chapter chapter after part node

';

my @test_cases = (
['accent_with_text',
'@u{--a} @dotless{--b} @^{--@dotless{i}} @^{--@dotless{j}} @^{--a}
'],
['empty_accent',
'@`{}
'],
['some_at_commands_in_ref_nodes',
'
@node Top
@top Top

@menu
* A @sc{sc @~n @aa{} @TeX{}} node @"i @"{@dotless{i}} @`{@=E} @l{} @,{@\'C} @exclamdown{}::
@end menu

@node A @sc{sc @~n @aa{} @TeX{}} node @"i @"{@dotless{i}} @`{@=E} @l{} @,{@\'C} @exclamdown{}
@chapter  A @sc{sc} node @"i @"{@dotless{i}} @`{@=E} @l{} @,{@\'C} @exclamdown{}

see @ref{a @strong{strong} ref with @sc{sc}@comma{} a i trema @"i@comma{} a dotless i trema @"{@dotless{i}} @`{@=E} and exclamdown @exclamdown{},,,manual}.

@xref{A @sc{sc @~n @aa{} @TeX{}} node @"i @"{@dotless{i}} @`{@=E} @l{} @,{@\'C} @exclamdown{}}.
'],
['refs_formatting',
'@node chapter
@chapter chapter

@code{@@ref@{chapter,cross ref name@}} @ref{chapter,cross ref name}
@code{@@ref@{chapter,,title@}} @ref{chapter,,title}
@code{@@ref@{chapter,,,file name@}} @ref{chapter,,,file name}
@code{@@ref@{chapter,,,,manual@}} @ref{chapter,,,,manual}
@code{@@ref@{chapter,cross ref name,title,@}} @ref{chapter,cross ref name,title,}
@code{@@ref@{chapter,cross ref name,,file name@}} @ref{chapter,cross ref name,,file name}
@code{@@ref@{chapter,cross ref name,,,manual@}} @ref{chapter,cross ref name,,,manual}
@code{@@ref@{chapter,cross ref name,title,file name@}} @ref{chapter,cross ref name,title,file name}
@code{@@ref@{chapter,cross ref name,title,,manual@}} @ref{chapter,cross ref name,title,,manual}
@code{@@ref@{chapter,cross ref name,title, file name, manual@}} @ref{chapter,cross ref name,title, file name, manual}
@code{@@ref@{chapter,,title,file name@}} @ref{chapter,,title,file name}
@code{@@ref@{chapter,,title,,manual@}} @ref{chapter,,title,,manual}
@code{@@ref@{chapter,,title, file name, manual@}} @ref{chapter,,title, file name, manual}
@code{@@ref@{chapter,,,file name,manual@}} @ref{chapter,,,file name,manual}

@code{@@ref@{(pman)anode,cross ref name@}} @ref{(pman)anode,cross ref name}
@code{@@ref@{(pman)anode,,title@}} @ref{(pman)anode,,title}
@code{@@ref@{(pman)anode,,,file name@}} @ref{(pman)anode,,,file name}
@code{@@ref@{(pman)anode,,,,manual@}} @ref{(pman)anode,,,,manual}
@code{@@ref@{(pman)anode,cross ref name,title,@}} @ref{(pman)anode,cross ref name,title,}
@code{@@ref@{(pman)anode,cross ref name,,file name@}} @ref{(pman)anode,cross ref name,,file name}
@code{@@ref@{(pman)anode,cross ref name,,,manual@}} @ref{(pman)anode,cross ref name,,,manual}
@code{@@ref@{(pman)anode,cross ref name,title,file name@}} @ref{(pman)anode,cross ref name,title,file name}
@code{@@ref@{(pman)anode,cross ref name,title,,manual@}} @ref{(pman)anode,cross ref name,title,,manual}
@code{@@ref@{(pman)anode,cross ref name,title, file name, manual@}} @ref{(pman)anode,cross ref name,title, file name, manual}
@code{@@ref@{(pman)anode,,title,file name@}} @ref{(pman)anode,,title,file name}
@code{@@ref@{(pman)anode,,title,,manual@}} @ref{(pman)anode,,title,,manual}
@code{@@ref@{(pman)anode,,title, file name, manual@}} @ref{(pman)anode,,title, file name, manual}
@code{@@ref@{(pman)anode,,,file name,manual@}} @ref{(pman)anode,,,file name,manual}

@code{@@inforef@{chapter, cross ref name, file name@}} @inforef{chapter, cross ref name, file name}
@code{@@inforef@{chapter@}} @inforef{chapter}
@code{@@inforef@{chapter, cross ref name@}} @inforef{chapter, cross ref name}
@code{@@inforef@{chapter,,file name@}} @inforef{chapter,,file name}
'],
['top_in_ref',
$top_in_ref_text
],
['ref_error_formatting',
'
@code{@@ref@{node@}} @ref{node}

@code{@@ref@{,cross ref name@}} @ref{,cross ref name}
@code{@@ref@{,,title@}} @ref{,,title}
@code{@@ref@{,,,file name@}} @ref{,,,file name}
@code{@@ref@{,,,,manual@}} @ref{,,,,manual}
@code{@@ref@{node,cross ref name@}} @ref{node,cross ref name}
@code{@@ref@{node,,title@}} @ref{node,,title}
@code{@@ref@{node,,,file name@}} @ref{node,,,file name}
@code{@@ref@{node,,,,manual@}} @ref{node,,,,manual}
@code{@@ref@{node,cross ref name,title,@}} @ref{node,cross ref name,title,}
@code{@@ref@{node,cross ref name,,file name@}} @ref{node,cross ref name,,file name}
@code{@@ref@{node,cross ref name,,,manual@}} @ref{node,cross ref name,,,manual}
@code{@@ref@{node,cross ref name,title,file name@}} @ref{node,cross ref name,title,file name}
@code{@@ref@{node,cross ref name,title,,manual@}} @ref{node,cross ref name,title,,manual}
@code{@@ref@{node,cross ref name,title, file name, manual@}} @ref{node,cross ref name,title, file name, manual}
@code{@@ref@{node,,title,file name@}} @ref{node,,title,file name}
@code{@@ref@{node,,title,,manual@}} @ref{node,,title,,manual}
@code{@@ref@{node,,title, file name, manual@}} @ref{node,,title, file name, manual}
@code{@@ref@{node,,,file name,manual@}} @ref{node,,,file name,manual}
@code{@@ref@{,cross ref name,title,@}} @ref{,cross ref name,title,}
@code{@@ref@{,cross ref name,,file name@}} @ref{,cross ref name,,file name}
@code{@@ref@{,cross ref name,,,manual@}} @ref{,cross ref name,,,manual}
@code{@@ref@{,cross ref name,title,file name@}} @ref{,cross ref name,title,file name}
@code{@@ref@{,cross ref name,title,,manual@}} @ref{,cross ref name,title,,manual}
@code{@@ref@{,cross ref name,title, file name, manual@}} @ref{,cross ref name,title, file name, manual}
@code{@@ref@{,,title,file name@}} @ref{,,title,file name}
@code{@@ref@{,,title,,manual@}} @ref{,,title,,manual}
@code{@@ref@{,,title, file name, manual@}} @ref{,,title, file name, manual}
@code{@@ref@{,,,file name,manual@}} @ref{,,,file name,manual}

@code{@@inforef@{,cross ref name @}} @inforef{,cross ref name }
@code{@@inforef@{,,file name@}} @inforef{,,file name}
@code{@@inforef@{,cross ref name, file name@}} @inforef{,cross ref name, file name}
@code{@@inforef@{@}} @inforef{}

@code{@@inforef@{node, cross ref name, file name@}} @inforef{node, cross ref name, file name}
@code{@@inforef@{node@}} @inforef{node}
@code{@@inforef@{node, cross ref name@}} @inforef{node, cross ref name}
@code{@@inforef@{node,,file name@}} @inforef{node,,file name}
'],
['ref_in_sectioning',
'@contents

@node Top
@top for example @ref{node} (@pxref{node}) (@pxref{Top,,, file, Manual})

@menu
* node::
* chap::
@end menu

@node node
@chapter @xref{node,,title, file name, Manual}.

@node chap
@chapter @ref{node} just node

@section for example @ref{node} (@pxref{node}) (@pxref{Top,,, file, Manual})

@section @ref{node, cross ref name}  node, crossref arg2

@section @ref{@code{node},, @samp{title}}  code node, samptitle arg3

@section @ref{@code{node},,, file name} code node, file name

@section @ref{node,,,, Manual } node and manual

@section @ref{Top,,,, Manual } Top and manual

@section @ref{,,,, Manual } no node just manual

@section @ref{,,, file name} no node just file name

@section @inforef{a, b, c} inforef a b c 

@section (@pxref{ Top ,,, file name }) pxref Top file name, spaces

@section (@pxref{,,, file name }) pxref file name only, spaces

@section @xref{Top,,,filename}, xref Top filename only, no spaces

@section @xref{,,,filename}. xref filename only, no spaces

'],
['unknown_value',
'@value{unknown}'],
['test_sp',
'Para
@sp 1
other para
Now lone @@sp:

@sp 1

@sp 2
Para after sp

A
@sp 2
B

sp after para
@sp 1
'],
['sp_in_example',
'@example
Para
@sp 1
other para
Now lone @@sp:

@sp 1

@sp 2
Para after sp

A
@sp 2
B

sp after para
@sp 1
@end example
'],
['line_breaks',
'@documentdescription 
a document @* yes!
@end documentdescription

@settitle the manual @* new version
@title AWK As A Major Systems Programming @* Language---Revisited

@center in center @* line break

@table @strong
@item with break @* after
@itemx withx breakx @* afterx
Text
@end table

@quotation Q@* uotation
T
@end quotation
', {}, {'SHOW_TITLE' => 1}],
['test_deftypefnnewline',
'@setfilename test_deftypefnnewline.info

@deftypefnnewline on

@node Top
@top top

@node chapter
@chapter chap

@deftypefun data-type name arguments...
aaa
@end deftypefun

@deftypefn c--ategory t--ype d--eftypefn_name
d--eftypefn no arg
@end deftypefn

@deftypeop c--ategory c--lass t--ype d--eftypeop_name a--rguments...
d--eftypeop
@end deftypeop

@deftypeop c--ategory c--lass t--ype d--eftypeop_name
d--eftypeop no arg
@end deftypeop

@deftypecv c--ategory c--lass t--ype d--eftypecv_name
d--eftypecv
@end deftypecv

@deftypecv c--ategory c--lass t--ype d--eftypecv_name a--rguments...
d--eftypecv with arguments
@end deftypecv

@deffn fun arg
fff
@end deffn

@deftypefnnewline off

@deftypefun data-type2 name2 arguments2...
aaa2
@end deftypefun

@deftypefn c--ategory2 t--ype2 d--eftypefn_name2
d--eftypefn no arg2
@end deftypefn

@deftypeop c--ategory2 c--lass2 t--ype2 d--eftypeop_name2 a--rguments2...
d--eftypeop2
@end deftypeop

@deftypeop c--ategory2 c--lass2 t--ype2 d--eftypeop_name2
d--eftypeop no arg2
@end deftypeop

@deftypecv c--ategory2 c--lass2 t--ype2 d--eftypecv_name2
d--eftypecv2
@end deftypecv

@deftypecv c--ategory2 c--lass2 t--ype2 d--eftypecv_name2 a--rguments2...
d--eftypecv with arguments2
@end deftypecv

@deffn fun2 arg2
fff2
@end deffn
'],
['raw_block_commands',
$raw_commands_text,
{'EXPANDED_FORMATS' => ['tex', 'docbook', 'html', 'xml', 'latex']}
],
['raw_block_commands_expand_tex',
$raw_commands_text,
{'EXPANDED_FORMATS' => ['tex', 'docbook', 'html', 'xml', 'latex']},
{'EXPANDED_FORMATS' => ['tex']},
],
['inline',
$inline_text,
],
['inline_expand_tex',
$inline_text, {'EXPANDED_FORMATS' => ['tex']},
{'EXPANDED_FORMATS' => ['tex']},
],
['inlinefmtifelse',
'@inlinefmtifelse{html,,else html no if}.
@inlinefmtifelse{html,if html,else html}.

@inlinefmtifelse{plaintext,if plaintext no second arg}.
@inlinefmtifelse{plaintext,if plaintext,else plaintext}.

@inlinefmtifelse{xml,if xml empty second arg,}.

@inlinefmtifelse{ docbook , if docbook spaces , else docbook spaces }.

@inlinefmtifelse{ tex , if tex spaces , else tex spaces }.

@inlinefmtifelse{docbook,if docbook,else docbook}.

@inlinefmtifelse{tex,if tex,else tex}.

@inlinefmtifelse{latex,if latex,else latex}.
',
{'EXPANDED_FORMATS' => []}
],
['inlineifsetifclear',
'@inlineifclear{aaa, iclear first }.

@inlineifset{aaa, ifset first }.

@set aaa

@inlineifclear{aaa, ifclear second }.

@inlineifset{aaa, ifset second }.
'],
['table_in_display_in_example',
'@example
@display
@table @asis
@item item
Line
@end table
@end display
@end example
'],['table_in_example_in_display',
'@display
@example
@table @asis
@item item
Line
@end table
@end example
@end display
'],
['complex_nestings',
'@node Top
@top top

@node chap
@chapter Chapter

@example
deffs
@defun {my def} args @var{arg} @dots{}
@defunx {other def} no args
@deffn {type} {name} and now the args
@defvar {variables} variable-name

@defvarx {variables too} other-variable
THis is the defvar

A table within the def
@table @asis
@item item
text

more text
@item second item
@end table

explanation
@end defvar
@end deffn
@end defun

@end example
'],
['image_with_spaces',
'@image{f--ile,,,@ }.
@image{f--ile,,,@:}.
'],
['image_extension',
'@image{f---ile,,,,.gr--a}
'],
['image_formatting',
'@node Top
@top top

@node chap
@chapter Chapter

@code{@@image@{f--ile@}} @image{f--ile}
@code{@@image@{f--ile,l--i@}} @image{f--ile,l--i}
@code{@@image@{f--ile,,l--e@}} @image{f--ile,,l--e}
@code{@@image@{f--ile,,,alt@}} @image{f--ile,,,alt}
@code{@@image@{f--ile,,,,e-d-xt@}} @image{f--ile,,,,e--xt}
@code{@@image@{f--ile,aze,az,alt,e--xt@}} @image{f--ile,aze,az,alt,e--xt}
@code{@@image@{f-ile,aze,,a--lt@}} @image{f-ile,aze,,a--lt}
@code{@@image@{@@file@{f--ile@}@@@@@@.,aze,az,alt,@@file@{file ext@} e--xt@@@}} @image{@file{f--ile}@@@.,aze,az,alt,@file{file ext} e--xt@}}
@image{image} @image{image}

@example
@code{@@image@{f--ile@}} @image{f--ile}
@code{@@image@{f--ile,l--i@}} @image{f--ile,l--i}
@code{@@image@{f--ile,,l--e@}} @image{f--ile,,l--e}
@code{@@image@{f--ile,,,alt@}} @image{f--ile,,,alt}
@code{@@image@{f--ile,,,,e-d-xt@}} @image{f--ile,,,,e--xt}
@code{@@image@{f--ile,aze,az,alt,e--xt@}} @image{f--ile,aze,az,alt,e--xt}
@code{@@image@{f-ile,aze,,a--lt@}} @image{f-ile,aze,,a--lt}
@code{@@image@{@@file@{f--ile@}@@@@@@.,aze,az,alt,@@file@{file ext@} e--xt@@@}} @image{@file{f--ile}@@@.,aze,az,alt,@file{file ext} e--xt@}}
@image{image} @image{image}
@end example

@image{f--ile,,,a very long alt argument that could span more than one line who knows}

in para
@image{f--ile,,,a very long alt argument that could span more than one line who knows}.
'],
['enumerate_above_ten',
'@enumerate 14
@item a
@end enumerate
'],
['footnote_no_number',
'@node Top
@top top

@node chap
@chapter Chapter

Para@footnote{Footnote 1.}.

Para2@footnote{Footnote 2.}.
',{} , {'NUMBER_FOOTNOTES' => 0}],
['footnote_no_number_separate',
'@node Top
@top top

@node chap
@chapter Chapter

Para@footnote{Footnote 1.}.

Para2@footnote{Footnote 2.}.
',{} , {'NUMBER_FOOTNOTES' => 0, 'footnotestyle' => 'separate'}],
['things_before_setfilename',
undef, {'test_file' => 'things_before_setfilename.texi'}
],
['things_before_setfilename_no_element',
undef, {'test_file' => 'things_before_setfilename_no_element.texi'}
],
['spaces_in_node_names',
'@node Top

@menu
* a@ @ ::
* b@verb{:  :}::
* c@ ::
@end menu

@node a@ @ 

@node b@verb{:  :}

@node c@w{  }

@ref{a@ @ }

@ref{b@verb{:  :}}

@ref{c@w{  }}
'],
['spaces_in_empty_node_names',
'@node Top

@menu
* @ @ ::
* @verb{:  :}::
* @ ::
@end menu

@node @ @ 

@node @verb{:  :}

@node @w{  }

@ref{@ @ }

@ref{@verb{:  :}}

@ref{@w{  }}
'],
['normal_font_in_monospace',
'@example
in example @r{in r---now @code{in co---de}}
@end example

@command{in command---c @r{in r---r @file{in file---}}}.
'],
['index_entry_in_preformatted',
'@node Top
@top top

@node chap
@chapter Chapter

@example
@cindex first
text

@cindex other @c comment
text2
@cindex last
@end example
'],
['printindex_merged_indices_code_style',
'@node Top
@top top

@node chap
@chapter Chapter

@synindex cp fn

@synindex vr fn

@cindex c``b

@vindex v``j

@findex f``g

@defcodeindex cdi

@synindex cdi fn

@cdiindex cdi``h

@defindex ddi

@syncodeindex ddi cp

@ddiindex ddi``g

@printindex fn
'],
['email_table_command_as_argument',
'@table @email
@item www-discuss@@gnu.org
discussion
@end table
'],
['at_commands_in_raw',
'@node Top
@top top

@macro othermacro{}
Other macro
@end macro

@node chap
@chapter Chapter

@html
<b>in b@footnote{in footnote}.</b>
@anchor{anchor in html}
@end html
@kbd{in kbd before tex}@footnote{second footnote}.

@tex
@kbdinputstyle code
in tex@footnote{footnote in tex}
@anchor{anchor in tex}
@cindex entry
@findex fentry1

@float Figs, f1
Float
@caption{Fcaption}
@end float

@menu
* n::
@end menu

@acronym{FF, Fi Foo}

@synindex cp fn

@defindex new

@definfoenclose a,:,:

@alias moviecite = cite

@documentlanguage fr

@errormsg{mymsg}

@ref{Somewhere}.

@set flag soemthing

@macro mymacro{}
truc
@end macro

@macro macroarg{arg}
Some \arg\.
@end macro

@unmacro othermacro

@end tex



@value{flag}.

@kbd{in kbd after tex}.

@xref{anchor in html}.

@ref{anchor in tex}.
@findex fentry2

@newindex newidx entry

@printindex cp
@printindex fn

@listoffloats Figs

@acronym{FF}.

@a{tt}.

@moviecite{movie name}

Macro not unmacroed @othermacro{}.

Macros that should not be defined: @mymacro{}. @macroarg{with arg}.

', {'EXPANDED_FORMATS' => ['html']}, {'EXPANDED_FORMATS' => ['html']}
], 
['non_empty_part',
$non_empty_part_text
,]
);

my @html_text_cases = (
['top_in_ref_keep_top',
$top_in_ref_text,
{}, {'KEEP_TOP_EXTERNAL_REF' => 1}],
['non_empty_part_no_top_node_output',
$non_empty_part_text,
{}, {'NO_TOP_NODE_OUTPUT' => 1}],
);

my @file_tests = (
['simplest_no_node_section',
undef, {'test_file' => 'simplest_no_node_section.texi'}],
['minimal_empty_with_bye',
undef, {'test_file' => 'minimal_empty_with_bye.texi'}],
['minimal_empty_with_input',
undef, {'test_file' => 'minimal_empty_with_input.texi'}],
['minimal_empty_empty',
undef, {'test_file' => 'minimal_empty_empty.texi'}],
['empty',
undef, {'test_file' => 'empty.texi'}],
);

my %info_tests = (
 'image_with_spaces' => 1,
 'image_extension' => 1,
 'image_formatting' => 1,
 'footnote_no_number' => 1,
 'footnote_no_number_separate' => 1,
 'some_at_commands_in_ref_nodes' => 1,
 'things_before_setfilename' => 1,
 'things_before_setfilename_no_element' => 1,
 'spaces_in_node_names' => 1,
 'spaces_in_empty_node_names' => 1,
  'non_empty_part' => 1,
);

my %html_tests = (
 'things_before_setfilename' => 1,
 'things_before_setfilename_no_element' => 1,
 'line_breaks' => 1,
);

my %docbooc_doc_tests = (
 'line_breaks' => 1,
);

# this is temporary, all the files in @test_cases should go
# through the LaTeX converter
my %latex_tests = (
  'accent_with_text' => 1,
  'empty_accent' => 1,
  'some_at_commands_in_ref_nodes' => 1,
  'refs_formatting' => 1,
  'top_in_ref' => 1,
  'ref_error_formatting' => 1,
  'ref_in_sectioning' => 1,
  'inline' => 1,
  'test_sp' => 1,
  'non_empty_part' => 1,
);

foreach my $test (@test_cases) {
  push @{$test->[2]->{'test_formats'}}, 'plaintext';
  if ($html_tests{$test->[0]}) {
    push @{$test->[2]->{'test_formats'}}, 'html';
  } else {
    push @{$test->[2]->{'test_formats'}}, 'html_text';
  }
  push @{$test->[2]->{'test_formats'}}, 'xml';
  if ($docbooc_doc_tests{$test->[0]}) {
    push @{$test->[2]->{'test_formats'}}, 'docbook_doc';
  } else {
    push @{$test->[2]->{'test_formats'}}, 'docbook';
  }
  push @{$test->[2]->{'test_formats'}}, 'latex'
    if ($latex_tests{$test->[0]});
  push @{$test->[2]->{'test_formats'}}, 'info'
    if ($info_tests{$test->[0]});
}

foreach my $test (@html_text_cases) {
  push @{$test->[2]->{'test_formats'}}, 'html_text';
}

foreach my $test (@file_tests) {
  push @{$test->[2]->{'test_formats'}}, 'file_html';
  push @{$test->[2]->{'test_formats'}}, 'file_info';
  push @{$test->[2]->{'test_formats'}}, ('file_xml', 'file_docbook', 'file_latex');
}

run_all('converters_tests', [@test_cases, @html_text_cases, @file_tests]);
