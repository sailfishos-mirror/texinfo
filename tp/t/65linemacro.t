use strict;

use lib '.';
use Texinfo::ModulePath (undef, undef, undef, 'updirs' => 2);

require 't/test_utils.pl';

my @test_cases = (
['text_arguments',
'@linemacro nospace{one, two, three}
\three\@bullet{}\two\@minus{}\one\
@end linemacro

@nospace X Y Z
'],
['brace_command_not_closed',
'@linemacro mycommand {a, b, c}
\a\, \b\ \c\
@end linemacro

@mycommand @code{in code

'],
['verb_not_closed',
'@linemacro mycommand {a, b, c}
\a\, \b\ \c\
@end linemacro

@mycommand @verb{: in verb

'],
['paragraph_no_paragraph',
'@linemacro mycommand {a, b, c}
\a\, \b\ \c\
@end linemacro

@* @mycommand @anchor{aa} definite and @code{more}

Some text @mycommand {a
  protected} in @var{the
 call}
and after.
'],
# FIXME currently incorrect output, probably because @end is handled
# when the linemacro is processed.
['blockitem_no_item',
'@linemacro mycommand {a, b, c}
\a\, \b\ \c\
@end linemacro

@itemize
AA
@mycommand d e f @
@end itemize
'],
['missing_formal_arg',
'@linemacro mymacro {a, , b}
\a\ and \b\.
@end linemacro

@mymacro one two three
'],
['no_arguments',
'@linemacro noarg
Body.
@end linemacro

@noarg

@noarg A B

@noarg {in brace}
'],
['empty_last_argument',
'@defcodeindex BI
@linemacro defbuiltin {symbol, rest}
@BIindex \symbol\
@defline Builtin \symbol\ \rest\
@end linemacro

@defblock
@defbuiltin foo {}

@defbuiltin foo

@defbuiltin foo {{}}
@end defblock
'],
# arguments should be 'my foo' 'a last {} arg{ument}'
# 'my foo' '{} {}'
# 'my foo' '{second arg} remaining on {line}'
['last_argument_with_braces',
'@linemacro defbuiltin {symbol, rest}
@defline \symbol\ f r
@defline expand Builtin and \rest\
@end linemacro

@defblock
@defbuiltin {my foo} a last {} arg{ument}

@defbuiltin {my foo} {} {}

@defbuiltin {my foo} {second arg} remaining on {line}
@end defblock
'],
# arguments should be 'text{in paren}'  rest{in paren}'  ''
['braces_after_text',
'@linemacro mymacro {a, b, c}
@defline \a\ \b\ \c\
@end linemacro

@defblock
@mymacro text{in paren} rest{in paren} {}
@end defblock
'],
# continuation with the first call, with @@ there is no continuation
['protected_spaces_on_line',
'@linemacro test {first, rest}
@deffn Function \first\ \rest\
something
@end deffn
@end linemacro

@test foo (bar, baz)@
 continuation line

@test foo@ b (bar, baz) rest@ and more

@test foo (bar, baz)@@
 another with double at

'],
# should have braces and protected end of lines kept
['newline_and_continuation_in_brace',
'
@linemacro mylinecommand {first, second, rest}
@defline category \first\ \second\ \rest\
@end linemacro

@defblock
@mylinecommand a@code{b c}d {some arg @
   b} {next @
   last} line
@end defblock
'],
# arguments should be '@abc {d}' '@ringaccent b'
['spaces_after_command_in_call',
'@linemacro mylinecommand {first, second, rest}
@defblock
@defline category \first\ A \second\ B \rest\
@end defblock
@end linemacro

@mylinecommand @abc {d} @ringaccent b rest
'],
# first argument should be {a b}{c d}{rest}
['spaces_in_call',
'@linemacro mylinecommand {first, second, rest}
@defblock
@defline category \first\ A \second\ B \rest\
@end defblock
@end linemacro

@mylinecommand{a b}{c d}{rest}
'],
['spaces_in_args',
'@linemacro mylinecommand {first, second, rest}
@defblock
@defline category \first\ A \second\ B \rest\
@end defblock
@end linemacro

@mylinecommand {  a } { d  } {   rest}
'],
['api_doc_with_linemacro',
'@linemacro param {param, type}
@defline Parameter @var{\param\} @code{ : \type\}
@end linemacro
@linemacro returns {param, type}
@defline {Return Value} @var{\param\} @code{ : \type\}
@end linemacro
@linemacro raises {exception}
@defline {Exception} \exception\
@end linemacro

@set txidefnamenospace
@clear txicodevaristt

@defblock
@defline Function fft.fft (a, n=@code{None}, axis=@code{-1}, norm=@code{None})
Compute the one-dimensional discrete Fourier Transform.

@defblock
@param a array_like
Input array, can be complex.

@param n int, optional
Length of the transformed axis of the output.
If @var{n} is smaller than the length of the input, the input is cropped.

@param axis int, optional
Axis over which to compute the FFT.

@returns out complex ndarray
The truncated or zero-padded input.

@raises IndexError
If @var{axis} is not a valid axis of @var{a}.

@end defblock

@end defblock
'],
['simple_nested_linemacro_calls',
'@node Top

@linemacro inside {a, b, rest}
inside {\a\ operator \b\} \rest\
@end linemacro

@linemacro outside {one, two, three}
@defline \one\ {\two\} \three\
@cindex \two\
@end linemacro

@defblock
@outside {type} {a function} @inside {X} {Y} ( remaining, type typed )
@end defblock
'],
# following example has incorrect braces in many places and
# in particular the bracketed opened with @inside in it is
# not closed, this makes it an interesting case.
['nested_linemacro_calls',
'@linemacro inside {a, b}
inside {\a\ operator \b\}
@end linemacro

@linemacro outside {one, two, three}
@defline \one\ {\two\} \three\
@cindex \two\
@end linemacro

@defblock
@outside {type} {@inside {X} {Y}} ( remaining, type typed )
@end defblock
'],
# TODO
# add recursive linemacro call
# add macro call in linemacro
# test cases of line commands, including linemacros on the same
# line to check commands closing in that context.
# test @c in line macro command invokation, including in
# braces
);


run_all('linemacro', \@test_cases);
