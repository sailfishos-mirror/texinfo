use strict;

use lib '.';
use Texinfo::ModulePath (undef, undef, undef, 'updirs' => 2);

use Test::More;

BEGIN { plan tests => 2; }

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
#   is the simple Texinfo::Convert::Text converter, which does not
#   provides translations.
#
# Therefore in this test, a converter is setup, which does nothing
# except to be used by text conversion for translations, and the
# Texinfo tree passed in text conversion argument contains sectioning
# commands.
#
# Note that Texinfo::Convert::Utils::add_heading_number is called
# from Texinfo::Convert::Plaintext converter for sectioning commands
# with translations support.


# setup translated strings
my $locales_dir = File::Spec->catdir($Texinfo::ModulePath::builddir,
                                     'LocaleData');
my $strings_textdomain = 'texinfo_document';
if (-d $locales_dir) {
  Texinfo::Translations::configure($locales_dir, $strings_textdomain);
} else {
  warn "Locales dir for document strings not found\n";
}

ok(1);

my $parser = Texinfo::Parser::parser();

my $document = $parser->parse_texi_piece ('
@documentlanguage fr

@node top
@top A top


@node chap
@chapter Chap

@node appendix
@appendix Conclusion
');

my $tree = $document->tree();

#use Texinfo::DebugTree;
#print STDERR Texinfo::DebugTree->convert_tree ($tree);

my $registrar = $parser->registered_errors();
my $main_configuration = Texinfo::MainConfig::new();
# Setup sectioning commands numbers
my $sections_list
            = Texinfo::Structuring::sectioning_structure($tree, $registrar,
                                                       $main_configuration);
if ($sections_list) {
  Texinfo::Document::register_document_sections_list($document,
                                                     $sections_list);
}
$tree = Texinfo::Document::rebuild_tree($tree);

# a converter only used for translation in text conversion, not
# to convert anything.
my $converter = Texinfo::Convert::HTML->converter();
$converter->set_document($document);
# note that parse_texi_piece is used, so there is no preamble
$converter->set_global_document_commands('preamble_or_first',
                                         ['documentlanguage']);
#print STDERR "DOCUMENTLANGUAGE ".$converter->get_conf('documentlanguage')."\n";

my $text_options
 = Texinfo::Convert::Text::copy_options_for_convert_text($converter);

my $result_text
 = Texinfo::Convert::Text::convert_to_text($document->tree(), $text_options);

is ($result_text, '

A top
*****


1 Chap
******

Annexe A Conclusion
*******************
', 'test add_heading_number translations with a converter');

#print STDERR "RRR '$result_text'\n";
