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
['settitle_and_headings',
'@settitle Title @* for a manual

@headings double

@chapter chap
'],
# default case
['titlepage_and_headings',
'@titlepage
in titlepage
@end titlepage

'],
# note that those tests do not really correspond to
# what happens for real documents, as in real documents,
# LaTeX default (start chapter on odd page) is switched
# to Texinfo default (@setchapternewpage on). 
['titlepage_and_setchapternewpage_odd',
'
@setchapternewpage odd

@titlepage
in titlepage
@end titlepage

'],
['no_titlepage_and_setchapternewpage_odd',
'
@setchapternewpage odd
'],
['titlepage_and_setchapternewpage_on',
'
@setchapternewpage on

@titlepage
in titlepage
@end titlepage

'],
['no_titlepage_and_setchapternewpage_on',
'
@setchapternewpage on
'],
['two_setchapternewpage_odd_on',
'@setchapternewpage odd

@setchapternewpage on
'],
['two_setchapternewpage_on_odd',
'@setchapternewpage on

@setchapternewpage odd
'],
['three_setchapternewpage_on_odd_off',
'@setchapternewpage on

@setchapternewpage odd

@setchapternewpage off
'],
# this is more like what would actually happen, switching
# to @setchapternewpage on in preamble, then odd and then the
# title page
['setchapternewpage_on_odd_titlepage',
'@setchapternewpage on

@setchapternewpage odd

@titlepage
in titlepage
@end titlepage
'],
['titlepage_in_top_node',
'@node Top
@top top sectionning

In top

@titlepage
@title the TTitle
@end titlepage

@node chap
@chapter chap

in chap
'],
);

foreach my $test (@test_cases) {
  $test->[2]->{'test_formats'} = ['latex'];
}

our ($arg_test_case, $arg_generate, $arg_debug);

run_all ('latex_tests', [@test_cases], $arg_test_case,
   $arg_generate, $arg_debug);

1;
