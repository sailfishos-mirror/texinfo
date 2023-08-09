use strict;

use lib '.';
use Texinfo::ModulePath (undef, undef, undef, 'updirs' => 2);

use Test::More;

BEGIN { plan tests => 9; }

use Texinfo::Transformations;
use Texinfo::Parser qw(parse_texi_piece);
use Texinfo::Convert::Texinfo;

ok(1, "modules loading");

my $document = parse_texi_piece(undef, '@raisesections

@section truc
');

my $tree = $document->tree();

my $section = $tree->{'contents'}->[1];
my $before_sections = $tree->{'contents'}->[0];
my $nr_contents = scalar(@{$before_sections->{'contents'}});
Texinfo::Transformations::_correct_level($section, $tree->{'contents'}->[0]);
my $new_nr_contents = scalar(@{$before_sections->{'contents'}});

ok ($new_nr_contents - $nr_contents == 1, "one lowersections");
is ($before_sections->{'contents'}->[$nr_contents]->{'cmdname'}, 'lowersections',
   "command is lowersections");
#print STDERR Texinfo::Convert::Texinfo::convert_to_texinfo ($tree);

$document = parse_texi_piece(undef, '@lowersections
@lowersections

@chapter truc
');
$tree = $document->tree();

$section = $tree->{'contents'}->[1];
$before_sections = $tree->{'contents'}->[0];
$nr_contents = scalar(@{$before_sections->{'contents'}});
# With -1, the commands added go from the normal level to the modified level
# of the chapter.  It is therefore the same commands as the commands setting
# the chapter level that are added.
Texinfo::Transformations::_correct_level($section, $tree->{'contents'}->[0], -1);
$new_nr_contents = scalar(@{$before_sections->{'contents'}});
ok ($new_nr_contents - $nr_contents == 2, "two lowersections");
is ($before_sections->{'contents'}->[$nr_contents]->{'cmdname'}, 'lowersections',
     "first command is lowersections");
is ($before_sections->{'contents'}->[$nr_contents+1]->{'cmdname'}, 'lowersections',
     "second command is lowersections");

#print STDERR Texinfo::Convert::Texinfo::convert_to_texinfo ($tree);

sub test_correction($$$)
{
  my $in = shift;
  my $out = shift;
  my $name = shift;
  my $document = parse_texi_piece(undef, $in);
  my $tree = $document->tree();
  my $added_sections
       = Texinfo::Transformations::fill_gaps_in_sectioning($tree);
  {
  local $Data::Dumper::Purity = 1;
  #local $Data::Dumper::Maxdepth = 2;
  local $Data::Dumper::Indent = 1;
  #print STDERR Data::Dumper->Dump([$tree]);
  #print STDERR Data::Dumper->Dump([$added_sections]);
  }
  my $texi_result
   = Texinfo::Convert::Texinfo::convert_to_texinfo($tree);
  if (!defined($out)) {
    print STDERR " --> $name:\n$texi_result";
  } else {
    is($texi_result, $out, $name);
  }
}
test_correction('@chapter chap
@subsection sub
','@chapter chap
@unnumberedsec @asis{}

@subsection sub
', 'simple completed tree');

my $raisesections_lowersection_no_correction_text = '@raisesections
@section sec
@lowersections
@lowersections
@chapter chap
';
test_correction($raisesections_lowersection_no_correction_text,
  $raisesections_lowersection_no_correction_text,
  'raisesections and lowersections, no correction');

test_correction('@raisesections
@section sec
@lowersections
@lowersections
@lowersections
@chapter chap
', '@raisesections
@section sec
@lowersections
@lowersections
@lowersections
@raisesections
@raisesections
@unnumberedsec @asis{}

@lowersections
@lowersections
@chapter chap
', 'raisesections lowersections with correction');
