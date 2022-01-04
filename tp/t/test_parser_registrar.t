use strict;

use lib '.';
use Texinfo::ModulePath (undef, undef, 'updirs' => 2);

use Test::More;

BEGIN { plan tests => 7; }

use Texinfo::Parser;
use Texinfo::Report;

# For consistent error message, use the C locale
$ENV{LC_ALL} = 'C';

ok(1, "modules loading");

my $registrar = Texinfo::Report::new();

my $initial_error = "Initial error";
$registrar->document_error(undef, $initial_error);

my $parser = Texinfo::Parser::parser({'registrar' => $registrar});

# this also tests errors with line_errors not defined
my $tree = $parser->parse_texi_text("\@end format\n");
use Data::Dumper;

my $parser_registrar = $parser->registered_errors();
ok ($parser_registrar eq $registrar, 'reused registrar');

my ($error_warnings_list, $error_count) = $parser_registrar->errors();

ok ($error_count == 2, 'error count');

my @errors_references = ($initial_error, ':1: unmatched `@end format\'');

my $error_idx = 0;
foreach my $error_message (@$error_warnings_list) {
  ok ($error_message->{'type'} eq 'error', "error type $error_idx");
  ok ($error_message->{'error_line'} eq $errors_references[$error_idx]."\n",
      "error message $error_idx");
  $error_idx++;
}
