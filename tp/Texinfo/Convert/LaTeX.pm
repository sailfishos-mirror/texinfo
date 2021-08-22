# LaTeX.pm: output tree as LaTeX
#
# Copyright 2010-2021 Free Software Foundation, Inc.
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
# TODO
#
# Use texinfo.cnf?  Here?  in texi2any.pl?
#
# @shortcontent is not implemented.  Tried shorttoc package but it
# has two limitations that are not in Texinfo, need a main \tableofcontents
# and need to be before @contents.  A code snippet looked good for a
# @shortcontents after @contents, but not before:
#{
#\renewcommand*{\contentsname}{Short contents}
#\setcounter{tocdepth}{0}
#\expandafter\def\csname @starttoc\endcsname#1{\InputIfFileExists{\jobname.#1}{}{}}%
#\tableofcontents
#}
#
# it seems that LaTeX \indent only works with \setlength{\parindent}{0pt}
# which makes it quite different from Texinfo @indent which should requires
# a different conversion
#
# @exdent is not implemented
#
# There is no obvious way to change the first paragraph indentation
# in a way that can be reverted as with @firstparagraphindent.
# use of \usepackage{indentfirst} cannot be reverted.
#
# in TeX, acronym is in a smaller font (1pt less). Can this be
# easily done in LaTeX?  Is it really useful to do that?
#
# flushleft and flushright
# the flushleft and flushright in Texinfo are not the same as in
# LaTeX, as, in addition to come from a possibly different margin,
# the text is not filled at all in Texinfo, each line is left as is.
# LaTeX flushleft and flushright are filled but not aligned.
# 
# indentation in @example, @display... still needs to be done
#
# @indentedblock and @smallindentedblock
#
# @group should also be added together with the non filled environments.
#
# @need is implemented in a specific way, maybe there could be a 
# definition of \mil instead.
#
# Nothing specific is done for @headings singleafter and @headings doubleafter
# compared to @headings single and @headings double
#
# The \listof result does not seems very good.  Also it does not
# use the type (name) of float.
#
# interline spacing in @title multi lines in @titlepage and between
# multiple @author is not as good as in Texinfo TeX output/
# example titlepage_classical in t/latex_tests.t can show it.
#
# shorttitlepage in Texinfo TeX does not seem to break line.
# Probably ok to do it
#
# for external references it seems that Texinfo TeX points to
# a file. 
#
# Translations.   Need thinking.  In texi2any?  In LaTeX?  If in 
# texi2any In general no need for something complex as gdt, as we 
# can provide nice strings to be translated in LaTeX.
# 
# breaking in urls is not implemented, maybe there is some support
# already in hyperref.  @urefbreakstyle, @/
# 
# Breaking in _ or - in @code is not implemented, as well as
# @allowcodebreaks.
#
# The support of \global\urefurlonlylinktrue would be rather easy,
# but maybe need to make it a proper @-command.  Similar for
# \global\def\linkcolor and \global\def\urlcolor.  There are options
# for colors in hyperref, like linkbordercolor but it is unlear whether
# it can be used to distinguish links and urls.
#
# There is something about form feeds to do.  There is some processing
# of form feeds right now, which simply amounts to keeping them in
# ignorable spaces (and with another condition that may not be relevant 
# for LaTeX as the code comes from Plaintext). In the manual it is said
# form feed (CTRL-l) characters in the input are handled as follows:
#  in PDF/DVI
#   In normal text, treated as ending any open paragraph; essentially ignored
#   between paragraphs.
#
# In the manual it is said that majorheading generates a larger 
# vertical whitespace before the heading than @chapheading command.
# It is not implemented.  However, it seems that the chapter level
# commands in LaTeX generate bigger fonts and much more vertical whitespace
# than in Texinfo TeX so maybe it is not needed to do something here.
#
# @fonttextsize with \changefontsize does not seems to change fonts much.
# It seems to change in the text, but only 10pt, and does not seems to
# change sections font sizes.
#
# The @afourpaper, @afourlatex and @afourwide commands all map to
# papername=a4paper.  It is most likely ok for @afourlatex, but the other
# two should be associated with other geometries.
#
# The \geometry command does not really reset the geometry after
# \begin{document} according to the documentation, something else should
# be used to switch paper definition.
#
# @pagesizes uses \newgeometry which forgets about previous settings except
# for paper size.  It could be a good thing to change geometry that way,
# but it is not how Texinfo TeX does it.
#
# The environment used for @quotation is quote as it seems to match,
# but the description of quote does not really match.
#
# push a context for the formatting of @quotation @author, such that
# if in a preformatted environment the @quotation @author formatting
# will be the same as in the main text?

package Texinfo::Convert::LaTeX;

use 5.00405;

# See comment at start of HTML.pm
use if $] >= 5.012, feature => qw(unicode_strings);

use strict;

use File::Spec;

use Carp qw(cluck confess);

use Texinfo::Convert::Converter;
use Texinfo::Common;
use Texinfo::Convert::Texinfo;
use Texinfo::Convert::NodeNameNormalization;

use Texinfo::Convert::Text;

require Exporter;
use vars qw($VERSION @ISA @EXPORT @EXPORT_OK %EXPORT_TAGS);
@ISA = qw(Texinfo::Convert::Converter);

%EXPORT_TAGS = ( 'all' => [ qw(
  convert
  output
) ] );

@EXPORT_OK = ( @{ $EXPORT_TAGS{'all'} } );

@EXPORT = qw(
);

$VERSION = '6.8dev';

# misc commands that are of use for formatting.
my %formatting_misc_commands = %Texinfo::Convert::Text::formatting_misc_commands;

my %paper_geometry_commands = (
  'afourpaper' => 'papername=a4paper',
  'afourlatex' => 'papername=a4paper',
  'afourwide' => 'papername=a4paper',
  'afivepaper' => 'papername=a5paper',
  'bsixpaper' => 'papername=b6paper',
  'smallbook' => 'paperheight=9.25in,paperwidth=7in',
);

my @informative_global_commands = ('paragraphindent', 'firstparagraphindent',
'frenchspacing', 'documentencoding', 'footnotestyle', 'documentlanguage',
'contents', 'shortcontents', 'summarycontents', 'deftypefnnewline',
'allowcodebreaks', 'kbdinputstyle', 'setchapternewpage', 'headings',
'xrefautomaticsectiontitle', 'fonttextsize', 'pagesizes',
);
# FIXME paper geometry commands are not in Texinfo::Common::document_settable_unique_at_commands
# thus not in valid_options.
#sort(keys(%paper_geometry_commands)));

my %informative_commands;
foreach my $informative_command (@informative_global_commands) {
  $informative_commands{$informative_command} = 1;
}

my %no_brace_commands = %Texinfo::Common::no_brace_commands;
my %brace_no_arg_commands;
foreach my $command (keys (%Texinfo::Common::brace_commands)) {
  $brace_no_arg_commands{$command} = 1 
    if ($Texinfo::Common::brace_commands{$command} eq '0');
}
my %accent_commands = %Texinfo::Common::accent_commands;
my %misc_commands = %Texinfo::Common::misc_commands;
my %sectioning_commands = %Texinfo::Common::sectioning_commands;
my %def_commands = %Texinfo::Common::def_commands;
my %ref_commands = %Texinfo::Common::ref_commands;
my %block_commands = %Texinfo::Common::block_commands;
my %menu_commands = %Texinfo::Common::menu_commands;
my %root_commands = %Texinfo::Common::root_commands;
my %preformatted_commands = %Texinfo::Common::preformatted_commands;
my %math_commands = %Texinfo::Common::math_commands;
my %explained_commands = %Texinfo::Common::explained_commands;
my %inline_format_commands = %Texinfo::Common::inline_format_commands;
my %inline_commands = %Texinfo::Common::inline_commands;
my %item_container_commands = %Texinfo::Common::item_container_commands;
my %format_raw_commands = %Texinfo::Common::format_raw_commands;
my %code_style_commands       = %Texinfo::Common::code_style_commands;
my %regular_font_style_commands = %Texinfo::Common::regular_font_style_commands;
my %preformatted_code_commands = %Texinfo::Common::preformatted_code_commands;
my %default_index_commands = %Texinfo::Common::default_index_commands;
my %letter_no_arg_commands = %Texinfo::Common::letter_no_arg_commands;
my %item_line_commands = %Texinfo::Common::item_line_commands;

# commands that can appear in preamble, before \begin{document}
my %preamble_commands;
foreach my $preamble_command ('hyphenation', 'anchor', 'errormsg',
       'inlineraw', '*',
       keys(%paper_geometry_commands), @informative_global_commands,
       keys(%format_raw_commands), keys(%inline_commands)) {
  $preamble_commands{$preamble_command} = 1;
}

foreach my $kept_command (keys(%informative_commands),
  keys(%default_index_commands), keys(%paper_geometry_commands),
  'verbatiminclude', 'insertcopying',
  'listoffloats', 'printindex', 'indent', 'noindent', 'need', 'page',
  'shorttitlepage', 'title', 'subtitle', 'author', 'vskip') {
  $formatting_misc_commands{$kept_command} = 1;
}

foreach my $def_command (keys(%def_commands)) {
  $formatting_misc_commands{$def_command} = 1 if ($misc_commands{$def_command});
}

# There are stacks that define the context.
# style_context: for a whole context for style, for instance
#                in a footnote.
#       context: relevant for math versus text mode, raw
#                (no text protection) and preformatted. Inside
#                style_context.


my %block_raw_commands = %format_raw_commands;
foreach my $block_raw_command ('verbatim') {
  $block_raw_commands{$block_raw_command} = 1
}

my %block_math_commands;
foreach my $block_math_command (keys(%math_commands)) {
  if (exists($block_commands{$block_math_command})) {
    $block_math_commands{$block_math_command} = 1;
  }
}

my %ignored_misc_commands;
foreach my $misc_command (keys(%misc_commands)) {
  $ignored_misc_commands{$misc_command} = 1 
    unless ($formatting_misc_commands{$misc_command});
}

# from \def\Gin@extensions in graphics-def/pdftex.def
my @LaTeX_image_extensions = (
'pdf','png','jpg','mps','jpeg','jbig2','jb2','PDF','PNG','JPG','JPEG','JBIG2','JB2');

my %section_map = (
   'top' => 'part*',
   'part' => 'part',
   'chapter' => 'chapter',
   'section' => 'section',
   'subsection' => 'subsection',
   'subsubsection' => 'subsubsection',
   # embed in a \GNUTexinfonopagebreakheading call to remove pagebreaks
   'chapheading' => 'GNUTexinfonopagebreakheading{\chapter*}',
   'majorheading' => 'GNUTexinfonopagebreakheading{\chapter*}',
   'heading' => 'GNUTexinfonopagebreakheading{\section*}',
   'subheading' => 'GNUTexinfonopagebreakheading{\subsection*}',
   'subsubheading' => 'GNUTexinfonopagebreakheading{\subsubsection*}',
   'unnumbered' => 'chapter*',
   'centerchap' => 'chapter*',
   'unnumberedsec' => 'section*',
   'unnumberedsubsec' => 'subsection*',
   'unnumberedsubsubsec' => 'subsubsection*',
   'appendix' => 'chapter',
   'appendixsec' => 'section',
   'appendixsubsec' => 'subsection',
   'appendixsubsubsec' => 'subsubsection',
);

my %LaTeX_no_arg_brace_commands = (
   # textmode
  'text' => {
    'TeX' => '\TeX{}',
    'LaTeX' => '\LaTeX{}',
    'bullet' => '\textbullet{}',
    'copyright' => '\copyright{}',
    'registeredsymbol' => '\circledR{}',
    'dots' => '\dots{}\@',
    'enddots' => '\dots{}',
    'equiv' => '$\equiv{}$',
    'error' => '\fbox{error}',
    'expansion' => '$\mapsto{}$',
    'arrow' => '$\rightarrow{}$',
    'minus' => '-',
    'point' => '$\star{}$',
    'print' => '$\dashv{}$',
    'result' => '$\Rightarrow{}$',
    'pounds' => '\textsterling{}',
    'atchar', => '@',
    'lbracechar' => '\{',
    'rbracechar' => '\}',
    'backslashchar' => '\textbackslash{}',
    'hashchar' => '\#',
    'comma' => ',',
    'ampchar' => '\&',
    'euro' => '\euro{}',
    'geq' => '$\geq{}$',
    'leq' => '$\leq{}$',
    'textdegree' => '\textdegree{}',
    'today' => '\today{}',
    # FIXME according to the manual, it is not \hbox, \hbox is for @w.
    # maybe use ~?
    'tie' => '\hbox{}',
  },
  'math' => {
    # error in math with \TeX \LaTeX, spacing command used not allowed
    # so use plain text
    'TeX' => 'TeX',
    'LaTeX' => 'LaTeX',
    'bullet' => '\bullet{}',
    'copyright' => '\copyright{}',
    'registeredsymbol' => '\circledR{}',
    'dots' => '\dots{}',
    'enddots' => '\dots{}',
    'equiv' => '\equiv{}',
    'error' => '\fbox{error}',
    'expansion' => '\mapsto{}',
    'arrow' => '\rightarrow{}',
    'minus' => '-',
    'point' => '\star{}',
    'print' => '\dashv{}',
    'result' => '\Rightarrow{}',
    'pounds' => '\mathsterling{}',
    'atchar', => '@',
    'lbracechar' => '\{',
    'rbracechar' => '\}',
    'backslashchar' => '\backslash{}',
    'hashchar' => '\#',
    'comma' => ',',
    'ampchar' => '\&',
    'euro' => '\euro{}',
    'geq' => '\geq{}',
    'leq' => '\leq{}',
    'textdegree' => '^{\circ{}}',
    'today' => '\today{}',
    'tie' => '\hbox{}',
  }
);

# the corresponding LaTeX commands can only appear in text mode
# so we switch to text mode to output them if in math
my %LaTeX_text_only_no_arg_brace_commands = (
  'exclamdown' => 'textexclamdown',
  'questiondown' => 'textquestiondown',
  'ordf' => 'textordfeminine',
  'ordm' => 'textordmasculine',
  'quotedblleft' => 'textquotedblleft',
  'quotedblright' => 'textquotedblright',
  'quoteleft' => 'textquoteleft',
  'quoteright' => 'textquoteright',
  'quotedblbase' => 'quotedblbase',
  'quotesinglbase' => 'quotesinglbase',
  'guillemetleft', => 'guillemotleft',
  'guillemetright' => 'guillemotright',
  'guillemotleft' => 'guillemotleft',
  'guillemotright' => 'guillemotright',
  'guilsinglleft' => 'guilsinglleft',
  'guilsinglright' => 'guilsinglright',
);

foreach my $letter_no_arg_command ('aa','AA','ae','oe','AE','OE','o','O',
                                   'ss','l','L','DH','dh','TH','th') {
  $LaTeX_text_only_no_arg_brace_commands{$letter_no_arg_command}
   = $letter_no_arg_command;
}

foreach my $text_only_no_arg_brace_command
     (keys(%LaTeX_text_only_no_arg_brace_commands)) {
  my $LaTeX_command =
    "\\$LaTeX_text_only_no_arg_brace_commands{$text_only_no_arg_brace_command}\{\}";
  $LaTeX_no_arg_brace_commands{'text'}->{$text_only_no_arg_brace_command} 
    = $LaTeX_command;
  $LaTeX_no_arg_brace_commands{'math'}->{$text_only_no_arg_brace_command}
    = '\mathord{\text{'.$LaTeX_command.'}}';
}

# dotless is special
my %LaTeX_accent_commands = (
   # textmode
  'text' => {
    ',' => 'c',
    'ringaccent' => 'r',
    'H' => 'H',
    'dotaccent' => '.',
    'ubaraccent' => 'b',
    'udotaccent' => 'd',
    'ogonek' => 'k',
    'tieaccent' => 't',
  },
  'math' => {
    '"' => 'ddot',
    '~' => 'tilde',
    '^' => 'hat',
    '`' => 'grave',
    "'" => 'acute',
    '=' => 'bar',
    'ringaccent' => 'mathring',
    'dotaccent' => 'dot',
    'u' => 'breve',
    'v' => 'check',
  }
);

# accent in math and not in text is the same in 
# Texinfo and LaTeX.
foreach my $accent_command (keys %{$LaTeX_accent_commands{'math'}}) {
  if (not exists($LaTeX_accent_commands{'text'}->{$accent_command})) {
    $LaTeX_accent_commands{'text'}->{$accent_command} = $accent_command;
  }
}

my %ignored_commands = %ignored_misc_commands;
foreach my $ignored_brace_commands (
  'sortas') {
  $ignored_commands{$ignored_brace_commands} = 1;
}

my %item_indent_format_length = ('enumerate' => 2,
    'itemize' => 3,
    'table' => 0,
    'vtable' => 0,
    'ftable' => 0,
 );

my $indent_length = 5;

my %indented_commands;
foreach my $indented_command (keys(%item_indent_format_length), 
           keys(%preformatted_commands),
           'indentedblock', 'smallindentedblock',
           keys(%def_commands)) {
  $indented_commands{$indented_command} = 1 
    if exists($block_commands{$indented_command});
}

foreach my $non_indented('format', 'smallformat') {
  delete $indented_commands{$non_indented};
}

foreach my $ignored_block_commands ('ignore', 'macro', 'rmacro', 'copying',
  'documentdescription') {
  $ignored_commands{$ignored_block_commands} = 1;
}

foreach my $menu_command (keys(%menu_commands)) {
  $ignored_commands{$menu_command} = 1;
}

my @LaTeX_same_block_commands = (
  'titlepage', 'verbatim');

my $small_font_size = 'footnotesize';

# TODO flushleft and flushright
# the flushleft and flushright in Texinfo are not the same as in
# LaTeX, as, in addition to come from a possibly different margin,
# the test is not filled at all, each line is left as is.  LaTeX
# flushleft and flushright are filled but not aligned.
my %LaTeX_environment_commands = (
  'raggedright' => ['flushleft'],
  'quotation' => ['quote'],
  'smallquotation' => ['quote', $small_font_size],
  'cartouche' => ['mdframed'],
  'itemize' => ['itemize'],
  'enumerate' => ['enumerate'],
  'table' => ['description'],
  'vtable' => ['description'],
  'ftable' => ['description'],
);

my %LaTeX_environment_options = (
  'cartouche' => {'mdframed' => 'style=GNUTexinfocartouche'},
);

foreach my $environment_command (@LaTeX_same_block_commands) {
  $LaTeX_environment_commands{$environment_command} = [$environment_command];
}

my %ignorable_space_types;
foreach my $type ('empty_line_after_command',
            'empty_spaces_after_command', 'spaces_at_end',
            'empty_spaces_before_argument', 'empty_spaces_before_paragraph',
            'empty_spaces_after_close_brace') {
  $ignorable_space_types{$type} = 1;
}

# ignore 'command_as_argument_inserted' in order to use the default
# setting for @itemize if there is no argument
my %ignored_types;
foreach my $type ('preamble',
            'preamble_before_setfilename', 'command_as_argument_inserted') {
  $ignored_types{$type} = 1;
}

my %ignorable_types = %ignorable_space_types;
foreach my $ignored_type(keys(%ignored_types)) {
  $ignorable_types{$ignored_type} = 1;
}

# All those commands run with the text.
# math, verb and kbd are special and implemented separately
my %LaTeX_style_brace_commands = (
  'text' => {
    'hyphenation' => '\\hyphenation',
    'w' => '\\hbox',
    'sub' => '\\textsubscript',
    'sup' => '\\textsuperscript',
    'r' => '\\textrm',
    'sc' => '\\textsc',
    'sansserif' => '\\textsf',
    'slanted' => '\\textsl',
  },
  'math' => {
    'hyphenation' => '',
    'w' => '\\hbox',
    'sub' => '_',
    'sup' => '^',
    'r' => '\\mathrm',
    'sc' => '', # no obvious way to do it in math mode, not switching to
                # text mode only for this command
    'sansserif' => '\\mathsf',
    'slanted' => '',
  }
);

# FIXME dmn, headitemfont
my @asis_commands = ('asis', 'clicksequence',
  'headitemfont', 'dmn');

foreach my $asis_command (@asis_commands) {
  $LaTeX_style_brace_commands{'text'}->{$asis_command} = '';
  $LaTeX_style_brace_commands{'math'}->{$asis_command} = '';
}

my @emphasized_commands = ('var', 'dfn', 'emph');
foreach my $emphasized_command (@emphasized_commands) {
  $LaTeX_style_brace_commands{'text'}->{$emphasized_command} = '\\emph';
  $LaTeX_style_brace_commands{'math'}->{$emphasized_command} = '';
}

my @bold_commands = ('strong', 'b');
foreach my $bold_command (@bold_commands) {
  $LaTeX_style_brace_commands{'text'}->{$bold_command} = '\\textbf';
  $LaTeX_style_brace_commands{'math'}->{$bold_command} = '\\mathbf';
}

# 'cite' could be emphasized?
my @italics_commands = ('cite', 'i');
foreach my $italics_command (@italics_commands) {
  $LaTeX_style_brace_commands{'text'}->{$italics_command} = '\\textit';
  $LaTeX_style_brace_commands{'math'}->{$italics_command} = '\\mathit';
}


my @typewriter_commands = ('t', 'code', 'samp', 'key', 'env', 'file',
 'command', 'option', 'indicateurl');

foreach my $typewriter_command (@typewriter_commands) {
  $LaTeX_style_brace_commands{'text'}->{$typewriter_command} = '\\texttt';
  $LaTeX_style_brace_commands{'math'}->{$typewriter_command} = '\\mathtt';
}

my @quoted_commands = ('samp', 'indicateurl');

my %quotes_map;
# Quotes are reset in converter_initialize and unicode quotes are used
# if @documentencoding utf-8 is used.
foreach my $quoted_command (@quoted_commands) {
  $quotes_map{$quoted_command} = ["`", "'"];
}

# for the distinct kbd style.
# use \ttfamily to have a cumulative effect with \textsl
my $kbd_formatting_latex = '\ttfamily\textsl';

# format in description for @*table argument
my %description_command_format;

foreach my $command (keys(%{$LaTeX_style_brace_commands{'text'}})) {
  my $description_format = $LaTeX_style_brace_commands{'text'}->{$command};
  if ($description_format ne '' and $description_format !~ /\\text[a-z]{2}$/) {
    # use \normalfont to avoid default bold if not already a font switching
    # command (useful for emph in practice).
    $description_format = '\normalfont'.$description_format;
  }
  $description_command_format{$command} = $description_format;
}

# used for the distinct style
$description_command_format{'kbd'} = $kbd_formatting_latex;

# style @-commands that can appear in tables need to be
# formatted with a final command.  For quoted commands this command
# has to be setup. Prepare that setup.
my $description_command_new_commands_prefix = 'GNUTexinfotablestyle';

my %description_command_new_commands = ();

foreach my $quoted_command (@quoted_commands) {
  delete $description_command_format{$quoted_command};
  my $specific_format_command
    = "\\${description_command_new_commands_prefix}$quoted_command";
  my $description_format = $LaTeX_style_brace_commands{'text'}->{$quoted_command};
  # does not happen currently
  if ($description_format eq '') {
    $description_command_new_commands{$quoted_command} =
            "$specific_format_command\[1]{\\ifstrempty{#1}{}{`#1'}}";
  } else {
    my $prepended_normalfont = '';
    if ($description_format !~ /\\text[a-z]{2}$/) {
      # use \normalfont to avoid default bold
      $prepended_normalfont = '\normalfont{}';
    }
    # We use \ifstrempty to avoid outputting an empty
    # quotation if there is no item.  Note that it does
    # not work as intended if there is no optional parameter
    # for item, like
    #   \item some text
    # but works for
    #   \item[] some text
    $description_command_new_commands{$quoted_command} =
            "$specific_format_command\[1]{\\ifstrempty{#1}{}{$prepended_normalfont`$description_format\{#1}'}}";
  }
  $description_command_format{$quoted_command} = $specific_format_command;
}

my %defaults = (
  'ENABLE_ENCODING'      => 0,
  'FORMAT_MENU'          => 'nomenu',
  'EXTENSION'            => 'tex',

  'OUTFILE'              => undef,
  'SUBDIR'               => undef,
  'documentlanguage'     => undef,

  'output_format'        => 'latex',

  # FIXME any idea what could be used?
  'floats_extension'     => 'tfl',
);


sub converter_defaults($$)
{
  return %defaults;
}

sub converter_global_commands($)
{
  return @informative_global_commands;
}

sub converter_initialize($)
{
  my $self = shift;

  %{$self->{'ignored_types'}} = %ignored_types;
  %{$self->{'ignorable_space_types'}} = %ignorable_space_types;
  %{$self->{'ignored_commands'}} = %ignored_commands;

  foreach my $format (keys(%format_raw_commands)) {
    $self->{'ignored_commands'}->{$format} = 1 
       unless ($self->{'expanded_formats_hash'}->{$format});
  }

  %{$self->{'quotes_map'}} = %quotes_map;
  $self->{'convert_text_options'} 
      = {Texinfo::Common::_convert_text_options($self)};

  # this condition means that there is no way to turn off
  # @U expansion to utf-8 characters even though this
  # could output characters that are not known in the
  # fontenc and will lead to an error.
  # FIXME add a customization variable?  Or allow/explain
  # how to add \DeclareUnicodeCharacter{XXXX}{aa}
  # in preamble?  Use a fontenc with more points?
  if ($self->get_conf('OUTPUT_ENCODING_NAME')
      and $self->get_conf('OUTPUT_ENCODING_NAME') eq 'utf-8') {
    # cache this to avoid redoing calls to get_conf
    $self->{'to_utf8'} = 1;

    if ($self->get_conf('ENABLE_ENCODING')) {
      # Do not use utf-8 encoded curly quotes if '@documentencoding UTF-8'
      # is not given.
      if ($self->{'extra'}->{'documentencoding'}) {
        foreach my $quoted_command (@quoted_commands) {
          # Directed single quotes
          $self->{'quotes_map'}->{$quoted_command} = ["\x{2018}", "\x{2019}"];
        }
      }
    }
  }
  if (defined($self->get_conf('OPEN_QUOTE_SYMBOL'))) {
    foreach my $quoted_command (@quoted_commands) {
      $self->{'quotes_map'}->{$quoted_command}->[0]
       = $self->get_conf('OPEN_QUOTE_SYMBOL');
    }
  }
  if (defined($self->get_conf('CLOSE_QUOTE_SYMBOL'))) {
    foreach my $quoted_command (@quoted_commands) {
      $self->{'quotes_map'}->{$quoted_command}->[1]
       = $self->get_conf('CLOSE_QUOTE_SYMBOL');
    }
  }
  # some caching to avoid calling get_conf
  $self->{'enable_encoding'} = $self->get_conf('ENABLE_ENCODING');
  $self->{'output_encoding_name'} = $self->get_conf('OUTPUT_ENCODING_NAME');
  $self->{'debug'} = $self->get_conf('DEBUG');

  return $self;
}

my %LaTeX_floats = (
 'figure' => '\listoffigures',
 'table' => '\listoftables',
);

# associate float normalized types to latex float environment names
sub _prepare_floats($)
{
  my $self = shift;
  if ($self->{'floats'}) {
    foreach my $normalized_float_type (sort(keys(%{$self->{'floats'}}))) {
      my $latex_variable_float_name = $normalized_float_type;
      # note that with that transformation, some float types
      # may be put together
      $latex_variable_float_name =~ s/[^a-zA-z]//g;
      if (exists($LaTeX_floats{lc($latex_variable_float_name)})) {
        $self->{'normalized_float_latex'}->{$normalized_float_type}
          = lc($latex_variable_float_name);
      } else {
        # for floats without type, and to avoid name clashes
        my $latex_float_name = 'TexinfoFloat'.$latex_variable_float_name;
        if (exists($self->{'latex_floats'}->{$latex_float_name})) {
          while (exists($self->{'latex_floats'}->{$latex_float_name})) {
            $latex_float_name .= 'a';
          }
        }
        $self->{'latex_floats'}->{$latex_float_name}
          = $normalized_float_type;
        $self->{'normalized_float_latex'}->{$normalized_float_type}
          = $latex_float_name;
      }
    }
  }
}

sub _prepare_conversion($;$)
{
  my $self = shift;
  my $root = shift;

  $self->_set_global_multiple_commands(-1);

  if (defined($root)) {
    $self->associate_other_nodes_to_sections($root);
  }

  if ($self->{'extra'}->{'settitle'}) {
    my $settitle_root = $self->{'extra'}->{'settitle'};
    if (not ($settitle_root->{'extra'}
             and $settitle_root->{'extra'}->{'missing_argument'})) {
      $self->{'settitle_tree'} =
         {'contents' => $settitle_root->{'args'}->[0]->{'contents'}};
    }
  }
  $self->_prepare_floats();
}

sub associate_other_nodes_to_sections($$)
{
  my ($self, $root) = @_;

  # associate lone nodes with sectioning commands
  my $additional_node_section_associations = {};

  my $current_sectioning_command;
  # nodes not already associated as no section has been seen,
  # associate to the first section
  my $pending_nodes = [];

  foreach my $element_content (@{$root->{'contents'}}) {
    if ($element_content->{'cmdname'}
        and $element_content->{'cmdname'} eq 'node') {
      if (not $element_content->{'extra'}->{'associated_section'}
          and $element_content->{'extra'}->{'normalized'}) {
        if (defined($current_sectioning_command)) {
          $additional_node_section_associations->{$element_content->{'extra'}->{'normalized'}}
            = $current_sectioning_command;
        } else {
          push @$pending_nodes, $element_content->{'extra'}->{'normalized'};
        }
      }
    } elsif ($element_content->{'cmdname'}
          and $root_commands{$element_content->{'cmdname'}}) {
      $current_sectioning_command = $element_content;
      if (scalar(@$pending_nodes)) {
        foreach my $normalized_node_name (@$pending_nodes) {
          $additional_node_section_associations->{$normalized_node_name}
            = $current_sectioning_command
        }
        $pending_nodes = [];
      }
    }
  }
  $self->{'normalized_nodes_associated_section'}
    = $additional_node_section_associations;
}

# added in the tree where the \begin{document} should be,
# after the @-commands in preamble
my $latex_document_type = '_latex_document';

sub output($$)
{
  my ($self, $root) = @_;

  $self->_set_outfile();
  return undef unless $self->_create_destination_directory();

  my $fh;
  if (! $self->{'output_file'} eq '') {
    $fh = $self->Texinfo::Common::open_out ($self->{'output_file'});
    if (!$fh) {
      $self->document_error(sprintf(__("could not open %s for writing: %s"),
                                    $self->{'output_file'}, $!));
      return undef;
    }
  }

  # add one level if not a document_root, to always have
  # the same tree structure
  my $top_root;
  if (not $root->{'type'} or $root->{'type'} ne 'document_root') {
    $top_root = {'contents' => [$root]};
  } else {
    $top_root = $root;
  }

  # Ignore everything between Top node and the next node.
  my $modified_top_root = {'contents' => []};

  my $in_top_node = 0;
  foreach my $element_content (@{$top_root->{'contents'}}) {
    if ($element_content->{'cmdname'}
        and $element_content->{'cmdname'} eq 'node') {
      if ($element_content->{'extra'}->{'normalized'} eq 'Top') {
        $in_top_node = 1;
      } else {
        if ($in_top_node) {
          $in_top_node = 0;
        }
        push @{$modified_top_root->{'contents'}},
          $element_content;
      }
    } elsif (not $in_top_node) {
      push @{$modified_top_root->{'contents'}},
        $element_content;
    }
  }

  # split the first element of the tree in a content before
  # document start and a new type where the document start.
  # The document start at the first @-command that is some
  # document text and not an informative @-command, or
  # at the first paragraph.
  my $begin_document_type = {'type' => $latex_document_type};
  # already a top node sectioning or node command
  if (defined($modified_top_root->{'contents'}->[0]->{'cmdname'})) {
    unshift @{$modified_top_root->{'contents'}}, $begin_document_type;
  } else {
    my $first_element = shift @{$modified_top_root->{'contents'}};
    my @first_element_contents = @{$first_element->{'contents'}};
    my $new_first_element = {'contents' => []};
    if ($first_element->{'type'}) {
      $new_first_element->{'type'} = $first_element->{'type'};
    }
    while (scalar(@first_element_contents)) {
      my $content = $first_element_contents[0];
      if (($content->{'cmdname'}
           and not $preamble_commands{$content->{'cmdname'}}
           and not $self->{'ignored_commands'}->{$content->{'cmdname'}})
          or ($content->{'type'} and $content->{'type'} eq 'paragraph')) {
        last;
      }
      push @{$new_first_element->{'contents'}},
             shift @first_element_contents;
    }
    $begin_document_type->{'contents'} = \@first_element_contents;
    unshift @{$modified_top_root->{'contents'}},
      ($new_first_element, $begin_document_type);
  }

  # nothing after Top node the end, mark that Top node is ignored.
  if ($in_top_node) {
    push @{$modified_top_root->{'contents'}},
        {'type' => 'paragraph', 'contents' => [
        {'text' => "\n(`Top' node ignored)\n", 'type' => 'ignored_top_node'}]};
  }

  my $result = '';

  $self->_prepare_conversion($modified_top_root);

  $result .= $self->_output_text($self->_latex_header(), $fh);
  _push_new_context($self, 'main');
  $result .= $self->_output_text($self->convert_tree($modified_top_root), $fh);
  $result .= $self->_output_text($self->_latex_footer(), $fh);

  #print $result;
  if ($fh and $self->{'output_file'} ne '-') {
    $self->register_close_file($self->{'output_file'});
    if (!close ($fh)) {
      $self->document_error(sprintf(__("error on closing %s: %s"),
                                    $self->{'output_file'}, $!));
    }
  }
  return $result;
}

# we allow the converter to already be in a context, but if
# not create one.
sub convert($$)
{
  my $self = shift;
  my $root = shift;

  $self->_prepare_conversion($root);

  if (not exists($self->{'formatting_context'})
      or scalar(@{$self->{'formatting_context'}}) == 0) {
    _push_new_context($self, 'document');
  }
  
  return $self->_convert($root);
}

# a context should have been set by the caller
sub convert_tree($$)
{
  my $self = shift;
  my $root = shift;

  #print STDERR "* ".Texinfo::Common::_print_current($root)."\n";
  #foreach my $content (@{$root->{'contents'}}) {
  #  print STDERR "** ".Texinfo::Common::_print_current($content)."\n";
  #}
  return $self->_convert($root);
}

# ellipsis leaves less spacing after \dots in case it is followed
# by punctuation. It does not seem to fix the @dots verusus @enddots issue
# to be loaded after Babel if you are using the French option
# FIXME use it anyway?
# \usepackage{ellipsis}

my %LaTeX_encoding_names_map = (
  'utf-8' => 'utf8',
);

# book or report?
my $documentclass = 'book';

my %front_main_matter_definitions = (
  'book' => '% redefine the \mainmatter command such that it does not clear page
% as if in double page
\makeatletter
\renewcommand\mainmatter{\clearpage\@mainmattertrue\pagenumbering{arabic}}
\makeatother
% add command aliases to use the same command in book and report
\newcommand\GNUTexinfomainmatter{\mainmatter}
\newcommand\GNUTexinfofrontmatter{\frontmatter}
',
  'report' => '% add mainmatter and frontmatter commands
\newcommand\GNUTexinfomainmatter{\clearpage\pagenumbering{arabic}}
\newcommand\GNUTexinfofrontmatter{\clearpage\pagenumbering{roman}}
'
);


sub _latex_header {
  my $self = shift;
  # amsfonts for \circledR
  # amsmath for \text in math
  # T1 fontenc for \DH, \guillemotleft, ...
  # eurosym for \euro
  # textcomp for \textdegree in older LaTeX
  # graphicx for \includegraphics
  # needspace for \needspace. In texlive-latex-extra in debian
  # etoolbox for \patchcmd and \ifstrempty. In texlive-latex-recommended in debian
  # fontsize for \changefontsize. In texlive-latex-extra in debian
  # mdframed for the formatting of @cartouche
  # \usepackage[linkbordercolor={0 0 0}]{hyperref}
  my $header = "\\documentclass{$documentclass}\n"
.'\usepackage{makeidx}\makeindex
\usepackage{amsfonts}
\usepackage{amsmath}
\usepackage[gen]{eurosym}
\usepackage[T1]{fontenc}
\usepackage{textcomp}
\usepackage{graphicx}
\usepackage{needspace}
\usepackage{etoolbox}
% a framemethod is needed for roundcorner
\usepackage[framemethod=TikZ]{mdframed}
\usepackage{fontsize}
\usepackage{enumitem}
\usepackage{geometry}
\usepackage{fancyhdr}
\usepackage{float}
% use hidelinks to remove boxes around links to be similar with Texinfo TeX
\usepackage[hidelinks]{hyperref}
';
  if ($self->{'output_encoding_name'}) {
    my $encoding = $self->{'output_encoding_name'};
    if (defined($LaTeX_encoding_names_map{$encoding})) {
      $encoding = $LaTeX_encoding_names_map{$encoding};
    }# else {
      # FIXME Warn?
    #}
    $header .= "\\usepackage[$encoding]{inputenc}\n";
  }
  #if ($self->{'extra'}->{'shortcontents'}) {
  #  # in texlive-latex-extra in debian
  #  $header .= "\\usepackage{shorttoc}\n";
  #}
  if ($self->{'floats'}) {
    foreach my $normalized_float_type (sort(keys(%{$self->{'normalized_float_latex'}}))) {
      my $latex_float_name
        = $self->{'normalized_float_latex'}->{$normalized_float_type};
      if (not exists($LaTeX_floats{$latex_float_name})) {
        my $float_type = '';
        if ($normalized_float_type ne '') {
          _push_new_context($self, 'float_type '.$normalized_float_type);
          my $float = $self->{'floats'}->{$normalized_float_type}->[0];
          my $float_type_contents = $float->{'extra'}->{'type'}->{'content'};
          my $float_type = _convert($self, {'contents' => $float_type_contents});
          $self->_pop_context();
        }
        my $floats_extension = $self->{'floats_extension'};
        $header .= "% new float for type `$normalized_float_type'\n";
        $header .= "\\newfloat{$latex_float_name}{htb}{$floats_extension}[chapter]
\\floatname{$latex_float_name}{$float_type}
";
      }
    }
  }
  # defined additional commands used in @*table description format
  foreach my $command (sort(keys(%description_command_new_commands))) {
    $header .= '% command used in \description format for '.$command."\n";
    $header .= "\\newcommand".$description_command_new_commands{$command}."%\n";
    $header .= "\n";
  }

  $header .= "\n";
  $header .= $front_main_matter_definitions{$documentclass};
  $header .= '
% set defaults for lists that match Texinfo TeX formatting
\setlist[description]{style=nextline, font=\normalfont}
\setlist[itemize]{label=\textbullet}
\setlist[enumerate]{label=\arabic*.}

% command that does nothing used to help with substitutions in commands
\newcommand{\GNUTexinfoplaceholder}[1]{}

% called when setting single headers
% use \nouppercase to match with Texinfo TeX style
\newcommand{\GNUTexinfosetsingleheader}{\pagestyle{fancy}
\fancyhf{}
\lhead{\nouppercase{\leftmark}}
\rhead{\thepage}
}

% called when setting double headers
\newcommand{\GNUTexinfosetdoubleheader}[1]{\pagestyle{fancy}
\fancyhf{}
\fancyhead[LE,RO]{\thepage}
\fancyhead[RE]{#1}
\fancyhead[LO]{\nouppercase{\leftmark}}
}

% for part and chapter, which call \thispagestyle{plain}
\fancypagestyle{plain}{ %
 \fancyhf{}
 \fancyhead[LE,RO]{\thepage}
}

% match Texinfo TeX style
\renewcommand{\headrulewidth}{0pt}%

% avoid pagebreak and headings setting for a sectionning command
\newcommand{\GNUTexinfonopagebreakheading}[2]{\let\clearpage\relax \let\cleardoublepage\relax \let\thispagestyle\GNUTexinfoplaceholder #1{#2}}

% the mdframed style for @cartouche
\mdfdefinestyle{GNUTexinfocartouche}{
innertopmargin=10pt, innerbottommargin=10pt,%
roundcorner=10pt}

';
  # this is in order to be able to run pdflatex even
  # if files do not exist, or filenames cannot be
  # processed by LaTeX
  if ($self->get_conf('TEST')) {
    $header .=
'
\renewcommand{\includegraphics}[1]{\fbox{FIG #1}}

';
  }
  # setup defaults
  $header .= "% set default for \@setchapternewpage\n";
  $header .= _set_chapter_new_page($self, 'on');
  $header .= "\n";
  # setup headings before titlepage to have no headings
  # before titlepage.  They will be set to 'on' after
  # the titlepage if there is a titlepage
  if (exists($self->{'extra'}->{'titlepage'})
      or exists($self->{'extra'}->{'shorttitlepage'})) {
    $header .= "% no headings before titlepage\n";
    $header .= _set_headings($self, 'off');
    $header .= "\n";
  }
  return $header;
}

sub _begin_document($)
{
  my $self = shift;

  my $result = '';
  $result .= '\begin{document}
';
  if (exists($self->{'extra'}->{'titlepage'})
      or exists($self->{'extra'}->{'shorttitlepage'})) {
    $result .= "\n\\GNUTexinfofrontmatter\n";
  }
  return $result;
}

sub _latex_footer {
  return
'\end{document}
';
}

sub _push_new_context($$)
{
  my $self = shift;
  my $context_name = shift;

  push @{$self->{'formatting_context'}},
     {
       'text_context' => ['text'],
       'preformatted_context' => [],
       'math_style' => [],
       'code' => 0,
       'dot_not_end_sentence' => 0,
       'in_quotation' => 0,
       'type' => $context_name
     };
}

sub _pop_context($)
{
  my $self = shift;
  pop @{$self->{'formatting_context'}};
}

sub _protect_url($$)
{
  my ($self, $text) = @_;

  $text =~ s/([{}\\#%])/\\$1/g;
  return $text;
}

# Protect LaTeX special characters.
sub _protect_text($$)
{
  my ($self, $text) = @_;

  # FIXME are there some special characters to protect in math mode,
  # for instance # and ~?
  if ($self->{'formatting_context'}->[-1]->{'text_context'}->[-1] ne 'math'
      and $self->{'formatting_context'}->[-1]->{'text_context'}->[-1] ne 'raw') {
    # temporarily replace \ with a control character
    $text =~ s/\\/\x08/g;

    # replace the other special characters
    $text =~ s/([#%&{}_\$])/\\$1/g;
    $text =~ s/~/\\~{}/g;
    $text =~ s/\^/\\^{}/g;

    $text =~ s/\x08/\\textbackslash{}/g;
    if ($self->{'formatting_context'}->[-1]->{'code'}) {
      $text =~ s/---/{-}{-}{-}/g;
      $text =~ s/--/{-}{-}/g;
    }
    if ($self->{'formatting_context'}->[-1]->{'dot_not_end_sentence'}) {
      $text =~ s/\./\.\\@/g;
    }
  }
  return $text;
}

sub _start_mainmatter_after_titlepage($)
{
  my $self = shift;

  my $result = _set_headings($self, 'on');
  $result .= "\\GNUTexinfomainmatter\n";
  $self->{'titlepage_done'} = 1;
  return $result;
}

# TODO translation
my $default_odd_heading = 'No Title';
sub _set_headings($$)
{
  my ($self, $headings_spec) = @_;

  my $headings_type;
  if ($headings_spec eq 'on') {
    $headings_type = 'single';
    my $setchapternewpage_spec = $self->get_conf('setchapternewpage');
    if (defined($setchapternewpage_spec)
        and $setchapternewpage_spec eq 'odd') {
      $headings_type = 'double';
    }
  } elsif ($headings_spec eq 'doubleafter') {
    $headings_type = 'double';
  } elsif ($headings_spec eq 'singleafter') {
    $headings_type = 'single';
  } elsif ($headings_spec eq 'off' or $headings_spec eq 'single'
           or $headings_spec eq 'double') {
    $headings_type = $headings_spec;
  }

  if (not defined($headings_type)) {
    confess("_set_headings no type for $headings_spec");
  }

  my $result = '';
  if ($headings_type eq 'single') {
    $result = "\\GNUTexinfosetsingleheader{}%\n";
  } elsif ($headings_type eq 'double') {
    my $odd_heading;
    if ($self->{'settitle_tree'}) {
      $odd_heading = $self->_convert($self->{'settitle_tree'});
    } else {
      $odd_heading = $default_odd_heading;
    }
    $result = "\\GNUTexinfosetdoubleheader{$odd_heading}%\n";
  } elsif ($headings_type eq 'off') {
    $result = "\\pagestyle{empty}%\n";
  }
  return $result;
}

# to change the chapter we substitute in the \chapter command.
# REMARK it is fragile as it depends on the LaTeX codes. It is also
# most probably specific of the documentclass.  It is present in both
# report and book document classes in 2021
my $odd_chapter_new_page_code = '\if@openright\cleardoublepage\else\clearpage\fi';
my $default_chapter_page_code = $odd_chapter_new_page_code;
# To make sure that we substitute the right code, we add a
# distinctive code that does nothing.  This is needed when
# code is simply removed or when simple code is substituted.
my $chapter_new_page_marking_placeholder 
   = '\GNUTexinfoplaceholder{setchapternewpage placeholder}';

my %setchapternewpage_new_page_spec_code = (
  'on' => $chapter_new_page_marking_placeholder.'\clearpage',
  'off' => $chapter_new_page_marking_placeholder.'',
  'odd' => $odd_chapter_new_page_code,
);

# Note that the code should probably be different if the default code
# wes not distinctive enough
sub _set_chapter_new_page($$)
{
  my ($self, $setchapternewpage_spec) = @_;
  
  my $substituted_code;
  if (defined($self->{'prev_chapter_new_page_substitution'})) {
    $substituted_code = $self->{'prev_chapter_new_page_substitution'};
  } else {
    $substituted_code = $default_chapter_page_code;
  }
  my $new_code = $setchapternewpage_new_page_spec_code{$setchapternewpage_spec};

  my $result = '';
  # do not substitute if it is the same, for instance
  # if setting the same as document class default or setting twice
  if ($new_code ne $substituted_code) {
    $result .= '\makeatletter
\patchcmd{\chapter}{'.$substituted_code.'}{'.$new_code.'}{}{}
\makeatother
';
  }

  # reset headings after titlepage only, or immediately
  # if there is no titlepage
  if ((not $self->{'extra'}->{'titlepage'}
       and not $self->{'extra'}->{'shorttitlepage'})
      or $self->{'titlepage_done'}) {
    $result .= _set_headings($self, 'on');
  }

  $self->{'prev_chapter_new_page_substitution'} = $new_code;
  
  return $result;
}

my %small_font_preformatted_commands;
foreach my $small_font_preformatted_command (
     grep {/^small/} keys(%preformatted_commands)) {
  $small_font_preformatted_commands{$small_font_preformatted_command} = 1;
}

sub _open_preformatted($$)
{
  my $self = shift;
  my $command = shift;

  my $result = '';
  $result .= '\\par\\begingroup\\obeylines\\obeyspaces\\frenchspacing';
  # TODO indent block correct amount
  $result .= '\\leftskip=2em\\relax\\parskip=0pt\\relax';

  if ($preformatted_code_commands{$command}) {
    $result .= '\\ttfamily';
    $self->{'formatting_context'}->[-1]->{'code'} += 1;
  }
  if ($small_font_preformatted_commands{$command}) {
    $result .= "\\$small_font_size";
  }
  $result .= '{}'."%\n";
  push @{$self->{'formatting_context'}->[-1]->{'preformatted_context'}}, $command;
  return $result;
}

sub _close_preformatted($$)
{
  my $self = shift;
  my $command = shift;
  if ($preformatted_code_commands{$command}) {
    $self->{'formatting_context'}->[-1]->{'code'} -= 1;
  }
  my $old_context = pop @{$self->{'formatting_context'}->[-1]->{'preformatted_context'}};
  die if ($old_context ne $command);
  return "\\endgroup{}%\n"; # \obeylines
}

sub _open_preformatted_stack($$)
{
  my $self = shift;
  my $stack = shift;

  my $result = '';
  foreach my $preformatted_command (@$stack) {
    $result .= _open_preformatted($self, $preformatted_command);
  }
  return $result;
}

sub _close_preformatted_stack($$)
{
  my $self = shift;
  my $stack = shift;

  my $result = '';
  foreach my $preformatted_command (reverse @$stack) {
    $result .= _close_preformatted($self, $preformatted_command);
  }
  return $result;
}

sub _title_font($$)
{
  my $self = shift;
  my $root = shift;
  # in Texinfo TeX seems a bit smaller, but LARGE seems too small
  my $result = "{\\huge \\bfseries ";
  $result .= _convert($self, {'contents' => $root->{'args'}->[0]->{'contents'}});
  $result .= '}';
  return $result;
}

sub _set_environment_options($$$)
{
  my $self = shift;
  my $command = shift;
  my $root = shift;

  if (exists($LaTeX_environment_options{$command})) {
    return $LaTeX_environment_options{$command};
  }

  if ($command eq 'enumerate') {
    my $environment = $LaTeX_environment_commands{$command}[0];
    if ($root->{'extra'} and
        exists($root->{'extra'}->{'enumerate_specification'})) {
      my $specification = $root->{'extra'}->{'enumerate_specification'};
      if ($specification eq 'a') {
        return {$environment => 'label=\alph*.'};
      } elsif ($specification eq 'A') {
        return {$environment => 'label=\Alph*.'};
      }
      if ($specification =~ /^[a-z]+$/) {
        return {$environment
             => 'label=\alph*.,start='.(ord($specification) - ord('a') + 1)};
      } elsif ($specification =~ /^[A-Z]+$/) {
        return {$environment
             => 'label=\Alph*.,start='.(ord($specification) - ord('A') + 1)};
      } else {
        return {$environment => "start=$specification"};
      }
    }
  } elsif ($command eq 'itemize') {
    if ($root->{'args'} and $root->{'args'}->[0]->{'contents'}) {
      # FIXME start a new top context?
      my $itemize_label = _convert($self, $root->{'args'}->[0]);
      if ($itemize_label ne '') {
        my $environment = $LaTeX_environment_commands{$command}[0];
        return {$environment => 'label='.$itemize_label};
      }
    }
  } elsif ($item_line_commands{$command}) {
    if ($root->{'extra'}
        and $root->{'extra'}->{'command_as_argument'}) {
      my $command_as_argument
        = $root->{'extra'}->{'command_as_argument'}->{'cmdname'};
      if ($command_as_argument eq 'kbd') {
        if (_kbd_code_style($self)) {
          $command_as_argument = 'code';
        }
      }
      if (exists($description_command_format{$command_as_argument})
          and $description_command_format{$command_as_argument} ne '') {
        my $environment = $LaTeX_environment_commands{$command}[0];
        return {$environment => 'format='
                .$description_command_format{$command_as_argument}};
      }
    }
  }
  return undef;
}

sub _kbd_code_style($)
{
  my $self = shift;
  return (defined($self->{'conf'}->{'kbdinputstyle'})
          and ($self->{'conf'}->{'kbdinputstyle'} eq 'code'
            or ($self->{'conf'}->{'kbdinputstyle'} eq 'example'
              and (scalar(@{$self->{'formatting_context'}->[-1]->{'preformatted_context'}})
                   and $preformatted_code_commands{$self->{'formatting_context'}->[-1]->{'preformatted_context'}->[-1]}))));
}

sub _end_title_page($)
{
  my $self = shift;
  # add a rule if there was a @title (same as in Texinfo TeX)
  if ($self->{'titlepage_formatting'}->{'title'}) {
    delete $self->{'titlepage_formatting'}->{'title'};
    return '\vskip4pt \hrule height 2pt width \hsize
  \vskip\titlepagebottomglue
';
  }
  return '';
}

sub _printindex($$)
{
  my ($self, $printindex) = @_;
  return '\printindex
';
}


sub _tree_anchor_label {
  my $node_content = shift;

  my $label = Texinfo::Convert::NodeNameNormalization::normalize_node
    ({'contents' => $node_content});
  return "anchor:$label";
}

sub _get_form_feeds($)
{
  my $form_feeds = shift;
  $form_feeds =~ s/^[^\f]*//;
  $form_feeds =~ s/[^\f]$//;
  return $form_feeds;
}

sub _convert($$);

# Convert the Texinfo tree under $ROOT
sub _convert($$)
{
  my ($self, $root) = @_;

  #print STDERR "C ".Texinfo::Common::_print_current($root)."\n";
  #print STDERR "C ".Texinfo::Common::_print_element_tree_simple($root)."\n";

  if (($root->{'type'} and $self->{'ignored_types'}->{$root->{'type'}})
       or ($root->{'cmdname'} 
            and ($self->{'ignored_commands'}->{$root->{'cmdname'}}
                 or ($inline_commands{$root->{'cmdname'}}
                     and $root->{'cmdname'} ne 'inlinefmtifelse'
                     and (($inline_format_commands{$root->{'cmdname'}}
                          and (!$root->{'extra'}->{'format'}
                               or !$self->{'expanded_formats_hash'}->{$root->{'extra'}->{'format'}}))
                         or (!$inline_format_commands{$root->{'cmdname'}}
                             and !defined($root->{'extra'}->{'expand_index'}))))))) {
    return '';
  }
  my $result = '';

  my $type = $root->{'type'};
  my $command = $root->{'cmdname'};

  # in ignorable spaces, keep only form feeds.
  if ($type and $self->{'ignorable_space_types'}->{$type}
      and ($type ne 'empty_spaces_before_paragraph'
           or $self->get_conf('paragraphindent') ne 'asis')) {
    if ($root->{'text'} =~ /\f/) {
      $result = _get_form_feeds($root->{'text'});
    }
    return $result;
  }

  #if ($type and ($type eq 'empty_line' 
  #                         or $type eq 'after_description_line')) {
  #  return '';
  #}
  if ($type and ($type eq 'empty_line')) {
    return "\n";
  }
  if ($type and ($type eq 'after_description_line')) {
    return '';
  }

  # process text
  if (defined($root->{'text'})) {
    if (!$type or $type ne 'untranslated') {
      my $result = _protect_text($self, $root->{'text'});
      return $result;
    } else {
      my $tree = $self->gdt($root->{'text'});
      my $converted = _convert($self, $tree);
      return $converted;
    }
  }

  if ($root->{'extra'}) {
    if ($root->{'extra'}->{'missing_argument'} 
             and (!$root->{'contents'} or !@{$root->{'contents'}})) {
      return '';
    }
  }

  # for displaymath that closes the preformatted
  my $preformatted_to_reopen;
  if ($command) {
    my $unknown_command;
    my $command_context = 'text';
    if ($self->{'formatting_context'}->[-1]->{'text_context'}->[-1] eq 'math') {
      $command_context = 'math';
    }
    if (defined($no_brace_commands{$command})) {
      if ($command eq ':') {
        if ($command_context ne 'math') {
          $result .= "\\\@";
        }
      } elsif ($command eq '*') {
        if ($command_context ne 'math') {
          # FIXME \leavevmode{} is added to avoid
          # ! LaTeX Error: There's no line here to end.
          # but it is not clearly correct
          $result = "\\leavevmode{}\\\\";
          #$result = "\\linebreak[4]\n";
        } else {
          if ($self->{'formatting_context'}->[-1]->{'math_style'}->[-1]
              eq 'one-line') {
            $result .= "";
          } else {
            # no such case for now, but could be in the future
            $result .= "\\\\";
          }
        }
      } elsif ($command eq '.' or $command eq '?' or $command eq '!') {
        if ($command_context ne 'math') {
          $result .= "\\\@";
        }
        $result .= $command;
      } elsif ($command eq ' ' or $command eq "\n" or $command eq "\t") {
        $result .= "\\ {}";
      } elsif ($command eq '-') {
        $result .= "\\-{}";
      } elsif ($command eq '}' or $command eq '{') {
        # always protect, even in math mode
        $result .= "\\$command";
      } else {
        $result .= _protect_text($self, $no_brace_commands{$command});
      }
      return $result;
    } elsif (exists($brace_no_arg_commands{$command})) {
      my $converted_command = $command;
      if ($command eq 'click' and $root->{'extra'}
        and exists($root->{'extra'}->{'clickstyle'})) {
        $converted_command = $root->{'extra'}->{'clickstyle'};
      }
      if (exists($LaTeX_no_arg_brace_commands{$command_context}->{$converted_command})) {
        $result .= $LaTeX_no_arg_brace_commands{$command_context}->{$converted_command};
      } else {
        die "BUG: unknown brace_no_arg_commands $command $converted_command\n";
      }
      return $result;
    # commands with braces
    } elsif ($accent_commands{$command}) {
      if ($self->{'enable_encoding'}) {
        my $encoding = $self->{'output_encoding_name'};
        my $sc;
        my $accented_text
           = Texinfo::Convert::Text::text_accents($root, $encoding, $sc);
        $result .= _protect_text($self, $accented_text);
      } else {
        my $accent_arg = '';

        if ($LaTeX_accent_commands{$command_context}->{$command}) {
          $result .= "\\$LaTeX_accent_commands{$command_context}->{$command}\{";
          if ($root->{'args'}) {
            $accent_arg = _convert($self, $root->{'args'}->[0]);
          }
          $result .= $accent_arg;
          $result .= '}';
        } elsif ($command eq 'dotless') {
          if ($root->{'args'}) {
            $accent_arg = _convert($self, $root->{'args'}->[0]);
          }
          if ($accent_arg eq 'i' or $accent_arg eq 'j') {
            if ($command_context eq 'math') {
              $result .= "\\${accent_arg}math{}";
            } else {
              $result .= "\\${accent_arg}{}";
            }
          } else {
            # should be an error, but we do not care, it is better if it is
            # handled during parsing
            $result .= _protect_text($self, $accent_arg);
          }
          return $result;
        # accent without math mode command, use slanted text
        } elsif ($command_context eq 'math'
                 and $LaTeX_accent_commands{'text'}->{$command}) {
          $result .= "\\textsl{\\$LaTeX_accent_commands{'text'}->{$command}\{";
          # we do not want accents within to be math accents
          if ($root->{'args'}) {
            push @{$self->{'formatting_context'}->[-1]->{'text_context'}}, 'text';
            $accent_arg = _convert($self, $root->{'args'}->[0]);
            my $old_context = pop @{$self->{'formatting_context'}->[-1]->{'text_context'}};
          }
          $result .= $accent_arg;
          $result .= '}}';
        }
      }
      return $result;
    } elsif (exists($LaTeX_style_brace_commands{'text'}->{$command})
         or ($root->{'type'} and $root->{'type'} eq 'definfoenclose_command')) {
      if ($self->{'quotes_map'}->{$command}) {
        $result .= $self->{'quotes_map'}->{$command}->[0];
      }
      if ($LaTeX_style_brace_commands{$command_context}->{$command}) {
        $result .= "$LaTeX_style_brace_commands{$command_context}->{$command}\{";
      }
      if ($code_style_commands{$command}) {
        $self->{'formatting_context'}->[-1]->{'code'} += 1;
      }
      if ($root->{'args'}) {
        $result .= _convert($self, $root->{'args'}->[0]);
      }
      if ($LaTeX_style_brace_commands{$command_context}->{$command}) {
        $result .= '}';
      }
      if ($code_style_commands{$command}) {
        $self->{'formatting_context'}->[-1]->{'code'} -= 1;
      }
      if ($self->{'quotes_map'}->{$command}) {
        $result .= $self->{'quotes_map'}->{$command}->[1];
      }
      return $result;
    } elsif ($command eq 'kbd') {
      # 'kbd' is special, distinct font is typewriter + slanted
      # @kbdinputstyle
      # ‘code’ Always use the same font for @kbd as @code.
      # ‘example’ Use the distinguishing font for @kbd only in @example and similar environments.
      # ‘distinct’ (the default) Always use the distinguishing font for @kbd.
      my $code_font = _kbd_code_style($self);
      if ($code_font) {
        if ($LaTeX_style_brace_commands{$command_context}->{'code'}) {
          $result .= "$LaTeX_style_brace_commands{$command_context}->{'code'}\{";
        }
      } else {
        $result .= "{$kbd_formatting_latex\{";
      }
      if ($root->{'args'}) {
        $self->{'formatting_context'}->[-1]->{'code'} += 1;
        $result .= _convert($self, $root->{'args'}->[0]);
        $self->{'formatting_context'}->[-1]->{'code'} -= 1;
      }
      if ($code_font) {
        if ($LaTeX_style_brace_commands{$command_context}->{'code'}) {
          $result .= '}';
        }
      } else {
        $result .= '}}';
      }
      return $result;
    } elsif ($command eq 'verb') {
      $result .= "\\verb" .$root->{'extra'}->{'delimiter'};
      push @{$self->{'formatting_context'}->[-1]->{'text_context'}}, 'raw';
      if ($root->{'args'}) {
        $result .= _convert($self, $root->{'args'}->[0]);
      }
      my $old_context = pop @{$self->{'formatting_context'}->[-1]->{'text_context'}};
      die if ($old_context ne 'raw');
      $result .= $root->{'extra'}->{'delimiter'};
      return $result;
    } elsif ($command eq 'image') {
      if (defined($root->{'args'}->[0])
          and @{$root->{'args'}->[0]->{'contents'}}) {
        # distinguish text basefile used to find the file and
        # converted basefile with special characters escaped
        my $basefile = Texinfo::Convert::Text::convert_to_text(
         {'contents' => $root->{'args'}->[0]->{'contents'}},
         {'code' => 1, %{$self->{'convert_text_options'}}});
        # FIXME not clear at all what can be in filenames here,
        # what should be escaped and how
        my $converted_basefile = _protect_text($self, $basefile);

        my $image_file;
        foreach my $extension (@LaTeX_image_extensions) {
          my $located_file =
            $self->Texinfo::Common::locate_include_file("$basefile.$extension");
          if (defined($located_file)) {
            my ($image_volume, $image_directories, $image_filename)
                 = File::Spec->splitpath($located_file);
            # using basefile with escaped characters
            $image_file = File::Spec->catpath($image_volume,
                                       $image_directories, $converted_basefile);
          }
        }
        if (not defined($image_file)) {
          $image_file = $converted_basefile;
        }
        my $width;
        if ((@{$root->{'args'}} >= 2)
              and defined($root->{'args'}->[1])
              and @{$root->{'args'}->[1]->{'contents'}}){
          push @{$self->{'formatting_context'}->[-1]->{'text_context'}}, 'raw';
          $width = _convert($self, {'contents'
                         => $root->{'args'}->[1]->{'contents'}});
          my $old_context = pop @{$self->{'formatting_context'}->[-1]->{'text_context'}};
          die if ($old_context ne 'raw');
          if ($width !~ /\S/) {
            $width = undef;
          }
        }
        my $height;
        if ((@{$root->{'args'}} >= 3)
              and defined($root->{'args'}->[2])
              and @{$root->{'args'}->[2]->{'contents'}}) {
          push @{$self->{'formatting_context'}->[-1]->{'text_context'}}, 'raw';
          $height = _convert($self, {'contents'
                         => $root->{'args'}->[2]->{'contents'}});
          my $old_context = pop @{$self->{'formatting_context'}->[-1]->{'text_context'}};
          die if ($old_context ne 'raw');
          if ($height !~ /\S/) {
            $height = undef;
          }
        }
        $result .= "\\includegraphics";
        if (defined($width) or defined($height)) {
          $result .= "[";
          if (defined($width)) {
            $result .= "width=$width";
            if (defined($height)) {
              $result .= ",";
            }
          }
          if (defined($height)) {
            $result .= "height=$height";
          }
          $result .= "]";
        }
        $result .= "{$image_file}";
      }
      return $result;
    } elsif ($command eq 'email') {
      if ($root->{'args'}) {
        my $name;
        my $converted_name;
        my $email;
        my $email_text;
        if (scalar (@{$root->{'args'}}) == 2
            and defined($root->{'args'}->[1])
            and @{$root->{'args'}->[1]->{'contents'}}) {
          $name = $root->{'args'}->[1]->{'contents'};
          $converted_name = _convert($self, {'contents' => $name});
        }
        if (defined($root->{'args'}->[0])
            and @{$root->{'args'}->[0]->{'contents'}}) {
          $email = $root->{'args'}->[0]->{'contents'};
          $email_text 
            = $self->_protect_url(Texinfo::Convert::Text::convert_to_text(
                                       {'contents' => $email},
                                       {'code' => 1,
                                Texinfo::Common::_convert_text_options($self)}));
        }
        if ($name and $email) {
          $result .= "\\href{mailto:$email_text}{$converted_name}";
        } elsif ($email) {
          $result .= "\\href{mailto:$email_text}{\\nolinkurl{$email_text}}";
        } elsif ($name) {
          $result .= $converted_name;
        }
      }
      return $result;
    } elsif ($command eq 'uref' or $command eq 'url') {
      if ($root->{'args'}) {
        if (scalar(@{$root->{'args'}}) == 3
             and defined($root->{'args'}->[2])
             and @{$root->{'args'}->[2]->{'contents'}}) {
          unshift @{$self->{'current_contents'}->[-1]}, 
            {'contents' => $root->{'args'}->[2]->{'contents'}};
        } elsif (@{$root->{'args'}->[0]->{'contents'}}) {
          my $url_content = $root->{'args'}->[0]->{'contents'};
          my $url_text = $self->_protect_url(
                      Texinfo::Convert::Text::convert_to_text(
                                       {'contents' => $url_content},
                                       {'code' => 1,
                                Texinfo::Common::_convert_text_options($self)}));
          if (scalar(@{$root->{'args'}}) == 2
             and defined($root->{'args'}->[1])
             and @{$root->{'args'}->[1]->{'contents'}}) {
            my $description = _convert($self, {'contents',
                                   $root->{'args'}->[1]->{'contents'}});
            my $text = $self->gdt('{text} ({url})',
                          {'text' => $description, 'url' => "\\nolinkurl{$url_text}"}, 
                                       'translated_text');
            $result .= "\\href{$url_text}{$text}";
            return $result;
          } else {
            $result .= "\\url{$url_text}";
            return $result;
          }
        } elsif (scalar(@{$root->{'args'}}) == 2
                 and defined($root->{'args'}->[1])
                 and @{$root->{'args'}->[1]->{'contents'}}) {
          unshift @{$self->{'current_contents'}->[-1]}, 
            {'contents' => $root->{'args'}->[1]->{'contents'}};
        }
      }
      return $result;
    } elsif ($command eq 'footnote') {
      _push_new_context($self, 'footnote');
      $result .= '\footnote{';
      $result .= $self->_convert($root->{'args'}->[0]); 
      $result .= '}';
      $self->_pop_context();
      return $result;
    } elsif ($command eq 'anchor') {
      my $anchor_label = _tree_anchor_label($root->{'extra'}->{'node_content'});
      $result .= "\\label{$anchor_label}%\n";
      return $result;
    } elsif ($ref_commands{$command}) {
      if (scalar(@{$root->{'args'}})) {
        my @args;
        for my $arg (@{$root->{'args'}}) {
          if (defined $arg->{'contents'} and @{$arg->{'contents'}}) {
            push @args, $arg->{'contents'};
          } else {
            push @args, undef;
          }
        }
        # FIXME is the condition scalar(@args) == 3 really needed/ok?
        if ($command eq 'inforef' and scalar(@args) == 3) {
          $args[3] = $args[2];
          $args[2] = undef;
        }
        my $book = '';
        if (defined($args[4])) {
          $book = _convert($self, {'contents' => $args[4]});
        }

        my $file_contents;
        # FIXME not sure if Texinfo TeX uses the external node manual
        # specified as part of the node name with manual name prependended
        # in parentheses
        if (defined($args[3])) {
          $file_contents = $args[3];
        } elsif ($root->{'extra'}->{'node_argument'}
                 and defined($root->{'extra'}->{'node_argument'}->{'normalized'})
                 and $root->{'extra'}->{'node_argument'}->{'manual_content'}) {
          $file_contents = $root->{'extra'}->{'node_argument'}->{'manual_content'};
        }
        my $filename = '';
        if ($file_contents) {
          $self->{'formatting_context'}->[-1]->{'code'} += 1;
          $filename = _convert($self, {'contents' => $file_contents});
          $self->{'formatting_context'}->[-1]->{'code'} -= 1;
        }
        
        if ($command ne 'inforef' and $book eq '' and $filename eq ''
            and $root->{'extra'}->{'node_argument'}
            and defined($root->{'extra'}->{'node_argument'}->{'normalized'})
            and !$root->{'extra'}->{'node_argument'}->{'manual_content'}
            and $self->{'labels'}
            and $self->{'labels'}->{$root->{'extra'}->{'node_argument'}->{'normalized'}}) {
          # internal reference
          # FIXME or $root->{'extra'}->{'label'}?  Both should be
          # the same, but for node_content $root->{'extra'}->{'label'}
          # is used, while above $self->{'labels'} is used.  It could be better
          # to be consistent
          my $reference
           = $self->{'labels'}->{$root->{'extra'}->{'node_argument'}->{'normalized'}};
          my $reference_node_content;
          if ($root->{'extra'}
              and $root->{'extra'}->{'label'}) {
            $reference_node_content = $root->{'extra'}->{'label'}->{'extra'}->{'node_content'};
          } else {
            # FIXME this is probably impossible
            $reference_node_content = $args[0];
          }
          
          my $section_command;
          if ($reference->{'extra'}->{'associated_section'}) {
            $section_command = $reference->{'extra'}->{'associated_section'};
          } elsif ($reference->{'cmdname'} ne 'float') {
            my $normalized_name
              = $root->{'extra'}->{'node_argument'}->{'normalized'};
            if ($self->{'normalized_nodes_associated_section'}
                and $self->{'normalized_nodes_associated_section'}->{$normalized_name}) {
              $section_command
                = $self->{'normalized_nodes_associated_section'}->{$normalized_name}; 
            } else {
              # an anchor.  Find associated section using top level parent @-command
              my $current_root = $reference;
              while ($current_root->{'parent'}) {
                $current_root = $current_root->{'parent'};
                if ($current_root->{'cmdname'}
                    and $root_commands{$current_root->{'cmdname'}}) {
                  if ($current_root->{'cmdname'} ne 'node') {
                    $section_command = $current_root;
                  } else {
                    if ($current_root->{'extra'}->{'associated_section'}) {
                      $section_command = $current_root->{'extra'}->{'associated_section'};
                    } elsif (exists($current_root->{'extra'}->{'normalized'})
                             and $self->{'normalized_nodes_associated_section'}->{$current_root->{'extra'}->{'normalized'}}) {
                      $section_command
                        = $self->{'normalized_nodes_associated_section'}->{$current_root->{'extra'}->{'normalized'}};
                    }
                  }
                  last;
                }
              }
              if (defined($section_command)) {
                # set the association with anchor
                $self->{'normalized_nodes_associated_section'}->{$normalized_name}
                  = $section_command;
              } else {
                print STDERR "BUG/TODO assoc ".$reference->{'cmdname'}.": $normalized_name: ".join("|", sort(keys(%{$reference->{'extra'}})))."\n";
              }
            }
          }
          # reference to a float with a label
          my $float_type;
          if (exists($reference->{'cmdname'})
              and $reference->{'cmdname'} eq 'float') {
            if ($reference->{'extra'}->{'type'}
                and $reference->{'extra'}->{'type'}->{'normalized'} ne '') {
              my $float_type_contents = $reference->{'extra'}->{'type'}->{'content'};
              $float_type = _convert($self, {'contents' => $float_type_contents});
            } else {
              $float_type = '';
            }
          }

          # TODO: should translate
          if ($command eq 'xref') {
            $result .= "See ";
          } elsif ($command eq 'pxref') {
            $result .= "see ";
          } elsif ($command eq 'ref') {
          }
          my $name;
          if (defined($args[2])) {
            $name = $args[2];
          } elsif (not defined($float_type)) {
            if (defined($self->get_conf('xrefautomaticsectiontitle'))
                and $self->get_conf('xrefautomaticsectiontitle') eq 'on'
                and $section_command) {
              $name = $section_command->{'args'}->[0]->{'contents'};
            } else {
              $name = $reference_node_content;
            }
          }
          my $reference_label = _tree_anchor_label($reference_node_content);

          my $name_text;
          if (defined($name)) {
            $name_text = _convert($self, {'contents' => $name});
          }

          # FIXME translation
          if (defined($float_type)) {
            # no page for float reference in Texinfo TeX
            if (defined($name_text)) {
              $result .= "\\hyperref[$reference_label]{$name_text}";
            } else {
              if ($float_type ne '') {
                $result .= "\\hyperref[$reference_label]{$float_type~\\ref*{$reference_label}}";
              } else {
                $result .= "\\hyperref[$reference_label]{\\ref*{$reference_label}}";
              }
            }
          } else {
            # FIXME seems like a , should be added last, but only if not
            # followed by punctuation which means a painful look ahead
            # code to do...  From the Texinfo manual:
            # When processing with TeX, a comma is automatically inserted after the page number
            # for cross-references to within the same manual, unless the closing brace of the argument
            # is followed by non-whitespace (such as a comma or period).
            # 
            # If an unwanted comma is added, follow the argument with a command such as @:
            if ($reference->{'cmdname'} and $reference->{'cmdname'} eq 'node'
                and $section_command) {
              if ($section_command->{'level'} > 1) {
                $result .= "\\hyperref[$reference_label]{Section~\\ref*{$reference_label} [$name_text], page~\\pageref*{$reference_label}}";
              } else {
                $result .= "\\hyperref[$reference_label]{Chapter~\\ref*{$reference_label} [$name_text], page~\\pageref*{$reference_label}}";
              }
            } else {
              # anchor
              $result .= "\\hyperref[$reference_label]{[$name_text], page~\\pageref*{$reference_label}}";
            }
          }
          return $result;
        } else {
          # external ref
          # TODO hyper reference to manual file which seems to be implemented
          # in recent Texinfo TeX
          # TODO: should translate
          if ($command eq 'xref') {
            $result .= "See ";
          } elsif ($command eq 'pxref') {
            $result .= "see ";
          } elsif ($command eq 'ref') {
          }
          my $name;
          if (defined($args[2])) {
            $name = $args[2];
          } elsif (defined($args[0])) {
            $name = $args[0];
          }
          my $name_text;
          if (defined($name)) {
            $name_text = _convert($self, {'contents' => $name});
          }
          
          if ($book ne '') {
            if (defined ($name_text)) {
              $result .= "Section ``$name_text'' in \\textit{$book}";
            } else {
              $result .= "\\textit{$book}";
            }
          } elsif ($filename ne '') {
            if (defined ($name_text)) {
              $result .= "Section ``$name_text'' in \\texttt{$filename}";
            } else {
              $result .= "\\texttt{$filename}";
            }
          } elsif ($name_text) {
            $result .= $name_text;
          }
        }
        return $result;
      }
      return $result;
    } elsif ($explained_commands{$command}) {
      if ($root->{'args'}
          and defined($root->{'args'}->[0])
          and @{$root->{'args'}->[0]->{'contents'}}) {
        # in abbr spaces never end a sentence.
        my $argument;
        if ($command eq 'abbr') {
          $argument = {'type' => '_dot_not_end_sentence',
                       'contents' => $root->{'args'}->[0]->{'contents'}};
        } else {
        # TODO in TeX, acronym is in a smaller font (1pt less).
          $argument = { 'contents' => $root->{'args'}->[0]->{'contents'}};
        }
        if (scalar (@{$root->{'args'}}) == 2
            and defined($root->{'args'}->[-1])
            and @{$root->{'args'}->[-1]->{'contents'}}) {
          my $prepended = $self->gdt('{abbr_or_acronym} ({explanation})', 
                           {'abbr_or_acronym' => $argument, 
                            'explanation' => $root->{'args'}->[-1]->{'contents'}});
          $result .= _convert($self, $prepended);
        } else {
          $result .= _convert($self, $argument);
        }
      }
      return $result;
    } elsif ($inline_commands{$command}) {
      my $arg_index = 1;
      if ($command eq 'inlinefmtifelse'
          and (!$root->{'extra'}->{'format'} 
               or !$self->{'expanded_formats_hash'}->{$root->{'extra'}->{'format'}})) {
        $arg_index = 2;
      }
      if (scalar(@{$root->{'args'}}) > $arg_index
         and defined($root->{'args'}->[$arg_index])
         and @{$root->{'args'}->[$arg_index]->{'contents'}}) {
        if ($command eq 'inlineraw') {
          push @{$self->{'formatting_context'}->[-1]->{'text_context'}}, 'raw';
        }
        $result .= _convert($self, {'contents'
                         => $root->{'args'}->[$arg_index]->{'contents'}});
        if ($command eq 'inlineraw') {
          my $old_context = pop @{$self->{'formatting_context'}->[-1]->{'text_context'}};
          die if ($old_context ne 'raw');
        }
      }
      return $result;
    } elsif ($math_commands{$command}) {
      push @{$self->{'formatting_context'}->[-1]->{'text_context'}}, 'math';
      if (not exists($block_commands{$command})) {
        push @{$self->{'formatting_context'}->[-1]->{'math_style'}}, 'one-line';
        if ($command eq 'math') {
          if ($root->{'args'}) {
            $result .= '$';
            $result .= _convert($self, $root->{'args'}->[0]);
            $result .= '$';
          }
        }
        my $old_context = pop @{$self->{'formatting_context'}->[-1]->{'text_context'}};
        die if ($old_context ne 'math');
        my $old_math_style = pop @{$self->{'formatting_context'}->[-1]->{'math_style'}};
        die if ($old_math_style ne 'one-line');
        return $result;
      } else {
        if ($command eq 'displaymath') {
          push @{$self->{'formatting_context'}->[-1]->{'math_style'}}, 'one-line';
          # close all preformatted formats
          $preformatted_to_reopen = [@{$self->{'formatting_context'}->[-1]->{'preformatted_context'}}];
          $result .= _close_preformatted_stack($self, $preformatted_to_reopen);
          $result .= "\$\$\n";
        }
      }
    } elsif ($command eq 'caption' or $command eq 'shortcaption') {
      if (not defined($root->{'extra'})
          or not defined($root->{'extra'}->{'float'})) {
        return $result;
      }
      my $float = $root->{'extra'}->{'float'};
      my $shortcaption;
      if ($command eq 'shortcaption') {
        if ($float->{'extra'}->{'caption'}) {
          # nothing to do, will use @shortcaption when converting @caption
          return $result;
        } else {
          # shortcaption used as caption;
        }
      } else {
        if ($float->{'extra'}->{'shortcaption'}) {
          $shortcaption = $float->{'extra'}->{'shortcaption'};
        }
      }
      _push_new_context($self, 'latex_caption');
      my $caption_text = _convert($self,
         {'contents' => $root->{'args'}->[0]->{'contents'}});
      $self->_pop_context();
      
      $result .= '\caption';

      if (defined($shortcaption)) {
        _push_new_context($self, 'latex_shortcaption');
        my $shortcaption_text = _convert($self, 
                       {'contents' => $shortcaption->{'args'}->[0]->{'contents'}});
        $self->_pop_context();
        $result .= '['.$shortcaption_text.']';
      }
      $result .= "{$caption_text}\n";
      return $result;
    } elsif ($command eq 'titlefont') {
      $result .= _title_font($self, $root);
      return $result;
    } elsif ($command eq 'U') {
      my $arg;
      if ($root->{'args'}
          and $root->{'args'}->[0]
          and $root->{'args'}->[0]->{'contents'}
          and $root->{'args'}->[0]->{'contents'}->[0]
          and $root->{'args'}->[0]->{'contents'}->[0]->{'text'}) {
        $arg = $root->{'args'}->[0]->{'contents'}->[0]->{'text'};
      }
      if ($arg) {
        # Syntactic checks on the value were already done in Parser.pm,
        # but we have one more thing to test: since this is the one
        # place where we might output actual UTF-8 binary bytes, we have
        # to check that it is possible.  If not, silently fall back to
        # plain text, on the theory that the user wants something.
        my $res;
        if ($self->{'to_utf8'}) {
          my $possible_conversion
            = Texinfo::Convert::Unicode::check_unicode_point_conversion($arg,
                                                             $self->{'DEBUG'});
          if ($possible_conversion) {
            $res = chr(hex($arg)); # ok to call chr
          } else {
            $res = "U+$arg";
          }
        } else {
          $res = "U+$arg";  # not outputting UTF-8
        }
        $result .= _protect_text($self, $res);
      }
      return $result;
    } elsif ($command eq 'value') {
      my $expansion = $self->gdt('@{No value for `{value}\'@}', 
                                    {'value' => $root->{'type'}});
      $expansion = {'type' => 'paragraph',
                    'contents' => [$expansion]};
      $result .= _convert($self, $expansion);
      return $result;
    # block commands
    } elsif (exists($block_commands{$command})) {
      if ($LaTeX_environment_commands{$command}) {
        my $environment_options = _set_environment_options($self, $command, $root);
        foreach my $environment (@{$LaTeX_environment_commands{$command}}) {
          $result .= "\\begin{".$environment."}";
          if (defined($environment_options) and
              exists($environment_options->{$environment})) {
            $result .= '['.$environment_options->{$environment}.']';
          }
          $result .= "\n";
        }
      }
      if ($preformatted_commands{$command}) {
        $result .= _open_preformatted($self, $command);
      } elsif ($block_raw_commands{$command}) {
        push @{$self->{'formatting_context'}->[-1]->{'text_context'}}, 'raw';
      }
      if ($command eq 'titlepage') {
        # start a group such that the changes are forgotten when closed
        # define glues dimensions that are used in titlepage formatting.
        # Taken from Texinfo TeX.
        # FIXME replace \\newskip by \\newlen?
        $result .= "\\begingroup
\\newskip\\titlepagetopglue \\titlepagetopglue = 1.5in
\\newskip\\titlepagebottomglue \\titlepagebottomglue = 2pc
\\setlength{\\parindent}{0pt}\n";
        $result .= "% Leave some space at the very top of the page.
    \\vglue\\titlepagetopglue\n";
        $self->{'titlepage_formatting'} = {'in_titlepage' => 1};
      }

      if ($command eq 'quotation'
          or $command eq 'smallquotation') {
        # this is only used to avoid @author converted as
        # a @titlepage author, for a @quotation in @titlepage @author
        $self->{'formatting_context'}->[-1]->{'in_quotation'} += 1;
        if ($root->{'args'} and $root->{'args'}->[0]
            and $root->{'args'}->[0]->{'contents'}
            and @{$root->{'args'}->[0]->{'contents'}}) {
          my $prepended = $self->gdt('@b{{quotation_arg}:} ', 
             {'quotation_arg' => $root->{'args'}->[0]->{'contents'}});
          $result .= $self->_convert($prepended);
        }
      } elsif ($command eq 'multitable') {
        my $columnsize;
        if ($root->{'extra'}->{'columnfractions'}) {
        } elsif ($root->{'extra'}->{'prototypes'}) {
          foreach my $prototype (@{$root->{'extra'}->{'prototypes'}}) {
            my ($formatted_prototype) = $self->_convert($prototype,
                                                       {'indent_length' => 0});
            push @$columnsize, 
                 2+Texinfo::Convert::Unicode::string_width($formatted_prototype);
          }
        }
      } elsif ($command eq 'float') {
        my $normalized_float_type = '';
        if ($root->{'extra'}->{'type'}) {
          $normalized_float_type = $root->{'extra'}->{'type'}->{'normalized'};
        }
        if (not exists($self->{'normalized_float_latex'}->{$normalized_float_type})) {
          cluck("\@float $normalized_float_type: not found\n");
          return '';
        }
        my $latex_float_name = $self->{'normalized_float_latex'}->{$normalized_float_type};
        _push_new_context($self, 'float'.$latex_float_name);
        $result .= "\\begin{$latex_float_name}\n";
      }
    } elsif ($command eq 'node') {
      # add the label only if not associated with a section
      if (not $root->{'extra'}->{'associated_section'}) {
        my $node_label
          = _tree_anchor_label($root->{'extra'}->{'node_content'});
        $result .= "\\label{$node_label}%\n";
      }
      # ignore Top node like Texinfo TeX.  When called through
      # output(), the tree elements are already removed
      if ($root->{'extra'}->{'normalized'} eq 'Top') {
        return $result;
      }
    } elsif ($sectioning_commands{$command}) {
      my $heading = '';
      if ($root->{'args'}->[0]->{'contents'}) {
        $heading = $self->_convert({'contents' => $root->{'args'}->[0]->{'contents'}});
      }

      my $section_cmd = $section_map{$command};
      if (not defined($section_map{$command})) {
        die "BUG: no section_map for $command";
      }
      
      my $associated_node;
      if ($root->{'extra'}->{'associated_node'}) {
        $associated_node = $root->{'extra'}->{'associated_node'};
        # ignore Top node like Texinfo TeX.  When called through
        # output(), the tree elements are already removed.
        # If the sections are not already removed and are removed here,
        # and in contrast with Texinfo TeX and sections removed in
        # output(), the sections not associated with
        # any node and after Top node and the following node are not
        # removed.
        if ($associated_node->{'extra'}->{'normalized'} eq 'Top') {
          return $result;
        }
      }

      if ($command eq 'appendix' and not $self->{'appendix_done'}) {
        $result .= "\\appendix\n";
        $self->{'appendix_done'} = 1;
      }
      if ($command ne 'centerchap') {
        $result .= "\\".$section_cmd."{$heading}\n";
      } else {
        $result .= "\\".$section_cmd."{\\centering $heading}\n";
      }
      if ($associated_node) {
        my $node_label
          = _tree_anchor_label($associated_node->{'extra'}->{'node_content'});
        $result .= "\\label{$node_label}%\n";
      }
    } elsif (($command eq 'item' or $command eq 'itemx')
            and $root->{'args'} and $root->{'args'}->[0] 
            and $root->{'args'}->[0]->{'type'}
            and $root->{'args'}->[0]->{'type'} eq 'line_arg') {
      # item in @*table
      if ($root->{'args'}->[0]->{'contents'}) {
        my $code_style = 0;
        my $table_command = $root->{'parent'}->{'parent'}->{'parent'};
        if ($table_command->{'extra'}
            and $table_command->{'extra'}->{'command_as_argument'}) {
          my $command_as_argument
            = $table_command->{'extra'}->{'command_as_argument'}->{'cmdname'};
          if ($code_style_commands{$command_as_argument}) {
            $code_style = 1;
          }
        }
        if ($code_style) {
          $self->{'formatting_context'}->[-1]->{'code'} += 1;
        }
        my $converted_arg = _convert($self, $root->{'args'}->[0]);
        if ($code_style) {
          $self->{'formatting_context'}->[-1]->{'code'} -= 1;
        }
        $result .= "\\item[$converted_arg]\n";
      }
    } elsif ($command eq 'item' and $root->{'parent'}->{'cmdname'}
             and $item_container_commands{$root->{'parent'}->{'cmdname'}}) {
      # item in @enumerate and @itemize
      $result .= '\item ';
    # open a multitable cell
    } elsif ($command eq 'headitem' or $command eq 'item'
             or $command eq 'tab') {
      # ...
    } elsif ($command eq 'center') {
      $result .= "\\begin{center}\n";
      $result .= $self->_convert (
                       {'contents' => $root->{'args'}->[0]->{'contents'}});
      $result .= "\n\\end{center}\n";
      return $result;
    } elsif ($command eq 'exdent') {
      if (scalar(@{$self->{'formatting_context'}->[-1]->{'preformatted_context'}})) {
        $result .= $self->_convert({'contents' => $root->{'args'}->[0]->{'contents'}})."\n";
      } else {
        $result .= $self->_convert({'contents' => $root->{'args'}->[0]->{'contents'}})."\n";
      }
      return $result;
    } elsif ($command eq 'verbatiminclude') {
      my $expansion = $self->Texinfo::Common::expand_verbatiminclude($root);
      unshift @{$self->{'current_contents'}->[-1]}, $expansion
        if ($expansion);
      return $result;
    } elsif ($command eq 'insertcopying') {
      if ($self->{'extra'} and $self->{'extra'}->{'copying'}) {
        unshift @{$self->{'current_contents'}->[-1]}, 
           {'contents' => $self->{'extra'}->{'copying'}->{'contents'}};
      }
      return $result;
    } elsif ($command eq 'printindex') {
      $result .= $self->_printindex($root);
      return $result;
    } elsif ($command eq 'listoffloats') {
      if ($root->{'extra'} and $root->{'extra'}->{'type'}
          and defined($root->{'extra'}->{'type'}->{'normalized'})
          and $self->{'floats'}
          and $self->{'floats'}->{$root->{'extra'}->{'type'}->{'normalized'}}
          and @{$self->{'floats'}->{$root->{'extra'}->{'type'}->{'normalized'}}}) {
        my $normalized_float_type = $root->{'extra'}->{'type'}->{'normalized'};
        if (not exists($self->{'normalized_float_latex'}->{$normalized_float_type})) {
          cluck("\@listoffloats $normalized_float_type: not found\n");
          return $result;
        }
        my $latex_float_name = $self->{'normalized_float_latex'}->{$normalized_float_type};
        if (exists($LaTeX_floats{$latex_float_name})) {
          $result .= $LaTeX_floats{$latex_float_name}."\n";
        } else {
          $result .= "\\listof{$latex_float_name}{}\n";
        }
      }
      return $result;
    } elsif ($command eq 'page') {
      $result .= _end_title_page($self);
      # the phantom is added such that successive new pages create blank pages
      $result .= "\\newpage{}%\n\\phantom{blabla}%\n";
      return $result;
    } elsif ($command eq 'indent') {
      # TODO it seems that \indent only works with \setlength{\parindent}{0pt}
      # which makes it quite different from Texinfo @indent
      #$result .= "\\indent{}";
    } elsif ($command eq 'noindent') {
      # spaces after noindent are in ignorable_space_types and are therefore
      # munged which is ok as otherwise it could add a leading space
      $result .= "\\noindent{}";
      return $result;
    } elsif ($command eq 'sp') {
      my $sp_nr = 1;
      if ($root->{'extra'}->{'misc_args'}->[0]) {
        # this useless copy avoids perl changing the type to integer!
        $sp_nr = $root->{'extra'}->{'misc_args'}->[0];
      }
      # FIXME \vskip is a TeX primitive, so the syntax seems to be
      # different from LaTeX, and some people warn against using
      # TeX primitives.  However there is no obvious corresponding
      # command in LaTeX, except for adding enough \\.
      $result .= "\\vskip $sp_nr\\baselineskip %\n";
      return $result;
    } elsif ($command eq 'need') {
      if ($root->{'extra'}->{'misc_args'}->[0]) {
        my $need_value = 0.001 * $root->{'extra'}->{'misc_args'}->[0];
        $result .= "\\needspace{${need_value}pt}%\n";
      }
      return $result;
    } elsif ($command eq 'shorttitlepage') {
      # FIXME ignore if there is alreadu a @titlepage?
      my $title_text = _title_font($self, $root);
      $result .= "\\begin{titlepage}\n";
      $result .= "{\\raggedright $title_text}\n";
      # first newpage ends the title page, phantom and second newpage
      # adds a blank page
      $result .= "\\newpage{}\n\\phantom{blabla}\\newpage{}\n";
      $result .= "\\end{titlepage}\n";
      $result .= _start_mainmatter_after_titlepage($self);
      return $result;
    } elsif ($command eq 'title') {
      my $title_text = _title_font($self, $root);
      #$result .= "\\begin{flushleft}\n";
      #$result .= $title_text."\n";
      #$result .= "\\end{flushleft}\n";
      # FIXME In Texinfo TeX the interline space seems more even
      $result .= "{\\raggedright $title_text}\n";
      # same formatting for the rule as in Texinfo TeX
      $result .= "\\vskip 4pt \\hrule height 4pt width \\hsize \\vskip 4pt\n";
      $self->{'titlepage_formatting'}->{'title'} = 1;
    } elsif ($command eq 'subtitle') {
      my $subtitle_text = _convert($self,
               {'contents' => $root->{'args'}->[0]->{'contents'}});
      # too much vertical spacing with flushright environment
      #$result .= "\\begin{flushright}\n";
      #$result .= $subtitle_text."\n";
      #$result .= "\\end{flushright}\n";
      $result .= "\\rightline{$subtitle_text}\n";
    } elsif ($command eq 'author') {
      if ($self->{'titlepage_formatting'}->{'in_titlepage'}
          and not $self->{'formatting_context'}->[-1]->{'in_quotation'}) {
        if (not $self->{'titlepage_formatting'}->{'author'}) {
          # first author, add space before
          $self->{'titlepage_formatting'}->{'author'} = 1;
          $result .= "\\vskip 0pt plus 1filll\n";
        }
        my $author_name = _convert($self,
                       {'contents' => $root->{'args'}->[0]->{'contents'}});
        # use \leftline as in Texinfo TeX
        # FIXME In Texinfo TeX the interline space between @author lines
        # seems better
        $result .= "\\leftline{\\Large \\bfseries $author_name}%\n";
        return $result;
      }
    } elsif ($command eq 'vskip') {
      if ($root->{'extra'}->{'misc_args'}->[0]) {
        # no need for space in front and end of line they are in the
        # argument
        $result .= "\\vskip$root->{'extra'}->{'misc_args'}->[0]";
      }
      return $result;
    } elsif ($command eq 'contents') {
      if ($self->{'structuring'}
            and $self->{'structuring'}->{'sectioning_root'}) {
        $result .= "\\tableofcontents\\newpage\n";
      }
      return $result;
    } elsif ($command eq 'shortcontents' 
               or $command eq 'summarycontents') {
      if ($self->{'structuring'}
            and $self->{'structuring'}->{'sectioning_root'}) {
        # TODO see notes at the beginning
        $result .= '';
      }
      return $result;
    # FIXME right now not informative commands
    } elsif ($paper_geometry_commands{$command}) {
      $result .= "\\geometry{$paper_geometry_commands{$command}}%\n";
      return $result;
    # @-commands that have an information for the formatting
    # TODO
    # There is no obvious way to change the first paragraph indentation
    # in a way that can be reverted as with @firstparagraphindent.
    # use of \usepackage{indentfirst} cannot be reverted.
    } elsif ($informative_commands{$command}) {
      $self->_informative_command($root);
      if ($command eq 'pagesizes') {
        my $pagesize_spec = _convert($self, $root->{'args'}->[0]);
        my @pagesize_args = split(/\s*,\s*/, $pagesize_spec);
        my @geometry;
        my $height = shift @pagesize_args;
        if (defined($height) and $height ne '') {
          push @geometry, "textheight=$height";
        }
        my $width = shift @pagesize_args;
        if (defined($width) and $width ne '') {
          push @geometry, "textwidth=$width";
        }
        if (scalar(@geometry)) {
          $result .= "\\newgeometry{".join(',', @geometry)."}\n";
        }
      } elsif ($command eq 'paragraphindent'
          and $root->{'extra'}->{'misc_args'}->[0]) {
        my $indentation_spec = $root->{'extra'}->{'misc_args'}->[0];
        if ($indentation_spec eq 'asis') {
          # not implemented here, same as in TeX.
          return $result;
        } else {
          my $indentation_spec_arg = $indentation_spec.'em';
          if ($indentation_spec eq '0' or $indentation_spec eq 'none') {
            $indentation_spec_arg = '0pt';
          }
          $result .= "\\setlength{\\parindent}{$indentation_spec_arg}\n";
        }
      } elsif ($command eq 'frenchspacing'
               and $root->{'extra'}->{'misc_args'}->[0]) {
        my $frenchspacing_spec = $root->{'extra'}->{'misc_args'}->[0];
        if ($frenchspacing_spec eq 'on') {
          $result .= "\\frenchspacing\n";
        } elsif ($frenchspacing_spec eq 'off') {
          $result .= "\\nonfrenchspacing\n";
        }
      } elsif ($command eq 'setchapternewpage'
               and $root->{'extra'}->{'misc_args'}->[0]) {
        my $setchapternewpage_spec = $root->{'extra'}->{'misc_args'}->[0];
        $result .= _set_chapter_new_page($self, $setchapternewpage_spec);
      } elsif ($command eq 'headings'
               and $root->{'extra'}->{'misc_args'}->[0]) {
        my $headings_spec = $root->{'extra'}->{'misc_args'}->[0];
        $result .= _set_headings($self, $headings_spec);
      } elsif ($command eq 'fonttextsize'
               and $root->{'extra'}->{'misc_args'}->[0]) {
        my $fontsize = $root->{'extra'}->{'misc_args'}->[0];
        # default dimension for changefontsize is pt
        $result .= "\\changefontsize{$fontsize}\n";
      }
      return $result;
    } else {
      $unknown_command = 1;
    }
    if ($unknown_command
        and !($root->{'extra'} 
                and ($root->{'extra'}->{'index_entry'}
                     or $root->{'extra'}->{'seeentry'}
                     or $root->{'extra'}->{'seealso'}))
        # commands like def*x are not processed above, since only the def_line
        # associated is processed. If they have no name and no category they 
        # are not considered as index entries either so they have a specific
        # condition
        and !($def_commands{$command} 
              and $command =~ /x$/)) {
      warn "Unhandled $command\n";
      $result .= "!!!!!!!!! Unhandled $command !!!!!!!!!\n";
    }
  }

  # open 'type' constructs.
  if ($root->{'type'}) {
    if ($root->{'type'} eq 'def_line') {
      if ($root->{'extra'} and $root->{'extra'}->{'def_parsed_hash'}
             and %{$root->{'extra'}->{'def_parsed_hash'}}) {
        my $arguments = Texinfo::Common::definition_arguments_content($root);
        my $tree;
        my $command;
        if ($Texinfo::Common::def_aliases{$root->{'extra'}->{'def_command'}}) {
          $command = $Texinfo::Common::def_aliases{$root->{'extra'}->{'def_command'}};
        } else {
          $command = $root->{'extra'}->{'def_command'};
        }
        my $name;
        if ($root->{'extra'}->{'def_parsed_hash'}->{'name'}) {
          $name = $root->{'extra'}->{'def_parsed_hash'}->{'name'};
        } else {
          $name = '';
        }
        
        if ($command eq 'deffn'
            or $command eq 'defvr'
            or $command eq 'deftp'
            or (($command eq 'deftypefn'
                 or $command eq 'deftypevr')
                and !$root->{'extra'}->{'def_parsed_hash'}->{'type'})) {
          if ($arguments) {
            $tree = $self->gdt("\@tie{}-- {category}: {name} {arguments}", {
                    'category' => $root->{'extra'}->{'def_parsed_hash'}->{'category'},
                    'name' => $name,
                    'arguments' => $arguments});
          } else {
            $tree = $self->gdt("\@tie{}-- {category}: {name}", {
                    'category' => $root->{'extra'}->{'def_parsed_hash'}->{'category'},
                    'name' => $name});
          }
        } elsif ($command eq 'deftypefn'
                 or $command eq 'deftypevr') {
          if ($arguments) {
            my $strings = {
                    'category' => $root->{'extra'}->{'def_parsed_hash'}->{'category'},
                    'name' => $name,
                    'type' => $root->{'extra'}->{'def_parsed_hash'}->{'type'},
                    'arguments' => $arguments};
            if ($self->get_conf('deftypefnnewline') eq 'on') {
              $tree = $self->gdt("\@tie{}-- {category}:\@*{type}\@*{name} {arguments}",
                                 $strings);
            } else {
              $tree = $self->gdt("\@tie{}-- {category}: {type} {name} {arguments}",
                                 $strings);
            }
          } else {
            my $strings = {
                    'category' => $root->{'extra'}->{'def_parsed_hash'}->{'category'},
                    'type' => $root->{'extra'}->{'def_parsed_hash'}->{'type'},
                    'name' => $name};
            if ($self->get_conf('deftypefnnewline') eq 'on') {
              $tree = $self->gdt("\@tie{}-- {category}:\@*{type}\@*{name}",
                                 $strings);
            } else {
              $tree = $self->gdt("\@tie{}-- {category}: {type} {name}",
                                 $strings);
            }
          }
        } elsif ($command eq 'defcv'
                 or ($command eq 'deftypecv'
                     and !$root->{'extra'}->{'def_parsed_hash'}->{'type'})) {
          if ($arguments) {
            $tree = $self->gdt("\@tie{}-- {category} of {class}: {name} {arguments}", {
                    'category' => $root->{'extra'}->{'def_parsed_hash'}->{'category'},
                    'name' => $name,
                    'class' => $root->{'extra'}->{'def_parsed_hash'}->{'class'},
                    'arguments' => $arguments});
          } else {
            $tree = $self->gdt("\@tie{}-- {category} of {class}: {name}", {
                    'category' => $root->{'extra'}->{'def_parsed_hash'}->{'category'},
                    'class' => $root->{'extra'}->{'def_parsed_hash'}->{'class'},
                    'name' => $name});
          }
        } elsif ($command eq 'defop'
                 or ($command eq 'deftypeop'
                     and !$root->{'extra'}->{'def_parsed_hash'}->{'type'})) {
          if ($arguments) {
            $tree = $self->gdt("\@tie{}-- {category} on {class}: {name} {arguments}", {
                    'category' => $root->{'extra'}->{'def_parsed_hash'}->{'category'},
                    'name' => $name,
                    'class' => $root->{'extra'}->{'def_parsed_hash'}->{'class'},
                    'arguments' => $arguments});
          } else {
            $tree = $self->gdt("\@tie{}-- {category} on {class}: {name}", {
                    'category' => $root->{'extra'}->{'def_parsed_hash'}->{'category'},
                    'class' => $root->{'extra'}->{'def_parsed_hash'}->{'class'},
                    'name' => $name});
          }
        } elsif ($command eq 'deftypeop') {
          if ($arguments) {
            my $strings = {
                    'category' => $root->{'extra'}->{'def_parsed_hash'}->{'category'},
                    'name' => $name,
                    'class' => $root->{'extra'}->{'def_parsed_hash'}->{'class'},
                    'type' => $root->{'extra'}->{'def_parsed_hash'}->{'type'},
                    'arguments' => $arguments};
            if ($self->get_conf('deftypefnnewline') eq 'on') {
              $tree 
                = $self->gdt("\@tie{}-- {category} on {class}:\@*{type}\@*{name} {arguments}",
                             $strings);
            } else {
              $tree 
                = $self->gdt("\@tie{}-- {category} on {class}: {type} {name} {arguments}",
                             $strings);
            }
          } else {
            my $strings = {
                    'category' => $root->{'extra'}->{'def_parsed_hash'}->{'category'},
                    'type' => $root->{'extra'}->{'def_parsed_hash'}->{'type'},
                    'class' => $root->{'extra'}->{'def_parsed_hash'}->{'class'},
                    'name' => $name};
            if ($self->get_conf('deftypefnnewline') eq 'on') {
              $tree 
                = $self->gdt("\@tie{}-- {category} on {class}:\@*{type}\@*{name}",
                             $strings);
            } else {
              $tree 
                = $self->gdt("\@tie{}-- {category} on {class}: {type} {name}",
                             $strings);
            }
          }
        } elsif ($command eq 'deftypecv') {
          if ($arguments) {
            my $strings = {
                    'category' => $root->{'extra'}->{'def_parsed_hash'}->{'category'},
                    'name' => $name,
                    'class' => $root->{'extra'}->{'def_parsed_hash'}->{'class'},
                    'type' => $root->{'extra'}->{'def_parsed_hash'}->{'type'},
                    'arguments' => $arguments};
            if ($self->get_conf('deftypefnnewline') eq 'on') {
              $tree 
                = $self->gdt("\@tie{}-- {category} of {class}:\@*{type}\@*{name} {arguments}",
                             $strings);
            } else {
              $tree 
                = $self->gdt("\@tie{}-- {category} of {class}: {type} {name} {arguments}",
                             $strings);
            }
          } else {
            my $strings = {
                    'category' => $root->{'extra'}->{'def_parsed_hash'}->{'category'},
                    'type' => $root->{'extra'}->{'def_parsed_hash'}->{'type'},
                    'class' => $root->{'extra'}->{'def_parsed_hash'}->{'class'},
                    'name' => $name};
            if ($self->get_conf('deftypefnnewline') eq 'on') {
              $tree 
                = $self->gdt("\@tie{}-- {category} of {class}:\@*{type}\@*{name}",
                             $strings);
            } else {
              $tree 
                = $self->gdt("\@tie{}-- {category} of {class}: {type} {name}",
                             $strings);
            }
          }
        }


        $result .= _convert($self, {'type' => '_code', 'contents' => [$tree]});
        $result .= "\n\n";
      }
      $result .= "\n";
    } elsif ($root->{'type'} eq '_code') {
      # ...
    } elsif ($root->{'type'} eq '_dot_not_end_sentence') {
      $self->{'formatting_context'}->[-1]->{'dot_not_end_sentence'} += 1;
    } elsif ($root->{'type'} eq 'bracketed') {
      $result .= _protect_text($self, '{');
    } elsif ($root->{'type'} eq $latex_document_type) {
      # special type inserted where the document begins
      $result .= _begin_document($self);
    }
  }

  # The processing of contents is done here.
  if ($root->{'contents'}) {
    my @contents = @{$root->{'contents'}};
    push @{$self->{'current_contents'}}, \@contents;
    while (@contents) {
      my $content = shift @contents;
      my $text = _convert($self, $content);
      $result .= $text;
      #my @str_contents = ();
      #foreach my $item_content (@contents) {
      #  push @str_contents, Texinfo::Common::_print_element_tree_simple($item_content);
      #}
      #print STDERR "contents ".Texinfo::Common::_print_element_tree_simple($root).": ".join("|", @str_contents)."\n";
    }
    pop @{$self->{'current_contents'}};
  }

  # now closing. First, close types.
  if ($root->{'type'}) {
    if ($root->{'type'} eq '_code') {
    } elsif ($root->{'type'} eq '_dot_not_end_sentence') {
      $self->{'formatting_context'}->[-1]->{'dot_not_end_sentence'} -= 1;
    } elsif ($root->{'type'} eq 'bracketed') {
      $result .= _protect_text($self, '}');
    } elsif ($root->{'type'} eq 'before_item') {
      # LaTeX environments do not accept text before the first item, add an item
      if ($result =~ /\S/) {
        if ($item_line_commands{$root->{'parent'}->{'cmdname'}}) {
          # it is important to have an empty optional argument otherwise
          # a quoted command will output the quotes, even with a detection
          # of empty argument (tested with diverse possibilities)
          $result = '\item[] '.$result;
        } else {
          $result = '\item '.$result;
        }
      }
    } elsif ($root->{'type'} eq 'row') {
      # ...
    }
  }

  # close commands
  if ($command) {
    if ($command eq 'titlepage') {
      $result .= _end_title_page($self);
      $result .= "\\endgroup\n";
      $self->{'titlepage_formatting'}->{'in_titlepage'} = 0;
    }
    if ($LaTeX_environment_commands{$command}) {
      foreach my $environment (reverse @{$LaTeX_environment_commands{$command}}) {
        $result .= "\\end{".$environment."}\n";
      }
    }
    if ($preformatted_commands{$command}) {
      $result .= _close_preformatted($self, $command);
    }
    if ($command eq 'float') {
      my $normalized_float_type = '';
      if ($root->{'extra'}->{'type'}) {
        $normalized_float_type = $root->{'extra'}->{'type'}->{'normalized'};
      }
      # this should never happen as we returned at the command
      # open.  If this happens it means that the tree has been modified...
      if (not exists($self->{'normalized_float_latex'}->{$normalized_float_type})) {
        confess("\@float $normalized_float_type: not found\n");
      }
      # do that at the end of the float to be sure that it is after
      # the caption
      if ($root->{'extra'} and $root->{'extra'}->{'node_content'}) {
        my $float_label
          = _tree_anchor_label($root->{'extra'}->{'node_content'});
        $result .= "\\label{$float_label}%\n";
      }
      my $latex_float_name = $self->{'normalized_float_latex'}->{$normalized_float_type};
      $result .= "\\end{$latex_float_name}\n";
      $self->_pop_context();
    } elsif ($command eq 'quotation'
               or $command eq 'smallquotation') {
      if ($root->{'extra'} and $root->{'extra'}->{'authors'}) {
        # FIXME push a formatting context to have a formatting independent
        # of the context in particular the preformatted context?
        foreach my $author (@{$root->{'extra'}->{'authors'}}) {
          $result .= _convert($self,
                 $self->gdt("\@center --- \@emph{{author}}\n",
                    {'author' => $author->{'args'}->[0]->{'contents'}}));
        }
      }
      $self->{'formatting_context'}->[-1]->{'in_quotation'} -= 1;
    } elsif ($command eq 'titlepage') {
    # as explained in the Texinfo manual start headers after titlepage
      $result .= _start_mainmatter_after_titlepage($self);
    }
 
    # close the contexts and register the cells
    if ($block_raw_commands{$command}) {
      my $old_context = pop @{$self->{'formatting_context'}->[-1]->{'text_context'}};
      die if ($old_context ne 'raw');
    } elsif ($block_math_commands{$command}) {
      my $old_context = pop @{$self->{'formatting_context'}->[-1]->{'text_context'}};
      die if ($old_context ne 'math');
      if ($command eq 'displaymath') {
        $result .= "\$\$\n";
        # reopen all preformatted commands
        $result .= _open_preformatted_stack($self, $preformatted_to_reopen);
      }
      my $old_math_style = pop @{$self->{'formatting_context'}->[-1]->{'math_style'}};
      die if ($old_math_style ne 'one-line');
    }
  }

  return $result;
}

1;
