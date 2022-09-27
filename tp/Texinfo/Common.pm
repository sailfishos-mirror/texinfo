# Common.pm: definition of commands. Common code of other Texinfo modules.
#
# Copyright 2010-2022 Free Software Foundation, Inc.
# 
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 3 of the License,
# or (at your option) any later version.
# 
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
# 
# Original author: Patrice Dumas <pertusus@free.fr>
# Parts (also from Patrice Dumas) come from texi2html.pl or texi2html.init.

package Texinfo::Common;

use strict;

# for unicode/layer support in binmode
# for binmode documented as pushing :utf8 on top of :encoding
use 5.008001;

# to determine the null file
use Config;
use File::Spec;
# for find_encoding, resolve_alias and maybe utf8 related functions
use Encode;

use Locale::Messages;

use Texinfo::Documentlanguages;

# debugging
use Carp qw(cluck confess);

require Exporter;
use vars qw($VERSION @ISA @EXPORT @EXPORT_OK %EXPORT_TAGS);
@ISA = qw(Exporter);

%EXPORT_TAGS = ( 'all' => [ qw(
collect_commands_in_tree
collect_commands_list_in_tree
move_index_entries_after_items_in_tree
protect_colon_in_tree
protect_comma_in_tree
protect_first_parenthesis
protect_node_after_label_in_tree
relate_index_entries_to_table_entries_in_tree
valid_customization_option
valid_tree_transformation
) ] );

@EXPORT_OK = ( @{ $EXPORT_TAGS{'all'} } );

# This is where the Texinfo modules get access to __( without explicit
# import.
@EXPORT = qw(
__ __p
);

$VERSION = '6.8dev';


# i18n
my $messages_textdomain = 'texinfo';

sub __($) {
  my $msgid = shift;
  return Locale::Messages::dgettext($messages_textdomain, $msgid);
}

sub __p($$) {
  my $context = shift;
  my $msgid = shift;
  return Locale::Messages::dpgettext($messages_textdomain, $context, $msgid);
}


# determine the null devices
my $default_null_device = File::Spec->devnull();
our %null_device_file = (
  $default_null_device => 1
);
# special case, djgpp recognizes both null devices
if ($Config{osname} eq 'dos' and $Config{osvers} eq 'djgpp') {
  $null_device_file{'/dev/null'} = 1;
  $null_device_file{'NUL'} = 1;
}


# Customization options

# variables not specific of Parser, used in other contexts.  Spread over
# the different categories set below.  The default values are in general
# the same as elsewhere, but occasionally may be specific of the Parser.
my %default_parser_common_customization = (
  'INCLUDE_DIRECTORIES' => [ '.' ],
  'documentlanguage' => undef,  # not 'en' as it is better to specify that there is no
                                # need for translation since the strings are in english
                                # rather than ask for translations to en
  'EXPANDED_FORMATS' => [],
  'DEBUG' => 0,     # if >= 10, tree is printed in texi2any.pl after parsing.
                    # If >= 100 tree is printed every line.
  'FORMAT_MENU' => 'menu',           # if not 'menu' no menu error related.
  'DOC_ENCODING_FOR_INPUT_FILE_NAME' => 1,
  'COMMAND_LINE_ENCODING' => undef, # encoding of command line strings
  'INPUT_FILE_NAME_ENCODING' => undef, # used for input file encoding
);

# Customization variables obeyed only by the parser, and the default values.
my %default_parser_specific_customization = (
  'IGNORE_SPACE_AFTER_BRACED_COMMAND_NAME' => 1,
  'CPP_LINE_DIRECTIVES' => 1, # handle cpp like synchronization lines
  'MAX_MACRO_CALL_NESTING' => 100000, # max number of nested macro calls
);

# this serves both to set defaults and list configuration options
# valid for the parser.
our %default_parser_customization_values = (%default_parser_common_customization,
  %default_parser_specific_customization);


# @-commands that can be used multiple time in a document and default
# values.  Associated with customization values too.
our %document_settable_multiple_at_commands = (
  'allowcodebreaks' => 'true',
  'clickstyle' => '@arrow',
  'codequotebacktick' => 'off',
  'codequoteundirected' => 'off',
  'contents' => 0,
  'deftypefnnewline' => 'off',
  'documentencoding' => 'us-ascii',
  'documentlanguage' => 'en', # or undef?  Documented as en.
                              # --document-language
  # is N ems in TeX, 0.4 in.
  'exampleindent' => 5,
  'firstparagraphindent' => 'none',
  'frenchspacing' => 'off',
  'headings' => 'on',
  'kbdinputstyle' => 'distinct',
  'microtype' => 'on',
  'paragraphindent' => 3,
  'shortcontents' => 0,
  'summarycontents' => 0,
  'contents' => undef,
  'urefbreakstyle' => 'after',
  'xrefautomaticsectiontitle' => 'off',
  'everyheading'      => undef,
  'everyfooting'      => undef,
  'evenheading'       => undef,
  'evenfooting'       => undef,
  'oddheading'        => undef,
  'oddfooting'        => undef,
);

# @-commands that should be unique.  Associated with customization values too.
our %document_settable_unique_at_commands = (
  # when passed through a configuration variable, documentdescription
  # should be already formatted for HTML.  There is no default,
  # what is determined to be the title is used if not set.
  'documentdescription' => undef,
  'evenfootingmarks' => undef,
  'evenheadingmarks' => undef,
  'everyfootingmarks' => 'bottom',
  'everyheadingmarks' => 'bottom',
  'fonttextsize' => 11,
  'footnotestyle' => 'end',    # --footnote-style
  'novalidate' => 0,           # --no-validate
  'oddfootingmarks' => undef,
  'oddheadingmarks' => undef,
  'pagesizes' => undef,
  'setchapternewpage' => 'on',
  'setfilename' => undef,
  'afourpaper' => undef,
  'afourlatex' => undef,
  'afourwide' => undef,
  'afivepaper' => undef,
  'bsixpaper' => undef,
  'smallbook' => undef,
);

# a value corresponds to defaults that are the same for every output format
# otherwise undef is used
our %default_converter_command_line_options = (
  'SPLIT_SIZE'           => 300000,  # --split-size
  'FILLCOLUMN'           => 72,      # --fill-column
  'NUMBER_SECTIONS'      => 1,       # --number-sections
  'NUMBER_FOOTNOTES'     => 1,       # --number-footnotes
  # only in HTML
  'TRANSLITERATE_FILE_NAMES' => 1,   # --transliterate-file-names
  'SPLIT'                => undef,   # --split
  'HEADERS'              => 1,       # --headers.  Used to set diverse
                                     # customization options in main program.
                                     # Only directly used in HTML converter
  'NODE_FILES'           => undef,   # --node-files.  Depend on SPLIT
  'VERBOSE'              => undef,   # --verbose
  'OUTFILE'              => undef,   # --output    If non split and not ending by /.
                                     # Setting can be format dependent
  'SUBDIR'               => undef,   # --output    If split or ending by /.
                                     # Setting can be format dependent
  'ENABLE_ENCODING'      => undef,   # --disable-encoding/--enable-encoding.
                                     # The documentation only mentions Info and
                                     # plain text, but the option is used
                                     # in many formats, with differing defaults.
                                     # The default expected by the converters
                                     # is to be unset, although for Info and
                                     # plain text, default is set.  If set,
                                     # it is set in the formats converter
                                     # defaults.
);

# used in main program, defaults documented in manual
my %default_main_program_command_line_options = (
  # only in main program
  'MACRO_EXPAND'         => undef,   # --macro-expand
  # used in HTML only, called from main program
  'INTERNAL_LINKS'       => undef,   # --internal-links
  'ERROR_LIMIT'          => 100,     # --error-limit
  'FORCE'                => undef,   # --force
  'NO_WARN'              => undef,   # --no-warn
  'SILENT'               => undef,   # --silent.    Not used.  For completeness

  # following also used in converters
  'FORMAT_MENU'          => 'menu',  # --headers.  Modified by the format.
);

# used in main program, defaults documented in manual
my %default_main_program_customization = (
  'CHECK_NORMAL_MENU_STRUCTURE' => 0, # output warnings when node with
            # automatic direction and directions in menu are not consistent
            # with sectionning, and when node directions are not consistent
            # with menu directions.
  'DUMP_TREE'                   => undef,
  'DUMP_TEXI'                   => undef,
  'SHOW_BUILTIN_CSS_RULES'      => 0,
  'SORT_ELEMENT_COUNT'          => undef,
  'SORT_ELEMENT_COUNT_WORDS'    => undef,
  'TEXI2DVI'                    => 'texi2dvi',
  'TREE_TRANSFORMATIONS'        => undef,
);

# defaults for the main program.  In general transmitted to converters as defaults
our %default_main_program_customization_options = (
 %default_main_program_command_line_options,  %default_main_program_customization);

# used in converters, default documented in manual
our %default_converter_customization = (
  'TOP_NODE_UP'           => '(dir)',   # up node of Top node default value
  'BASEFILENAME_LENGTH'   => 255 - 10,
  'DOC_ENCODING_FOR_INPUT_FILE_NAME' => 1,
  'DOC_ENCODING_FOR_OUTPUT_FILE_NAME' => 0,
  # only used in HTML
  'IMAGE_LINK_PREFIX'     => undef,
  'CASE_INSENSITIVE_FILENAMES' => 0,
  'DEBUG'                 => 0,
  # only used in HTML
  'HANDLER_FATAL_ERROR_LEVEL' => 100,
  'TEST'                  => 0,
  'TEXTCONTENT_COMMENT'   => undef,  # in textcontent format
  # used in TexinfoXML/SXML
  # Reset by the main program, therefore this value is only used
  # in converter tests.  Does not need to be updated every time a DTD
  # is released, but it should be good to update from time to time
  # to avoid test results that are not valid against their reported DTD.
  'TEXINFO_DTD_VERSION'   => '6.8',  # this is not the value documented,
                                     # but it is better for the tests to
                                     # have a fixed value.
                                     # The main program sets the
                                     # variable to the documented value.
);

# Some are for all converters, EXTENSION for instance, some for
# some converters, for example CLOSE_QUOTE_SYMBOL and many
# for HTML.  Could be added to %default_converter_customization.
# Defaults are documented in manual and set in the various converters.
my @variable_string_settables = (
'AFTER_BODY_OPEN',
'AFTER_SHORT_TOC_LINES',
'AFTER_TOC_LINES',
'ASCII_PUNCTUATION',
'AVOID_MENU_REDUNDANCY',
'BEFORE_SHORT_TOC_LINES',
'BEFORE_TOC_LINES',
'BIG_RULE',
'BODYTEXT',
'COPIABLE_LINKS',
'CHAPTER_HEADER_LEVEL',
'CHECK_HTMLXREF',
'CLOSE_QUOTE_SYMBOL',
'COMMAND_LINE_ENCODING',
'COMPLEX_FORMAT_IN_TABLE',
'CONTENTS_OUTPUT_LOCATION',
'CONVERT_TO_LATEX_IN_MATH',
'DATE_IN_HEADER',
'DEFAULT_RULE',
'DEF_TABLE',
'DO_ABOUT',
'DOC_ENCODING_FOR_INPUT_FILE_NAME',
'DOC_ENCODING_FOR_OUTPUT_FILE_NAME',
'DOCTYPE',
'EPUB_CREATE_CONTAINER_FILE', # for ext/epub3.pm
'EPUB_KEEP_CONTAINER_FOLDER', # for ext/epub3.pm
'EXTENSION',
'EXTERNAL_CROSSREF_EXTENSION',
'EXTERNAL_CROSSREF_SPLIT',
'EXTERNAL_DIR',
'EXTRA_HEAD',
'FILE_NAMES_ENCODING_NAME',
'FOOTNOTE_END_HEADER_LEVEL',
'FOOTNOTE_SEPARATE_HEADER_LEVEL',
'FRAMES',
'FRAMESET_DOCTYPE',
'HEADER_IN_TABLE',
'HTML_MATH',
'HTML_ROOT_ELEMENT_ATTRIBUTES',
'HTMLXREF_FILE',
'HTMLXREF_MODE',
'ICONS',
'IMAGE_LINK_PREFIX',
'INDEX_ENTRY_COLON',
'INDEX_SPECIAL_CHARS_WARNING',
'INFO_JS_DIR',
'INFO_SPECIAL_CHARS_QUOTE',
'INFO_SPECIAL_CHARS_WARNING',
'IGNORE_REF_TO_TOP_NODE_UP',
'INLINE_CSS_STYLE',
'INPUT_FILE_NAME_ENCODING',
'JS_WEBLABELS',
'JS_WEBLABELS_FILE',
'LOCALE_ENCODING',
'L2H_CLEAN',
'L2H_FILE',
'L2H_HTML_VERSION',
'L2H_L2H',
'L2H_SKIP',
'L2H_TMP',
'MATHJAX_SCRIPT',
'MATHJAX_SOURCE',
'MAX_HEADER_LEVEL',
'MENU_ENTRY_COLON',
'MENU_SYMBOL',
'MESSAGE_ENCODING',
'MONOLITHIC',
'NO_CSS',
'NO_NUMBER_FOOTNOTE_SYMBOL',
'NO_CUSTOM_HTML_ATTRIBUTE',
'NODE_FILE_EXTENSION',
'NODE_NAME_IN_INDEX',
'NODE_NAME_IN_MENU',
'NO_TOP_NODE_OUTPUT',
'NO_USE_SETFILENAME',
'OPEN_QUOTE_SYMBOL',
'OUTPUT_ENCODING_NAME',
'OUTPUT_FILE_NAME_ENCODING',
'OUTPUT_PERL_ENCODING',
'PACKAGE',
'PACKAGE_AND_VERSION',
'PACKAGE_NAME',
'PACKAGE_URL',
'PACKAGE_VERSION',
'PRE_BODY_CLOSE',
'PREFIX',
'PROGRAM',
'PROGRAM_NAME_IN_ABOUT',
'PROGRAM_NAME_IN_FOOTER',
'SECTION_NAME_IN_TITLE',
'SHORT_TOC_LINK_TO_TOC',
'SHORTEXTN',
'SHOW_TITLE',
'SIMPLE_MENU',
'SORT_ELEMENT_COUNT',
'TEXI2HTML',
'TEXINFO_DTD_VERSION',
'TEXINFO_OUTPUT_FORMAT',
'TOC_LINKS',
'TOP_FILE',
'TOP_NODE_FILE_TARGET',
'TOP_NODE_UP_URL',
'USE_ACCESSKEY',
'USE_ISO',
'USE_LINKS',
'USE_NODES',
'USE_NODE_DIRECTIONS',
'USE_NUMERIC_ENTITY',
'USE_REL_REV',
'USE_SETFILENAME_EXTENSION',
'USE_TITLEPAGE_FOR_TITLE',
'USE_UNIDECODE',
'USE_UP_NODE_FOR_ELEMENT_UP',
'USE_XML_SYNTAX',
'VERTICAL_HEAD_NAVIGATION',
'WORDS_IN_PAGE',
'XREF_USE_FLOAT_LABEL',
'XREF_USE_NODE_NAME_ARG',
);

# Not strings.  Not documented in the manual nor elsewhere.
# FIXME To be documented somewhere, but where?
my @variable_other_settables = (
  'LINKS_BUTTONS', 'TOP_BUTTONS', 'SECTION_BUTTONS', 'BUTTONS_TEXT',
  'BUTTONS_ACCESSKEY', 'BUTTONS_REL', 'BUTTONS_GOTO',
  'CHAPTER_FOOTER_BUTTONS', 'SECTION_FOOTER_BUTTONS',
  'NODE_FOOTER_BUTTONS',
  'MISC_BUTTONS', 'CHAPTER_BUTTONS', 'BUTTONS_NAME',
  'BUTTONS_EXAMPLE', 'SPECIAL_ELEMENTS_HEADING', 'SPECIAL_ELEMENTS_CLASS',
  'SPECIAL_ELEMENTS_DIRECTIONS',
  'ACTIVE_ICONS', 'PASSIVE_ICONS',
  # set from command line
  'CSS_FILES',            # --css-include
  'CSS_REFS',             # --css-ref
  'EXPANDED_FORMATS',     # --if*
  'INCLUDE_DIRECTORIES',  # -I
);

our %document_settable_at_commands = (%document_settable_multiple_at_commands,
   %document_settable_unique_at_commands);

my %valid_customization_options;
foreach my $var (keys(%document_settable_at_commands),
         keys(%default_main_program_command_line_options),
         keys(%default_converter_command_line_options),
         keys(%default_main_program_customization),
         keys(%default_parser_specific_customization),
         keys(%default_converter_customization),
         @variable_string_settables,
         @variable_other_settables) {
  $valid_customization_options{$var} = 1;
}

sub valid_customization_option($)
{
  my $option = shift;
  return $valid_customization_options{$option};
}

# not documented on purpose, should not be called in user-defined
# codes
sub add_valid_customization_option($)
{
  my $option = shift;
  if ($option =~ /^[A-Z][A-Z_]{2,}$/) {
    $valid_customization_options{$option} = 1;
    return 1;
  }
  return 0;
}


# Tree transformations

my %valid_tree_transformations;
foreach my $valid_transformation ('simple_menus',
    'fill_gaps_in_sectioning', 'move_index_entries_after_items',
    'insert_nodes_for_sectioning_commands',
    'complete_tree_nodes_menus', 'regenerate_master_menu',
    'indent_menu_descriptions') {
  $valid_tree_transformations{$valid_transformation} = 1;
}

sub valid_tree_transformation ($)
{
  my $transformation = shift;
  return 1 if (defined($transformation)
               and $valid_tree_transformations{$transformation});
  return 0;
}


# @-commands classifications and other information on @-commands

our %nobrace_commands;             # commands never taking braces
%nobrace_commands = (
           '*', "\n",
           ' ', ' ',
           "\t", ' ',
           "\n", ' ',
           '-', '',  # hyphenation hint
           '|', '',  # used in formatting commands @evenfooting and friends
           '/', '',
           ':', '',
           '!', '!',
           '?', '?',
           '.', '.',
           '@', '@',
           '}', '}',
           '{', '{',
           '&', '&',
           '\\', '\\',  # should only appear in math
);

# @-commands max number of arguments.  Not set for all commands,
# in general it only matters if > 1, as commands with 0 args
# are in specific categories, and default handling of commands
# ignore commas as argument delimiter, which corresponds to commands
# with 1 argument.  Only used in Parser.
our %commands_args_number;

# commands taking a line as argument or no argument.
# sectioning commands and def* commands are added below.
# index commands are added dynamically.
#
# The values signification is:
# special:     no value and macro expansion, all the line is used, and
#              analysed during parsing (_parse_special_misc_command)
# lineraw:     no value and macro expansion, the line is kept as-is, not
#              analysed
# skipline:    no argument, everything else on the line is skipped
# text:        the line is parsed as texinfo, and the argument is converted
#              to simple text (in _end_line)
# line:        the line is parsed as texinfo
# a number:    the line is parsed as texinfo and the result should be plain
#              text maybe followed by a comment; the result is analysed
#              during parsing (_parse_line_command_args).
#              The number is an indication of the number of arguments of
#              the command.
#
# Beware that @item may be a 'line' command or an 'other' command
# depending on the context.
our %line_commands = (
  'node'              => 'line', # special arg
  'bye'               => 'skipline', # no arg
  'end'               => 'text',
  # set, clear
  'set'               => 'special', # special arg
  'clear'             => 'special', # special arg
  'unmacro'           => 'special',
  # comments
  'comment'           => 'lineraw',
  'c'                 => 'lineraw',
  # special
  'definfoenclose'    => 'specific', # 3
  'alias'             => 'specific', # 2
  # number of arguments is not known in advance.
  'columnfractions'   => 'specific',
  # file names
  'setfilename'       => 'text',
  'verbatiminclude'   => 'text',
  'include'           => 'text',

  'raisesections'     => 'skipline',  # no arg
  'lowersections'     => 'skipline', # no arg
  'contents'          => 'skipline', # no arg
  'shortcontents'     => 'skipline', # no arg
  'summarycontents'   => 'skipline', # no arg
  'insertcopying'     => 'skipline', # no arg
  'clickstyle'        => 'special', # arg should be an @-command
  # more relevant in preamble
  'documentencoding'  => 'text', # or 'specific'?
  'novalidate'        => 'skipline', # no arg
  'dircategory'       => 'line', # line. Position with regard
                                 # with direntry is significant
  'pagesizes'         => 'line', # can have 2 args
                           # or one? 200mm,150mm 11.5in
  'finalout'          => 'skipline', # no arg
  'paragraphindent'   => 'specific', # 1: arg none asis
                       # or a number and forbids anything else on the line
  'firstparagraphindent' => 'specific', # 1: none insert
  'frenchspacing'     => 'specific', # 1: on off
  'codequoteundirected'       => 'specific', # 1: on off
  'codequotebacktick'         => 'specific', # 1: on off
  'xrefautomaticsectiontitle' => 'specific', # 1: on off
  'deftypefnnewline'  => 'specific', # 1: on off
  'microtype'         => 'specific', # 1: on off
  'fonttextsize'      => 'specific', # 1: 10 11
  'allowcodebreaks'   => 'specific', # 1: false or true
  'exampleindent'     => 'specific', # 1: asis or a number
  'footnotestyle'     => 'specific', # 1: end and separate, nothing else on the line
  'urefbreakstyle'    => 'specific', # 1: after|before|none
  'smallbook'         => 'skipline', # no arg
  'afourpaper'        => 'skipline', # no arg
  'afivepaper'        => 'skipline', # no arg
  'afourlatex'        => 'skipline', # no arg
  'afourwide'         => 'skipline', # no arg
  'bsixpaper'         => 'skipline', # no arg
  'headings'          => 'specific', # 1: off on single double singleafter doubleafter
                            # interacts with setchapternewpage
  'setchapternewpage' => 'specific', # 1: off on odd

  'syncodeindex'      => 'specific', # 2: args are index identifiers
  'synindex'          => 'specific', # 2
  'defindex'          => 'specific', # 1: one identifier arg
  'defcodeindex'      => 'specific', # 1: one identifier arg
  'documentlanguage'  => 'text',     # language code arg
  'kbdinputstyle'     => 'specific', # 1: code example distinct
  'everyheadingmarks' => 'specific', # 1: top bottom
  'everyfootingmarks' => 'specific', # 1:
  'evenheadingmarks'  => 'specific', # 1:
  'oddheadingmarks'   => 'specific', # 1:
  'evenfootingmarks'  => 'specific', # 1:
  'oddfootingmarks'   => 'specific', # 1:
  'shorttitlepage'    => 'line',
  'settitle'          => 'line',

  # formatting
  'center'            => 'line',
  'printindex'        => 'specific', # 1:
  'listoffloats'      => 'line',
  # especially in titlepage
  'author'            => 'line',
  'subtitle'          => 'line',
  'title'             => 'line',
  'sp'                => 'specific', # 1: numerical arg
  'page'              => 'skipline', # no arg (pagebreak)
  'need'              => 'specific', # 1: one numerical/real arg
  # formatting
  'exdent'            => 'line',
  'item'              => 'line', # or skipspace, depending on the context
  'itemx'             => 'line',
  # not valid for info (should be in @iftex)
  'vskip'             => 'lineraw', # arg line in TeX
  'subentry'          => 'line',
);

$commands_args_number{'node'} = 4;

# commands that do not take the whole line as argument
#
# skipspace:   no argument, following spaces are skipped.
# noarg:       no argument
#
our %other_commands = (
  # formatting
  'noindent'          => 'skipspace',
  'indent'            => 'skipspace',
  'headitem'          => 'skipspace',
  'item'              => 'skipspace', # or line, depending on the context
  'tab'               => 'skipspace',
  'refill'            => 'noarg',     # obsolete
);

# only valid in heading or footing
our %in_heading_commands;
foreach my $in_heading_command ('thischapter', 'thischaptername',
   'thischapternum', 'thissection', 'thissectionname', 'thissectionnum',
   'thisfile', 'thispage', 'thistitle') {
  $in_heading_commands{$in_heading_command} = 1;

  $other_commands{$in_heading_command} = 'noarg';
}

# %in_heading_commands and @| are only valid in the following @-commands
our %heading_spec_commands;
foreach my $headings_specification_command ('everyheading', 'everyfooting',
  'evenheading', 'evenfooting', 'oddheading', 'oddfooting') {
  $heading_spec_commands{$headings_specification_command} = 1;

  $line_commands{$headings_specification_command} = 'line';
}

# only valid in index entries
our %in_index_commands;
foreach my $in_index_command ('sortas', 'seeentry', 'seealso', 'subentry') {
  $in_index_commands{$in_index_command} = 1;
}


# Keys are commmands, values are names of indices.
our %command_index;

$command_index{'vtable'} = 'vr';
$command_index{'ftable'} = 'fn';

our %index_names = (
 'cp' => {'in_code' => 0},
 'fn' => {'in_code' => 1},
 'vr' => {'in_code' => 1},
 'ky' => {'in_code' => 1},
 'pg' => {'in_code' => 1},
 'tp' => {'in_code' => 1},
);

foreach my $index (keys(%index_names)) {
  $index_names{$index}->{'name'} = $index;
  $index_names{$index}->{'contained_indices'}->{$index} = 1;
}

our %default_index_commands;
foreach my $index_name (keys (%index_names)) {
  my $one_letter_prefix = substr($index_name, 0, 1);
  foreach my $prefix ($index_name, $one_letter_prefix) {
    $line_commands{$prefix.'index'} = 'line';
    $default_index_commands{$prefix.'index'} = 1;
    $command_index{$prefix.'index'} = $index_name;
  }
}

# commands with braces.
our %brace_commands;
our %letter_no_arg_commands;
foreach my $letter_no_arg_command ('aa','AA','ae','oe','AE','OE','o','O',
                                   'ss','l','L','DH','dh','TH','th') {
  $letter_no_arg_commands{$letter_no_arg_command} = 1;
  $brace_commands{$letter_no_arg_command} = 'noarg';
}

foreach my $no_arg_command ('TeX','LaTeX','bullet','copyright',
  'registeredsymbol','dots','enddots','equiv','error','expansion','arrow',
  'minus','point','print','result','today',
  'exclamdown','questiondown','pounds','ordf','ordm',
  'atchar', 'lbracechar', 'rbracechar', 'backslashchar', 'hashchar', 'comma',
  'ampchar',
  'euro', 'geq','leq','tie','textdegree','click',
  'quotedblleft','quotedblright','quoteleft','quoteright','quotedblbase',
  'quotesinglbase','guillemetleft','guillemetright','guillemotleft',
  'guillemotright','guilsinglleft','guilsinglright') {
  $brace_commands{$no_arg_command} = 'noarg';
}

# accent commands. They may be called with and without braces.
our %accent_commands;
foreach my $accent_command ('"','~','^','`',"'",',','=',
                           'ringaccent','H','dotaccent','u','ubaraccent',
                           'udotaccent','v','ogonek','tieaccent', 'dotless') {
  $accent_commands{$accent_command} = 1;
  $brace_commands{$accent_command} = 'accent';
}

foreach my $style_command ('asis', 'cite', 'clicksequence',
  'dfn', 'emph', 'sc', 'var', 'headitemfont', 'strong', 'sub', 'sup',
  'i', 'b', 'sansserif', 'slanted') {
  $brace_commands{$style_command} = 'style_other';
}

foreach my $command ('r') {
  $brace_commands{$command} = 'style_no_code';
}

our %brace_code_commands; # contains also non style commands, see below
foreach my $command ('code', 'command', 'env', 'file', 'kbd', 'option',
   'samp', 't') {
  $brace_code_commands{$command} = 1;
  $brace_commands{$command} = 'style_code';
}

# FIXME this category contains commands with different constraints.  Some should
# only contain text: 'U' , 'dmn', 'key', 'hyphenation', 'sortas'.
# The others can contain @-commands, but not all, for example no @ref,
# no @footnote: 'anchor', 'indicateurl', 'errormsg', 'seeentry', 'seealso'
# and lastly titlefont which may be less constrained.

# in this category, the leading and trailing spaces are put in specific
# text with type, but commas do not delimitate arguments
foreach my $one_arg_command ('U', 'dmn', 'key', 'hyphenation', 'indicateurl',
    'titlefont', 'anchor', 'errormsg', 'sortas', 'seeentry', 'seealso') {
  $brace_commands{$one_arg_command} = 'arguments';
  $commands_args_number{$one_arg_command} = 1;
}

# commands in other keep their leading and trailing spaces in main text
# argument, but are not style commands.
# key should not contain spaces, so it does not matter if 'other' or 1.
# verb is treated especially, it should not matter in which category it is.
foreach my $other_arg_command ('w', 'verb') {
  $brace_commands{$other_arg_command} = 'other';
}

# brace style command that are not style commands
$brace_code_commands{'key'} = 1;
$brace_code_commands{'verb'} = 1;
$brace_code_commands{'indicateurl'} = 1;

# Commands that enclose full texts not in the main document context.
# They can contain multiple paragraphs.
our %context_brace_commands;
foreach my $context_brace_command ('footnote', 'caption',
    'shortcaption') {
  $context_brace_commands{$context_brace_command} = $context_brace_command;
  $brace_commands{$context_brace_command} = 'context';
}

our %math_commands;
# Commands that enclose math content, and, because of that, are not in the
# main document context.
foreach my $math_brace_command ('math') {
  $context_brace_commands{$math_brace_command} = $math_brace_command;
  $brace_commands{$math_brace_command} = 'context';
  $math_commands{$math_brace_command} = 1;
}

our %explained_commands;
foreach my $explained_command ('abbr', 'acronym') {
  $explained_commands{$explained_command} = 1;
  $brace_commands{$explained_command} = 'arguments';
  $commands_args_number{$explained_command} = 2;
}

our %inline_format_commands;
our %inline_commands;
foreach my $inline_format_command ('inlineraw', 'inlinefmt',
        'inlinefmtifelse') {
  $inline_format_commands{$inline_format_command} = 1;
  $commands_args_number{$inline_format_command} = 2;
  $brace_commands{$inline_format_command} = 'arguments';
  $inline_commands{$inline_format_command} = 1;
}

$commands_args_number{'inlinefmtifelse'} = 3;

our %inline_conditional_commands;
foreach my $inline_conditional_command ('inlineifclear', 'inlineifset') {
  $inline_conditional_commands{$inline_conditional_command} = 1;
  $commands_args_number{$inline_conditional_command} = 2;
  $brace_commands{$inline_conditional_command} = 'arguments';
  $inline_commands{$inline_conditional_command} = 1;
}

foreach my $two_arg_command('email') {
  $commands_args_number{$two_arg_command} = 2;
  $brace_commands{$two_arg_command} = 'arguments';
}

foreach my $three_arg_command('uref','url','inforef') {
  $commands_args_number{$three_arg_command} = 3;
  $brace_commands{$three_arg_command} = 'arguments';
}

foreach my $five_arg_command('xref','ref','pxref','image') {
  $commands_args_number{$five_arg_command} = 5;
  $brace_commands{$five_arg_command} = 'arguments';
}


# some classification to help converters
our %ref_commands;
foreach my $ref_command ('xref','ref','pxref','inforef') {
  $ref_commands{$ref_command} = 1;
}

# brace command that is not replaced with text.
my %unformatted_brace_commands;
foreach my $unformatted_brace_command ('anchor', 'shortcaption',
    'caption', 'hyphenation', 'errormsg') {
  $unformatted_brace_commands{$unformatted_brace_command} = 1;
}

# commands delimiting blocks, with an @end.
# Type of command, 'raw', 'def', 'conditional', 'multitable'...
our %block_commands;

# commands that have a possible content before an item
our %blockitem_commands;

# Do nothing, used to mark translations for gettext.  The strings
# are marked to be translated in the parsers with type 'untranslated'.
sub gdt($)
{
  return $_[0];
}

our %def_map = (
    # basic commands.
    # 'arg' and 'argtype' are for everything appearing after the other
    # arguments.
    'deffn',     [ 'category', 'name', 'arg' ],
    'defvr',     [ 'category', 'name' ],
    'deftypefn', [ 'category', 'type', 'name', 'argtype' ],
    'deftypeop', [ 'category', 'class' , 'type', 'name', 'argtype' ],
    'deftypevr', [ 'category', 'type', 'name' ],
    'defcv',     [ 'category', 'class' , 'name' ],
    'deftypecv', [ 'category', 'class' , 'type', 'name' ],
    'defop',     [ 'category', 'class' , 'name', 'arg' ],
    'deftp',     [ 'category', 'name', 'argtype' ],
    # shortcuts
    'defun',         {'deffn'     => gdt('Function')},
    'defmac',        {'deffn'     => gdt('Macro')},
    'defspec',       {'deffn'     => gdt('Special Form')},
    'defvar',        {'defvr'     => gdt('Variable')},
    'defopt',        {'defvr'     => gdt('User Option')},
    'deftypefun',    {'deftypefn' => gdt('Function')},
    'deftypevar',    {'deftypevr' => gdt('Variable')},
    'defivar',       {'defcv'     => gdt('Instance Variable')},
    'deftypeivar',   {'deftypecv' => gdt('Instance Variable')},
    'defmethod',     {'defop'     => gdt('Method')},
    'deftypemethod', {'deftypeop' => gdt('Method')},
);

# the type of index, fn: function, vr: variable, tp: type
my %index_type_def = (
 'fn' => ['deffn', 'deftypefn', 'deftypeop', 'defop'],
 'vr' => ['defvr', 'deftypevr', 'defcv', 'deftypecv' ],
 'tp' => ['deftp']
);

foreach my $index_type (keys %index_type_def) {
  foreach my $def (@{$index_type_def{$index_type}}) {
    $command_index{$def} = $index_type;
  }
}

our %def_commands;
our %def_aliases;
# Argument not metasyntactic variables only.
our %def_no_var_arg_commands;
foreach my $def_command(keys %def_map) {
  if (ref($def_map{$def_command}) eq 'HASH') {
    my ($real_command) = keys (%{$def_map{$def_command}});
    $command_index{$def_command} = $command_index{$real_command};
    $def_aliases{$def_command} = $real_command;
    $def_aliases{$def_command.'x'} = $real_command.'x';
  }
  $block_commands{$def_command} = 'def';
  $line_commands{$def_command.'x'} = 'line';
  $def_commands{$def_command} = 1;
  $def_commands{$def_command.'x'} = 1;
  $command_index{$def_command.'x'} = $command_index{$def_command};
  $def_no_var_arg_commands{$def_command} = 1 if ($def_command =~ /^deftype/);
}

$block_commands{'multitable'} = 'multitable';
$blockitem_commands{'multitable'} = 1;

# block commands in which menu entry and menu comments appear
foreach my $menu_command ('menu', 'detailmenu', 'direntry') {
  $block_commands{$menu_command} = 'menu';
};

our %align_commands;
foreach my $align_command('raggedright', 'flushleft', 'flushright') {
  $block_commands{$align_command} = 'align';
  $align_commands{$align_command} = 1;
}
$align_commands{'center'} = 1;

foreach my $block_command('indentedblock', 'smallindentedblock') {
  $block_commands{$block_command} = 'align';
}

foreach my $block_command('cartouche', 'group') {
  $block_commands{$block_command} = 'other';
}

our %region_commands;
foreach my $block_command('titlepage', 'copying', 'documentdescription') {
  $block_commands{$block_command} = 'region';
  $region_commands{$block_command} = 1;
}

our %preformatted_commands;
our %preformatted_code_commands;
foreach my $preformatted_command(
    'example', 'smallexample', 'lisp', 'smalllisp') {
  $block_commands{$preformatted_command} = 'preformatted';
  $preformatted_commands{$preformatted_command} = 1;
  $preformatted_code_commands{$preformatted_command} = 1;
}
$commands_args_number{'example'} = 'variadic'; # unlimited arguments

foreach my $preformatted_command(
    'display', 'smalldisplay', 'format', 'smallformat') {
  $block_commands{$preformatted_command} = 'preformatted';
  $preformatted_commands{$preformatted_command} = 1;
}

foreach my $block_math_command('displaymath') {
  $block_commands{$block_math_command} = 'math';
  $math_commands{$block_math_command} = 1;
}

# macro/rmacro are special
foreach my $raw_command ('verbatim', 'ignore', 'macro', 'rmacro') {
  $block_commands{$raw_command} = 'raw';
}

our %texinfo_output_formats;
foreach my $format_raw_command('html', 'tex', 'xml', 'docbook', 'latex') {
  $block_commands{$format_raw_command} = 'format_raw';
  $texinfo_output_formats{$format_raw_command} = $format_raw_command;
}

foreach my $output_format_command ('info', 'plaintext') {
  $texinfo_output_formats{$output_format_command} = $output_format_command;
}

foreach my $command (keys(%texinfo_output_formats)) {
  $block_commands{'if' . $command} = 'conditional';
  $block_commands{'ifnot' . $command} = 'conditional';
}

$block_commands{'ifset'} = 'conditional';
$block_commands{'ifclear'} = 'conditional';

$block_commands{'ifcommanddefined'} = 'conditional';
$block_commands{'ifcommandnotdefined'} = 'conditional';

foreach my $item_container_command ('itemize', 'enumerate') {
  $block_commands{$item_container_command} = 'item_container';
  $commands_args_number{$item_container_command} = 1;
  $blockitem_commands{$item_container_command} = 1;
}

foreach my $item_line_command ('table', 'ftable', 'vtable') {
  $block_commands{$item_line_command} = 'item_line';
  $commands_args_number{$item_line_command} = 1;
  $blockitem_commands{$item_line_command} = 1;
}

foreach my $block_command_one_arg('quotation', 'smallquotation') {
  $block_commands{$block_command_one_arg} = 'quotation';
  $commands_args_number{$block_command_one_arg} = 1;
}

$block_commands{'float'} = 'float';
$commands_args_number{'float'} = 2;

# commands that forces closing an opened paragraph.
our %close_paragraph_commands;

foreach my $block_command (keys(%block_commands)) {
  $close_paragraph_commands{$block_command} = 1
     unless ($block_commands{$block_command} eq 'raw'
             or $block_commands{$block_command} eq 'conditional'
             or $block_commands{$block_command} eq 'format_raw');
}

$close_paragraph_commands{'verbatim'} = 1;

foreach my $close_paragraph_command ('titlefont', 'insertcopying', 'sp',
  'verbatiminclude', 'need', 'page', 'item', 'itemx', 'tab', 'headitem',
  'printindex', 'listoffloats', 'center', 'dircategory', 'contents',
  'shortcontents', 'summarycontents', 'caption', 'shortcaption',
  'setfilename', 'exdent') {
  $close_paragraph_commands{$close_paragraph_command} = 1;
}

foreach my $close_paragraph_command (keys(%def_commands)) {
  $close_paragraph_commands{$close_paragraph_command} = 1;
}


our %deprecated_commands = (
  'definfoenclose' => '',
  'refill' => '',
  'inforef' => '',
  'centerchap' => '',
);

my %unformatted_block_commands;
foreach my $unformatted_block_command ('ignore', 'macro', 'rmacro') {
  $unformatted_block_commands{$unformatted_block_command} = 1;
}

our %small_block_associated_command;
for my $cmd ('example', 'display', 'format', 'lisp', 'quotation',
             'indentedblock') {
  $small_block_associated_command{'small'.$cmd} = $cmd;
};

# commands that should only appear at the root level and contain up to
# the next root command.  @node and sectioning commands.
our %root_commands;

our %command_structuring_level = (
              'top'               => 0,
              'part'              => 0, # out of the main hierarchy
              'chapter'           => 1,
              'majorheading'      => 1, # same as chapheading
              'unnumbered'        => 1,
              'centerchap'        => 1, # like unnumbered
              'chapheading'       => 1,
              'appendix'          => 1,
              'section'           => 2,
              'unnumberedsec'     => 2,
              'heading'           => 2,
              'appendixsec'       => 2,
              'appendixsection'   => 2, # same as appendixsec
              'subsection'        => 3,
              'unnumberedsubsec'  => 3,
              'subheading',       => 3,
              'appendixsubsec'    => 3,
              'subsubsection'     => 4,
              'unnumberedsubsubsec' => 4,
              'subsubheading'     => 4,
              'appendixsubsubsec' => 4,
         );

our %level_to_structuring_command;

{
  my $sections = [ ];
  my $appendices = [ ];
  my $unnumbered = [ ];
  my $headings = [ ];

  # set levels for synonyms
  $level_to_structuring_command{'appendixsection'} = $appendices;
  $level_to_structuring_command{'majorheading'} = $headings;
  $level_to_structuring_command{'centerchap'} = $unnumbered;

  foreach my $command (keys (%command_structuring_level)) {
    next if defined($level_to_structuring_command{$command});
    if ($command =~ /^appendix/) {
      $level_to_structuring_command{$command} = $appendices;
    } elsif ($command =~ /^unnumbered/ or $command eq 'top') {
      $level_to_structuring_command{$command} = $unnumbered;
    } elsif ($command =~ /section$/ or $command eq 'chapter') {
      $level_to_structuring_command{$command} = $sections;
    } else {
      # no mapping for part, it is outside of the main hierarchy
      next if ($command eq 'part');
      $level_to_structuring_command{$command} = $headings;
    }
    my $command_level = $command_structuring_level{$command};
    if (defined($level_to_structuring_command{$command}->[$command_level])) {
      die "$command: level_to_structuring_command already set to "
             .$level_to_structuring_command{$command}->[$command_level]."\n";
    }
    $level_to_structuring_command{$command}->[$command_level]
      = $command;
  }
}


our %sectioning_heading_commands;

foreach my $sectioning_command (keys (%command_structuring_level)) {
  $line_commands{$sectioning_command} = 'line';
  if ($sectioning_command =~ /heading/) {
    $close_paragraph_commands{$sectioning_command} = 1;
  } else {
    $root_commands{$sectioning_command} = 1;
  }
  $sectioning_heading_commands{$sectioning_command} = 1;
}


# misc commands which arguments may be formatted as text.
# index commands may be too, but index command may be added with
# @def*index so they are not added here.
our %formatted_misc_commands;
foreach my $formatted_misc_command ('center', 'page',
   'author', 'subtitle', 'title', 'exdent', 'headitem', 'item',
   'itemx', 'tab', 'node', keys(%sectioning_heading_commands)) {
  $formatted_misc_commands{$formatted_misc_command} = 1;
}

# misc commands which may be formatted as text, but that
# require constructing some replacement text
# depending on the case, @contents, @shortcontents and
# @summarycontents may be formattable_misc_commands too.
# Since they already are global commands they are not in the
# default formattable_misc_commands.
our %formattable_misc_commands;
foreach my $formattable_misc_command ('insertcopying',
  'printindex', 'listoffloats', 'need', 'sp', 'verbatiminclude',
  'vskip') {
  $formattable_misc_commands{$formattable_misc_command} = 1;
}

# used in converters, not in the parser
our %misc_commands = (%line_commands, %other_commands);

$root_commands{'node'} = 1;

# there is the @txiinternalvalue command too, but it is considered
# as a valid command only if a customization option is set, such
# that it does not appear in user documents.  So it is not set here.
our %all_commands;
foreach my $command (
  keys(%Texinfo::Common::block_commands),
  keys(%Texinfo::Common::brace_commands),
  keys(%Texinfo::Common::misc_commands),
  keys(%Texinfo::Common::nobrace_commands),
  qw(value),
 ) {
  $all_commands{$command} = 1;
}

our %preamble_commands;
foreach my $preamble_command ('direnty', 'hyphenation', 'errormsg',
       'inlineraw', '*', keys(%document_settable_at_commands),
       (grep {$block_commands{$_} eq 'format_raw'} keys(%block_commands)),
       keys(%inline_commands),
       keys(%unformatted_block_commands), keys(%misc_commands),
       keys(%region_commands)) {
  $preamble_commands{$preamble_command} = 1;
}

foreach my $formattable_or_formatted_misc_command (
   keys(%formattable_misc_commands), keys(%formatted_misc_commands),
        keys(%default_index_commands), keys(%in_heading_commands),
        keys(%def_commands)) {
  delete $preamble_commands{$formattable_or_formatted_misc_command};
}


# functions for main program.  Should not be called in user-defined code.
# FIXME locate_init_file() is also called in HTML Converter for htmlxref files.

# $FILE:        file name to locate. It can be a file path. Binary string.
# $DIRECTORIES: a reference on a array containing a list of directories to
#               search the file in. Binary strings.
# $ALL_FILES:   if true collect all the files with that name, otherwise stop
#               at first match.
sub locate_init_file($$$)
{
  my $file = shift;
  my $directories = shift;
  my $all_files = shift;

  if (File::Spec->file_name_is_absolute($file)) {
    return $file if (-e $file and -r $file);
  } else {
    my @files;
    foreach my $dir (@$directories) {
      next unless (-d $dir);
      my $possible_file = File::Spec->catfile($dir, $file);
      if ($all_files) {
        push (@files, $possible_file)
          if (-e $possible_file and -r $possible_file);
      } else {
        return $possible_file if (-e $possible_file and -r $possible_file);
      }
    }
    return @files if ($all_files);
  }
  return undef;
}


# API to open, set encoding and register files.
# In general $SELF is stored as $converter->{'output_files'}
# and should be accessed through $converter->output_files_information();
#
# All the opened files are registered, except for stdout,
# and the closing of files should be registered too with
# output_files_register_closed() below.  This makes possible to
# unlink all the opened files and close the files not already
# closed.
#
# $FILE_PATH is the file path, it should be a binary string.
# If $USE_BINMODE is set, call binmode() to set binary mode.
# $OUTPUT_ENCODING argument overrides the output encoding.
# returns the opened filehandle, or undef if opening failed,
# and the $! error message or undef if opening succeeded.
#
# TODO next two functions not documented anywhere, probably relevant to document
# both in POD and in HTML Customization API.
sub output_files_open_out($$$;$$)
{
  my $self = shift;
  my $customization_information = shift;
  my $file_path = shift;
  my $use_binmode = shift;
  my $output_encoding = shift;

  my $encoding;
  if (defined($output_encoding)) {
    $encoding = $output_encoding;
  } elsif (defined($customization_information->get_conf('OUTPUT_PERL_ENCODING'))) {
    $encoding = $customization_information->get_conf('OUTPUT_PERL_ENCODING');
  }

  if ($file_path eq '-') {
    binmode(STDOUT) if $use_binmode;
    binmode(STDOUT, ":encoding($encoding)") if (defined($encoding));
    if ($self) {
      $self->{'unclosed_files'}->{$file_path} = \*STDOUT;
    }
    return \*STDOUT, undef;
  }
  my $filehandle = do { local *FH };
  if (!open ($filehandle, '>', $file_path)) {
    my $error_message = $!;
    return undef, $error_message;
  }
  # If $use_binmode is true, we run binmode to turn off outputting LF as CR LF
  # under MS-Windows, so that Info tag tables will have correct offsets.  This
  # must be done before setting the encoding filters with binmode.
  binmode($filehandle) if $use_binmode;
  if ($encoding) {
    binmode($filehandle, ":encoding($encoding)");
  }
  if ($self) {
    push @{$self->{'opened_files'}}, $file_path;
    $self->{'unclosed_files'}->{$file_path} = $filehandle;
  }
  return $filehandle, undef;
}

# see the description of $SELF in comment above output_files_open_out.
#
# $FILE_PATH is the file path, it should be a binary string.
sub output_files_register_closed($$)
{
  my $self = shift;
  my $file_path = shift;
  if ($self->{'unclosed_files'}->{$file_path}) {
    delete $self->{'unclosed_files'}->{$file_path};
  } else {
    cluck "$file_path not opened\n";
  }
}

# The next two functions should not be called from user-defined
# code, only from the main program.  They are defined here for
# consistency of the API and clarity of the code.
#
# see the description of $SELF in comment above output_files_open_out.
sub output_files_opened_files($)
{
  my $self = shift;
  if (defined($self->{'opened_files'})) {
    return @{$self->{'opened_files'}};
  } else {
    return ();
  }
}

# see the description of $SELF in comment above output_files_open_out.
sub output_files_unclosed_files($)
{
  my $self = shift;
  return $self->{'unclosed_files'};
}
# end of output_files API


# functions used in main program, Parser and/or Texinfo::Structuring.
# Not supposed to be called in user-defined code.

# Called both in NonXS and XS parsers
sub rearrange_tree_beginning($$)
{
  my $self = shift;
  my $before_node_section = shift;

  # Put everything before @setfilename in a special type.  This allows to
  # ignore everything before @setfilename.
  if ($self->global_commands_information()->{'setfilename'}
      and $self->global_commands_information()->{'setfilename'}->{'parent'}
                                                 eq $before_node_section) {
    my $before_setfilename = {'type' => 'preamble_before_setfilename',
                              'parent' => $before_node_section,
                              'contents' => []};
    while (@{$before_node_section->{'contents'}}
        and (!$before_node_section->{'contents'}->[0]->{'cmdname'}
          or $before_node_section->{'contents'}->[0]->{'cmdname'} ne 'setfilename')) {
      my $content = shift @{$before_node_section->{'contents'}};
      $content->{'parent'} = $before_setfilename;
      push @{$before_setfilename->{'contents'}}, $content;
    }
    unshift (@{$before_node_section->{'contents'}}, $before_setfilename)
      if (@{$before_setfilename->{'contents'}});
    delete $before_node_section->{'contents'}
      if (scalar(@{$before_node_section->{'contents'}}) == 0);
  }
  
  _add_preamble_before_content($before_node_section);
}

sub _add_preamble_before_content($)
{
  my $before_node_section = shift;
  
  # add a preamble for informational commands
  my $informational_preamble = {'type' => 'preamble_before_content',
                                'parent' => $before_node_section,
                                'contents' => []};
  my @first_types;
  if ($before_node_section->{'contents'}) {
    while (@{$before_node_section->{'contents'}}) {
      my $next_content = $before_node_section->{'contents'}->[0];
      if ($next_content->{'type'}
          and ($next_content->{'type'} eq 'preamble_before_beginning'
               or $next_content->{'type'} eq 'preamble_before_setfilename')) {
        push @first_types, shift @{$before_node_section->{'contents'}};
      } elsif (($next_content->{'type'} and $next_content->{'type'} eq 'paragraph')
               or ($next_content->{'cmdname'} and
                   not $preamble_commands{$next_content->{'cmdname'}})) {
        last;
      } else {
        my $content = shift @{$before_node_section->{'contents'}};
        $content->{'parent'} = $informational_preamble;
        push @{$informational_preamble->{'contents'}}, $content;
      }
    }
  }
  push @first_types, $informational_preamble;
  unshift (@{$before_node_section->{'contents'}}, @first_types);
}

# for Parser and main program
sub warn_unknown_language($) {
  my $lang = shift;

  my @messages = ();
  my $lang_code = $lang;
  my $region_code;

  if ($lang =~ /^([a-z]+)_([A-Z]+)/) {
    $lang_code = $1;
    $region_code = $2;
  }

  if (! $Texinfo::Documentlanguages::language_codes{$lang_code}) {
    push @messages, sprintf(__("%s is not a valid language code"),
                            $lang_code);
  }
  if (defined($region_code)
       and ! $Texinfo::Documentlanguages::region_codes{$region_code}) {
    push @messages, sprintf(__("%s is not a valid region code"),
                            $region_code);
  }
  return @messages;
}

# next functions are for code used in Structuring in addition to Parser.
# also possibly used in Texinfo::Transformations.

sub _find_end_brace($$)
{
  my $text = shift;
  my $braces_count = shift;

  my $before = '';
  while ($braces_count > 0 and length($text)) {
    if ($text =~ s/([^()]*)([()])//) {
      $before .= $1.$2;
      my $brace = $2;
      if ($brace eq '(') {
        $braces_count++;
      } else {
        $braces_count--;
        if ($braces_count == 0) {
          return ($before, $text, 0);
        }
      }
    } else {
      $before .= $text;
      $text = '';
    }
  }
  return ($before, undef, $braces_count);
}

# This only counts opening braces, and returns 0 once all the parentheses
# are closed
sub _count_opened_tree_braces($$);
sub _count_opened_tree_braces($$)
{
  my $current = shift;
  my $braces_count = shift;
  if (defined($current->{'text'})) {
    my ($before, $after);
    ($before, $after, $braces_count) = _find_end_brace($current->{'text'},
                                                          $braces_count);
  }
  return $braces_count;
}

# retrieve a leading manual name in parentheses, if there is one.
# $LABEL_CONTENTS_CONTAINER->{'contents'} is the Texinfo for the specification
# of a node.  It is relevant in any situation when a label is expected,
# @node, menu entry, float, anchor...  For the @node command, for instance,
# $LABEL_CONTENTS_CONTAINER is typically $node->{'args'}->[0].
#
# Returned object is a hash with two fields:
#
#     manual_content - Texinfo tree for a manual name extracted from the
#                      node specification.
#     node_content - Texinfo tree for the node name on its own
#
# A contents array where the manual_content and node_content
# elements substituted the initial contents is also returned,
# typically to replace $LABEL_CONTENTS_CONTAINER->{'contents'}
# for consistency.
#
# Could be documented, but only is there is evidence that this function
# is useful in user-defined code.
sub parse_node_manual($)
{
  my $label_contents_container = shift;

  return (undef, undef)
     if (!$label_contents_container->{'contents'});

  # the elements are not modified, when modifications are needed new elements
  # are setup.
  my @contents = @{$label_contents_container->{'contents'}};

  my $manual;
  my $result;
  my ($end_paren, $spaces_after);

  if ($contents[0] and $contents[0]->{'text'} and $contents[0]->{'text'} =~ /^\(/) {
    # remove the leading ( from @contents, it is not in manual_content.
    my $braces_count = 1;
    if ($contents[0]->{'text'} ne '(') {
      my $first_element = shift @contents;
      my $brace_text = $first_element->{'text'};
      $brace_text =~ s/^\(//;
      my $new_element = { 'text' => $brace_text,
                          'parent' => $first_element->{'parent'} };
      $new_element->{'type'} = $first_element->{'type'}
         if defined($first_element->{'type'});
      unshift @contents, $new_element;
    } else {
      shift @contents;
    }
    while (@contents) {
      my $content = shift @contents;
      if (!defined($content->{'text'}) or $content->{'text'} !~ /\)/) {
        push @$manual, $content;
        $braces_count = _count_opened_tree_braces($content, $braces_count);
        # This is an error, braces were closed in a command
        if ($braces_count == 0) {
          last;
        }
      } else {
        my ($before, $after);
        ($before, $after, $braces_count) = _find_end_brace($content->{'text'},
                                                              $braces_count);
        if ($braces_count == 0) {
          # remove the closing ), it is not in manual_content
          $before =~ s/(\))$//;
          $end_paren = $1;
          push @$manual, { 'text' => $before, 'parent' => $content->{'parent'} }
            if ($before ne '');
          $after =~ s/^(\s*)//;
          $spaces_after = $1;
          # put back everything appearing after the )
          unshift @contents,  { 'text' => $after, 'parent' => $content->{'parent'} }
            if ($after ne '');
          last;
        } else {
          push @$manual, $content;
        }
      }
    }
    if ($braces_count == 0) {
      $result->{'manual_content'} = $manual if (defined($manual));
    } else {
      # unclosed brace, reset @contents
      @contents = @{$label_contents_container->{'contents'}};
    }
  }
  if (scalar(@contents) > 0) {
    $result->{'node_content'} = \@contents;
  }

  # Return the contents array in which all the elements in 'manual_content'
  # and 'node_content' have been put.
  my $new_contents = [];
  if (defined($result) and defined($result->{'manual_content'})) {
    @$new_contents = ({ 'text' => '(', 'parent' => $label_contents_container },
                      @$manual);
    push @$new_contents, {  'text' => ')',
                            'parent' => $label_contents_container }
      if $end_paren;
    push @$new_contents, { 'text' => $spaces_after,
                           'parent' => $label_contents_container }
      if $spaces_after;
  }
  if (@contents) {
    @$new_contents = (@$new_contents, @contents);
  }

  return $result, $new_contents;
}


# misc functions used in diverse contexts and useful in converters

# Reverse the decoding of the file name from the input encoding.  When
# dealing with file names, we want Perl strings representing sequences of
# bytes, not Unicode codepoints.
#     This is necessary even if the name of the included file is purely
# ASCII, as the name of the directory it is located within may contain
# non-ASCII characters.
#   Otherwise, the -e operator and similar may not work correctly.
sub encode_file_name($$)
{
  my $file_name = shift;
  my $input_encoding = shift;

  my $encoding;

  return ($file_name, $encoding)
    if (not defined($input_encoding));

  if ($input_encoding eq 'utf-8' or $input_encoding eq 'utf-8-strict') {
    utf8::encode($file_name);
    $encoding = 'utf-8';
  } else {
    $file_name = Encode::encode($input_encoding, $file_name);
    $encoding = $input_encoding;
  }
  return ($file_name, $encoding);
}

sub locate_include_file($$)
{
  my $customization_information = shift;
  my $input_file_path = shift;

  my $ignore_include_directories = 0;

  my ($volume, $directories, $filename)
     = File::Spec->splitpath($input_file_path);
  my @directories = File::Spec->splitdir($directories);

  #print STDERR "$customization_information $input_file_path ".
  # @{$customization_information->get_conf('INCLUDE_DIRECTORIES')}\n";
  # If the path is absolute or begins with . or .., do not search in
  # include directories.
  if (File::Spec->file_name_is_absolute($input_file_path)) {
    $ignore_include_directories = 1;
  } else {
    foreach my $dir (@directories) {
      if ($dir eq File::Spec->updir() or $dir eq File::Spec->curdir()) {
        $ignore_include_directories = 1;
        last;
      } elsif ($dir ne '') {
        last;
      }
    }
  }

  my $found_file;
  if ($ignore_include_directories) {
    $found_file = $input_file_path
         if (-e $input_file_path and -r $input_file_path);
  } else {
    my @include_directories;
    if ($customization_information
        and $customization_information->get_conf('INCLUDE_DIRECTORIES')) {
      @include_directories
         = @{$customization_information->get_conf('INCLUDE_DIRECTORIES')};
    } else {
      # no object with directory list and not an absolute path, never succeed
      return undef;
    }
    foreach my $include_dir (@include_directories) {
      my ($include_volume, $include_dir_path, $include_filename)
         = File::Spec->splitpath($include_dir, 1);
      
      my $possible_file = File::Spec->catpath($include_volume,
        File::Spec->catdir(File::Spec->splitdir($include_dir_path),
                           @directories), $filename);
      $found_file = $possible_file
           if (-e $possible_file and -r $possible_file);
      last if (defined($found_file));
    }
  }
  return $found_file;
}

sub _informative_command_value($)
{
  my $element = shift;

  my $cmdname = $element->{'cmdname'};

  if ($misc_commands{$cmdname} eq 'skipline') {
    return 1;
  } elsif (exists($element->{'extra'}->{'text_arg'})) {
    return $element->{'extra'}->{'text_arg'};
  } elsif ($element->{'extra'} and $element->{'extra'}->{'misc_args'}
           and exists($element->{'extra'}->{'misc_args'}->[0])) {
    return $element->{'extra'}->{'misc_args'}->[0];
  }
  return undef;
}

# REMARK documentencoding handling is not reverted by resetting a value with
# set_conf, as the encodings are set using other sources of information
# (possibly based on @documentencoding) in converter.
sub set_informative_command_value($$)
{
  my $self = shift;
  my $element = shift;

  my $cmdname = $element->{'cmdname'};
  $cmdname = 'shortcontents' if ($cmdname eq 'summarycontents');

  my $value = _informative_command_value($element);
  if (defined($value)) {
    $self->set_conf($cmdname, $value);
  }
}

sub _in_preamble($)
{
  my $element = shift;
  my $current_element = $element;
  while ($current_element->{'parent'}) {
    if (defined($current_element->{'parent'}->{'type'})
        and $current_element->{'parent'}->{'type'} eq 'preamble_before_content') {
      return 1;
    }
    $current_element = $current_element->{'parent'};
  }
  return 0;
}

# $COMMAND_LOCATION is 'last', 'preamble' or 'preamble_or_first'
# 'preamble' means setting sequentially to the values in the preamble.
# 'preamble_or_first'  means setting to the first value for the command
# in the document if the first command is not in the preamble, else set
# sequentially to the values in the preamble.
# 'last' means setting to the last value for the command in the document.
#
# For unique command, the last may be considered to be the same as the first.
#
# Notice that the only effect is to use set_conf (directly or through
# set_informative_command_value), no @-commands setting side effects are done
# and associated customization variables are not set/reset either.
sub set_global_document_command($$$$)
{
  my $self = shift;
  my $global_commands_information = shift;
  my $global_command = shift;
  my $command_location = shift;

  if ($command_location ne 'last' and $command_location ne 'preamble_or_first'
      and $command_location ne 'preamble') {
    warn "BUG: set_global_document_command: unknown command_location: $command_location";
  }

  my $element;
  if (defined($global_commands_information->{$global_command})
      and ref($global_commands_information->{$global_command}) eq 'ARRAY') {
    if ($command_location eq 'last') {
      $element = $global_commands_information->{$global_command}->[-1];
      set_informative_command_value($self, $element);
    } else {
      if ($command_location eq 'preamble_or_first'
          and not _in_preamble($global_commands_information->{$global_command}->[0])) {
        $element =
          $global_commands_information->{$global_command}->[0];
        set_informative_command_value($self, $element);
      } else {
        foreach my $command_element (@{$global_commands_information->{$global_command}}) {
          if (_in_preamble($command_element)) {
            $element = $command_element;
            set_informative_command_value($self, $element);
          } else {
            last;
          }
        }
      }
    }
  } elsif (defined($global_commands_information->{$global_command})) {
    # unique command, first, preamble and last are the same
    $element = $global_commands_information->{$global_command};
    set_informative_command_value($self, $element);
  }
  return $element;
}

sub set_output_encodings($$)
{
  my $customization_information = shift;
  my $parser_information = shift;

  $customization_information->set_conf('OUTPUT_ENCODING_NAME',
               $parser_information->{'input_encoding_name'})
     if ($parser_information->{'input_encoding_name'});
  if (!$customization_information->get_conf('OUTPUT_PERL_ENCODING')
       and $customization_information->get_conf('OUTPUT_ENCODING_NAME')) {
    my $perl_encoding
      = Encode::resolve_alias($customization_information->get_conf('OUTPUT_ENCODING_NAME'));
    if ($perl_encoding) {
      $customization_information->set_conf('OUTPUT_PERL_ENCODING', $perl_encoding);
    }
  }
}

my $min_level = $command_structuring_level{'chapter'};
my $max_level = $command_structuring_level{'subsubsection'};

# Return numbered level of an element, as modified by raise/lowersections
sub section_level($)
{
  my $section = shift;
  my $level = $command_structuring_level{$section->{'cmdname'}};
  # correct level according to raise/lowersections
  if ($section->{'extra'} and $section->{'extra'}->{'sections_level'}) {
    $level -= $section->{'extra'}->{'sections_level'};
    if ($level < $min_level) {
      if ($command_structuring_level{$section->{'cmdname'}} < $min_level) {
        $level = $command_structuring_level{$section->{'cmdname'}};
      } else {
        $level = $min_level;
      }
    } elsif ($level > $max_level) {
      $level = $max_level;
    }
  }
  return $level;
}

sub trim_spaces_comment_from_content($)
{
  my $contents = shift;

  shift @$contents
    if ($contents->[0] and $contents->[0]->{'type'}
       and ($contents->[0]->{'type'} eq 'ignorable_spaces_after_command'
            or $contents->[0]->{'type'} eq 'spaces_after_close_brace'));

  while (@$contents
         and (($contents->[-1]->{'cmdname'}
               and ($contents->[-1]->{'cmdname'} eq 'c'
                    or $contents->[-1]->{'cmdname'} eq 'comment'))
              or ($contents->[-1]->{'type'}
                  and $contents->[-1]->{'type'} eq 'spaces_at_end'))) {
    pop @$contents;
  }
}

# decompose a decimal number on a given base.
sub _decompose_integer($$)
{
  my $number = shift;
  my $base = shift;
  my @result = ();

  while ($number >= 0) {
    my $factor = $number % $base;
    push (@result, $factor);
    $number = int(($number - $factor) / $base) - 1;
  }
  return @result;
}

sub enumerate_item_representation($$)
{
  my $specification = shift;
  my $number = shift;

  if ($specification =~ /^[0-9]+$/) {
    return $specification + $number -1;
  }

  my $result = '';
  my $base_letter = ord('a');
  $base_letter = ord('A') if (ucfirst($specification) eq $specification);
  my @letter_ords = _decompose_integer(ord($specification) - $base_letter + $number - 1, 26);
  foreach my $ord (@letter_ords) {
    $result = chr($base_letter + $ord) . $result;
  }
  return $result;
}

sub is_content_empty($;$);
sub is_content_empty($;$)
{
  my $tree = shift;
  my $do_not_ignore_index_entries = shift;
  if (!defined($tree) or !exists($tree->{'contents'})) {
    return 1;
  }
  foreach my $content (@{$tree->{'contents'}}) {
    if ($content->{'cmdname'}) {
      if ($content->{'type'} and $content->{'type'} eq 'index_entry_command') {
        if ($do_not_ignore_index_entries) {
          return 0;
        } else {
          next;
        }
      }
      if (exists($misc_commands{$content->{'cmdname'}})) {
        if ($formatted_misc_commands{$content->{'cmdname'}}
            or $formattable_misc_commands{$content->{'cmdname'}}) {
          return 0;
        } else {
          next;
        }
      } elsif ($unformatted_brace_commands{$content->{'cmdname'}}
               or $unformatted_block_commands{$content->{'cmdname'}}) {
        next;
      } else {
        return 0;
      }
    }
    if ($content->{'type'}) {
      if ($content->{'type'} eq 'paragraph') {
        return 0;
      }
    }
    if ($content->{'text'} and $content->{'text'} =~ /\S/) {
      return 0;
    }
    if (not is_content_empty($content, $do_not_ignore_index_entries)) {
      return 0;
    }
  }
  return 1;
}

# if in this container, we are 'inline', within a running text
my @inline_types = ('def_line', 'paragraph', 'preformatted',
  'line_arg', 'block_line_arg', 'menu_entry_name', 'menu_entry_node');

my %inline_types;
foreach my $type (@inline_types) {
  $inline_types{$type} = 1;
}

my %not_inline_commands = (%root_commands, %block_commands,
                           %context_brace_commands);

# Return 1 if inline in a running text, 0 if right in top-level or block
# environment, and undef otherwise.
sub _inline_or_block($)
{
  my $current = shift;
  if ($current->{'type'} and $inline_types{$current->{'type'}}) {
    return 1;
  } elsif ($current->{'cmdname'}
           and exists($not_inline_commands{$current->{'cmdname'}})) {
    return 0;
  } else {
    return undef;
  }
}

# return true if in running text context.
# If $CHECK_CURRENT is set, check the element itself, too, in
# addition to the parent context.
sub element_is_inline($;$)
{
  my $current = shift;
  my $check_current = shift;

  if ($check_current) {
    my $inline_or_block = _inline_or_block($current);
    return ($inline_or_block) if (defined($inline_or_block));
  }

  while ($current->{'parent'}) {
    $current = $current->{'parent'};
    my $inline_or_block = _inline_or_block($current);
    return ($inline_or_block) if (defined($inline_or_block));
  }
  return 0;
}

sub normalize_top_node_name($)
{
  my $node_name = shift;
  if ($node_name =~ /^top$/i) {
    return 'Top';
  }
  return $node_name;
}

# Used in count_bytes
my $Encode_encoding_object;
my $last_encoding;

sub count_bytes($$;$)
{
  my $self = shift;
  my $string = shift;
  my $encoding = shift;

  if (!defined($encoding) and $self and $self->get_conf('OUTPUT_PERL_ENCODING')) {
    $encoding = $self->get_conf('OUTPUT_PERL_ENCODING');
  }

  if ($encoding eq 'utf-8'
      or $encoding eq 'utf-8-strict') {
    if (Encode::is_utf8($string)) {
      # Get the number of bytes in the underlying storage.  This may
      # be slightly faster than calling Encode::encode_utf8.
      use bytes;
      return length($string);

      # Here's another way of doing it.
      #Encode::_utf8_off($string);
      #my $length = length($string);
      #Encode::_utf8_on($string);
      #return $length
    } else {
      return length(Encode::encode_utf8($string));
    }
  } elsif ($encoding and $encoding ne 'ascii') {
    if (!defined($last_encoding) or $last_encoding ne $encoding) {
      # Look up and save encoding object for next time.  This is
      # slightly faster than calling Encode::encode.
      $last_encoding = $encoding;
      $Encode_encoding_object = Encode::find_encoding($encoding);
      if (!defined($Encode_encoding_object)) {
        Carp::croak "Unknown encoding '$encoding'";
      }
    }
    return length($Encode_encoding_object->encode($string));
  } else {
    return length($string);
    #my $length = length($string);
    #$string =~ s/\n/\\n/g;
    #$string =~ s/\f/\\f/g;
    #print STDERR "Count($length): $string\n";
    #return $length;
  }
}

# custom heading command line is split at @|
sub split_custom_heading_command_contents($)
{
  my $contents = shift;

  my $result = [];

  my $nr_split_contents = 0;

  my @contents = @$contents;

  trim_spaces_comment_from_content(\@contents);

  if (scalar(@contents) == 0) {
    # or undef?
    return $result;
  }

  push @$result, [];

  while (scalar(@contents)) {
    my $current_content = $contents[0];
    #print STDERR "$nr_split_contents ".scalar(@contents).": "
    #          .debug_print_element_short($current_content)."\n";
    if (defined($current_content->{'cmdname'})
        and $current_content->{'cmdname'} eq '|') {
      shift @contents;
      push @$result, [];
      $nr_split_contents++;
      if ($nr_split_contents >= 2) {
        last;
      }
    } else {
      push @{$result->[-1]}, shift @contents;
    }
  }
  push @{$result->[-1]}, @contents;

  return $result;
}

# not currently used
sub find_parent_root_command($$);
sub find_parent_root_command($$)
{
  my $self = shift;
  my $current = shift;

  my $root_command;
  while (1) {
    if ($current->{'cmdname'}) {
      if ($root_commands{$current->{'cmdname'}}) {
        return $current;
      } elsif ($region_commands{$current->{'cmdname'}}) {
        if ($current->{'cmdname'} eq 'copying' and $self
            and $self->{'global_commands'}
            and $self->{'global_commands'}->{'insertcopying'}) {
          foreach my $insertcopying(@{$self->{'global_commands'}->{'insertcopying'}}) {
            my $root_command
              = find_parent_root_command($self, $insertcopying);
            return $root_command if (defined($root_command));
          }
        } else {
          return undef;
        }
      }
    }
    if ($current->{'parent'}) {
      $current = $current->{'parent'};
    } else {
      return undef;
    }
  }
  # Should never get there
  return undef;
}

# In the default case, global informative commands are collected
# by the parsers.  The following functions allow to collect
# any @-command.
# Used in customization init files code and should be useful in
# particular in user-defined init files.

sub collect_commands_in_tree($$)
{
  my $root = shift;
  my $commands_list = shift;

  my $commands_hash = {};
  foreach my $command_name (@$commands_list) {
    $commands_hash->{$command_name} = [];
  }
  _collect_commands_in_tree($root, $commands_hash);
  return $commands_hash;
}

sub _collect_commands_in_tree($$);
sub _collect_commands_in_tree($$)
{
  my $current = shift;
  my $commands_hash = shift;

  if (defined($current->{'cmdname'})
      and defined($commands_hash->{$current->{'cmdname'}})) {
    push @{$commands_hash->{$current->{'cmdname'}}}, $current;
  }
  foreach my $key ('args', 'contents') {
    if ($current->{$key}) {
      foreach my $child (@{$current->{$key}}) {
        _collect_commands_in_tree($child, $commands_hash);
      }
    }
  }
}

sub collect_commands_list_in_tree($$)
{
  my $root = shift;
  my $commands_list = shift;

  my $collected_commands_list = [];
  my $commands_hash = {};
  foreach my $command_name (@$commands_list) {
    $commands_hash->{$command_name} = 1;
  }
  _collect_commands_list_in_tree($root, $commands_hash, $collected_commands_list);
  return $collected_commands_list;
}

sub _collect_commands_list_in_tree($$$);
sub _collect_commands_list_in_tree($$$)
{
  my $current = shift;
  my $commands_hash = shift;
  my $collected_commands_list = shift;

  if (defined($current->{'cmdname'})
      and defined($commands_hash->{$current->{'cmdname'}})) {
    push @{$collected_commands_list}, $current;
  }
  foreach my $key ('args', 'contents') {
    if ($current->{$key}) {
      foreach my $child (@{$current->{$key}}) {
        _collect_commands_list_in_tree($child, $commands_hash,
                                       $collected_commands_list);
      }
    }
  }
}


# functions useful for Texinfo tree transformations
# and some tree transformations functions, mostly those
# used in conversion to main output formats.  In general,
# tree transformations functions are documented in the POD section.

# Some helper functions defined here are used in other
# modules but are not generally useful in converters
# and therefore not public.

# TODO
# also recurse into
# extra->misc_args, extra->args_index
# extra->index_entry extra->type
#
# extra that should point to other elements:
# command_as_argument end_command
# associated_section part_associated_section associated_node associated_part
# @prototypes @columnfractions titlepage quotation @author command
# menu_entry_description menu_entry_name
# 
# should point to other elements, or be copied.  And some should be recursed
# into too.
# extra->type->content
# extra->nodes_manuals->[]
# extra->node_content
# extra->node_argument
# extra->explanation_contents
# extra->menu_entry_node

sub _copy_tree($$$);
sub _copy_tree($$$)
{
  my $current = shift;
  my $parent = shift;
  my $reference_associations = shift;
  my $new = {};
  $reference_associations->{$current} = $new;
  $new->{'parent'} = $parent if ($parent);
  foreach my $key ('type', 'cmdname', 'text') {
    $new->{$key} = $current->{$key} if (exists($current->{$key}));
  }
  foreach my $key ('args', 'contents') {
    if ($current->{$key}) {
      if (ref($current->{$key}) ne 'ARRAY') {
        my $command_or_type = '';
        if ($new->{'cmdname'}) {
          $command_or_type = '@'.$new->{'cmdname'};
        } elsif ($new->{'type'}) {
          $command_or_type = $new->{'type'};
        }
        print STDERR "Not an array [$command_or_type] $key ".ref($current->{$key})."\n";
      }
      $new->{$key} = [];
      $reference_associations->{$current->{$key}} = $new->{$key};
      foreach my $child (@{$current->{$key}}) {
        push @{$new->{$key}}, _copy_tree($child, $new, $reference_associations);
      }
    }
  }
  if ($current->{'extra'}) {
    $new->{'extra'} = {};
    foreach my $key (keys %{$current->{'extra'}}) {
      if ($current->{'cmdname'} and $current->{'cmdname'} eq 'multitable'
          and $key eq 'prototypes') {
        $new->{'extra'}->{$key} = [];
        $reference_associations->{$current->{'extra'}->{$key}} = $new->{$key};
        foreach my $child (@{$current->{'extra'}->{$key}}) {
          push @{$new->{'extra'}->{$key}},
                  _copy_tree($child, $new, $reference_associations);
        }
      } elsif (ref($current->{'extra'}->{$key}) eq '') {
        $new->{'extra'}->{$key} = $current->{'extra'}->{$key};
      }
    }
  }
  return $new;
}

sub _substitute_references_in_array($$$);
sub _substitute_references_in_array($$$)
{
  my $array = shift;
  my $reference_associations = shift;
  my $context = shift;

  my $result = [];
  my $index = 0;
  foreach my $item (@{$array}) {
    if (ref($item) eq '') {
      push @{$result}, $item;
    } elsif ($reference_associations->{$item}) {
      push @{$result}, $reference_associations->{$item};
    } elsif (ref($item) eq 'ARRAY') {
      push @$result,
        _substitute_references_in_array($item, $reference_associations,
                                        "$context [$index]");
    } elsif (defined($item->{'text'})) {
      my $new_text = _copy_tree($item, undef, $reference_associations);
      _substitute_references($item, $new_text, $reference_associations);
      push @{$result}, $new_text;
    } else {
      print STDERR "Trouble with $context [$index] (".ref($item).")\n";
      push @{$result}, undef;
    }
    $index++;
  }
  return $result;
}

sub _substitute_references($$$);
sub _substitute_references($$$)
{
  my $current = shift;
  my $new = shift;
  my $reference_associations = shift;
  
  foreach my $key ('args', 'contents') {
    if ($new->{$key}) {
      my $index = 0;
      foreach my $child (@{$new->{$key}}) {
        _substitute_references($child, $current->{$key}->[$index],
                              $reference_associations);
        $index++;
      }
    }
  }
  if ($current->{'extra'}) {
    foreach my $key (keys %{$current->{'extra'}}) {
      if (ref($current->{'extra'}->{$key})) {
        my $command_or_type = '';
        if ($new->{'cmdname'}) {
          $command_or_type = '@'.$new->{'cmdname'};
        } elsif ($new->{'type'}) {
          $command_or_type = $new->{'type'};
        }
        
        if ($current->{'cmdname'} and $current->{'cmdname'} eq 'multitable'
            and $key eq 'prototypes') {
          my $index = 0;
          foreach my $child (@{$new->{'extra'}->{$key}}) {
            _substitute_references($child, $current->{'extra'}->{$key}->[$index],
                                  $reference_associations);
            $index++;
          }
        } elsif ($reference_associations->{$current->{'extra'}->{$key}}) {
          $new->{'extra'}->{$key}
            = $reference_associations->{$current->{'extra'}->{$key}};
          #print STDERR "Done [$command_or_type]: $key\n";
        } else {
          if (ref($current->{'extra'}->{$key}) eq 'ARRAY') {
            
            #print STDERR "Array $command_or_type -> $key\n";
            $new->{'extra'}->{$key} = _substitute_references_in_array(
              $current->{'extra'}->{$key}, $reference_associations,
              "[$command_or_type]{$key}");
          } else {
            if (($current->{'cmdname'}
                 and ($current->{'cmdname'} eq 'listoffloats'
                     or $current->{'cmdname'} eq 'float')
                 and $key eq 'type')
                 or ($key eq 'index_entry')
                 or ($current->{'type'}
                     and $current->{'type'} eq 'menu_entry'
                     and $key eq 'menu_entry_node')) {
              foreach my $type_key (keys(%{$current->{'extra'}->{$key}})) {
                if (ref($current->{'extra'}->{$key}->{$type_key}) eq '') {
                  $new->{'extra'}->{$key}->{$type_key}
                    = $current->{'extra'}->{$key}->{$type_key};
                } elsif ($reference_associations->{$current->{'extra'}->{$key}->{$type_key}}) {
                  $new->{'extra'}->{$key}->{$type_key}
                    = $reference_associations->{$current->{'extra'}->{$key}->{$type_key}};
                } elsif (ref($current->{'extra'}->{$key}->{$type_key}) eq 'ARRAY') {
                  $new->{'extra'}->{$key}->{$type_key}
                    = _substitute_references_in_array(
                      $current->{'extra'}->{$key}->{$type_key},
                      $reference_associations,
                      "[$command_or_type]{$key}{$type_key}");
                } elsif ($key eq 'index_entry' and $type_key eq 'index_ignore_chars') {
                  $new->{'extra'}->{$key}->{$type_key} = { %{$current->{'extra'}->{$key}->{$type_key}} };
                } else {
                  print STDERR "Not substituting [$command_or_type]{$key}: $type_key\n";
                }
              }
            } else {
              print STDERR "Not substituting [$command_or_type]: $key ($current->{'extra'}->{$key})\n";
            }
          }
        }
      }
    }
  }
}

sub copy_tree($;$)
{
  my $current = shift;
  my $parent = shift;
  my $reference_associations = {};
  my $copy = _copy_tree($current, $parent, $reference_associations);
  _substitute_references($current, $copy, $reference_associations);
  return $copy;
}

sub copy_contents($)
{
  my $contents = shift;
  if (ref($contents) ne 'ARRAY') {
    cluck "$contents not an array";
    return undef;
  }
  my $copy = copy_tree({'contents' => $contents});
  return $copy->{'contents'};
}

sub modify_tree($$;$);
sub modify_tree($$;$)
{
  my $tree = shift;
  my $operation = shift;
  my $argument = shift;
  #print STDERR "modify_tree tree: $tree\n";

  if ($tree->{'args'}) {
    my @args = @{$tree->{'args'}};
    for (my $i = 0; $i <= $#args; $i++) {
      my @new_args = &$operation('arg', $args[$i], $argument);
      modify_tree($args[$i], $operation, $argument);
      # this puts the new args at the place of the old arg using the
      # offset from the end of the array
      splice (@{$tree->{'args'}}, $i - $#args -1, 1, @new_args);
    }
  }
  if ($tree->{'contents'}) {
    my @contents = @{$tree->{'contents'}};
    for (my $i = 0; $i <= $#contents; $i++) {
      my @new_contents = &$operation('content', $contents[$i], $argument);
      modify_tree($contents[$i], $operation, $argument);
      # this puts the new contents at the place of the old content using the
      # offset from the end of the array
      splice (@{$tree->{'contents'}}, $i - $#contents -1, 1, @new_contents);
    }
  }
  return $tree;
}

sub _protect_comma($$)
{
  my $type = shift;
  my $current = shift;

  return _protect_text($current, quotemeta(','));
}

sub protect_comma_in_tree($)
{
  my $tree = shift;
  return modify_tree($tree, \&_protect_comma);
}

sub _new_asis_command_with_text($$;$)
{
  my $text = shift;
  my $parent = shift;
  my $text_type = shift;
  my $new_command = {'cmdname' => 'asis', 'parent' => $parent };
  push @{$new_command->{'args'}}, {'type' => 'brace_command_arg',
                                   'parent' => $new_command};
  push @{$new_command->{'args'}->[0]->{'contents'}}, {
    'text' => $text,
    'parent' => $new_command->{'args'}->[0]};
  if (defined($text_type)) {
    $new_command->{'args'}->[0]->{'contents'}->[0]->{'type'} = $text_type;
  }
  return $new_command;
}

sub _protect_text($$)
{
  my $current = shift;
  my $to_protect = shift;

  #print STDERR "_protect_text: $to_protect: $current ".debug_print_element($current)."\n";
  if (defined($current->{'text'}) and $current->{'text'} =~ /$to_protect/
      and !(defined($current->{'type'}) and $current->{'type'} eq 'raw')) {
    my @result = ();
    my $remaining_text = $current->{'text'};
    while ($remaining_text) {
      if ($remaining_text =~ s/^(.*?)(($to_protect)+)//) {
        if ($1 ne '') {
          push @result, {'text' => $1, 'parent' => $current->{'parent'}};
          $result[-1]->{'type'} = $current->{'type'}
            if defined($current->{'type'});
        }
        if ($to_protect eq quotemeta(',')) {
          for (my $i = 0; $i < length($2); $i++) {
            push @result, {'cmdname' => 'comma', 'parent' => $current->{'parent'},
                           'args' => [{'type' => 'brace_command_arg'}]};
          }
        } else {
          push @result, _new_asis_command_with_text($2, $current->{'parent'},
                                                    $current->{'type'});
        }
      } else {
        push @result, {'text' => $remaining_text, 'parent' => $current->{'parent'}};
        $result[-1]->{'type'} = $current->{'type'}
          if defined($current->{'type'});
        last;
      }
    }
    #print STDERR "_protect_text: Result: @result\n";
    return @result;
  } else {
    #print STDERR "_protect_text: No change\n";
    return ($current);
  }
}

sub _protect_colon($$)
{
  my $type = shift;
  my $current = shift;

  return _protect_text($current, quotemeta(':'));
}

sub protect_colon_in_tree($)
{
  my $tree = shift;
  return modify_tree($tree, \&_protect_colon);
}

sub _protect_node_after_label($$)
{
  my $type = shift;
  my $current = shift;

  return _protect_text($current, '['. quotemeta(".\t,") .']');
}

sub protect_node_after_label_in_tree($)
{
  my $tree = shift;
  return modify_tree($tree, \&_protect_node_after_label);
}

sub protect_first_parenthesis($)
{
  my $contents = shift;
  confess("BUG: protect_first_parenthesis contents undef")
    if (!defined($contents));
  #print STDERR "protect_first_parenthesis: $contents\n";
  my @contents = @$contents;
  my $brace;
  if ($contents[0] and $contents->[0]{'text'} and $contents[0]->{'text'} =~ /^\(/) {
    if ($contents[0]->{'text'} !~ /^\($/) {
      $brace = shift @contents;
      my $brace_text = $brace->{'text'};
      $brace_text =~ s/^\(//;
      unshift @contents, { 'text' => $brace_text,
                           'type' => $brace->{'type'},
                           'parent' => $brace->{'parent'} }
                                                   if $brace_text ne '';
    } else {
      $brace = shift @contents;
    }
    unshift @contents, _new_asis_command_with_text('(', $brace->{'parent'},
                                                    $brace->{'type'});
  }
  return \@contents;
}

sub move_index_entries_after_items($)
{
  # enumerate or itemize
  my $current = shift;

  return unless ($current->{'contents'});

  my $previous;
  foreach my $item (@{$current->{'contents'}}) {
    #print STDERR "Before proceeding: $previous $item->{'cmdname'} (@{$previous->{'contents'}})\n" if ($previous and $previous->{'contents'});
    if (defined($previous) and $item->{'cmdname'}
        and $item->{'cmdname'} eq 'item'
        and $previous->{'contents'} and scalar(@{$previous->{'contents'}})) {

      my $previous_ending_container;
      if ($previous->{'contents'}->[-1]->{'type'}
          and ($previous->{'contents'}->[-1]->{'type'} eq 'paragraph'
               or $previous->{'contents'}->[-1]->{'type'} eq 'preformatted')) {
        $previous_ending_container = $previous->{'contents'}->[-1];
      } else {
        $previous_ending_container = $previous;
      }

      my @gathered_index_entries;

      #print STDERR "Gathering for item $item in previous $previous ($previous_ending_container)\n";
      while ($previous_ending_container->{'contents'}->[-1]
             and (($previous_ending_container->{'contents'}->[-1]->{'type'}
                   and $previous_ending_container->{'contents'}->[-1]->{'type'} eq 'index_entry_command')
                  or ($previous_ending_container->{'contents'}->[-1]->{'cmdname'}
                      and ($previous_ending_container->{'contents'}->[-1]->{'cmdname'} eq 'c'
                           or $previous_ending_container->{'contents'}->[-1]->{'cmdname'} eq 'comment')))) {
        unshift @gathered_index_entries, pop @{$previous_ending_container->{'contents'}};
      }
      #print STDERR "Gathered: @gathered_index_entries\n";
      if (scalar(@gathered_index_entries)) {
        # put back leading comments
        while ($gathered_index_entries[0]
               and (!$gathered_index_entries[0]->{'type'}
                    or $gathered_index_entries[0]->{'type'} ne 'index_entry_command')) {
          #print STDERR "Putting back $gathered_index_entries[0] $gathered_index_entries[0]->{'cmdname'}\n";
          push @{$previous_ending_container->{'contents'}},
             shift @gathered_index_entries;
        }

        # We have the index entries of the previous @item or before item.
        # Now put them right after the current @item command.
        if (scalar(@gathered_index_entries)) {
          my $item_container;
          if ($item->{'contents'} and $item->{'contents'}->[0]
              and $item->{'contents'}->[0]->{'type'}
              and $item->{'contents'}->[0]->{'type'} eq 'preformatted') {
            $item_container = $item->{'contents'}->[0];
          } else {
            $item_container = $item;
          }
          foreach my $entry(@gathered_index_entries) {
            $entry->{'parent'} = $item_container;
          }
          if ($item_container->{'contents'}
              and $item_container->{'contents'}->[0]
              and $item_container->{'contents'}->[0]->{'type'}
              and $item_container->{'contents'}->[0]->{'type'} eq 'ignorable_spaces_after_command') {
            $item_container->{'contents'}->[0]->{'text'} .= "\n"
              if ($item_container->{'contents'}->[0]->{'text'} !~ /\n$/);
            unshift @gathered_index_entries, shift @{$item_container->{'contents'}};
          }
          unshift @{$item_container->{'contents'}}, @gathered_index_entries;
        }
      }
    }
    $previous = $item;
  }
}

sub _move_index_entries_after_items($$)
{
  my $type = shift;
  my $current = shift;

  if ($current->{'cmdname'} and ($current->{'cmdname'} eq 'enumerate'
                                 or $current->{'cmdname'} eq 'itemize')) {
    move_index_entries_after_items($current);
  }
  return ($current);
}

sub move_index_entries_after_items_in_tree($)
{
  my $tree = shift;
  return modify_tree($tree, \&_move_index_entries_after_items);
}

sub _relate_index_entry_to_table_entry($)
{
  my $current = shift; # table_entry

  my ($table_term, $table_item, $item);

  if ($current->{'contents'}
        and $current->{'contents'}->[0]
        and $current->{'contents'}->[0]->{'type'} eq 'table_term') {
    $table_term = $current->{'contents'}->[0];
  }

  if ($current->{'contents'}
        and $current->{'contents'}->[1]
        and $current->{'contents'}->[1]->{'type'} eq 'table_item') {
    $table_item = $current->{'contents'}->[1];
  }

  if ($table_term->{'contents'}
    and $table_term->{'contents'}->[0]
    and (!$table_term->{'contents'}->[0]->{'extra'}
          or !$table_term->{'contents'}->[0]->{'extra'}->{'index_entry'})) {
    $item = $table_term->{'contents'}->[0];
  }

  return if !$table_term or !$table_item or !$item;

  if ($table_item->{'contents'}
    and $table_item->{'contents'}->[0]
    and $table_item->{'contents'}->[0]->{'type'}
    and $table_item->{'contents'}->[0]->{'type'} eq 'index_entry_command') {
      my $index_command = shift @{$table_item->{'contents'}};
      delete $index_command->{'parent'};
      $item->{'extra'}->{'index_entry'}
        = $index_command->{'extra'}->{'index_entry'};
      $item->{'extra'}->{'index_entry'}->{'command'} = $item;
  }
}

sub _relate_index_entries_to_table_entries_in_tree($$)
{
  my ($type, $current) = @_;

  if ($current->{'type'} and ($current->{'type'} eq 'table_entry')) {
    _relate_index_entry_to_table_entry($current);
  }
  return ($current);
}

sub relate_index_entries_to_table_entries_in_tree($)
{
  my $tree = shift;
  return modify_tree($tree,
                     \&_relate_index_entries_to_table_entries_in_tree);
}


# Used in the main program, not meant to be used in user-defined code.
sub _special_joint_transformation($)
{
  my $type = shift;
  my $current = shift;

  _move_index_entries_after_items($type, $current);
  _relate_index_entries_to_table_entries_in_tree($type, $current);
  return ($current);
}

# Peform both the 'move_index_entries_after_items' and the
# 'relate_index_entries_to_table_entries_in_tree' transformations
# together.  This is faster because the tree is only traversed once.
sub texinfo_special_joint_transformation($)
{
  my $tree = shift;
  return modify_tree($tree, \&_special_joint_transformation);
}


# Common to different module, but not meant to be used in user-defined
# codes.
#
# register a label, that is something that may be the target of a reference
# and must be unique in the document.  Corresponds to @node, @anchor and
# @float second arg.
sub register_label($$$)
{
  my ($targets_list, $current, $label) = @_;

  #if (ref($targets_list) ne 'ARRAY') {
  #  cluck("BUG: register_label \$targets_list not an ARRAY reference\n");
  #}
  push @{$targets_list}, $current;
  if ($label->{'node_content'}) {
    $current->{'extra'}->{'node_content'} = $label->{'node_content'};
  }
}


# functions used for debugging.  May be used in other modules.
# Not documented.

# informations on a tree element, short version
sub debug_print_element_short($)
{
  my $current = shift;

  if (!defined($current)) {
    return "debug_print_element_simply: UNDEF\n";
  }
  if (ref($current) ne 'HASH') {
    return "debug_print_element_simply: $current not a hash\n";
  }
  my $type = '';
  my $cmd = '';
  my $parent_string = '';
  my $text = '';
  $type = "($current->{'type'})" if (defined($current->{'type'}));
  # specific of HTML
  $type .= '{'.$current->{'extra'}->{'special_element_type'}.'}'
    if (defined($current->{'extra'})
      and defined($current->{'extra'}->{'special_element_type'}));
  $cmd = "\@$current->{'cmdname'}" if (defined($current->{'cmdname'}));
  $text = "[T]" if (defined($current->{'text'}));
  my $args = '';
  my $contents = '';
  $args = "[A".scalar(@{$current->{'args'}}).']' if $current->{'args'};
  $contents = "[C".scalar(@{$current->{'contents'}}).']'
    if $current->{'contents'};
  return "$cmd$type$text$args$contents";
}

# informations on a tree element, long version
sub debug_print_element($)
{
  my $current = shift;
  if (ref($current) ne 'HASH') {
    return  "debug_print_element: $current not a hash\n";
  }
  my $type = '';
  my $cmd = '';
  my $parent_string = '';
  my $text = '';
  $type = "($current->{'type'})" if (defined($current->{'type'}));
  # specific of HTML
  $type .= '{'.$current->{'extra'}->{'special_element_type'}.'}'
    if (defined($current->{'extra'})
      and defined($current->{'extra'}->{'special_element_type'}));
  $cmd = "\@$current->{'cmdname'}" if (defined($current->{'cmdname'}));
  $cmd .= "($current->{'structure'}->{'section_level'})"
        if (defined($current->{'structure'}->{'section_level'}));
  if (defined($current->{'text'})) {
    my $text_str = $current->{'text'};
    $text_str =~ s/\n/\\n/g;
    $text = "[T: $text_str]";
  }
  if ($current->{'parent'}) {
    my $parent = $current->{'parent'};
    my $parent_cmd = '';
    my $parent_type = '';
    $parent_cmd = "\@$parent->{'cmdname'}" if (defined($parent->{'cmdname'}));
    $parent_type = "($parent->{'type'})" if (defined($parent->{'type'}));
    $parent_string = " <- $parent_cmd$parent_type\n";
  }
  my $args = '';
  my $contents = '';
  $args = "[A".scalar(@{$current->{'args'}}).']' if $current->{'args'};
  $contents = "[C".scalar(@{$current->{'contents'}}).']'
    if $current->{'contents'};
  return "$cmd$type$text$args$contents\n$parent_string";
}

# for debugging
sub debug_print_element_details($)
{
  my $current = shift;
  my $string = debug_print_element($current);
  foreach my $key (keys (%$current)) {
    $string .= "   $key: $current->{$key}\n";
  }
  if ($current->{'extra'}) {
    $string .= "    EXTRA\n";
    foreach my $key (keys (%{$current->{'extra'}})) {
      $string .= "    $key: $current->{'extra'}->{$key}\n";
    }
  }
  return $string;
}

# format list for debugging messages
sub debug_list
{
  my $label = shift;
  my (@list) = (ref $_[0] && $_[0] =~ /.*ARRAY.*/) ? @{$_[0]} : @_;

  my $str = "$label: [";
  my @items = ();
  for my $item (@list) {
    $item = "" if ! defined ($item);
    $item =~ s/\n/\\n/g;
    push (@items, $item);
  }
  $str .= join (" ", @items);
  $str .= "]";

  warn "$str\n";
}

# format hash for debugging messages
sub debug_hash
{
  my ($label) = shift;
  my (%hash) = (ref $_[0] && $_[0] =~ /.*HASH.*/) ? %{$_[0]} : @_;

  my $str = "$label: {";
  my @items = ();
  for my $key (sort keys %hash) {
    my $val = $hash{$key} || ""; # no undef
    $key =~ s/\n/\\n/g;
    $val =~ s/\n/\\n/g;
    push (@items, "$key:$val");
  }
  $str .= join (",", @items);
  $str .= "}";

  warn "$str\n";
}

use Data::Dumper;

my @kept_keys = ('contents', 'cmdname', 'type', 'text', 'args',
  'extra', 'def_role', 'spaces_before_argument',
  'spaces_after_argument', 'comment_at_end', 'index_entry'
);
my %kept_keys;
foreach my $key (@kept_keys) {
  $kept_keys{$key} = 1;
}
sub _filter_print_keys { [grep {$kept_keys{$_}} ( sort keys %{$_[0]} )] };
sub debug_print_tree($)
{
  my $tree = shift;
  local $Data::Dumper::Sortkeys = \&_filter_print_keys;
  local $Data::Dumper::Purity = 1;
  local $Data::Dumper::Indent = 1;

  return Data::Dumper->Dump([$tree]);
}


1;

__END__

=head1 NAME

Texinfo::Common - Classification of commands and miscellaneous methods

=head1 SYNOPSIS

  use Texinfo::Common;
  if ($Texinfo::Common::accent_commands{$a_command}) {
    print STDERR "$a_command is an accent command\n";
  }

=head1 NOTES

The Texinfo Perl module main purpose is to be used in C<texi2any> to convert
Texinfo to other formats.  There is no promise of API stability.

=head1 DESCRIPTION

Texinfo::Common holds hashes with miscellaneous information and hashes
classifying Texinfo @-commands, as well as miscellaneous methods.

=head1 MISC INFORMATION

Hashes are defined as C<our> variables, and are therefore available
outside of the module.

TODO: undocumented
%null_device_file %default_parser_customization_values %document_settable_multiple_at_commands %document_settable_unique_at_commands %default_converter_command_line_options %default_main_program_customization_options %default_converter_customization @variable_string_settables %document_settable_at_commands %def_map %command_index %close_paragraph_commands %command_structuring_level %level_to_structuring_command

=over

=item %index_names
X<C<%index_names>>

Hash describing the default Texinfo indices.  The format of this hash is
described in L<Texinfo::Parser/indices_information>.

=item %texinfo_output_formats
X<C<%texinfo_output_formats>>

Cannonical output formats that have associated conditionals.  In
practice corresponds to C<format_raw> C<%block_commands> plus C<info>
and C<plaintext>.

=back

=head1 @-COMMAND CLASSES

Hashes are defined as C<our> variables, and are therefore available
outside of the module.

The key of the hashes are @-command names without the @.  The
following hashes are available:

=over

=item %all_commands
X<C<%all_commands>>

All the @-commands.

=item %accent_commands
X<C<%accent_commands>>

Accent @-commands taking an argument, like C<@'> or C<@ringaccent>,
including C<@dotless> and C<@tieaccent>.

=item %align_commands
X<C<%align_commands>>

@-commands related with alignement of text.

=item %block_commands
X<C<%block_commands>>

Commands delimiting a block with a closing C<@end>.  The values are:

=over

=item I<conditional>

C<@if*> commands;

=item I<def>

Definition commands like C<@deffn>;

=item I<format_raw>

raw output format commands such as C<@html> or C<@info>;

=item I<item_container>

commands  with C<@item> containing
any content, C<@itemize> and C<@enumerate>;

=item I<item_line>

commands like C<@table> in which the C<@item> argument is on its line;

=item I<menu>

menu @-commands, C<@menu>, C<@detailmenu>
and C<@direntry>;

=item I<multitable>

C<@multitable>;

=item I<raw>

@-commands that have no expansion
of @-commands in their bodies (C<@macro>, C<@verbatim> and C<@ignore>);

=back

Other values for other block line commands.

=item %commands_args_number
X<C<%commands_args_number>>

Set to the number of arguments separated by commas that may appear in braces or
on the @-command line, or to I<variadic> if there is an unlimited number of
arguments.  That means 0 or unset in most block command cases, 1 for
C<@quotation>, 2 for C<@float> and C<variadic> for C<@example>, 1 for most
brace commands, 2 for C<@email> or C<@abbr>, 5 for C<@image> of C<@ref>.

Values are not necessarily set for all the commands, as commands are
also classified by type of command, some type of commands implying a
number of arguments, and the number of arguments may not be set if it
coorresponds to the default (0 for block commands, 1 for other commands).

=item %brace_commands
X<C<%brace_commands>>

The commands that take braces. Value is I<noarg> for brace commands without
argument such as C<@AA>, C<@TeX>, or C<@equiv>.  Other values include
I<accent>, I<arguments>, I<context> and other values.

=item %brace_code_commands
X<C<%brace_code_commands>>

Brace commands that have their argument in code style, like
C<@code>.

=item %context_brace_commands
X<C<%context_brace_commands>>

@-commands with brace like C<@footnote>, C<@caption> and C<@math>
whose argument is outside of the main text flow in one way or another.

=item %def_commands

=item %def_aliases

=item %def_no_var_arg_commands
X<C<%def_commands>>
X<C<%def_aliases>>
X<C<%def_no_var_arg_commands>>

Definition commands.  C<%def_aliases> associates an aliased command
to the original command, for example C<defun> is associated to C<deffn>.

C<%def_no_var_arg_commands> associates a definition command name with
a true value if the I<argument> on the definition command line can contain
non-metasyntactic variables.  For instance, it is true for C<deftypevr>
but false for C<defun>, since C<@defun> I<argument> is supposed to contain
metasyntactic variables only.

=item %default_index_commands
X<C<%default_index_commands>>

Index entry commands corresponding to default indices. For example
C<@cindex>.

=item %explained_commands
X<C<%explained_commands>>

@-commands whose second argument explain first argument and further
@-command call without first argument, as C<@abbr> and C<@acronym>.

=item %heading_spec_commands
X<C<%heading_spec_commands>>

@-commands used to specify custom headings, like C<@everyheading>.

=item %in_heading_commands
X<C<%in_heading_commands>>

Special @-commands appearing in custom headings, such as C<@thischapter>
or C<@thistitle>.

=item %inline_commands

=item %inline_conditional_commands

=item %inline_format_commands
X<C<%inline_commands>>
X<C<%inline_conditional_commands>>
X<C<%inline_format_commands>>

Inline conditional commands, like C<@inlineifclear>, and inline format
commands like C<inlineraw> and C<inlinefmt>.

=item %letter_no_arg_commands
X<C<%letter_no_arg_commands>>

@-commands with braces but no argument corresponding to letters,
like C<@AA{}> or C<@ss{}> or C<@o{}>.

=item %math_commands
X<C<%math_commands>>

@-commands which contains math, like C<@math> or C<@displaymath>.

=item %misc_commands
X<C<%misc_commands>>

Command that do not take braces and are not block commands either, like
C<@node>, C<@chapter>, C<@cindex>, C<@deffnx>, C<@end>, C<@footnotestyle>,
C<@set>, C<@settitle>, C<@indent>, C<@definfoenclose>, C<@comment> and many
others.

=item %nobrace_commands
X<C<%nobrace_commands>>

Commands without brace with a single character as name, like C<*>
or C<:>.  The value is an ASCII representation of the command.  It
may be an empty string.

=item %preformatted_commands

=item %preformatted_code_commands
X<C<%preformatted_commands>>
X<C<%preformatted_code_commands>>

I<%preformatted_commands> is for commands whose content should not
be filled, like C<@example> or C<@display>.  If the command is meant
for code, it is also in I<%preformatted_code_commands>, like C<@example>.

=item %ref_commands
X<C<%ref_commands>>

Cross reference @-command referencing nodes, like C<@xref>.

=item %region_commands
X<C<%region_commands>>

Block @-commands that enclose full text regions, like C<@titlepage>.

=item %root_commands
X<C<%root_commands>>

Commands that are at the root of a Texinfo document, namely
C<@node> and sectioning commands, except heading commands
like C<@heading>.

=item %sectioning_heading_commands
X<C<%sectioning_heading_commands>>

All the sectioning and heading commands.

=item %small_block_associated_command
X<C<%small_block_associated_command>>

Associate small command like C<smallexample> to the regular command
C<example>.

=back

=head1 METHODS

Two methods are exported in the default case for Texinfo modules messages
translation in the Uniforum gettext framework, C<__> and C<__p>.

The Texinfo tree and Texinfo tree elements used in argument of some functions
are documented in L<Texinfo::Parser/TEXINFO TREE>.  When customization
information is needed, an object that defines C<set_conf> and/or C<get_conf> is
expected, for example a converter inheriting from
C<Texinfo::Convert::Converter>, see L<Texinfo::Convert::Converter/Getting and
setting customization variables>.

=over

=item $translated_string = __($msgid)

=item $translated_string = __p($msgctxt, $msgid)

Returns the I<$msgid> string translated in the Texinfo messages text domain.
C<__p> can be used instead of C<__> to pass a I<$msgctxt> context string to
provide translators with information on the string context when the string is
short or if the translation could depend on the context. C<__> corresponds to
the C<gettext> function and C<__p> to the C<pgettext> function.

It is not advised to use those functions in user-defined code.  It is not
practical either, as the translatable strings marked by C<__> or C<__p> need to
be collected and added to the Texinfo messages domain.  This facility could
only be used in user-defined code with translatable strings already present in
the domain anyway.  In fact, these functions are documented mainly because they
are automatically exported.

See L<libintl-perl>,
L<C<gettext> C interface|https://www.gnu.org/software/gettext/manual/html_node/gettext.html>,
L<Perl in GNU Gettext|https://www.gnu.org/software/gettext/manual/html_node/Perl.html>.
For translation of strings in output, see L<Texinfo::Translations>.

=item collect_commands_in_tree($tree, $commands_list)
X<C<collect_commands_in_tree>>

Returns a hash reference with keys @-commands names specified
in the I<$commands_list> array reference and values arrays of
tree elements corresponding to those @-command found in I<$tree>
by traversing the tree.

=item collect_commands_list_in_tree($tree, $commands_list)
X<C<collect_commands_list_in_tree>>

Return a list reference containing the tree elements corresponding
to the @-commands names specified in the I<$commands_list> found
in I<$tree> by traversing the tree.  The order of the @-commands
should be kept.

=item $result = element_is_inline($element, $check_current)
X<C<element_is_inline>>

Return true if the element passed in argument is in running text
context.  If the optional I<$check_current> argument is set,
check the element itself, in addition to the parent context.

=item ($encoded_file_name, $encoding) = encode_file_name($file_name, $input_encoding)

Encode the I<$file_name> text string to a binary string I<$encoded_file_name>
based on I<$input_encoding>.  Also returns the I<$encoding> name actually
used which may have undergone some normalization.  This function is mostly
a wrapper around L<Encode::encode> which avoids calling the module if not
needed.  Do nothing if I<$input_encoding> is C<undef>.

=item $text = enumerate_item_representation($specification, $number)
X<C<enumerate_item_representation>>

This function returns the number or letter correponding to item
number I<$number> for an C<@enumerate> specification I<$specification>,
appearing on an C<@enumerate> line.  For example

  enumerate_item_representation('c', 3)

is C<e>.

=item $command = find_parent_root_command($object, $tree_element)
X<C<find_parent_root_command>>

Find the parent root command (sectioning command or node) of a tree element.
The I<$object> argument is optional, its C<global_commands> field is used
to continue through C<@insertcopying> if in a C<@copying>.

=item $result = is_content_empty($tree, $do_not_ignore_index_entries)
X<C<is_content_empty>>

Return true if the I<$tree> has content that could be formatted.
I<$do_not_ignore_index_entries> is optional.  If set, index entries
are considered to be formatted.

=item $file = locate_include_file($customization_information, file_path)
X<C<locate_include_file>>

Locate I<$file_path>.  If I<$file_path> is an absolute path or has C<.>
or C<..> in the path directories it is checked that the path exists and is a
file.  Otherwise, the file name in I<$file_path> is located in include
directories also used to find texinfo files included in Texinfo documents.
I<$file_path> should be a binary string.  C<undef> is returned if the file was
not found, otherwise the file found is returned as a binary string.

=item move_index_entries_after_items_in_tree($tree)
X<C<move_index_entries_after_items_in_tree>>

In C<@enumerate> and C<@itemize> from the tree, move index entries
appearing just before C<@item> after the C<@item>.  Comment lines
between index entries are moved too.

=item $normalized_name = normalize_top_node_name($node_string)
X<C<normalize_top_node_name>>

Normalize the node name string given in argument, by normalizing
Top node case.

=item protect_colon_in_tree($tree)

=item protect_node_after_label_in_tree($tree)
X<C<protect_colon_in_tree>>
X<C<protect_node_after_label_in_tree>>

Protect colon with C<protect_colon_in_tree> and characters that
are special in node names after a label in menu entries (tab
dot and comma) with C<protect_node_after_label_in_tree>.
The protection is achieved by putting protected characters
in C<@asis{}>.

=item protect_comma_in_tree($tree)
X<C<protect_comma_in_tree>>

Protect comma characters, replacing C<,> with @comma{} in tree.

=item $contents_result = protect_first_parenthesis($contents)
X<C<protect_first_parenthesis>>

Return a contents array reference with first parenthesis in the
contents array reference protected.  If I<$contents> is undef
a fatal error with a backtrace will be emitted.

=item relate_index_entries_to_table_entries_in_tree($tree)
X<C<relate_index_entries_to_table_entries_in_tree>>

In @*table @-commands, reassociate the index entry information from an index
@-command appearing right after an @item line to the @item first element.
Remove the index @-command from the tree.

=item $level = section_level($section)
X<C<section_level>>

Return numbered level of the tree sectioning element I<$section>, as modified by
raise/lowersections.

=item $element = set_global_document_command($customization_information, $global_commands_information, $cmdname, $command_location)
X<C<set_global_document_command>>

Set the Texinfo configuration option corresponding to I<$cmdname> in
I<$customization_information>.  The I<$global_commands_information> should
contain information about global commands in a Texinfo document, typically obtained
from a parser L<< $parser->global_commands_information()|Texinfo::Parser/$commands = global_commands_information($parser) >>.
I<$command_location> specifies where in the document the value should be taken from,
for commands that may appear more than once. The possibilities are:

=over

=item last

Set to the last value for the command.

=item preamble

Set sequentially to the values in the Texinfo preamble.

=item preamble_or_first

Set to the first value of the command if the first command is not
in the Texinfo preamble, else set as with I<preamble>,
sequentially to the values in the Texinfo preamble.

=back

The I<$element> returned is the last element that was used to set the
configuration value, or C<undef> if no configuration value was found.

Notice that the only effect of this function is to set a customization
variable value, no @-command side effects are run, no associated customization
variables are set.

=item set_informative_command_value($customization_information, $element)
X<C<set_informative_command_value>>

Set the Texinfo configuration option corresponding to the tree element
I<$element>.  The command associated to the tree element should be
a command that sets some information, such as C<@documentlanguage>,
C<@contents> or C<@footnotestyle> for example.

=item set_output_encodings($customization_information, $parser_information)
X<C<set_output_encodings>>

If not already set, set C<OUTPUT_ENCODING_NAME> based on input file
encoding.  Also set C<OUTPUT_PERL_ENCODING> accordingly which is used
to output in the correct encoding.  In general, C<OUTPUT_PERL_ENCODING>
should not be set directly by user-defined code such that it corresponds
to C<OUTPUT_ENCODING_NAME>.

=item $split_contents = split_custom_heading_command_contents($contents)
X<C<split_custom_heading_command_contents>>

Split the I<$contents> array reference at C<@|> in at max three parts.
Return an array reference containing the split parts.  The I<$contents>
array reference is supposed to be C<< $element->{'args'}->[0]->{'contents'} >>
of C<%heading_spec_commands> commands such as C<@everyheading>.

=item trim_spaces_comment_from_content($contents)
X<C<trim_spaces_comment_from_content>>

Remove empty spaces after commands or braces at begin and
spaces and comments at end from a content array, modifying it.

=item valid_customization_option($name)
X<C<valid_option>>

Return true if the I<$name> is a known customization option.

=item valid_tree_transformation($name)
X<C<valid_tree_transformation>>

Return true if the I<$name> is a known tree transformation name
that may be passed with C<TREE_TRANSFORMATIONS> to modify a texinfo
tree.

=back

=head1 SEE ALSO

L<Texinfo::Parser>, L<Texinfo::Convert::Converter> and L<Texinfo::Report>.

=head1 AUTHOR

Patrice Dumas, E<lt>pertusus@free.frE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright 2010- Free Software Foundation, Inc.  See the source file for
all copyright years.

This library is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 3 of the License, or (at
your option) any later version.

=cut
