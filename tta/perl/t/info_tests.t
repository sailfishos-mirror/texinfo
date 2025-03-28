use strict;

use lib '.';
use Texinfo::ModulePath (undef, undef, undef, 'updirs' => 2);

require 't/test_utils.pl';

my $invalid_node_name_text = '
@node Top

@menu
* @asis{truc:}: @asis{nodename. a}
* machin: node@comma{}comma, def
* @asis{bidule:}::
@end menu

@node @asis{nodename. a}

@node node@comma{}comma

@node @asis{bidule:}

@ref{@asis{nodename. a}, @asis{truc:}}. @ref{node@comma{}comma, machin}.
@ref{@asis{bidule:}}.
';

my @test_cases = (
['no_nodes',
'Text.'],
['no_top_node',
'@node node Top not Top node
'],
['paragraphindent_and_preamble',
'@copying
In copying.

Copying second para.
@end copying

@paragraphindent 1

After paragraphindent.

@node Top
@top test @@paragraphindent in preamble effect in preamble

First para.

Second para.

@bye

', {'full_document' => 1}],
['two_paragraphindent_in_preamble',
'@copying
In copying.

Copying second para.
@end copying

@paragraphindent 1

@paragraphindent 6

After two paragraphindent.

@node Top
@top test @@paragraphindent in preamble effect in preamble

First para.

Second para.

@bye

', {'full_document' => 1}],
['paragraphindent_in_preamble_and_in_document',
'@copying
In copying.

Copying second para.
@end copying

@paragraphindent 1

After paragraphindent.

@node Top
@top test @@paragraphindent in preamble effect in preamble

First para.

Second para.

@paragraphindent 3

Third para after second paragraphindent.

@bye

', {'full_document' => 1}],
['two_paragraphindent_in_preamble_and_in_document',
'@copying
In copying.

Copying second para.
@end copying

@paragraphindent 1

@paragraphindent 6

After two paragraphindent.

@node Top
@top test @@paragraphindent in preamble effect in preamble

First para.

Second para.

@paragraphindent 3

Third para after third paragraphindent.

@bye

', {'full_document' => 1}],
['paragraphindent_not_in_preamble',
'@copying
In copying.

Copying second para.
@end copying

@node Top
@top test @@paragraphindent effect in preamble

First para.

Before paragraphindent.

@paragraphindent 1

After paragraphindent.

@bye

', {'full_document' => 1}],
['paragraphindent_asis_first',
'
     bbb

@paragraphindent asis
     ccc
'],
['paragraphindent_none_first',
'
      first

      second

@paragraphindent none

      after none
'],
['space_at_menu_end',
'@node Top

@menu
* (out)::

@end menu

A para.
'],
['space_in_menu',
'@node Top
@top Element

Text.

@menu
* node::           
@end menu

@node node
@chapter node

in chapter.
'],
['text_before_node',
'@node Top
@top top

@menu
* chapter node::
@end menu

text.
@node chapter node
@chapter chapter'
],
['ref_tests',
'
@node Top

@ref{(m)in ref followed by comma}, 
@ref{(m)in ref not followed by comma} after ref.
@code{@ref{(m)in ref followed by end command}}.


@ref{(m)in ref followed by comma, name},
@ref{(m)in ref not followed by comma, name} after ref.
@code{@ref{(m)in ref followed by end command, name}}.
@ref{(m)in ref ending with a dot., name} after ref.

'],
['xref_test',
'
@node Top

@xref{(m)in xref}. @xref{(m)bad xref} after xref.
@code{@xref{(m)bad nested xref}}.
@xref{(m)in ref ending with a dot., name} ! after xref and dot inside.
@xref{(m)in ref followed by symbol}# g.
'],
['pxref_test',
'@node Top

Hey (@pxref{(m) in pxref}) and continue (@pxref{(m) in pxref, name}) and end.
@pxref{(m) n}. @pxref{(m) n, name}.
'],
['del_quote_linebreaking',
'first para

xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx @xref{noxde,,, manual,Manual}

xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx @xref{noxde,,, manual,Manual}

xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx @xref{noxde,,, manual,Manual}

%

xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx @xref{no:de,,, manual,Manual}

xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx @xref{no:de,,, manual,Manual}

xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx @xref{no:de,,, manual,Manual}

', undef,
{'INFO_SPECIAL_CHARS_WARNING' => 0,}
],
# the external node direction is there to be able to check the tree to
# see that it gets a 'normalized' extra information, while the external
# xref do not.
['similar_external_and_internal_node',
'@node aa, (toto)bb

@xref{@emph{aa},,,ext}.
@xref{@var{aa},,,,Book}.
@xref{@emph{aa}}.
@xref{@var{aa}}.
'],
['xref_quote_long_item',
'@table @asis

@item @code{@@verbatiminclude}
@xref{Texinfo::Convert::Utils $tree = expand_verbatiminclude($registrar@comma{} $configuration_information@comma{} $verbatiminclude),,
Texinfo::Convert::Utils::expand_verbatiminclude, tp_api}.

@end table
',{},
{'INFO_SPECIAL_CHARS_WARNING' => 0,}],
['anchor_in_command',
'@node Top

@strong{aaa @TeX{} @emph{in emph} after 
@c emph @emph{emph2 @anchor{anchor in emph} }}.
emph @emph{emph2 @anchor{anchor in emph}}}.
'],
['anchor_and_spaces',
'@node Top
@top Element
@anchor{anchor 0}

Now @anchor{anchor1}.

No space@anchor{anchor2}.
'],
['before_node_and_section',
'Garbage
ref to Top @ref{Top}.
@cindex index entry before anything 
Hey@footnote{a footnote}.
An anchor @anchor{anchor1}.

@menu
* node1::
@end menu

@node Top
@top top @@top section
Node top

ref to anchor1@footnote{another footnote}, which is before @@node Top: @ref{anchor1}.
@menu
* node1::
@end menu

@node node1
@chapter node1 chapter

@printindex cp

'],
['image_text_file_only_and_alt',
'@node Top

@image{text_only_image,,,alt}
'],
['image_quotes',
'@node Top

@image{f--ile,,,alt""\\}
'],
['image_in_paragraph',
'@node Top

Para.
@image{f--ile,,,alt""\\}. End para.
'],
['image_not_found',
'@node Top
@image{n_f_image}
'],
['image_extension',
'@node Top

@image{fext,,,,ext}
@image{fdotext,,,,ext}
@image{f--ile,,,,ext}
'],
['image_text_encoded',
'@documentencoding utf-8

@image{image_encoded}
'],
['image_and_spaces_formatting',
'@node Top

@image{words} @image{words} @image{words} @image{words} @image{words} @image{words} @image{words}

Some text @image{words} @image{words} @image{words} @image{words} @image{words} @image{words} @image{words}.

Some text @image{words} text aaaaaaaaa @image{words} text bbbbbbbbbbb @image{words} text ccccccccccccc @image{words} text ddddddddddddd @image{words} text eeeeeeeeeeeeeee @image{words} text fffffffffff @image{words}.

AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA @image{words}

AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABBBBBBBB @image{words}

Text. @image{words}       @image{words}.

'],
['image_and_punctuation',
'@node Top

One space. @image{f--ile}.

Two spaces.  @image{f--ile}.

End line.
@image{f--ile}.

One space. @image{words}.

Two spaces.  @image{words}.

End line.
@image{words}.
'],
[ 'multitable_anchor_and_index_entry',
'@node Top

@multitable @columnfractions 0.4 0.6
@headitem mu--ltitable headitem @tab another tab
@item mu--ltitable item @tab multitable tab
@c comment in multitable
@item mu--ltitable item 2 @tab multitable tab 2
@cindex index entry within multitable
@anchor{anchor in multitable}
@item lone mu--ltitable item
@end multitable

@multitable {A} {B}
@item A
B

C
@tab G
@item lsfd mlkdsf lk s
mlsdmjlfdsjm mdsfk 
@cindex index entry
@item lsfd2 mlkdsf2 lk2 s2
mlsdmjlfdsjm mdsfk2
@tab ATTTTTTTTTTTTTTTTTTTTT
BTTTTTTt @anchor{mark}

CTTTTTT

@end multitable

@printindex cp
@ref{mark}
@ref{anchor in multitable}
'],
['note_in_strong',
'@node Top

3 One @strong{Note}.

5 @strong{Note a}.



9 @strong{note}.

11 @strong{note b}.

13 @strong{ note}.

15 @strong{note-bbb}.
'],
['note_in_strong_end_of_line',
'@node Top

bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb vvvvvvvvvvvvvvvv @strong{note a}

bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb vvvvvvvvvvvvvvvv @strong{note
a}
'],
['nested_multitable_anchor_index',
'@node Top

@multitable {truc AAAA   machin}    {bidule}
@item
@multitable {AAAA} {machin}
@item AAAA @tab machin @anchor{mark inside}
@cindex index entry inside
@end multitable
 @tab bidule
@item other item @tab in tab @anchor{mark}
@cindex index entry
@end multitable

@printindex cp

@xref{mark}.
@xref{mark inside}.
'],
['def_in_copying',
'@macro mymacro
@deffn aa bb cc
@deffnx aax bbx ccx
deffnx lines
@end deffn
@end macro

@node Top
@top Test for definition commands

@copying
In copying
@mymacro{}
@end copying

In text
@mymacro{}

@printindex fn
'],
['file_only_png',
'@node Top

Just before an image @image{this_is_a_long_unknown_file} text after the image, and more text, and more @image{this_is_a_long_unknown_file} text.
'],
['float_long_captions',
'@node Top

@float Text, text1
@caption{AAAAAAAAAAAAAAAA BBBBB CCCCCCCCCCC}
@end float

@float Text, text2
@caption{AAAAAAAAAAAAAAAA BBBBBB CCCCCCCCCCC}
@end float

@listoffloats Text
'],
['error_in_footnote',
'
@node Top

@float Text, label

Float text1

@caption{Caption. @TeX. 
In caption @strong{note caption}.  
Now footnote@footnote{@LaTeX. 
and strong @strong{Note footnote}.}}
@end float

@listoffloats Text

@listoffloats Text
'],
['nested_footnotes_separate',
'@footnotestyle separate
@node Top

F@footnote{F1

V@footnote{F2}
}
'],
['encoding_us_ascii',
'
@documentencoding US-ASCII

@node Top

'],
['known_encoding',
'
@documentencoding latin1

@node Top

'],
['unknown_encoding',
'
@documentencoding ggg

@node Top

'],
['top_node_normalization',
'@node ToP

@xref{TOP}. @xref{tOP}.

@menu
* tOP::
@end menu
'],
# since there is no split in the test suite, there is no split tested
# here, in fact.
['split_no_copying',
'\input texinfo
@setfilename split_no_copying.info

@node Top
@top Top

This is the top node.

@menu
* Ch1::
@end menu

@node Ch1
@chapter Ch1

First chapter.

@bye

',{},{'SPLIT_SIZE' => 10}],
['no_node_but_top',
'@top top
'],
['space_in_setfilename',
'@setfilename @ @verb{: name :}@ 

@node Top
'],
['novalidate_empty_refs',
'
@novalidate

@node Top

@xref{@:}.
@xref{@asis{ }}.

@node @
@node @:
@node @asis{ }
'],
['invalid_node_name_warning',
$invalid_node_name_text
],
['invalid_node_name_no_warning',
$invalid_node_name_text,
{},{'INFO_SPECIAL_CHARS_WARNING' => 0}
],
['only_documentencoding',
'@documentencoding ISO-8859-1'],
['direntry_dircategory_and_commands',
'@dircategory ``category---@var{th  ere}?\'\'
@direntry
* foo: (foo).   ``hello---@var{there}?\'\'
@end direntry

@dircategory cat2
@direntry
* aaa ::               aaaa
                   bbbbb

menutitle
@end direntry


@node Top
@top Test dircategory and direntry

Text
'],
['colon_in_index_entry',
'@node Top

@synindex vr cp

@cindex a:b

@vtable @emph
@item %main::value
@end vtable

@defvr {a:b} {c:d} e f
@defvrx {x:y} {z:t} n m o
@end defvr

@printindex cp
'],
['test_index',
'@node Top
@top Element top

@xref{a counting anchor}.

before menu.
@cindex in Top
@cindex @@
@cindex @exclamdown{}
@cindex "

@deffn fset @var{i} a g
@deffnx truc machin bidule chose

@end deffn

@ftable @emph
@item a fun
Var text

@item second fun
@itemx itemx fun

@end ftable

@menu
* name::
* name1 looooooooooooooooooooooooooooooooooooooooooooooooooooooooong::
@end menu

@node name
@chapter A chapter

@cindex index entry looooooooooooooooooooooooooooooooooooooooooooooooooooooooong
@findex function index entry

A paragraph 
@findex other function
end paragraph

a

a

a

a

a

@findex after lines.

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

b

@findex after more than 100 lines

@node name1 looooooooooooooooooooooooooooooooooooooooooooooooooooooooong
@appendix Index

@cindex index entry in appendix before para
Para.

Concept index
@printindex cp

@findex index entry between indices

Functions index
@printindex fn

@appendixsec appendixsec

@appendixsubsec appendixsubsec

@appendixsubsubsec appendixsubsubsec

@chapheading chapheading

@centerchap centerchap

@chapter chapter end

@cindex index in chapter end

@anchor{a counting anchor}

@bye
'],
['index_entry_at_end_node',
'@node Top
@top Element


@menu
* chapter::
* indices::
@end menu

@node chapter
@chapter Chapter



@cindex index entry

@node indices
@appendix indices

@printindex cp
'],
['center_flush',
'@center centered

@flushleft
left and
left2

left3.


left Last
  with space.

Now anchor
@anchor{anchor in flushleft}
after anchor
@end flushleft

@flushright
right and
right2

Right3


Right last
  with space.     

Now anchor
@anchor{anchor in flushright}
after anchor
Second anchor in text @anchor{second anchor in flushright} after anchor.
@end flushright
'],
# if this test is changed, the corresponding test in t/plaintext_tests.t
# should be changed too
['multiline_image_and_align',
'@center @image{figure}

@center CCCC @image{figure} 

@center fffffffffffffffffffffffffffffffffffffff @image{figure}

@center dddd @image{figure} iiiii

@flushright
AAA
@image{figure}

BBB @image{figure} gggg @image{figure}

HHH
@image{figure} JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ
@end flushright

@center @image{figure, , , ,txt}

@center CCCC @image{figure, , , ,txt} 
  
@center fffffffffffffffffffffffffffffffffffffff @image{figure, , , ,txt}

@center dddd @image{figure, , , ,txt} iiiii

@flushright
AAA
@image{figure, , , ,txt}

BBB @image{figure, , , ,txt} gggg @image{figure, , , ,txt}

HHH
@image{figure, , , ,txt} JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ
@end flushright
'],
['empty_copying_not_ended',
'
@copying
'],
['empty_arguments',
'
@strong{}
@uref{,}
@abbr{a,}
'],
['float_without_type',
'
@node Top

@float a,
aa
@end float

@listoffloats a
'],
['empty_caption',
'
@node Top

@float a,b
aa
@caption{}
@end float

@listoffloats a
'],
# not clearly useful, the mix of counted things in one node
# may not be found elsewhere.
['one_node_counted_elements',
'Garbage
@cindex before nodes

@node one node,,,(dir)
Top node
@cindex Top node

anchor ref @anchor{ref}.

@menu
* (some_manual_name_with_gcc):: ref to gcc
@end menu


ref to ref @ref{ref}.

Some text.

@printindex cp
'],
['recursive_down_menu',
'@node Top
@top top

@node chapN
@chapter Intro

@menu
* chapN::
@end menu
', {'test_formats' => ['html']},
   {'FORMAT_MENU' => 'menu'}],
);

my @file_tests = (
['split_test_before_first_node',
'@setfilename split_test_before_first_node.info

truc machin et reuc machin  ze aze zea zae eaz eaz zae

@node Top
@top top

In top node

@menu
* chap1::
@end menu

@node chap1
@chapter chap

In chap1.

',{},{'SPLIT_SIZE' => 10}],
['split_test_before_first_node_no_empty_line',
'@setfilename split_test_before_first_node_no_empty_line.info

truc machin et reuc machin  ze aze zea zae eaz eaz zae
@node Top
@top top

In top node

@menu
* chap1::
@end menu

@node chap1
@chapter chap

In chap1.

',{},{'SPLIT_SIZE' => 10}],
['split_nocopying',
  undef, {'test_file' => '../../../tests/formatting/split_nocopying.texi',},
],
['split_nocopying_split',
  undef, {'test_file' => '../../../tests/formatting/split_nocopying.texi',},
  {'SPLIT_SIZE' => 10},
],
['direntry_dircategory',
  undef, {'test_file' => 'direntry_dircategory.texi'},
  {'SPLIT_SIZE' => 1}
],
['quote_node_names_info',
undef, {'test_file' => 'nodequote.texi',},
{'INFO_SPECIAL_CHARS_QUOTE' => 1,
 'INFO_SPECIAL_CHARS_WARNING' => 0,}
],
['end_of_line_command_in_node_lines',
# the reference to the node with two end of line is not found
# by the Info reader, but it is a feature.  References are not
# searched for too far to avoid risking to run into markup
# significant for cross-reference for text that is not cross-reference.
'@node Top
@top top

@menu
* chap @* f     nl Something? @* After punct::
* new n::
@end menu

@node chap @* f     nl Something? @* After punct
@chapter Chap

@anchor{ankh @* p}

text @* f     nl Something? @* After punct

@cindex a @* b

@printindex cp

@node new n
@chapter Ochap

@xref{chap @* f     nl Something? @* After punct}.

@xref{ankh @* p}.

@xref{ankh @* p, addll@*gg}.

@menu
* ankh @* p::
* what @* is: ankh @* p.
* what @* is: ankh p.
@end menu
'],
['chinese_mixed_with_en_EUC_CN',
undef, {'test_file' => 'chinese_mixed_with_en_EUC_CN.texi',
        'skip' => $Texinfo::ModulePath::conversion_from_euc_cn ne 'yes'
                   ? 'No conversion from EUC-CN' : undef, }
],
);

my $colons_in_index_entries_and_node = 
'@node Top

@menu
* One@asis{::}node@comma{} with entries.::
* Concept Index::
@end menu

@node One@asis{::}node@comma{} with entries.

@cindex :
@cindex :a
@cindex b:c

@example
some example just to have text
@end example

@cindex d::e
@cindex f :d
@cindex g: h

node one

@node Concept Index

@printindex cp

';

push @file_tests,
['colons_in_index_entries_and_node',
$colons_in_index_entries_and_node,
undef, {'INFO_SPECIAL_CHARS_QUOTE' => 1,
 'INFO_SPECIAL_CHARS_WARNING' => 0,}],
['colons_in_index_entries_and_node_no_quoting',
$colons_in_index_entries_and_node,
undef, {'INFO_SPECIAL_CHARS_QUOTE' => 0,
 'INFO_SPECIAL_CHARS_WARNING' => 1,}],
;

foreach my $test (@test_cases) {
  push @{$test->[2]->{'test_formats'}}, 'info';
}

foreach my $test (@file_tests) {
  push @{$test->[2]->{'test_formats'}}, 'file_info';
  $test->[2]->{'test_input_file_name'} = $test->[0] . '.texi';
  $test->[2]->{'full_document'} = 1 unless (exists($test->[2]->{'full_document'}));
}

run_all('info_tests', [@test_cases, @file_tests]);
