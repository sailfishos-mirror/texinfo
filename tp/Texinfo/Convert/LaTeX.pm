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

package Texinfo::Convert::LaTeX;

use 5.00405;

# See comment at start of HTML.pm
use if $] >= 5.012, feature => qw(unicode_strings);

use strict;

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

my @informative_global_commands = ('paragraphindent', 'firstparagraphindent',
'frenchspacing', 'documentencoding', 'footnotestyle', 'documentlanguage',
'contents', 'shortcontents', 'summarycontents', 'deftypefnnewline',
'allowcodebreaks', 'kbdinputstyle');

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

foreach my $kept_command (keys(%informative_commands),
  keys(%default_index_commands),
  'verbatiminclude', 'insertcopying', 
  'listoffloats', 'printindex', ) {
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

my %section_map = (
   'part' => 'part',
   'chapter' => 'chapter',
   'section' => 'section',
   'subsection' => 'subsection',
   'subsubsection' => 'subsubsection',
   'chapheading' => 'chapter*',
   'heading' => 'section*',
   'subheading' => 'subsection*',
   'subsubheading' => 'subsubsection*',
   'unnumbered' => 'chapter*',
   'unnumberedsec' => 'section*',
   'unnumberedsubsec' => 'subsection*',
   'unnumberedsubsubsec' => 'subsubsection*',
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
    # FIXME according to the manual, it is not \hbox, \hbox is for @w.
    # maybe use ~?
    'tie' => '\hbox{}',
  },
  'math' => {
    # error in math with \TeX \LaTeX, spacing command used not allowed
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
    'tie' => '\hbox{}',
  }
);
# TODO check 'click'

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
foreach my $ignored_brace_commands ('caption', 'shortcaption', 
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
           keys(%preformatted_commands), 'quotation', 'smallquotation', 
           'indentedblock', 'smallindentedblock',
           keys(%def_commands)) {
  $indented_commands{$indented_command} = 1 
    if exists($block_commands{$indented_command});
}

foreach my $non_indented('format', 'smallformat') {
  delete $indented_commands{$non_indented};
}

# environments existing in LaTeX
# 'flushleft' => 'flushleft',
# 'flushright' => 'flushright',

my %flush_commands = (
  'flushleft'  => 1,
  'flushright' => 1
);

# FIXME titlepage should not be ignored
foreach my $ignored_block_commands ('ignore', 'macro', 'rmacro', 'copying',
  'documentdescription', 'titlepage', 'direntry') {
  $ignored_commands{$ignored_block_commands} = 1;
}

my %ignorable_space_types;
foreach my $type ('empty_line_after_command',
            'empty_spaces_after_command', 'spaces_at_end',
            'empty_spaces_before_argument', 'empty_spaces_before_paragraph',
            'empty_spaces_after_close_brace') {
  $ignorable_space_types{$type} = 1;
}

my %ignored_types;
foreach my $type ('preamble',
            'preamble_before_setfilename') {
  $ignored_types{$type} = 1;
}

my %ignorable_types = %ignorable_space_types;
foreach my $ignored_type(keys(%ignored_types)) {
  $ignorable_types{$ignored_type} = 1;
}

# All those commands run with the text.
# math, verb and kbd are special
my %LaTeX_style_brace_commands = (
  'text' => {
    'hyphenation' => '\\hyphenation',
    'w' => '\\hbox',
    'sub' => '\\textsubscript',
    'sup' => '\\textsuperscript',
  },
  'math' => {
    'hyphenation' => '',
    'w' => '\\hbox',
    'sub' => '_',
    'sup' => '^',
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

my %defaults = (
  'ENABLE_ENCODING'      => 0,
  'FORMAT_MENU'          => 'nomenu',
  #'EXTENSION'            => 'info',
  'EXTENSION'            => 'tex',
  #'USE_SETFILENAME_EXTENSION' => 1,
  'INFO_SPECIAL_CHARS_WARNING' => 1,

  #'OUTFILE'              => undef,
  'OUTFILE'              => '-',
  'SUBDIR'               => undef,
  'documentlanguage'     => undef,

  'output_format'        => '',
  'USE_NODES'            => 1,
);


my %contents_commands = (
 'contents' => 1,
 'shortcontents' => 1,
 'summarycontents' => 1,
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

  $self->{'style_context'} = [{
    'context' => ['text'],
    'code' => 0,
    'dot_not_end_sentence' => 0,
    'type' => 'main'
  }];

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

  if ($self->get_conf('ENABLE_ENCODING')
      and $self->get_conf('OUTPUT_ENCODING_NAME')
      and $self->get_conf('OUTPUT_ENCODING_NAME') eq 'utf-8') {
    # cache this to avoid redoing calls to get_conf
    $self->{'to_utf8'} = 1;
    if (!$self->{'extra'}->{'documentencoding'}) {
      # Do not use curly quotes or some other unnecessary non-ASCII characters
      # if '@documentencoding UTF-8' is not given.
      $self->{'convert_text_options'}->{'no_extra_unicode'} = 1;
    } else {
      foreach my $quoted_command (@quoted_commands) {
        # Directed single quotes
        $self->{'quotes_map'}->{$quoted_command} = ["\x{2018}", "\x{2019}"];
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
  if ($self->get_conf('FILLCOLUMN')) {
    $self->{'fillcolumn'} = $self->get_conf('FILLCOLUMN');
    # else it's already set via the defaults
  }
  # some caching to avoid calling get_conf
  if ($self->get_conf('OUTPUT_PERL_ENCODING')) {
    $self->{'output_perl_encoding'} = $self->get_conf('OUTPUT_PERL_ENCODING');
  } else {
    $self->{'output_perl_encoding'} = '';
  }
  $self->{'enable_encoding'} = $self->get_conf('ENABLE_ENCODING');
  $self->{'output_encoding_name'} = $self->get_conf('OUTPUT_ENCODING_NAME');
  $self->{'debug'} = $self->get_conf('DEBUG');

  return $self;
}

my %LaTeX_encoding_names_map = (
  'utf-8' => 'utf8',
);

# ellipsis leaves less spacing after \dots in case it is followed
# by punctuation. It does not seem to fix the @dots verusus @enddots issue
# to be loaded after Babel if you are using the French option
# FIXME use it anyway?
# \usepackage{ellipsis}

sub _latex_header {
  my $self = shift;
  # amsfonts for \circledR
  # amsmath for \text in math
  # T1 fontenc for \DH, \guillemotleft
  # eurosym for \euro
  # textcomp for \textdegree in older LaTeX
  my $header = 
'\documentclass{book}
\usepackage{makeidx}\makeindex
\usepackage{amsfonts}
\usepackage{amsmath}
\usepackage[gen]{eurosym}
\usepackage[T1]{fontenc}
\usepackage{textcomp}
';
  if ($self->get_conf('OUTPUT_ENCODING_NAME')) {
    my $encoding = $self->get_conf('OUTPUT_ENCODING_NAME');
    if (defined($LaTeX_encoding_names_map{$encoding})) {
      $encoding = $LaTeX_encoding_names_map{$encoding};
    }# else {
      # FIXME Warn?
    #}
    $header .= "\\usepackage[$encoding]{inputenc}\n";
  }
  $header .= 
'\begin{document}
';
  return $header;
}

sub _latex_footer {
  return
'\end{document}
';
}

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

  $self->_set_global_multiple_commands(-1);

  my $result = '';

  $result .= $self->_output_text($self->_latex_header(), $fh);
  $result .= $self->convert_document_sections($root, $fh);
  $result .= $self->_output_text($self->_latex_footer(), $fh);

  #print $result;
  if ($fh and $self->{'output_file'} ne '-') {
    $self->register_close_file($self->{'output_file'});
    if (!close ($fh)) {
      $self->document_error(sprintf(__("error on closing %s: %s"),
                                    $self->{'output_file'}, $!));
    }
  }
  return $result
}

sub convert($$;$)
{
  my $self = shift;
  my $root = shift;
  my $fh = shift;

  $self->_set_global_multiple_commands(-1);
  return $self->convert_document_sections($root, $fh);
}

sub convert_tree($$)
{
  my $self = shift;
  my $root = shift;

  return $self->_convert($root);
}

sub convert_line($$;$)
{
  my ($self, $converted, $conf) = @_;
  my $text = $self->_convert($converted);
  $text .= "\n\n";
  return $text;
}

sub convert_unfilled($$;$)
{
  my ($self, $converted, $conf) = @_;
  my $result = $self->_convert($converted);
  $result .= "\n\n";
  return $result;
}



# Protect LaTeX special characters.
sub _protect_text($$)
{
  my ($self, $text) = @_;

  # FIXME are there some special characters to protect in math mode,
  # for instance # and ~?
  if ($self->{'style_context'}->[-1]->{'context'}->[-1] ne 'math'
      and $self->{'style_context'}->[-1]->{'context'}->[-1] ne 'raw') {
    # temporarily replace \ with a control character
    $text =~ s/\\/\x08/g;

    # replace the other special characters
    $text =~ s/([#%&{}_\$])/\\$1/g;
    $text =~ s/~/\\~{}/g;
    $text =~ s/\^/\\^{}/g;

    $text =~ s/\x08/\\textbackslash{}/g;
    if ($self->{'style_context'}->[-1]->{'code'}) {
      $text =~ s/---/{-}{-}{-}/g;
      $text =~ s/--/{-}{-}/g;
    }
    if ($self->{'style_context'}->[-1]->{'dot_not_end_sentence'}) {
      $text =~ s/\./\.\\@/g;
    }
  }
  return $text;
}


sub _contents($$$)
{
  my ($self, $section_root, $contents_or_shortcontents) = @_;

  my $contents = 1 if ($contents_or_shortcontents eq 'contents');
  
  if ($contents) {
    return "\\tableofcontents\\newpage\n";
  }
  return '';
}

sub _printindex($$)
{
  my ($self, $printindex) = @_;
  return '\printindex
';
}


sub _node_name {
  my $node_content = shift;

  my $label = Texinfo::Convert::NodeNameNormalization::normalize_node
    ({'type' => '_code', 'contents' => $node_content});
  return "anchor:$label";
}

sub _node($$)
{
  my $self = shift;
  my $node = shift;

  my $label = _node_name($node->{'extra'}->{'node_content'});

  return "\\label{$label}";
}


my $listoffloat_entry_length = 41;
my $listoffloat_append = '...';

sub _image_text($$$)
{
  my ($self, $root, $basefile) = @_;

  my $txt_file = $self->Texinfo::Common::locate_include_file($basefile.'.txt');
  if (!defined($txt_file)) {
    return undef;
  } else {
    my $filehandle = do { local *FH };
    if (open ($filehandle, $txt_file)) {
      my $enc = $root->{'extra'}->{'input_perl_encoding'};
      binmode($filehandle, ":encoding($enc)")
        if ($enc);
      my $result = '';
      my $max_width = 0;
      while (<$filehandle>) {
        my $width = Texinfo::Convert::Unicode::string_width($_);
        if ($width > $max_width) {
          $max_width = $width;
        }
        $result .= $_;
      }
      # remove last end of line
      chomp ($result);
      if (!close ($filehandle)) {
        $self->document_warn(sprintf(__("error on closing image text file %s: %s"),
                                     $txt_file, $!));
      }
      return ($result, $max_width);
    } else {
      $self->line_warn(sprintf(__("\@image file `%s' unreadable: %s"), 
                               $txt_file, $!), $root->{'line_nr'});
    }
  }
  return undef;
}

sub _image_formatted_text($$$$)
{
  my ($self, $root, $basefile, $text) = @_;

  my $result;
  if (defined($text)) {
    $result = $text;
  } elsif (defined($root->{'args'}->[3])
      and @{$root->{'args'}->[3]->{'contents'}}) {
    $result = '[' .Texinfo::Convert::Text::convert(
      {'contents' => $root->{'args'}->[3]->{'contents'}},
      $self->{'convert_text_options'}) .']';
  } else {
    $self->line_warn(sprintf(__(
                    "could not find \@image file `%s.txt' nor alternate text"),
                             $basefile), $root->{'line_nr'});
    $result = '['.$basefile.']';
  }
  return _protect_text($self, $result);
}

sub _image($$)
{
  my ($self, $root) = @_;

  if (defined($root->{'args'}->[0])
        and @{$root->{'args'}->[0]->{'contents'}}) {
    my $basefile = Texinfo::Convert::Text::convert(
     {'contents' => $root->{'args'}->[0]->{'contents'}},
     {'code' => 1, %{$self->{'convert_text_options'}}});
    my ($text, $width) = $self->_image_text($root, $basefile);
    my $result = $self->_image_formatted_text($root, $basefile, $text);
    if (!defined($width)) {
      $width = Texinfo::Convert::Unicode::string_width($result);
    }
    return $result;
  }
  return '';
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

  if ($type and ($type eq 'empty_line' 
                           or $type eq 'after_description_line')) {
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

  my $cell;
  my $preformatted;
  if ($command) {
    my $unknown_command;
    my $command_context = 'text';
    if ($self->{'style_context'}->[-1]->{'context'}->[-1] eq 'math') {
      $command_context = 'math';
    }
    if (defined($no_brace_commands{$command})) {
      if ($command eq ':') {
        if ($command_context ne 'math') {
          $result .= "\\\@";
        }
      } elsif ($command eq '*') {
        # FIXME \leavevmode{} is added to avoid
        # ! LaTeX Error: There's no line here to end.
        # but it is not clearly correct
        $result = "\\leavevmode{}\\\\\n";
        #$result = "\\linebreak[4]\n";
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
    } elsif ($command eq 'today') {
      my $today = $self->Texinfo::Common::expand_today();
      unshift @{$self->{'current_contents'}->[-1]}, $today;
    } elsif (exists($brace_no_arg_commands{$command})) {
      if (exists($LaTeX_no_arg_brace_commands{$command_context}->{$command})) {
        $result .= $LaTeX_no_arg_brace_commands{$command_context}->{$command};
      } else {
        my $text = Texinfo::Convert::Text::brace_no_arg_command($root, 
                                           $self->{'convert_text_options'});
        $result .= _protect_text($self, $text);
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
              return "\\${accent_arg}math{}";
            } else {
              return "\\${accent_arg}{}";
            }
          } else {
            return _protect_text($self, $accent_arg);
          }
        # accent without math command, use slanted text
        } elsif ($command_context eq 'math'
                 and $LaTeX_accent_commands{'text'}->{$command}) {
          $result .= "\\textsl{\\$LaTeX_accent_commands{'text'}->{$command}\{";
          # we do not want accents within to be math accents
          if ($root->{'args'}) {
            push @{$self->{'style_context'}->[-1]->{'context'}}, 'text';
            $accent_arg = _convert($self, $root->{'args'}->[0]);
            my $old_context = pop @{$self->{'style_context'}->[-1]->{'context'}};
          }
          $result .= $accent_arg;
          $result .= '}}';
        }
      }
      return $result;
    } elsif (exists($LaTeX_style_brace_commands{'text'}->{$command})
         or ($root->{'type'} and $root->{'type'} eq 'definfoenclose_command')) {
      if ($root->{'args'}) {
        if ($self->{'quotes_map'}->{$command}) {
          $result .= $self->{'quotes_map'}->{$command}->[0];
        }
        if ($LaTeX_style_brace_commands{$command_context}->{$command}) {
          $result .= "$LaTeX_style_brace_commands{$command_context}->{$command}\{";
        }
        if ($code_style_commands{$command}) {
          $self->{'style_context'}->[-1]->{'code'} += 1;
        }
        $result .= _convert($self, $root->{'args'}->[0]);
        if ($LaTeX_style_brace_commands{$command_context}->{$command}) {
          $result .= '}';
        }
        if ($code_style_commands{$command}) {
          $self->{'style_context'}->[-1]->{'code'} -= 1;
        }
        if ($self->{'quotes_map'}->{$command}) {
          $result .= $self->{'quotes_map'}->{$command}->[1];
        }
      }
      return $result;
    } elsif ($command eq 'kbd') {
      # 'kbd' is special, distinct font is typewriter + slanted
      # @kbdinputstyle
      # ‘code’ Always use the same font for @kbd as @code.
      # ‘example’ Use the distinguishing font for @kbd only in @example and similar environments.
      # ‘distinct’ (the default) Always use the distinguishing font for @kbd.
      #    {\ttfamily\textsl{kbd argument}}
      if ($root->{'args'}) {
        my $code_font = 0;
        if (defined($self->{'conf'}->{'kbdinputstyle'})
            and ($self->{'conf'}->{'kbdinputstyle'} eq 'code'
              or ($self->{'conf'}->{'kbdinputstyle'} eq 'example'
                and $preformatted_commands{$self->{'style_context'}->[-1]->{'context'}->[-1]}))) {
          $code_font = 1;
        }
        if ($code_font) {
          if ($LaTeX_style_brace_commands{$command_context}->{'code'}) {
            $result .= "$LaTeX_style_brace_commands{$command_context}->{'code'}\{";
          }
        } else {
          # use \ttfamily to have a cumulative effect with \textsl
          $result .= '{\ttfamily\textsl{';
        }
        $self->{'style_context'}->[-1]->{'code'} += 1;
        $result .= _convert($self, $root->{'args'}->[0]);
        $self->{'style_context'}->[-1]->{'code'} -= 1;
        if ($code_font) {
          if ($LaTeX_style_brace_commands{$command_context}->{'code'}) {
            $result .= '}';
          }
        } else {
          $result .= '}}';
        }
      }
      return $result;
    } elsif ($command eq 'verb') {
      $result .= "\\verb" .$root->{'extra'}->{'delimiter'};
      push @{$self->{'style_context'}->[-1]->{'context'}}, 'raw';
      if ($root->{'args'}) {
        $result .= _convert($self, $root->{'args'}->[0]);
      }
      my $old_context = pop @{$self->{'style_context'}->[-1]->{'context'}};
      die if ($old_context ne 'raw');
      $result .= $root->{'extra'}->{'delimiter'};
    } elsif ($command eq 'image') {
      my $image = $self->_image($root);
      $result .= $image; 
      return $result;
    } elsif ($command eq 'email') {
      # nothing is output for email, instead the command is substituted.
      my @email_contents;
      if ($root->{'args'}) {
        my $name;
        my $email;
        if (scalar (@{$root->{'args'}}) == 2
            and defined($root->{'args'}->[1])
            and @{$root->{'args'}->[1]->{'contents'}}) {
          $name = $root->{'args'}->[1]->{'contents'};
        }
        if (defined($root->{'args'}->[0])
            and @{$root->{'args'}->[0]->{'contents'}}) {
          $email = $root->{'args'}->[0]->{'contents'};
        }
        my $prepended;
        if ($name and $email) {
          $prepended = $self->gdt('{name} @url{{email}}', 
                           {'name' => $name, 'email' => $email});
        } elsif ($email) {
          $prepended = $self->gdt('@url{{email}}', 
                           {'email' => $email});
        } elsif ($name) {
          $prepended = {'contents' => $name};
        } else {
          return '';
        }
        unshift @{$self->{'current_contents'}->[-1]}, $prepended;
      }
      return '';
    } elsif ($command eq 'uref' or $command eq 'url') {
      if ($root->{'args'}) {
        if (scalar(@{$root->{'args'}}) == 3
             and defined($root->{'args'}->[2])
             and @{$root->{'args'}->[2]->{'contents'}}) {
          unshift @{$self->{'current_contents'}->[-1]}, 
            {'contents' => $root->{'args'}->[2]->{'contents'}};
        } elsif (@{$root->{'args'}->[0]->{'contents'}}) {
          # no mangling of --- and similar in url.
          my $url = {'type' => '_code',
              'contents' => $root->{'args'}->[0]->{'contents'}};
          if (scalar(@{$root->{'args'}}) == 2
             and defined($root->{'args'}->[1])
             and @{$root->{'args'}->[1]->{'contents'}}) {
            my $prepended = $self->gdt('{text} ({url})', 
                 {'text' => $root->{'args'}->[1]->{'contents'},
                  'url' => $url });
            unshift @{$self->{'current_contents'}->[-1]}, $prepended;
          } else {
            my $prepended = $self->gdt('@t{<{url}>}', 
                                        {'url' => $url});
            unshift @{$self->{'current_contents'}->[-1]}, $prepended
          }
        } elsif (scalar(@{$root->{'args'}}) == 2
                 and defined($root->{'args'}->[1])
                 and @{$root->{'args'}->[1]->{'contents'}}) {
          unshift @{$self->{'current_contents'}->[-1]}, 
            {'contents' => $root->{'args'}->[1]->{'contents'}};
        }
      }
      return '';
    } elsif ($command eq 'footnote') {
      push @{$self->{'style_context'}},
         {
           'context' => ['text'],
           'code' => 0,
           'dot_not_end_sentence' => 0,
           'type' => 'footnote'
         };
      $result .= '\footnote{';
      $result .= $self->_convert($root->{'args'}->[0]); 
      $result .= '}';
      pop @{$self->{'style_context'}};

      return $result;
    } elsif ($command eq 'anchor') {
      $result .= $self->_node($root);
      return $result;
    } elsif ($ref_commands{$command}) {
      if (scalar(@{$root->{'args'}})) {
        my @args;
        for my $a (@{$root->{'args'}}) {
          if (defined $a->{'contents'} and @{$a->{'contents'}}) {
            push @args, $a->{'contents'};
          } else {
            push @args, undef;
          }
        }
        $args[0] = [{'text' => ''}] if (!defined($args[0]));

        my $node_content;
        if ($root->{'extra'}
            and $root->{'extra'}->{'label'}) {
          $node_content = $root->{'extra'}->{'label'}->{'extra'}->{'node_content'};
        } else { 
          $node_content = $args[0];
        }

        # if it a reference to a float with a label, $arg[1] is
        # set to '$type $number' or '$number' if there is no type.
        if (! defined($args[1]) 
            and $root->{'extra'}
            and $root->{'extra'}->{'label'}
            and $root->{'extra'}->{'label'}->{'cmdname'}
            and $root->{'extra'}->{'label'}->{'cmdname'} eq 'float') {
          my $float = $root->{'extra'}->{'label'};

          my $name = $self->_float_type_number($float);
          $args[1] = $name->{'contents'};
        }
        if ($command eq 'inforef' and scalar(@args) == 3) {
          # todo: refuse to process @inforef
          $args[3] = $args[2];
          $args[2] = undef;
        }

        # TODO: should translate
        # TODO: get section name as well
        if ($command eq 'xref') {
          $result = "See ";
        } elsif ($command eq 'pxref') {
          $result = "see ";
        } elsif ($command eq 'ref') {
        }
        my $name;
        if (defined($args[1])) {
          $name = $args[1];
        } elsif (defined($args[2])) {
          $name = $args[2];
        }
        my $file;
        if (defined($args[3])) {
          $file = [{'text' => '('},
                   {'type' => '_code',
                    'contents' => $args[3]},
                   {'text' => ')'},];
        } elsif (defined($args[4])) {
          # add a () such that the node is considered to be external, 
          # even though the manual name is not known.
          $file = [{'text' => '()'}];
        }
         
        if ($name) {
          my $name_text = _convert($self, {'contents' => $name});

          $result .= $name_text;

          if ($file) {
            $result .= _convert($self, {'contents' => $file});
          }
          my $node_text = _node_name($node_content);

          $result .= " (page \\pageref{$node_text})";
        } else { # Label same as node specification
          if ($file) {
            $result .= _convert($self, {'contents' => $file});
            $result .= " manual, "
          }
          my $node_text = _node_name($node_content);
          $result .= "page \\pageref{$node_text}";
        }

        return $result;
      }
      return '';
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
          $argument = { 'contents' => $root->{'args'}->[0]->{'contents'}};
        }
        if (scalar (@{$root->{'args'}}) == 2
            and defined($root->{'args'}->[-1])
            and @{$root->{'args'}->[-1]->{'contents'}}) {
          my $prepended = $self->gdt('{abbr_or_acronym} ({explanation})', 
                           {'abbr_or_acronym' => $argument, 
                            'explanation' => $root->{'args'}->[-1]->{'contents'}});
          unshift @{$self->{'current_contents'}->[-1]}, $prepended;
          return '';
        } else {
          $result = _convert($self, $argument);

          return $result;
        }
      }
      return '';
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
        my $argument;
        if ($command eq 'inlineraw') {
          $argument->{'type'} = '_code';
        }
        $argument->{'contents'} = $root->{'args'}->[$arg_index]->{'contents'};
        unshift @{$self->{'current_contents'}->[-1]}, ($argument);
      }
      return '';
    } elsif ($math_commands{$command}) {
      push @{$self->{'style_context'}->[-1]->{'context'}}, 'math';
      if (not exists($block_commands{$command})) {
        if ($root->{'args'}) {
          if ($command eq 'math') {
            $result .= '$';
            $result .= _convert($self, $root->{'args'}->[0]);
            $result .= '$';
          }
        }
        my $old_context = pop @{$self->{'style_context'}->[-1]->{'context'}};
        die if ($old_context ne 'math');
        return $result;
      } else {
        if ($command eq 'displaymath') {
          $result .= "\$\$\n";
        }
      }
    } elsif ($command eq 'titlefont') {
      $result .= "{\\Huge \\bfseries ";
      $result .= $self->convert_line({'contents' => [$root->{'args'}->[0]]});
      $result .= '}';
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
        # to check that chr(hex($arg)) is valid.  Perl gives a warning
        # and will not output UTF-8 for Unicode non-characters such as
        # U+10FFFF.  In this case, silently fall back to plain text, on
        # the theory that the user wants something.
        my $res;
        if ($self->{'to_utf8'}) {
          my $error = 0;
          # The warning about non-characters is only given when the code
          # point is attempted to be output, not just manipulated.
          # http://stackoverflow.com/questions/5127725/how-could-i-catch-an-unicode-non-character-warning
          #
          # Therefore, we have to try to output it within an eval.
          # Since opening /dev/null or a temporary file means
          # more system-dependent checks, use a string as our
          # filehandle.
          eval {
            use warnings FATAL => qw(all);
            my ($fh, $string);
            open($fh, ">", \$string) || die "open(U string eval) failed: $!";
            binmode($fh, ":utf8") || die "binmode(U string eval) failed: $!";
            print $fh chr(hex("$arg"));
          };
          if ($@) {
            warn "\@U chr(hex($arg)) eval failed: $@\n" if ($self->{'DEBUG'});
            $error = 1;
          } elsif (hex($arg) > 0x10FFFF) {
            # The check above appears not to work in older versions of perl,
            # so check the argument is not greater the maximum Unicode code 
            # point.
            $error = 1;
          }
          if ($error) {
            $res = "U+$arg";
          } else {
            $res = chr(hex($arg)); # ok to call chr
          }
        } else {
          $res = "U+$arg";  # not outputting UTF-8
        }
        $result .= _protect_text($self, $res);
      } else {
        $result = '';  # arg was not defined
      }
      return $result;

    } elsif ($command eq 'value') {
      my $expansion = $self->gdt('@{No value for `{value}\'@}', 
                                    {'value' => $root->{'type'}});
      $expansion = {'type' => 'paragraph',
                    'contents' => [$expansion]};
      $result .= _convert($self, $expansion);
      #  unshift @{$self->{'current_contents'}->[-1]}, $expansion;
      #return '';
      return $result;
    } elsif ($root->{'args'} and $root->{'args'}->[0] 
             and $root->{'args'}->[0]->{'type'}
             and $root->{'args'}->[0]->{'type'} eq 'brace_command_arg') {
    # block commands
    } elsif (exists($block_commands{$command})) {
      # remark:
      # cartouche group and raggedright -> nothing on format stack

      if ($menu_commands{$command}) {
        return '';
      }
      if ($block_raw_commands{$command}) {
        if ($format_raw_commands{$command}) {
          $result .= "\n\n";
        } elsif ($command eq 'verbatim') {
          # FIXME add a \n?
          $result .= "\\begin{verbatim}\n";
        }
        push @{$self->{'style_context'}->[-1]->{'context'}}, 'raw';
      } elsif ($preformatted_commands{$command}
          or $command eq 'float') {
        push @{$self->{'style_context'}->[-1]->{'context'}}, $command;
      } elsif ($flush_commands{$command}) {
        push @{$self->{'style_context'}->[-1]->{'context'}}, $command;
      }

      if ($command eq 'quotation'
          or $command eq 'smallquotation') {
        if ($root->{'args'} and $root->{'args'}->[0]
            and $root->{'args'}->[0]->{'contents'}
            and @{$root->{'args'}->[0]->{'contents'}}) {
          my $prepended = $self->gdt('@b{{quotation_arg}:} ', 
             {'quotation_arg' => $root->{'args'}->[0]->{'contents'}});
          $result .= $self->convert_line($prepended);
        }
      } elsif ($command eq 'multitable') {
        my $columnsize;
        if ($root->{'extra'}->{'columnfractions'}) {
        } elsif ($root->{'extra'}->{'prototypes'}) {
          foreach my $prototype (@{$root->{'extra'}->{'prototypes'}}) {
            my ($formatted_prototype) = $self->convert_line($prototype, 
                                                        {'indent_length' => 0});
            push @$columnsize, 
                 2+Texinfo::Convert::Unicode::string_width($formatted_prototype);
          }
        }
      } elsif ($command eq 'float') {
        $result .= "\n";
        if ($root->{'extra'} and $root->{'extra'}->{'node_content'}) {
          $result .= $self->_node($root);
        }
      }
    } elsif ($command eq 'node') {
      $self->{'node'} = $root;
      $result .= $self->_node($root);
    } elsif ($sectioning_commands{$command}) {
      # use settitle for empty @top
      # ignore @part
      my $contents;
      if ($root->{'args'}->[0]->{'contents'} 
          and @{$root->{'args'}->[0]->{'contents'}} 
          and $command ne 'part') {
        $contents = $root->{'args'}->[0]->{'contents'};
      } elsif ($command eq 'top'
          and $self->{'extra'}->{'settitle'} 
          and $self->{'extra'}->{'settitle'}->{'args'}
          and @{$self->{'extra'}->{'settitle'}->{'args'}}
          and $self->{'extra'}->{'settitle'}->{'args'}->[0]->{'contents'}
          and @{$self->{'extra'}->{'settitle'}->{'args'}->[0]->{'contents'}}) {
        $contents = $self->{'extra'}->{'settitle'}->{'args'}->[0]->{'contents'};
      }
             
      if ($contents) {
        my $heading = $self->convert_line({'contents' => $contents});
        $heading =~ s/\s*$//;

        my $section_cmd = $section_map{$command};
        if ($section_cmd) {
          $result .= "\\".$section_cmd."{$heading}\n\n";
        }
      }
    } elsif (($command eq 'item' or $command eq 'itemx')
            and $root->{'args'} and $root->{'args'}->[0] 
            and $root->{'args'}->[0]->{'type'}
            and $root->{'args'}->[0]->{'type'} eq 'line_arg') {
      if ($root->{'args'} and @{$root->{'args'}}
          and $root->{'args'}->[0]->{'contents'}) {

        my $converted_tree = $self->_table_item_content_tree($root,
                                         $root->{'args'}->[0]->{'contents'});

        $result = $self->convert_line($converted_tree);
        if ($result ne '') {
          $result .= "\n";
        }
      }
    } elsif ($command eq 'item' and $root->{'parent'}->{'cmdname'}
             and $item_container_commands{$root->{'parent'}->{'cmdname'}}) {
      if ($root->{'parent'}->{'cmdname'} eq 'enumerate') {
        $result = _protect_text($self, Texinfo::Common::enumerate_item_representation(
                 $root->{'parent'}->{'extra'}->{'enumerate_specification'},
                 $root->{'extra'}->{'item_number'}) . '. ');
      } elsif ($root->{'parent'}->{'args'}
          and $root->{'parent'}->{'args'}->[0]) {
        # this is the text prepended to items.
        
        $result = _convert($self, $root->{'parent'}->{'args'}->[0]);
        $result .= _convert($self, { 'text' => ' ' });
      }
      $result .= "\n\n";
    # open a multitable cell
    } elsif ($command eq 'headitem' or $command eq 'item'
             or $command eq 'tab') {
      # ...
    } elsif ($command eq 'center') {
      $result = $self->convert_line (
                       {'contents' => $root->{'args'}->[0]->{'contents'}},
                       {'indent_length' => 0});
      return $result;
    } elsif ($command eq 'exdent') {
      if ($preformatted_commands{$self->{'style_context'}->[-1]->{'context'}->[-1]}) {
        $result = $self->convert_unfilled({'contents' => $root->{'args'}->[0]->{'contents'}});
      } else {
        $result = $self->convert_line({'contents' => $root->{'args'}->[0]->{'contents'}});
      }
      if ($result ne '') {
        $result .= "\n";
      }
      return $result;
    } elsif ($command eq 'verbatiminclude') {
      my $expansion = $self->Texinfo::Common::expand_verbatiminclude($root);
      unshift @{$self->{'current_contents'}->[-1]}, $expansion
        if ($expansion);
      return '';
    } elsif ($command eq 'insertcopying') {
      if ($self->{'extra'} and $self->{'extra'}->{'copying'}) {
        unshift @{$self->{'current_contents'}->[-1]}, 
           {'contents' => $self->{'extra'}->{'copying'}->{'contents'}};
      }
      return '';
    } elsif ($command eq 'printindex') {
      $result = $self->_printindex($root);
      return $result;
    } elsif ($command eq 'listoffloats') {
      return '';
    } elsif ($command eq 'sp') {
      if ($root->{'extra'}->{'misc_args'}->[0]) {
        # this useless copy avoids perl changing the type to integer!
        my $sp_nr = $root->{'extra'}->{'misc_args'}->[0];

        # add vertical space here
      }
      return $result;
    } elsif ($command eq 'contents') {
      if ($self->{'structuring'}
            and $self->{'structuring'}->{'sectioning_root'}) {
        $result
            = $self->_contents($self->{'structuring'}->{'sectioning_root'}, 
                              'contents');
      }
      return $result;
    } elsif ($command eq 'shortcontents' 
               or $command eq 'summarycontents') {
      if ($self->{'structuring'}
            and $self->{'structuring'}->{'sectioning_root'}) {
        $result
              = $self->_contents($self->{'structuring'}->{'sectioning_root'}, 
                              'shortcontents');
      }
      return $result;
    # all the @-commands that have an information for the formatting, like
    # @paragraphindent, @frenchspacing...
    } elsif ($informative_commands{$command}) {
      $self->_informative_command($root);
      return '';
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
  my $paragraph = 0;
  if ($root->{'type'}) {
    if ($root->{'type'} eq 'paragraph') {
      $paragraph = 1;
    } elsif ($root->{'type'} eq 'preformatted'
             or $root->{'type'} eq 'rawpreformatted') {
      $preformatted = 1;
    } elsif ($root->{'type'} eq 'def_line') {
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
      $self->{'style_context'}->[-1]->{'dot_not_end_sentence'} += 1;
    } elsif ($root->{'type'} eq 'bracketed') {
      $result .= _protect_text($self, '{');
    }
  }

  # The processing of contents is done here.
  if ($root->{'contents'}) {
    my @contents = @{$root->{'contents'}};
    push @{$self->{'current_contents'}}, \@contents;
    push @{$self->{'current_roots'}}, $root;
    while (@contents) {
      my $content = shift @contents;
      my $text = _convert($self, $content);
      $result .= $text;
    }
    pop @{$self->{'current_contents'}};
    pop @{$self->{'current_roots'}};
  }

  # now closing. First, close types.
  if ($root->{'type'}) {
    if ($root->{'type'} eq '_code') {
    } elsif ($root->{'type'} eq '_dot_not_end_sentence') {
      $self->{'style_context'}->[-1]->{'dot_not_end_sentence'} -= 1;
    } elsif ($root->{'type'} eq 'bracketed') {
      $result .= _protect_text($self, '}');
    } elsif ($root->{'type'} eq 'row') {
      # ...
    } elsif ($root->{'type'} eq 'text_root') {
      $self->{'text_before_first_node'} = $result;
    }
  }
  # close paragraphs and preformatted
  if ($paragraph or $preformatted) {
    $result .= "\n\n";
  }

  # close commands
  if ($command) {
    if ($command eq 'float') {
      if ($root->{'extra'}
          and ($root->{'extra'}->{'type'}->{'normalized'} ne '' 
               or defined($root->{'number'})
               or $root->{'extra'}->{'caption'} or $root->{'extra'}->{'shortcaption'})) {
        
        $result .= "\n";
        my ($caption, $prepended) = Texinfo::Common::float_name_caption($self,
                                                                        $root);
        if ($prepended) {
          my $float_number = $self->convert_line ($prepended);
          $result .= $float_number;
        }
        if ($caption) {
          my $tree = $caption->{'args'}->[0];
          $result .= _convert($self, $tree);
        }
      }
    } elsif (($command eq 'quotation' 
               or $command eq 'smallquotation')
             and $root->{'extra'} and $root->{'extra'}->{'authors'}) {
      foreach my $author (@{$root->{'extra'}->{'authors'}}) {
        $result .= _convert($self, 
                 $self->gdt("\@center --- \@emph{{author}}\n",
                    {'author' => $author->{'args'}->[0]->{'contents'}}));
      }
    }
 
    # close the contexts and register the cells
    if ($preformatted_commands{$command}
        or $command eq 'float') {
      my $old_context = pop @{$self->{'style_context'}->[-1]->{'context'}};
      die "Not a preformatted context: $old_context"
        if (!$preformatted_commands{$old_context}
            and $old_context ne 'float');
    } elsif ($block_raw_commands{$command}) {
      my $old_context = pop @{$self->{'style_context'}->[-1]->{'context'}};
      die if ($old_context ne 'raw');
      if ($command eq 'verbatim') {
        $result .= "\\end{verbatim}\n\n";
      }
      # FIXME add \n or \n\n if not verbatim?
    } elsif ($flush_commands{$command}) {
      my $old_context = pop @{$self->{'style_context'}->[-1]->{'context'}};
      die if (! $flush_commands{$old_context});
    } elsif ($block_math_commands{$command}) {
      my $old_context = pop @{$self->{'style_context'}->[-1]->{'context'}};
      die if ($old_context ne 'math');
      if ($command eq 'displaymath') {
        $result .= "\$\$\n";
      }
    }
    if ($cell) {
      $result = '';
    }
  }

  return $result;
}

1;
