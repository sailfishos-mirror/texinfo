use strict;
use utf8;

use lib '.';
use Texinfo::ModulePath (undef, undef, undef, 'updirs' => 3);

use Test::More;

use Texinfo::Parser;
use Texinfo::Document;
use Texinfo::Config;
use Texinfo::Convert::Text;
use Texinfo::Structuring;
use Texinfo::Convert::HTML;


# This tests a call of Texinfo::Convert::Utils::add_heading_number
# from Texinfo::Convert::Text with a converter associated to the
# text options (and similar XS functions).  This cannot happen
# outside of an especially crafted case because either
# * conversion to text is called from a another converter (to Plaintext,
#   HTML...), such that a converter is present, but the Texinfo tree
#   given to the conversion to text never includes parts of the tree
#   directly in the root of the tree, so no sectioning commands.
# * conversion to text is called for a whole document, so with
#   sectioning commands converted, but the converter associated
#   is the simple Texinfo::Convert::Text converter, which provides
#   translations using only information registered in the elements
#   by the parser.
#
# Therefore in this test, a converter is setup, which does nothing
# except to be used by text conversion for translations, and the
# Texinfo tree passed in text conversion argument contains sectioning
# commands.
#
# Note that Texinfo::Convert::Utils::add_heading_number is called
# from Texinfo::Convert::Plaintext converter for sectioning commands
# with translations support.
#
# This tests an HTML converter initialization without options.
#
# TODO this test does not meaningfully test the C code corresponding to
# copy_options_for_convert_text, since the XS interface is used.


# setup translated strings
my $locales_dir = join('/', ($Texinfo::ModulePath::t2a_builddir,
                                     'LocaleData'));
my $strings_textdomain = 'texinfo_document';
if (-d $locales_dir) {
  Texinfo::Translations::setup_output_strings($locales_dir,
                                              $strings_textdomain);
} else {
  warn "Locales dir for document strings not found\n";
}

my $document_texi = '
@node top
@top A top


@node chap
@chapter Chap

@node appendix
@appendix Conclusion
';

my @tests_specs = (
['add_heading_number translations fr with a converter',
'@documentlanguage fr
'.$document_texi,
'Annexe A Conclusion
*******************
'],
['add_heading_number translations qaa with a converter',
'@documentlanguage qaa
'.$document_texi,
'Appendix al-A Conclusion
************************
'],
['add_heading_number translations qaa-Latn with a converter',
'@documentlanguage qaa
@documentscript Latn
'.$document_texi,
'Appendix as-A Conclusion
************************
'],
#);
#my @tests_specs = (
['add_heading_number translations qaa-1234 with a converter',
'@documentlanguage qaa
@documentlanguagevariant 1234
'.$document_texi,
'Appendix a1234-A Conclusion
***************************
'],
['add_heading_number translations qaa-1234 reset language',
'@documentlanguage qaa
@documentlanguagevariant 1234
'.$document_texi
.'@documentlanguage pt
',
'Appendix a1234-A Conclusion
***************************
'],
# this shows that the preamble language is used and not the
# current language
['add_heading_number translations change before command',
'@documentlanguage fr

@node top
@top A top


@node chap
@chapter Chap
@documentlanguage pt

@node appendix
@appendix Conclusion
',
'Annexe A Conclusion
*******************
'],
);

plan tests => (1 + 3 + scalar(@tests_specs));

ok(1, 'modules loading');

#my $parser = Texinfo::Parser::parser({'DEBUG' => 1});
my $parser = Texinfo::Parser::parser();

sub run_test($) {
  my $spec = shift;

  my ($test_string, $test_texi, $result) = @$spec;

  my $document = $parser->parse_texi_text($test_texi);

  my $tree = $document->tree();

  #use Texinfo::DebugTree;
  #print STDERR Texinfo::DebugTree->convert_tree($tree);

  # Setup sectioning commands numbers
  Texinfo::Structuring::sectioning_structure($document);

  # rebuild the tree
  $tree = $document->tree();

  # a converter only used for translation in text conversion, not
  # to convert anything.
  my $converter = Texinfo::Convert::HTML->converter();
  $converter->set_document($document);

  my $text_options
   = Texinfo::Convert::Text::copy_options_for_convert_text($converter);

  my $result_text
   = Texinfo::Convert::Text::convert_to_text($document->tree(), $text_options);

  if (!defined($result)) {
    print STDERR " --> '$result_text'\n";
  } else {
    is($result_text, '
A top
*****


1 Chap
******

'.$result, $test_string);
  }
}

foreach my $test (@tests_specs) {
  run_test($test);
};

# Text setting the set_case options for Text conversion.  It is documented
# that it may be used as an option to convert_to_text in the POD, but there
# is no way to test it except when called from code.

my $document = $parser->parse_texi_piece ('
Some text. @^o. @aa{}.  @AA{}.  @copyright{}.
');

my $result_text
 = Texinfo::Convert::Text::convert_to_text($document->tree(),
                                           {'set_case' => 1});
is($result_text, '
SOME TEXT. O^. AA.  AA.  (C).
', 'set_case > 0, no encoding');


$result_text
 = Texinfo::Convert::Text::convert_to_text($document->tree(),
                                           {'set_case' => -1});
is($result_text, '
some text. o^. aa.  aa.  (C).
', 'set_case < 0, no encoding');

$result_text
 = Texinfo::Convert::Text::convert_to_text($document->tree(),
                     {'set_case' => -1, 'enabled_encoding' => 'utf-8'});
# since all the characters can be encoded in latin1, perl internal encoding
# of those characters may be latin1, and a simple print may show result
# encoded in latin1.
is($result_text, '
some text. ô. å.  å.  ©.
', 'set_case < 0, utf-8 encoding');

#print STDERR "RRR '$result_text'\n";
