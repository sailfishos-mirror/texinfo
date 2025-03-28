use strict;

use lib '.';
use Texinfo::ModulePath (undef, undef, undef, 'updirs' => 2);

require 't/test_utils.pl';

my @test_cases = (
['all_commands',
'@defvr c--ategory d--efvr_name
d--efvr
@end defvr

@deffn c--ategory n--ame a--rguments...
d--effn
@end deffn

@deffn c--ategory n--ame
d--effn no arg
@end deffn

@deftypefn c--ategory t--ype d--eftypefn_name a--rguments...
d--eftypefn
@end deftypefn

@deftypefn c--ategory t--ype d--eftypefn_name
d--eftypefn no arg
@end deftypefn

@deftypeop c--ategory c--lass t--ype d--eftypeop_name a--rguments...
d--eftypeop
@end deftypeop

@deftypeop c--ategory c--lass t--ype d--eftypeop_name
d--eftypeop no arg
@end deftypeop

@deftypevr c--ategory t--ype d--eftypevr_name
d--eftypevr
@end deftypevr

@defcv c--ategory c--lass d--efcv_name
d--efcv
@end defcv

@defcv c--ategory c--lass d--efcv_name a--rguments...
d--efcv with arguments
@end defcv

@deftypecv c--ategory c--lass t--ype d--eftypecv_name
d--eftypecv
@end deftypecv

@deftypecv c--ategory c--lass t--ype d--eftypecv_name a--rguments...
d--eftypecv with arguments
@end deftypecv

@defop c--ategory c--lass d--efop_name a--rguments...
d--efop
@end defop

@defop c--ategory c--lass d--efop_name
d--efop no arg
@end defop

@deftp c--ategory d--eftp_name a--ttributes...
d--eftp
@end deftp

@defun d--efun_name a--rguments...
d--efun
@end defun

@defmac d--efmac_name a--rguments...
d--efmac
@end defmac

@defspec d--efspec_name a--rguments...
d--efspec
@end defspec

@defvar d--efvar_name
d--efvar
@end defvar

@defvar d--efvar_name arg--var arg--var1
d--efvar with args
@end defvar

@defopt d--efopt_name
d--efopt
@end defopt

@deftypefun t--ype d--eftypefun_name a--rguments...
d--eftypefun
@end deftypefun

@deftypevar t--ype d--eftypevar_name
d--eftypevar
@end deftypevar

@defivar c--lass d--efivar_name
d--efivar
@end defivar

@deftypeivar c--lass t--ype d--eftypeivar_name
d--eftypeivar
@end deftypeivar

@defmethod c--lass d--efmethod_name a--rguments...
d--efmethod
@end defmethod

@deftypemethod c--lass t--ype d--eftypemethod_name a--rguments...
d--eftypemethod
@end deftypemethod
'],
['end_of_lines_protected',
'@deffn category deffn_name arguments @
   more {args @
  with end of line within} with 3 @@ @@@
 {one last arg}
deffn
@end deffn
'],
['end_of_lines_protected_non_ascii',
undef, {'test_file' => 'end_of_lines_protected_non_ascii.texi',},
],
['empty_def_command',
'@deffn empty deffn
@end deffn

@deffn empty deffn with deffnx
@deffnx empty deffnx
@end deffn
'],
['leading_space_in_def_arg',
'@deffn category { name} arg
@end deffn
'],
['defx_after_comment',
'@deffn fset @var{i} a g
@c comment
@deffnx {truc} bidulr machin...
@end deffn'],
['inter_item_commands_in_def',
'@deffn fset @var{i} a g
@c comment before first deffnx

@deffnx Command { log trap1} {}  
@cindex between deffnx
@deffnx cmde2 @b{id @samp{i} ule} truc
@cindex cindex in deff item

In deff item.
@end deffn
'],
['inter_item_commands_in_def_in_example',
'@example
@deffn fset @var{i} a g
@c comment before first deffnx

@deffnx Command { log trap1} {}  
@cindex between deffnx
@deffnx cmde2 @b{id @samp{i} ule} truc
@cindex cindex in deff item

In deff item.
@end deffn
@end example
'],
['defx_after_empty_line',
'@deffn fset @var{i} a g

@deffnx {truc} bidulr machin...
@end deffn'],
['defx_in_example',
'@example
@deffn fset @var{i} a g
@deffnx {truc} bidulr machin...
@end deffn
@end example
'],
['defx_after_comment_in_example',
'@example
@deffn fset @var{i} a g
@c comment
@deffnx {truc} bidulr machin...
@end deffn
@end example
'],
['defx_after_empty_line_in_example',
'@example
@deffn fset @var{i} a g

@c c
@comment comment

@deffnx {truc} bidulr machin...
@end deffn
@end example
'],
['end_of_lines_protected_in_footnote',
'@footnote{
@deffn category deffn_name arguments arg2 @
   more {args @
  with end of line within} with 3 @@ @@@
 {one last arg}
deffn
@end deffn
}
'],
['all_commands_delimiters',
'@deffn Command @var{forward--char} @var{nchars} {argument2} {argument3} @
        (arg in brace, [something @var{in v--ar}, @b{in, b} {, comma} a@var{pref} p]) last
@end deffn

@defvr Variable fill-column {argument1} {argument2} @
        (arg in brace, [something @var{in v--ar}, @b{in, b} {, comma} a@var{pref} p]) last
@end defvr

@deftypefn {Library Function} int foobar (int @var{foo}, float @var{bar})
@end deftypefn

@deftypefn {Library Function} int foobar (int @var{foo}, float @var{bar}) @
        (arg in brace, {[something} @var{in v--ar}, @b{in, b} {, comma} a@var{pref} p]) ct@*@* last
@end deftypefn

@deftypefn {Library Function} int foobug {[something}
@end deftypefn

@deftypefn stacks private push (@var{s}:in out stack; @
                 @var{n}:in integer) ; ;barg aarg; ; end
@end deftypefn

@deftypevr {Global Flag} int enable @
        (arg in brace, [something @var{in v--ar}, @b{in, b} {, comma} a@var{pref} p]) last
@end deftypevr

@deftp {Data type} pair car cdr @
        (arg in brace, [something @var{in v--ar}, @b{in, b} {, comma} a@var{pref} p]) last
@end deftp

@defcv {Class Option} Window border-pattern @
        (arg in brace, [something @var{in v--ar}, @b{in, b} {, comma} a@var{pref} p]) last
@end defcv

@deftypecv {Class Option2} Window @code{int} border-pattern @
        (arg in brace, [something @var{in v--ar}, @b{in, b} {, comma} a@var{pref} p]) last
@end deftypecv

@defop Operation windows expose @
        (arg in brace, [something @var{in v--ar}, @b{in, b} {, comma} a@var{pref} p]) last
@end defop

@deftypeop Operation2 W,indow @code{int} expose @
        (arg in brace, [something @var{in v--ar}, @b{in, b} {, comma} a@var{pref} p]) last
@end deftypeop

@deftypeop Operation5 Window @code{int} expose type arg
@end deftypeop

@deftypeop Operation3 {W,indow} @code{int} {e,xpose} type arg
@end deftypeop

@deftypeop Operation4 {,Window} @code{int} {,expose} type arg
@end deftypeop

@deftypeop Operation6 W,indow @code{int} e,xpose type arg
@end deftypeop

@deftypeop Operation7 ,Window @code{int} ,expose type arg
@end deftypeop

@deftypeop Operation13 {W)indow} @code{int} {e)xpose} type arg
@end deftypeop

@deftypeop Operation14 {)Window} @code{int} {)expose} type arg
@end deftypeop

@deftypeop Operation16 W)indow @code{int} e)xpose type arg
@end deftypeop

@deftypeop Operation17 )Window @code{int} )expose type arg
@end deftypeop

@deftypeop Operation18 {W;indow} @code{int} {e;xpose} type arg
@end deftypeop

@deftypeop Operation19 {;Window} @code{int} {;expose} type arg
@end deftypeop

@deftypeop Operation20 W;indow @code{int} e;xpose type arg
@end deftypeop

@deftypeop Operation21 ;Window @code{int} ;expose type arg
@end deftypeop

@deftypeop Command@code{com} {Window@code{int}} expose@var{exp} name
@end deftypeop

@defun apply function &rest arguments
@end defun

@deffn @var{A1} @var{A2} @var{A3} @var{A4}
@end deffn

@deffn @code{A1} @code{A2} @code{A3} @code{A4}
@end deffn

@defvr @var{A1} @var{A2} @var{A3} @var{A4}
@end defvr

@defvr @code{A1} @code{A2} @code{A3} @code{A4}
@end defvr

@deftypefn @var{A1} @var{A2} @var{A3} @var{A4} @var{A5}
@end deftypefn

@deftypefn @code{A1} @code{A2} @code{A3} @code{A4} @code{A5}
@end deftypefn

@deftypevr @var{A1} @var{A2} @var{A3} @var{A4} @var{A5}
@end deftypevr

@deftypevr @code{A1} @t{A2} @code{A3} @code{A4} @code{A5}
@end deftypevr

@deftp @var{A1} @var{A2} @var{A3} @var{A4}
@end deftp

@deftp @code{A1} @code{A2} @code{A3} @code{A4}
@end deftp

@defcv @var{A1} @var{A2} @var{A3} @var{A4} @var{A5}
@end defcv

@deftp @code{A1} @code{A2} @code{A3} @code{A4} @code{A5}
@end deftp

@deftypecv @var{A1} @var{A2} @var{A3} @var{A4} @var{A5} @var{A6}
@end deftypecv

@deftypecv @code{A1} @code{A2} @option{A3} @code{A4} @code{A5} @code{A6}
@end deftypecv

@defop @var{A1} @var{A2} @var{A3} @var{A4} @var{A5}
@end defop

@defop @code{A1} @code{A2} @code{A3} @code{A4} @code{A5}
@end defop

@deftypeop @var{A1} @var{A2} @var{A3} @var{A4} @var{A5} @var{A6}
@end deftypeop

@deftypeop @code{A1} @code{A2} @code{A3} @code{A4} @code{A5} @code{A6}
@end deftypeop

@deftypefn {code then var} {ret_type} {fun_name} @code{A1} @var{A2} @code{A3} @var{A4}
@end deftypefn

@deftypefn {var then code} {ret_type1} {fun_name1} @var{A1} @code{A2} @var{A3} @code{A4}
@end deftypefn
'],
['protected_brace',
'@deffn c @{
@end deffn
'],
['ref_in_def',
'
@node first

@deffn @ref{myanchor} @ref{myanchor} {@pxref{myanchor}} @pxref{myanchor} @pxref{myanchor}
@deffnx @ref{myanchor} @ref{myanchor} {@pxref{myanchor}} @pxref{myanchor} @pxref{myanchor}
T
@end deffn

@anchor{myanchor}
'],
['def_groupings_args',
'@deffn a b@code{aa}c
@end deffn

@deffn a@samp{g1}
@end deffn

@deffn @var{var}c {br @samp{s}} c@code{arg})
@end deffn
']
);

my @test_info = (
['space_in_def_for_index',
'@node Top
@node chap

@deffn { Category } { name } { argument } argument2...
@deffnx {AAA1} {AAA2} arg3
@end deffn

@printindex fn
'],
['all_empty_def',
'@deffn
@end deffn

@defvr
@end defvr

@deftypefn
@end deftypefn

@deftypeop
@end deftypeop

@deftypevr
@end deftypevr

@defcv
@end defcv

@deftypecv
@end deftypecv

@defop
@end defop

@deftp
@end deftp
'],
['bracketed_arg_no_space',
'@deffn {a b}{c d} {e g}h m{ll } {rest}{and more}
@end deffn
'],
);

my @test_defblock = (
['defline_no_params',
'@defblock
@defline Builtin truc
Description of truc
@end defblock
'],
['adjacent_defline',
'@defblock
@defline Funoid foo (bar)
@defline Funnyoid foo2 (bar2, baz2)
description
@end defblock
'],
['multiple_defline',
'@defblock
@defline Funoid foo (bar)
description1 description1 description1 description1 description1
description1 description1 description1 description1 description1
@defline Funnyoid foo2 (bar2, baz2)
description2 description2 description2 description2 description2
description2 description2 description2 description2 description2
@end defblock
'],
['defblock_no_defline',
'@defblock
misc text inside
@end defblock
'],
['deftypeline',
'@defblock
@deftypeline Function {long int} foo (int @var{bar}, int @var{baz})
@dots{}
@end defblock
'],
['comment_index_before_defline',
'@defblock
@c a comment
@cindex entry
@comment another

@defline a b c d
@end defblock
'],
['text_block_before_defline',
'@node Top
@top top

@node chapt
@chapter Chap

@defblock
Some text@footnote{In footnote}.

@example
an example
@end example

@menu
* (other_manual)::
@end menu

@defline a b c d
@end defblock
', {'FORMAT_MENU' => 'menu'}, {'FORMAT_MENU' => 'menu'}],
);

foreach my $test (@test_defblock) {
  $test->[2]->{'test_formats'} = ['plaintext', 'html',
                                  'latex', 'docbook', 'xml'];
  $test->[2]->{'full_document'} = 1 unless (exists($test->[2]->{'full_document'}));
}

my @test_invalid = (
['no_category_or_no_name',
'@deffn
no category no name
@end deffn

@deffn {only category}
no name
@end deffn

@deffn a b c d 
@deffnx deffnx_category
@deffnx 
with deffnx missing category or name
@end deffn
'],
['def_defx_mismatch',
'@defun {my def} args @var{arg} @dots{}
@deffnx {type} {name} and now the args

In defun.

@end defun
'],
['defx_after_text',
'@deffn fset @var{i} a g
Text in deffn
@deffnx {truc} bidulr machin...
@end deffn'],
['defx_after_paragraph_end',
'@deffn fset @var{i} a g
Text in paragraph.

@deffnx {truc} bidulr machin...
@end deffn'],
['defx_after_preformatted_with_text',
'@example
@deffn fset @var{i} a g
Text in preformatted.

@deffnx {truc} bidulr machin...
@end deffn
@end example
'],
['end_of_line_protect_at_end',
'
@deffn category2 deffn_name2 arguments2 @',
{'test_formats' => ['xml'],},],
['end_of_line_end_file',
'@deffn category deffn_name arguments @
', {'test_formats' => ['xml'],},],
# the command with type is compared with the corresponding command without type
['empty_deftype',
'@deftypefun {} f (const type& x)
Deftypefun.
@end deftypefun

@defun f (const type& x)
Defun.
@end defun

@deftypemethod c {} f (const type& x)
Deftypemethod.
@end deftypemethod

@defmethod c f (const type& x)
Defmethod.
@end defmethod
'],
['wrong_braces_simple',
'@deffn truc machin bidule chose and }
@end deffn

@deffn truc machin bidule chose and } after
@end deffn

@deffn truc machin bidule chose and {
@end deffn

@deffn truc machin bidule chose and { and after
@end deffn

@deffn a b c d e
@deffnx truc machin bidule chose and }
@deffnx truc machin bidule chose and } after
@deffnx truc machin bidule chose and {
@deffnx truc machin bidule chose and { and after
@end deffn
'],
['wrong_braces_with_end_of_lines',
'@deffn category name args { @
  more args
deffn with @{
@end deffn 

@deffn category name args } @
  more args
deffn with @}
@end deffn 
'],
['empty_def_arguments',
'@deffn fset @var{i} a g
@deffnx @b{id @samp{i} ule}    
@deffnx 
@deffnx aaa
@deffnx {} {}
@deffnx{}
@deffnx{truc} { }
@deffnx{truc}
@deffnx{} {}
@end deffn
'],
['empty_main_def_arguments',
'@deffn NNN
@end deffn
'],
['empty_deftypeop_name',
'@deftypeop Command@code{com} {Window@code{int}} expose@var{exp}
@end deftypeop
'],
['double_command',
'@deffn func plot (a, b, c, ...) @deffnx func plot2 (a, b, c, ..., d)
aaa
@end deffn

@deffn func aaaa args  @defvr c--ategory d--efvr_name
bbb
@end deffn
'],
['not_closed',
'@deffn truc bidule machin
@deffnx truc chose args
@defvar type1 var bidule
'],
['ampchar',
'@defop {Constructor} a b (@code{const std::vector<int>@&})
@end defop
& @& @ampchar{} @{ @} @@
',
{'test_formats' => ['plaintext', 'html', 'xml', 'docbook']}],
['code_in_def',
'@deftypefn Function int foo (@code{const std::vector<int>@&} bar)
Documentation of @code{foo}.
@end deftypefn
',
{'test_formats' => ['plaintext']}],
['omit_def_space',
'@node Top

@node chap

@set txidefnamenospace

@defun function (arg1, arg2)
@defunx another (aarg)
explain
@end defun
',
{'test_formats' => ['plaintext', 'html', 'latex_text']}],
);

my @test_printindex = ();

my %html_tests = (
);

foreach my $test (@test_cases) {
  $test->[2]->{'test_formats'} = ['plaintext'];
  if ($html_tests{$test->[0]}) {
    push @{$test->[2]->{'test_formats'}}, 'html_text';
  }

  if ($test->[0] eq 'all_commands' or $test->[0] eq 'all_commands_delimiters') {
    push @test_printindex, [$test->[0] . '_printindex',
                            '@node Top
@node chap
@xrefname chap

'. $test->[1] . '
@heading Functions
@printindex fn

@heading Types
@printindex tp

@heading Variables
@printindex vr
', {'test_formats' => ['info', 'html']}]; 
  }
}

foreach my $test (@test_info) {
  $test->[2]->{'test_formats'} = ['info', 'html', 'xml'];
}

run_all('def', [@test_cases, @test_info, @test_defblock,
                @test_invalid, @test_printindex]);
