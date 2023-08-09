use strict;

use lib '.';
use Texinfo::ModulePath (undef, undef, undef, 'updirs' => 2);

use Test::More;

BEGIN { plan tests => 8; }

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

# 2 because there is also an empty line
ok ($new_nr_contents - $nr_contents == 2,"one lowersections");
ok ($before_sections->{'contents'}->[$nr_contents]->{'cmdname'} eq 'lowersections' ,
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
Texinfo::Transformations::_correct_level($section, $tree->{'contents'}->[0], -1);
$new_nr_contents = scalar(@{$before_sections->{'contents'}});
ok ($new_nr_contents - $nr_contents == 4,"two lowersections");
ok ($before_sections->{'contents'}->[$nr_contents]->{'cmdname'} eq 'lowersections',
     "command is lowersections");
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
  #print STDERR Data::Dumper->Dump([$corrected_content]);
  }
  my $texi_result
   = Texinfo::Convert::Texinfo::convert_to_texinfo(
                                 {'contents' => $tree->{'contents'}});
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
