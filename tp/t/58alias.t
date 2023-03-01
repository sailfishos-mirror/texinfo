use strict;

use lib '.';
use Texinfo::ModulePath (undef, undef, undef, 'updirs' => 2);

require 't/test_utils.pl';

my @test_cases = (
['simple',
'@alias myalias = code

@alias o-theralias=verb @c comment

Should be code: @myalias{code}

Should be verb: @o-theralias{!verb!}
'],
['alias_table_command',
'@alias myalias = code

@table @myalias
@item table item (code)
@end table
'],
['bad_line',
'
@alias garbage-on-line =cmd garbage

@alias garbage-on-line =cmd @code{in code}
'],
['block_command_alias',
'@alias lang=lisp

@lang
in lang
@end lang
'],
['alias_non_existing_command',
'@alias myalias = userdefined

@myalias{hh}.
',],
['alias_of_macro',
'@macro mymacro {thearg}
||\\thearg||
@end macro

@alias new = mymacro

@new{tt}
'],
# to show that the XS parser requires the command to exist when
# the alias is defined
['alias_of_macro_before_macro',
'@alias new = mymacro

@macro mymacro {thearg}
||\\thearg||
@end macro

@new{tt}
',],
['alias_of_definfoenclose',
'@definfoenclose phoo,;,:

@alias new = phoo

@new{aa}
',{'test_formats' => ['plaintext']},],
['alias_of_definfoenclose_before_definfoenclose',
'@alias new = phoo

@definfoenclose phoo,;,:

@new{aa}
',{'test_formats' => ['plaintext'],
},],
['alias_of_added_index',
'@defindex sli

@alias new = sliindex

@node Top
@top top

@new entry

@node chap
@chapter Chapter

@printindex sli
',{'test_formats' => ['plaintext'],
},],
['alias_of_added_index_before_added_index',
'@alias new = sliindex

@defindex sli

@node Top
@top top

@new entry

@node chap
@chapter Chapter

@printindex sli
',{'test_formats' => ['plaintext'],
},],
);

run_all('alias', \@test_cases);
