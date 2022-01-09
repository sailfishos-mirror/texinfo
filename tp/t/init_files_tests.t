use strict;

use lib '.';
use Texinfo::ModulePath (undef, undef, 'updirs' => 2);

require 't/test_utils.pl';

my @test_cases = (
['redefined_need',
'@need 0.1
', {'init_files' => ['redefine_need.init']}],
['modified_translation',
'@error{}.

@documentlanguage fr

fr @error{}.

@documentlanguage pt

pt @error{}.

', {'init_files' => ['command_translation_modified.init']}],
['macro_defined_txiinternalvalue_in_translation',
'@sp 1

@sp 2

',{'init_files' => ['translate_txiinternalvalue_macro.init'],
}],
);

our ($arg_test_case, $arg_generate, $arg_debug);

foreach my $test (@test_cases) {
  push @{$test->[2]->{'test_formats'}}, 'html';
}

run_all ('init_files_tests', [@test_cases], $arg_test_case,
   $arg_generate, $arg_debug);

1;

