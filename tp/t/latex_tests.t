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
