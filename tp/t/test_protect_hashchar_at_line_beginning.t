use strict;

use lib '.';
use Texinfo::ModulePath (undef, undef, undef, 'updirs' => 2);

use Test::More;

BEGIN { plan tests => 9; }

use Texinfo::Parser;
use Texinfo::Transformations;
use Texinfo::Document;
use Texinfo::Convert::Texinfo;

use Data::Dumper;

# For consistent error message, use the C locale
$ENV{LC_ALL} = 'C';
# also needed for consistent error message
$ENV{LANGUAGE} = 'C';

ok(1);

my $with_XS = ((not defined($ENV{TEXINFO_XS})
                or $ENV{TEXINFO_XS} ne 'omit')
               and (!defined $ENV{TEXINFO_XS_PARSER}
                    or $ENV{TEXINFO_XS_PARSER} eq '1'));


sub run_test($$$;$)
{
  my $in = shift;
  my $out = shift;
  my $name = shift;
  my $error_message = shift;

  my $parser = Texinfo::Parser::parser();
  my $document = $parser->parse_texi_piece($in, 1);
  my $tree = $document->tree();

  my $corrected_tree =
    Texinfo::Transformations::protect_hashchar_at_line_beginning($tree,
                                            $document->registrar(), $parser);

  #Texinfo::Document::rebuild_document($document);
  $corrected_tree = $document->tree();

  if (defined($error_message)) {
    my ($errors, $errors_count) = $parser->errors();
    my ($document_errors, $document_errors_count)
      = $document->errors();
    $errors_count += $document_errors_count if ($document_errors_count);
    push @$errors, @$document_errors;

    my ($error_line_nr_reference, $error_line_reference) = @$error_message;
    if (!$error_line_reference) {
      if ($errors and scalar(@$errors)) {
        print STDERR " --error-> $errors->[0]->{'error_line'}";
      } else {
        print STDERR "No message\n";
      }
    } else {
      if ($errors and scalar(@$errors)) {
        is($error_line_nr_reference, $errors->[0]->{'line_nr'},
          "error line: $name");
        is($error_line_reference, $errors->[0]->{'error_line'},
          "error message: $name");
      } else {
        ok(0, "error message: $name");
      }
    }
  }

  my $texi_result = Texinfo::Convert::Texinfo::convert_to_texinfo($corrected_tree);

  if (!defined($out)) {
    print STDERR " --> $name:\n$texi_result";
  } else {
    is ($texi_result, $out, $name);
  }
}

run_test ('# line 4 "ggggg"
and
 # line 5 "fff"
# 46
# 3 4

# line 4 "bbb"
# 7 "aaaa"
', '@hashchar{} line 4 "ggggg"
and
 @hashchar{} line 5 "fff"
@hashchar{} 46
# 3 4

@hashchar{} line 4 "bbb"
@hashchar{} 7 "aaaa"
', 'two paragraphs');

run_test ('
@example
# line 5 "fff"
aaa

b

# line 4 "bbb"
# 7 "aaaa"
@end example
', '
@example
@hashchar{} line 5 "fff"
aaa

b

@hashchar{} line 4 "bbb"
@hashchar{} 7 "aaaa"
@end example
', 'in example');

run_test ('
@table @asis
@item truc

# line 4 "bbb"
@end table

@itemize
# 7 "aaaa"
@item # line 5 "fff"
# 6 "ff"
@end itemize
', '
@table @asis
@item truc

@hashchar{} line 4 "bbb"
@end table

@itemize
@hashchar{} 7 "aaaa"
@item @hashchar{} line 5 "fff"
@hashchar{} 6 "ff"
@end itemize
', 'in block commands');

run_test('
@macro mymacro {}
# line 20 "ff"
@end macro
', '
@macro mymacro {}
# line 20 "ff"
@end macro
', 'in raw command', [2, 'warning: could not protect hash character in @macro
']);

run_test('
@example
in example
@end example
# line 100 "toto"

Something.
','
@example
in example
@end example
@hashchar{} line 100 "toto"

Something.
',
'after block end');

# shows that there is protection in contexts where hash character
# is not first in line, as there is protection whenever first in
# content.  There can therefore be too much protection, but it is
# not an issue in general.
run_test('@quotation # line 100 "toto"
in quotation
@end quotation

@enumerate
@item # line 1
@end enumerate

@code{# 3 "c"}
', '@quotation @hashchar{} line 100 "toto"
in quotation
@end quotation

@enumerate
@item @hashchar{} line 1
@end enumerate

@code{@hashchar{} 3 "c"}
', 'on quotation line');


#{
#  local $Data::Dumper::Purity = 1;
#  local $Data::Dumper::Indent = 1;
#
#  print STDERR Data::Dumper->Dump([$tree]);
#}
