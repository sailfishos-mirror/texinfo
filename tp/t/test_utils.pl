# t/* test support for the Perl modules.
#
# Copyright 2010-2024 Free Software Foundation, Inc.
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

use strict;

#no autovivification qw(fetch delete exists store strict);

use 5.006;

BEGIN {

require Texinfo::ModulePath;
Texinfo::ModulePath::init(undef, undef, undef, 'updirs' => 2);

# NOTE in general file names and directory names are not encoded,
# there will be problems if there are non ascii characters in those
# strings.
# For consistent test results, use the C locale.
# Note that this could prevent displaying non ascii characters
# in error messages.
$ENV{LC_ALL} = 'C';
$ENV{LANGUAGE} = 'en';

} # end BEGIN

use Test::More;

# to determine the locale encoding to output the Texinfo to Texinfo
# result when regenerating
use I18N::Langinfo qw(langinfo CODESET);
use Encode ();
#use File::Basename;
#use File::Copy;
use File::Compare qw(compare); # standard since 5.004
use Data::Dumper ();
use Data::Compare ();
use Test::Deep ();
use Storable qw(dclone); # standard in 5.007003
#use Data::Diff;
#use Data::Transformer;
#use Struct::Compare;
use Getopt::Long qw(GetOptions);
use Locale::Messages ();

use Texinfo::Commands;
use Texinfo::Options;
use Texinfo::Common;
use Texinfo::Convert::Texinfo;
use Texinfo::Config;
use Texinfo::Report;
use Texinfo::Parser;
use Texinfo::Convert::Text;
use Texinfo::Document;
use Texinfo::Convert::PlainTexinfo;
use Texinfo::Structuring;
use Texinfo::Indices;
use Texinfo::Translations;
use Texinfo::Convert::Plaintext;
use Texinfo::Convert::Info;
use Texinfo::Convert::LaTeX;
use Texinfo::Convert::HTML;
use Texinfo::Convert::TexinfoXML;
use Texinfo::Convert::DocBook;

# the tests reference perl results file is loaded through a require
# of a file containing code setting those variables.
use vars qw(%result_texis %result_texts %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

Locale::Messages->select_package('gettext_pp');

my $srcdir = $ENV{'srcdir'};
my $locales_srcdir;
if (defined($srcdir)) {
  $srcdir =~ s/\/*$/\//;
  $locales_srcdir = $srcdir;
} else {
  $srcdir = '';
  $locales_srcdir = '.';
}

my $localesdir;
foreach my $dir ("LocaleData", "$locales_srcdir/LocaleData") {
  if (-d $dir) {
    $localesdir = $dir;
  }
}

if (! defined($localesdir)) {
  warn "No locales directory found, some tests will fail\n";
}

Texinfo::Translations::configure($localesdir);

Locale::Messages::bindtextdomain('texinfo', $localesdir);

# XS parser and not explicitely unset
my $XS_structuring = ((not defined($ENV{TEXINFO_XS})
                        or $ENV{TEXINFO_XS} ne 'omit')
                       and (not defined($ENV{TEXINFO_XS_PARSER})
                            or $ENV{TEXINFO_XS_PARSER} eq '1')
                       and (not defined($ENV{TEXINFO_XS_STRUCTURE})
                            or $ENV{TEXINFO_XS_STRUCTURE} ne '0'));

my $generated_texis_dir = 't_texis';

my $input_files_dir = $srcdir."t/input_files/";

my $output_files_dir = 't/output_files/';
foreach my $dir ('t', 't/results', $output_files_dir) {
  my $error;
  # to avoid a race conditon, first create the dir then test that it
  # exists
  mkdir $dir or $error = $!;
  if (! -d $dir) {
    die "mkdir $dir: $error\n";
  }
}

my $locale_encoding = langinfo(CODESET);
$locale_encoding = undef if ($locale_encoding eq '');

# to encode is() diagnostic messages.  From Test::More documentation
if (defined($locale_encoding)) {
  my $builder = Test::More->builder;
  binmode $builder->output,         ":encoding($locale_encoding)";
  binmode $builder->failure_output, ":encoding($locale_encoding)";
  binmode $builder->todo_output,    ":encoding($locale_encoding)";
}

# used to check that there are no file overwritten with -o
my %output_files;

ok(1);

my %formats = (
  'plaintext' => \&convert_to_plaintext,
  'file_plaintext' => \&convert_to_plaintext,
  'info' => \&convert_to_info,
  'file_info' => \&convert_to_info,
  'html' => \&convert_to_html,
  'file_html' => \&convert_to_html,
  'html_text' => \&convert_to_html,
  'xml' => \&convert_to_xml,
  'file_xml' => \&convert_to_xml,
  'docbook' => \&convert_to_docbook,
  'file_docbook' => \&convert_to_docbook,
  'docbook_doc' => \&convert_to_docbook,
  'latex' => \&convert_to_latex,
  'latex_text' => \&convert_to_latex,
  'file_latex' => \&convert_to_latex,
);

my %extensions = (
  'plaintext' => 'txt',
  'html_text' => 'html',
  'xml' => 'xml',
  'docbook' => 'dbk',
  'docbook_doc' => 'dbk',
  'latex' => 'tex',
  'latex_text' => 'tex',
);

# This is, in general, different from the documented version, which
# is set in the texi2any main program.  This value should only be
# used in t/*.t tests.
my $XML_DTD_VERSION
  = $Texinfo::Options::converter_customization_options{'TEXINFO_DTD_VERSION'};

my %outfile_preamble = (
  'docbook' => ['<?xml version="1.0"?>
<!DOCTYPE book PUBLIC "-//OASIS//DTD DocBook XML V4.5//EN" "http://www.oasis-open.org/docbook/xml/4.5/docbookx.dtd" [
  <!ENTITY tex "TeX">
  <!ENTITY latex "LaTeX">
]>
'. "<book lang=\"en\">\n", "</book>\n"],
  'xml' => ['<?xml version="1.0"?>
'."<!DOCTYPE texinfo PUBLIC \"-//GNU//DTD TexinfoML V${XML_DTD_VERSION}//EN\" \"http://www.gnu.org/software/texinfo/dtd/${XML_DTD_VERSION}/texinfo.dtd\">
".'<texinfo xml:lang="en">
', "</texinfo>\n"],
 # done dynamically for CSS
 'html_text' => \&output_preamble_postamble_html,
 'latex_text' => \&output_preamble_postamble_latex,
);

my $arg_generate;
my $arg_debug;
my $arg_complete;
my $arg_output;
my $nr_comparisons = 10;

Getopt::Long::Configure("gnu_getopt");
# complete: output a complete texinfo file based on the test.  Does not
#           run the tests at all.
# generate: run the tests and reset reference results instead of comparing
#           with reference results.
# output: run the test, compare with references, and output the test results
#         (even if not the same as references) in output files per output
#         format.
GetOptions('g|generate' => \$arg_generate, 'd|debug=i' => \$arg_debug,
           'c|complete' => \$arg_complete, 'o|output' => \$arg_output);

sub protect_perl_string($)
{
  my $string = shift;
  $string =~ s/\\/\\\\/g;
  $string =~ s/'/\\'/g;
  # \r can be mangled upon reading if at end of line
  $string =~ s/\r/'."\\r".'/g;
  return $string;
}

# not that subdirectories are not compared, so subdirectories generated
# by INFO_JS_DIR, if different, will not trigger an error in test, but
# will lead to different directories and files in diffs.
sub compare_dirs_files($$;$)
{
  my $dir1 = shift;
  my $dir2 = shift;
  my $ignore_files = shift;

  my %dir1_files;
  my %dir2_files;
  my @errors;
  my %ignored_files_hash;
  foreach my $ignored_file (@$ignore_files) {
    $ignored_files_hash{$ignored_file} = 1;
  }
  if (opendir(DIR1, $dir1)) {
    my @files = readdir (DIR1);
    foreach my $file (@files) {
      next if (! -r "$dir1/$file" or ! -f "$dir1/$file"
               or $ignored_files_hash{$file});
      $dir1_files{$file} = 1;
    }
    closedir (DIR1);
  } else {
    push @errors, "readdir $dir1: $!";
  }
  if (opendir(DIR2, $dir2)) {
    my @files = readdir (DIR2);
    foreach my $file (@files) {
      next if (! -r "$dir2/$file" or ! -f "$dir2/$file"
               or $ignored_files_hash{$file});
      $dir2_files{$file} = 1;
    }
    closedir (DIR2);
  } else {
    push @errors, "readdir $dir2: $!";
  }
  if (scalar(@errors)) {
    return \@errors;
  }
  foreach my $file (sort(keys(%dir1_files))) {
    if ($dir2_files{$file}) {
      my $status = compare("$dir1/$file", "$dir2/$file");
      if ($status) {
        push @errors, "$dir1/$file and $dir2/$file differ: $status";
      }
      delete $dir2_files{$file};
    } else {
      push @errors, "No $file in $dir2";
    }
  }
  foreach my $file (sort(keys(%dir2_files))) {
    push @errors, "No $file in $dir1"
  }
  if (scalar(@errors)) {
    return \@errors;
  } else {
    return undef;
  }
}

#my $errors = compare_dirs_files('a', 'b',['nnn']);
#if ($errors) {
#  foreach my $error (@$errors) {
#    warn $error."\n";
#  }
#}

sub unlink_dir_files($;$)
{
  my $dir = shift;
  my $ignore_files = shift;
  my %ignored_files_hash;
  foreach my $ignored_file (@$ignore_files) {
    $ignored_files_hash{$ignored_file} = 1;
  }
  if (opendir(DIR, $dir)) {
    my @files = readdir (DIR);
    foreach my $file (@files) {
      next if (! -f "$dir/$file"
               or $ignored_files_hash{$file});
      unlink "$dir/$file" or warn "Could not unlink $dir/$file: $!\n";
    }
    closedir (DIR);
  } else {
    warn "readdir $dir: $!";
  }
}

#my $remove_parent = sub {my $h = shift; delete $h->{'parent'}};
#my $transformer = Data::Transformer->new('hash'=>$remove_parent);
sub remove_keys($$;$);
sub remove_keys($$;$)
{
  my $root = shift;
  my $deleted_keys = shift;
  my $been_there = shift;
  return undef if (!defined($root));
  if (!defined($been_there)) {
    #print STDERR "First call: $root\n";
    $root = dclone($root);
    #print STDERR Data::Dumper->Dump([$root]);
    $been_there = {};
  }
  #print STDERR "remove_keys: $root\n";
  if (ref($root) eq 'HASH') {
    foreach my $key (@$deleted_keys) {
      if (exists($root->{$key})) {
        delete ($root->{$key});
        #print STDERR "Deleted $root $key\n";
      }
    }
    $been_there->{$root} = 1;
    foreach my $key (keys(%$root)) {
      next if (!defined($root->{$key}) or !ref($root->{$key})
               or (ref($root->{$key}) ne 'HASH'
                    and ref($root->{$key}) ne 'ARRAY')
               or exists($been_there->{$root->{$key}}));
      #print STDERR "Recurse in $root $key\n";
      remove_keys($root->{$key}, $deleted_keys, $been_there);
    }
  } elsif (ref($root) eq 'ARRAY') {
    $been_there->{$root} = 1;
    foreach my $element (@$root) {
      next if (!defined($element) or !ref($element)
               or (ref($element) ne 'HASH'
                    and ref($element) ne 'ARRAY')
               or exists($been_there->{$element}));

      remove_keys($element, $deleted_keys, $been_there);
    }
  }
  return $root;
}

sub cmp_trimmed($$$$)
{
  my $compared = shift;
  my $reference = shift;
  my $deleted_keys = shift;
  my $test_name = shift;
  my $trimmed = remove_keys($compared, $deleted_keys);
no warnings 'recursion';
  Test::Deep::cmp_deeply($trimmed, $reference, $test_name);
}

sub new_test($;$$$)
{
  my $name = shift;
  my $generate = shift;
  my $debug = shift;
  my $test_formats = shift;
  my $test = {'name' => $name, 'generate' => $generate,
              'DEBUG' => $debug, 'test_formats' => $test_formats};

  if ($generate) {
    mkdir $srcdir."t/results/$name" if (! -d $srcdir."t/results/$name");
  }
  bless $test;
  return $test;
}

# keys under 'info' are not needed here.
my @contents_keys = ('contents', 'args', 'parent', 'source_info',
  'node_content', 'invalid_nesting', 'info', 'text_arg',
  'node_description', 'node_long_description', 'is_target',
  'unit_contents', 'global_command_number',
  # only set with the XS parser
  'tree_document_descriptor', 'output_units_descriptor');
my @menus_keys = ('menu_directions', 'menus', 'menu_up_hash');
# 'section_number' is kept in other results as it may be the only clue
# to know which section element it is.
my @sections_keys = ('section_directions',
  'section_childs', 'associated_node', 'part_associated_section',
  'part_following_node', 'section_level',
  'toplevel_directions', 'sectioning_root');
my @node_keys = ('node_directions',
  'associated_section', 'node_preceding_part');

# in general, the 'parent' keys adds lot of non legible information,
# however to punctually test for regressions on this information, the
# best is to add it in tree tests by removing from @avoided_keys_tree.
my %avoided_keys_tree;
my @avoided_keys_tree = (@sections_keys, @menus_keys, @node_keys,
    'float_number', 'tree_unit_directions', 'directions',
    'associated_unit',
    'parent', 'global_command_number',
    # only set with the XS parser
    'tree_document_descriptor', 'output_units_descriptor');
foreach my $avoided_key(@avoided_keys_tree) {
  $avoided_keys_tree{$avoided_key} = 1;
}
sub filter_tree_keys { [grep {!$avoided_keys_tree{$_}} ( sort keys %{$_[0]} )] }

my %avoided_keys_sectioning;
my @avoided_keys_sectioning = ('next', @contents_keys, @menus_keys,
  @node_keys, 'manual_content');
foreach my $avoided_key(@avoided_keys_sectioning) {
  $avoided_keys_sectioning{$avoided_key} = 1;
}
sub filter_sectioning_keys { [grep {!$avoided_keys_sectioning{$_}}
   ( sort keys %{$_[0]} )] }

my %avoided_keys_nodes;
my @avoided_keys_nodes = (@sections_keys, @contents_keys, @menus_keys);
foreach my $avoided_key(@avoided_keys_nodes) {
  $avoided_keys_nodes{$avoided_key} = 1;
}
sub filter_nodes_keys { [grep {!$avoided_keys_nodes{$_}}
   ( sort keys %{$_[0]} )] }

my %avoided_keys_menus;
my @avoided_keys_menus = (@sections_keys, @contents_keys, @node_keys,
    'cmdname', 'isindex');
foreach my $avoided_key(@avoided_keys_menus) {
  $avoided_keys_menus{$avoided_key} = 1;
}
sub filter_menus_keys { [grep {!$avoided_keys_menus{$_}}
   ( sort keys %{$_[0]} )] }

my %avoided_keys_floats;
my @avoided_keys_floats = (@sections_keys, @contents_keys, @node_keys,
                           @menus_keys);
foreach my $avoided_key(@avoided_keys_floats) {
  $avoided_keys_floats{$avoided_key} = 1;
}
sub filter_floats_keys { [grep {!$avoided_keys_floats{$_}}
   ( sort keys %{$_[0]} )] }

my %avoided_keys_elements;
my @avoided_keys_elements = (@contents_keys, @sections_keys, @node_keys,
  'tree_unit_directions', 'menus');
foreach my $avoided_key(@avoided_keys_elements) {
  $avoided_keys_elements{$avoided_key} = 1;
}
sub filter_elements_keys {[grep {!$avoided_keys_elements{$_}}
   ( sort keys %{$_[0]} )] }

sub set_converter_option_defaults($$;$)
{
  my $converter_options = shift;
  my $format = shift;
  my $debug = shift;

  $converter_options = {} if (!defined($converter_options));

  if (!defined($converter_options->{'EXPANDED_FORMATS'})) {
    $converter_options->{'EXPANDED_FORMATS'} = [$format];
  }
  if (!defined($converter_options->{'output_format'})) {
    $converter_options->{'output_format'} = $format;
  }
  if (!defined($converter_options->{'converted_format'})) {
    $converter_options->{'converted_format'} = $format;
  }
  if (!defined($converter_options->{'DEBUG'})) {
    $converter_options->{'DEBUG'} = $debug;
  }

  return $converter_options;
}

sub close_files($)
{
  my $converter = shift;
  my $converter_unclosed_files
       = Texinfo::Common::output_files_unclosed_files(
                               $converter->output_files_information());
  if ($converter_unclosed_files) {
    foreach my $unclosed_file (keys(%$converter_unclosed_files)) {
      if (!close($converter_unclosed_files->{$unclosed_file})) {
        # FIXME or die?
        warn(sprintf("tp_utils.pl: error on closing %s: %s\n",
                    $converter_unclosed_files->{$unclosed_file}, $!));
      }
    }
  }
}

sub convert_to_plaintext($$$$$)
{
  my $self = shift;
  my $test_name = shift;
  my $format = shift;
  my $document = shift;
  my $converter_options = shift;

  $converter_options
    = set_converter_option_defaults($converter_options, 'plaintext',
                                    $self->{'DEBUG'});

  if (!defined($converter_options->{'OUTFILE'})
      and defined($converter_options->{'SUBDIR'})) {
    # need to set OUTFILE in any case otherwise the default of -
    # will be used
    if ($converter_options->{'SPLIT'}) {
      $converter_options->{'OUTFILE'} = undef;
    } else {
      $converter_options->{'OUTFILE'}
        = $converter_options->{'SUBDIR'}.$test_name.".txt";
    }
  }

  my $converter = Texinfo::Convert::Plaintext->converter($converter_options);

  my $result;
  if (defined($converter_options->{'OUTFILE'})
      and $converter_options->{'OUTFILE'} eq '') {
    $result = $converter->convert($document);
  } else {
    $result = $converter->output($document);
    close_files($converter);
    $result = undef if (defined($result) and ($result eq ''));
  }

  my $converter_errors = $converter->get_converter_errors();
  my $registrar = Texinfo::Report::new();
  foreach my $error (@$converter_errors) {
    $registrar->add_formatted_message($error);
  }

  my ($errors, $error_nrs) = $registrar->errors();
  return ($errors, $result, $converter);
}

sub convert_to_info($$$$$)
{
  my $self = shift;
  my $test_name = shift;
  my $format = shift;
  my $document = shift;
  my $converter_options = shift;

  $converter_options
    = set_converter_option_defaults($converter_options, 'info',
                                    $self->{'DEBUG'});

  my $converter = Texinfo::Convert::Info->converter($converter_options);
  my $result = $converter->output($document);
  close_files($converter);
  die if (!defined($converter_options->{'SUBDIR'}) and !defined($result));

  my $converter_errors = $converter->get_converter_errors();
  my $registrar = Texinfo::Report::new();
  foreach my $error (@$converter_errors) {
    $registrar->add_formatted_message($error);
  }

  my ($errors, $error_nrs) = $registrar->errors();
  return ($errors, $result, $converter);
}

sub convert_to_html($$$$$)
{
  my $self = shift;
  my $test_name = shift;
  my $format = shift;
  my $document = shift;
  my $converter_options = shift;

  $converter_options
    = set_converter_option_defaults($converter_options, 'html',
                                    $self->{'DEBUG'});

  $converter_options->{'SPLIT'} = ''
    if ($format eq 'html_text'
        and !defined($converter_options->{'SPLIT'}));

  my $converter = Texinfo::Convert::HTML->converter($converter_options);

  my $result;
  if ($format eq 'html_text') {
    $result = $converter->convert($document);
  } else {
    $result = $converter->output($document);
    close_files($converter);
  }

  my $converter_errors = $converter->get_converter_errors();
  my $registrar = Texinfo::Report::new();
  foreach my $error (@$converter_errors) {
    $registrar->add_formatted_message($error);
  }

  die if (!defined($converter_options->{'SUBDIR'}) and !defined($result));
  my ($errors, $error_nrs) = $registrar->errors();
  return ($errors, $result, $converter);
}

sub convert_to_xml($$$$$)
{
  my $self = shift;
  my $test_name = shift;
  my $format = shift;
  my $document = shift;
  my $converter_options = shift;

  $converter_options
    = set_converter_option_defaults($converter_options, 'xml',
                                    $self->{'DEBUG'});

  my $converter = Texinfo::Convert::TexinfoXML->converter($converter_options);

  my $result;
  if (defined($converter_options->{'OUTFILE'})
      and $converter_options->{'OUTFILE'} eq '') {
    $result = $converter->convert($document);
  } else {
    $result = $converter->output($document);
    close_files($converter);
    $result = undef if (defined($result) and ($result eq ''));
  }

  my $converter_errors = $converter->get_converter_errors();
  my $registrar = Texinfo::Report::new();
  foreach my $error (@$converter_errors) {
    $registrar->add_formatted_message($error);
  }

  my ($errors, $error_nrs) = $registrar->errors();
  return ($errors, $result, $converter);
}

sub convert_to_docbook($$$$$)
{
  my $self = shift;
  my $test_name = shift;
  my $format = shift;
  my $document = shift;
  my $converter_options = shift;

  $converter_options
    = set_converter_option_defaults($converter_options, 'docbook',
                                    $self->{'DEBUG'});

  my $converter = Texinfo::Convert::DocBook->converter($converter_options);

  my $result;
  my $tree = $document->tree();
  my $document_for_conversion;
  # 'before_node_section' is ignored in conversion to DocBook and it is
  # the type, in 'document_root' that holds content that appear out of any
  # @node and sectioning command.  To be able to have tests of simple
  # Texinfo code out of any sectioning or @node command with DocBook,
  # a tree consisting in a sole 'before_node_section' is duplicated
  # as a tree with an element without type replacing the 'before_node_section'
  # type element, with the same contents.
  if ($tree->{'contents'} and scalar(@{$tree->{'contents'}}) == 1) {
    my $tree_for_conversion = {
      'type' => $tree->{'type'},
      'contents' => [{'contents' => $tree->{'contents'}->[0]->{'contents'}}]
    };
    $document_for_conversion = dclone($document);
    $document_for_conversion->{'tree'} = $tree_for_conversion;
  } else {
    $document_for_conversion = $document;
  }
  if (defined($converter_options->{'OUTFILE'})
      and $converter_options->{'OUTFILE'} eq ''
      and $format ne 'docbook_doc') {
    $result = $converter->convert($document_for_conversion);
  } else {
    $result = $converter->output($document_for_conversion);
    close_files($converter);
    $result = undef if (defined($result) and ($result eq ''));
  }

  my $converter_errors = $converter->get_converter_errors();
  my $registrar = Texinfo::Report::new();
  foreach my $error (@$converter_errors) {
    $registrar->add_formatted_message($error);
  }

  my ($errors, $error_nrs) = $registrar->errors();
  return ($errors, $result, $converter);
}

sub convert_to_latex($$$$$)
{
  my $self = shift;
  my $test_name = shift;
  my $format = shift;
  my $document = shift;
  my $converter_options = shift;

  $converter_options
    = set_converter_option_defaults($converter_options, 'latex',
                                    $self->{'DEBUG'});

  my $converter = Texinfo::Convert::LaTeX->converter($converter_options);

  my $result;
  if ($format eq 'latex_text') {
    $result = $converter->convert($document);
  } else {
    $result = $converter->output($document);
    close_files($converter);
    $result = undef if (defined($result) and ($result eq ''));
  }

  my $converter_errors = $converter->get_converter_errors();
  my $registrar = Texinfo::Report::new();
  foreach my $error (@$converter_errors) {
    $registrar->add_formatted_message($error);
  }

  my ($errors, $error_nrs) = $registrar->errors();
  return ($errors, $result, $converter);
}

sub output_preamble_postamble_html($$)
{
  my $converter = shift;
  my $postamble = shift;

  if ($postamble) {
    return '</body>
</html>
'
  } else {
    my $encoding = '';
    $encoding = "<meta http-equiv=\"Content-Type\" content=\"text/html; charset=".
            $converter->get_conf('OUTPUT_ENCODING_NAME')."\">\n"
       if (defined($converter->get_conf('OUTPUT_ENCODING_NAME'))
          and ($converter->get_conf('OUTPUT_ENCODING_NAME') ne ''));

    return '<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Untitled Document</title>
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="Generator" content="tp">
'.$encoding
.&{$converter->formatting_function('format_css_lines')}($converter,
                    $converter->{'current_filename'})
.'</head>
<body>
';
  }
}

sub output_preamble_postamble_latex($$)
{
  my $converter = shift;
  my $postamble = shift;
  my $parser_options = shift;

  if ($postamble) {
    return '\end{document}
';
  } else {
    my $begin_document = '\begin{document}
';
    if ($parser_options and $parser_options->{'full_document'}) {
      $begin_document = '';
    }
    return $converter->_latex_header() . $begin_document;
  }
}

my %tested_transformations;

# Run a single test case.  Each test case is an array
# [TEST_NAME, TEST_TEXT, PARSER_OPTIONS, CONVERTER_OPTIONS]
sub test($$)
{
  my $self = shift;
  my $test_case = shift;

  my $parser_options = {};
  my ($test_name, $test_text);

  my $tests_count = 0;

  $test_name = shift @$test_case;
  die if (!defined($test_name));
  $test_text = shift @$test_case;
  $parser_options = shift @$test_case if (scalar(@$test_case));
  my $converter_options;
  if (scalar(@$test_case)) {
    $converter_options = shift @$test_case;
  } else {
    $converter_options = {};
  }

  if (!defined($converter_options->{'XS_EXTERNAL_CONVERSION'})
      and defined($ENV{TEXINFO_XS_EXTERNAL_CONVERSION})
      and $ENV{TEXINFO_XS_EXTERNAL_CONVERSION}) {
    $converter_options->{'XS_EXTERNAL_CONVERSION'} = 1;
  }
  if (!defined($converter_options->{'XS_EXTERNAL_FORMATTING'})
      and defined($ENV{TEXINFO_XS_EXTERNAL_FORMATTING})
      and $ENV{TEXINFO_XS_EXTERNAL_FORMATTING}) {
    $converter_options->{'XS_EXTERNAL_FORMATTING'} = 1;
  }

  if (!$self->{'generate'}) {
    mkdir "t/results/$self->{'name'}" if (! -d "t/results/$self->{'name'}");
  } else {
    mkdir $srcdir."t/results/$self->{'name'}"
      if (! -d $srcdir."t/results/$self->{'name'}");
  }

  if (!defined $parser_options->{'EXPANDED_FORMATS'}) {
    $parser_options->{'EXPANDED_FORMATS'} = [
      'docbook', 'html', 'xml', 'info', 'plaintext', 'latex'];
    #  'tex' is missed out here so that @ifnottex is expanded
    # in the tests.  Put
    #   {'EXPANDED_FORMATS' => ['tex']}
    # where you need @tex expanded in the t/*.t files.
  }
  my $initial_parser_options;
  # keep initial parser options to be able to pass to preamble formatting
  if ($arg_output) {
    $initial_parser_options = dclone($parser_options);
  }

  # get all the infos put in parser_options that are not actual
  # parser options but specifications for the test.
  my $test_file;
  if ($parser_options->{'test_file'}) {
    $test_file = $input_files_dir . $parser_options->{'test_file'};
    delete $parser_options->{'test_file'};
  }
  my $full_document;
  if (exists($parser_options->{'full_document'})) {
    $full_document = $parser_options->{'full_document'};
    delete $parser_options->{'full_document'};
  }
  my $test_input_file_name;
  if ($parser_options->{'test_input_file_name'}) {
    $test_input_file_name = $parser_options->{'test_input_file_name'};
    delete $parser_options->{'test_input_file_name'};
  }
  # test_split should not interfere with output formats conversion
  # as it is applied after the output formats.  Splitting should not interfere
  # with conversion anyway.  Output formats using information added by
  # splitting split themselves and reassociate all the root commands.
  # Splitting means setting up output units and associating every root
  # command to an output unit through 'associated_unit'.  Converters that
  # do not split ignore output units and the association of root commands
  # with output units and therefore should not be affected either.

  my $test_split = '';
  if ($parser_options->{'test_split'}) {
    $test_split = $parser_options->{'test_split'};
    if ($test_split ne 'node' and $test_split ne 'section') {
      warn "test_utils.pl: test_split should be node or section: $test_split\n";
    }
    delete $parser_options->{'test_split'};
  }

  my $additional_tree_transformations;
  my %tree_transformations;
  if ($parser_options->{'TREE_TRANSFORMATIONS'}) {
    require Texinfo::Transformations;
    Texinfo::Transformations->import();
    # Not valid tree transformation, but we want to test them anyway.
    # There are other specific tests for comparison to texinfo, but here
    # we also get the tree.
    %tested_transformations = (
     'protect_comma' => \&Texinfo::Common::protect_comma_in_tree,
     'protect_colon' => \&Texinfo::Common::protect_colon_in_tree,
     'protect_node_after_label'
        => \&Texinfo::Common::protect_node_after_label_in_tree,
     'protect_first_parenthesis'
      => \&Texinfo::Transformations::protect_first_parenthesis_in_targets,
     'protect_hashchar_at_line_beginning'
      => \&Texinfo::Transformations::protect_hashchar_at_line_beginning,
    );

    my @option_transformations
        = split /,/, $parser_options->{'TREE_TRANSFORMATIONS'};
    foreach my $transformation (@option_transformations) {
      if (Texinfo::Common::valid_tree_transformation($transformation)) {
        $tree_transformations{$transformation} = 1;
      } elsif ($tested_transformations{$transformation}) {
        $additional_tree_transformations = []
          if (!defined($additional_tree_transformations));
        push @$additional_tree_transformations, $transformation;
      } else {
        warn "$test_name: unknown tree transformation $transformation\n";
      }
    }
    delete $parser_options->{'TREE_TRANSFORMATIONS'};
  }

  # set FORMAT_MENU default to menu, which is the default for the parser.
  # get the same structuring warnings as texi2any.
  my $added_main_configurations = {'FORMAT_MENU' => 'menu',
                                   'CHECK_MISSING_MENU_ENTRY' => 1};

  # FIXME this has changed
  # this is only used for index keys sorting in structuring
  foreach my $structuring_and_converter_option ('ENABLE_ENCODING') {
    if (defined($parser_options->{$structuring_and_converter_option})) {
      $added_main_configurations->{$structuring_and_converter_option}
        = $parser_options->{$structuring_and_converter_option};
      $converter_options->{$structuring_and_converter_option}
        = $parser_options->{$structuring_and_converter_option};
      delete $parser_options->{$structuring_and_converter_option};
    }
  }

  foreach my $structuring_option ('CHECK_NORMAL_MENU_STRUCTURE',
                                  'FORMAT_MENU', 'USE_UNICODE_COLLATION',
                                  'COLLATION_LANGUAGE') {
    if (defined($parser_options->{$structuring_option})) {
      $added_main_configurations->{$structuring_option}
        = $parser_options->{$structuring_option};
      delete $parser_options->{$structuring_option};
    }
  }

  if ($parser_options->{'skip'}) {
    if (!$self->{'generate'}) {
      SKIP: {
        skip "$test_name: $parser_options->{'skip'}", 1;
        ok 1, $test_name;
      }
    }
    return 1;
  } elsif (exists($parser_options->{'skip'})) {
    delete $parser_options->{'skip'};
  }

  my %todos;
  if ($parser_options->{'todo'}) {
    %todos = %{$parser_options->{'todo'}};
    delete $parser_options->{'todo'};
  }
  my $split_pages = '';
  if ($parser_options->{'test_split_pages'}) {
    $split_pages = $parser_options->{'test_split_pages'};
    delete $parser_options->{'test_split_pages'};
  }

  my @tested_formats;
  if ($parser_options and $parser_options->{'test_formats'}) {
    push @tested_formats, @{$parser_options->{'test_formats'}};
    delete $parser_options->{'test_formats'};
  }

  # reset Texinfo::Config informations to have isolated tests
  Texinfo::Config::GNUT_reinitialize_init_files();
  my $init_file_directories = [$srcdir.'init/', $srcdir.'t/init/'];
  # the init file names are supposed to be binary strings.  Since they
  # are not encoded anywhere, probably only non ascii file names should
  # be used.
  # FIXME what if srcdir is non ascii (srcdir is truly a binary string).
  if ($parser_options and $parser_options->{'init_files'}) {
    my $conf = {};
    if (defined($locale_encoding)) {
      $conf->{'COMMAND_LINE_ENCODING'} = $locale_encoding;
      $conf->{'MESSAGE_ENCODING'} = $locale_encoding;
    }
    Texinfo::Config::GNUT_initialize_config('', $conf, {});
    foreach my $filename (@{$parser_options->{'init_files'}}) {
      my $file = Texinfo::Common::locate_init_file($filename,
                                               $init_file_directories, 0);
      if (defined($file)) {
        Texinfo::Config::GNUT_load_init_file($file);
      } else {
        warn (sprintf("could not read init file %s", $filename));
      }
    }
    delete $parser_options->{'init_files'};
  }
  my $completed_parser_options =
          {'INCLUDE_DIRECTORIES' => [$srcdir.'t/include/'],
           'DEBUG' => $self->{'DEBUG'},
            %$parser_options};
  my $main_configuration = Texinfo::MainConfig::new({
                                    %$completed_parser_options,
                                    %$added_main_configurations });

  my $parser = Texinfo::Parser::parser($completed_parser_options);

  # take the initial values to record only if there is something new
  # do a copy to compare the values and not the references
  my $initial_index_names = dclone(\%Texinfo::Commands::index_names);
  my $document;
  if (!$test_file) {
    if ($full_document) {
      print STDERR "  TEST FULL $test_name\n" if ($self->{'DEBUG'});
      $document = $parser->parse_texi_text($test_text, undef, $XS_structuring);
    } else {
      print STDERR "  TEST $test_name\n" if ($self->{'DEBUG'});
      $document = $parser->parse_texi_piece($test_text, undef, $XS_structuring);
      if (defined($test_input_file_name)) {
        warn "ERROR: $self->{'name'}: $test_name: piece of texi with a file name\n";
      }
    }
    if (defined($test_input_file_name)) {
      # FIXME should we need to encode or do we assume that
      # $test_input_file_name is already bytes?
      $document->set_document_global_info('input_file_name',
                                          $test_input_file_name);
    }
  } else {
    print STDERR "  TEST $test_name ($test_file)\n" if ($self->{'DEBUG'});
    $document = $parser->parse_texi_file($test_file, $XS_structuring);
  }
  my $tree = $document->tree();
  my $registrar = $parser->registered_errors();

  if (not defined($tree)) {
    print STDERR "ERROR: parsing result undef\n";
    my ($parser_errors, $parser_error_count) = $registrar->errors();
    foreach my $error_message (@$parser_errors) {
      warn $error_message->{'error_line'}
        if ($error_message->{'type'} eq 'error');
    }
  }

  if ($tree_transformations{'fill_gaps_in_sectioning'}) {
    Texinfo::Transformations::fill_gaps_in_sectioning($tree);
  }

  my $document_information = $document->global_information();

  Texinfo::Common::set_output_encodings($main_configuration,
                                        $document);

  my $global_commands = $document->global_commands_information();
  if ($document_information->{'novalidate'}) {
    $main_configuration->set_conf('novalidate', 1);
  }

  # Now that all the configuration has been set, associate it to the
  # document XS
  $main_configuration->register_XS_document_main_configuration($document);

  if ($tree_transformations{'relate_index_entries_to_items'}) {
    Texinfo::Common::relate_index_entries_to_table_items_in_tree($document);
  }

  if ($tree_transformations{'move_index_entries_after_items'}) {
    Texinfo::Common::move_index_entries_after_items_in_tree($tree);
  }

  if ($tree_transformations{'insert_nodes_for_sectioning_commands'}) {
    Texinfo::Transformations::insert_nodes_for_sectioning_commands(
                             $document, $main_configuration);
  }

  Texinfo::Structuring::associate_internal_references($document,
                                                      $main_configuration);
  my $sections_list
        = Texinfo::Structuring::sectioning_structure($tree, $registrar,
                                                   $main_configuration);
  if ($sections_list) {
    Texinfo::Document::register_document_sections_list($document,
                                                       $sections_list);
  }
  Texinfo::Structuring::warn_non_empty_parts($document, $main_configuration);

  if ($tree_transformations{'complete_tree_nodes_menus'}) {
    Texinfo::Transformations::complete_tree_nodes_menus($tree);
  } elsif ($tree_transformations{'complete_tree_nodes_missing_menu'}) {
    Texinfo::Transformations::complete_tree_nodes_missing_menu($tree,
                                                     $main_configuration);
  }

  if ($tree_transformations{'regenerate_master_menu'}) {
    Texinfo::Transformations::regenerate_master_menu($document,
                                                     $main_configuration);
  }

  my $nodes_tree_nodes_list
          = Texinfo::Structuring::nodes_tree($document, $main_configuration);

  Texinfo::Document::register_document_nodes_list($document,
                                                  $nodes_tree_nodes_list);

  Texinfo::Structuring::set_menus_node_directions($document,
                                                  $main_configuration);

  if (not defined($main_configuration->get_conf('FORMAT_MENU'))
      or $main_configuration->get_conf('FORMAT_MENU') eq 'menu') {
    Texinfo::Structuring::complete_node_tree_with_menus($document,
                                                        $main_configuration);

    Texinfo::Structuring::check_nodes_are_referenced($document,
                                                     $main_configuration);
  }

  Texinfo::Structuring::number_floats($document);

  if ($additional_tree_transformations) {
    foreach my $transformation (@$additional_tree_transformations) {
      my $tree_transformation_sub = $tested_transformations{$transformation};
      if ($transformation eq 'protect_hashchar_at_line_beginning') {
        &$tree_transformation_sub($document->tree(), $registrar,
                                         $main_configuration);
      } else {
        &$tree_transformation_sub($document->tree());
      }
    }
  }

  # Here the sort strings are generated, both in Perl and XS.
  # If $XS_structuring is set, the Perl structure cannot be
  # built yet from XS as the document index information have not
  # been rebuilt yet, but it is not needed at that point.
  Texinfo::Document::indices_sort_strings($document, $main_configuration);

  # could be in a if !$XS_structuring, but the function should not be
  # overriden already in that case
  Texinfo::Document::rebuild_document($document);
  # should not actually be useful, as the same element should be reused.
  $tree = $document->tree();

  my ($errors, $error_nrs) = $document->errors();
  my $indices_information = $document->indices_information();
  # FIXME maybe it would be good to compare $merged_index_entries?
  my $merged_index_entries = $document->merged_indices();

  # only print indices information if it differs from the default
  # indices
  my $indices;
  my $trimmed_index_names = remove_keys($indices_information, ['index_entries']);
  $indices = {'index_names' => $trimmed_index_names}
    unless (Data::Compare::Compare($trimmed_index_names, $initial_index_names));

  my ($sorted_index_entries, $index_entries_sort_strings);
  my $indices_sorted_sort_strings;
  if ($merged_index_entries) {
    $main_configuration->{'document_descriptor'}
      = $document->document_descriptor();
    my $use_unicode_collation
      = $main_configuration->get_conf('USE_UNICODE_COLLATION');
    my $locale_lang;
    if (!(defined($use_unicode_collation) and !$use_unicode_collation)) {
      $locale_lang
       = $main_configuration->get_conf('COLLATION_LANGUAGE');
    }

    my $indices_sort_strings
      = Texinfo::Document::indices_sort_strings($document, $main_configuration);

    $index_entries_sort_strings
     = Texinfo::Indices::format_index_entries_sort_strings(
                                                     $indices_sort_strings);

    $sorted_index_entries
      = Texinfo::Indices::sort_indices_by_index($document, $registrar,
                                                $main_configuration,
                                 $use_unicode_collation, $locale_lang);
    $indices_sorted_sort_strings = {};
    foreach my $index_name (keys(%$sorted_index_entries)) {
      # index entries sort strings sorted in the order of the index entries
      if (scalar(@{$sorted_index_entries->{$index_name}})) {
        $indices_sorted_sort_strings->{$index_name} = [];
        foreach my $index_entry (@{$sorted_index_entries->{$index_name}}) {
          push @{$indices_sorted_sort_strings->{$index_name}},
            $index_entries_sort_strings->{$index_entry};
        }
      }
    }
  }


  # use the parser expanded formats to be similar to the main program,
  # and also to avoid having @inline* and raw output format @-commands
  # with elided contents especially parsed because they are ignored
  # and appearing as raw content in the tree in the output.
  my %expanded_formats;
  if ($parser_options->{'EXPANDED_FORMATS'}) {
    foreach my $expanded_format (@{$parser_options->{'EXPANDED_FORMATS'}}) {
      $expanded_formats{$expanded_format} = 1;
    }
  }
  my $converted_text
      = Texinfo::Convert::Text::convert_to_text($tree, {'TEST' => 1,
                          'expanded_formats' => \%expanded_formats});

  my %converted;
  my %converted_errors;

  foreach my $format (@tested_formats) {
    if (defined($formats{$format})) {
      my $format_converter_options = {%$converter_options};
      my $format_type = $format;
      if ($format_type =~ s/^file_//) {
        # the information that the results is a file is passed
        # through $format_converter_options->{'SUBDIR'} being defined
        my $base = "t/results/$self->{'name'}/$test_name/";
        my $test_out_dir;
        if ($self->{'generate'}) {
          $base = $srcdir.$base;
          $test_out_dir = $base.'res_'.$format_type;
          if (-d $test_out_dir) {
            unlink_dir_files($test_out_dir);
          }
        } else {
          $test_out_dir = $base.'out_'.$format_type;
        }
        if (!defined($format_converter_options->{'SUBDIR'})) {
          mkdir ($base)
            if (! -d $base);
          if (! -d $test_out_dir) {
            mkdir ($test_out_dir);
          } else {
            # remove any files from previous runs
            unlink glob ("$test_out_dir/*");
          }
          $format_converter_options->{'SUBDIR'} = "$test_out_dir/";
        }
      } elsif (!defined($format_converter_options->{'OUTFILE'})) {
        $format_converter_options->{'OUTFILE'} = '';
      }
      $format_converter_options->{'TEST'} = 1;
      $format_converter_options->{'INCLUDE_DIRECTORIES'} = [
                                          $srcdir.'t/include/'];
      my $converter;
      ($converted_errors{$format}, $converted{$format}, $converter)
           = &{$formats{$format}}($self, $test_name, $format_type,
                                  $document, $format_converter_options);
      $converted_errors{$format} = undef if (!@{$converted_errors{$format}});

      if ($format =~ /^file_/ and defined ($converted{$format})) {
        # This is certainly wrong, because the differences are made on
        # the output files which should be empty.  Differences in output
        # will be missed.  It is tempting to use such format to have
        # output() called by the converter and get the file headers and
        # footers output in the main test perl file, but it is incorrect.
        # It is better to do as for the html or latex cases, have a _text
        # format, like html_text for which convert() is called and have
        # output() be called for the main format name, for example html.
        warn "ERROR: $self->{'name'}: $test_name: $format: file test with result as text\n";
      }
      # output converted result and errors in files if $arg_output is set
      if ($arg_output) {
        mkdir ("$output_files_dir/$self->{'name'}")
          if (! -d "$output_files_dir/$self->{'name'}");
        my $extension;
        if ($extensions{$format_type}) {
          $extension = $extensions{$format_type};
        } else {
          $extension = $format_type;
        }

        if (defined ($converted{$format})) {
          my $original_test_outfile = "$self->{'name'}/$test_name.$extension";
          my $test_outfile = $original_test_outfile;
          if ($output_files{$original_test_outfile}) {
            warn "WARNING: $self->{'name'}: $test_name: $format: same name: $original_test_outfile "
                     ."(".join("|", @{$output_files{$original_test_outfile}}).")\n";
            push @{$output_files{$original_test_outfile}}, $format;
            $test_outfile = "$self->{'name'}/${test_name}_${format}.$extension";
            # we also check that the file name with the format in name
            # has not already been output
            if ($output_files{$test_outfile}) {
              warn "ERROR: $self->{'name'}: $test_name: $format: same name with format: $test_outfile\n";
            } else {
              $output_files{$test_outfile} = [$format];
            }
          } else {
            $output_files{$original_test_outfile} = [$format];
          }
          my $outfile = "$output_files_dir/$test_outfile";
          if (!open (OUTFILE, ">$outfile")) {
            warn "ERROR: open $outfile: $!\n";
          } else {
            # output() or convert() called in convert_to_* calls set_document,
            # which calls Texinfo::Common::set_output_encodings, so
            # OUTPUT_PERL_ENCODING should be set in all the formats converters.
            my $output_file_encoding
                      = $converter->get_conf('OUTPUT_PERL_ENCODING');
            if (defined($output_file_encoding)
                   and $output_file_encoding ne '') {
              binmode(OUTFILE, ":encoding($output_file_encoding)");
            } else {
              warn "WARNING: $self->{'name'}: $test_name: $format: no encoding\n";
            }
            if ($outfile_preamble{$format}) {
              if (ref($outfile_preamble{$format}) eq 'CODE') {
                print OUTFILE &{$outfile_preamble{$format}}($converter, 0,
                                                     $initial_parser_options);
              } else {
                print OUTFILE $outfile_preamble{$format}->[0];
              }
            }
            print OUTFILE $converted{$format};
            if ($outfile_preamble{$format}) {
              if (ref($outfile_preamble{$format}) eq 'CODE') {
                print OUTFILE &{$outfile_preamble{$format}}($converter, 1,
                                                     $initial_parser_options);
              } else {
                print OUTFILE $outfile_preamble{$format}->[1];
              }
            }
            close (OUTFILE) or warn "Close $outfile: $!\n";
          }
        }
        if ($converted_errors{$format}) {
          my $errors_file
            = "$output_files_dir/$self->{'name'}/${test_name}_$format.err";
          if (!open (ERRFILE, ">$errors_file")) {
            warn "Open $errors_file: $!\n";
          } else {
            foreach my $error_message (@{$converted_errors{$format}}) {
              my $error_line = $error_message->{'error_line'};
              if (defined($locale_encoding)) {
                $error_line = Encode::encode($locale_encoding, $error_line);
              }
              if (defined($error_message->{'line_nr'})) {
                $error_line = $error_message->{'line_nr'} . ':' . ' '
                   . $error_line;
              }
              print ERRFILE $error_line;
            }
            close (ERRFILE) or warn "Close $errors_file: $!\n";
          }
        }
      }
      $converter->reset_converter();
      $converter->destroy();
    }
  }
  my $directions_text;
  # remove the association of top-level commands with element units, in case
  # a converter split the document.
  # It may be noticed that this is only done after all conversions.  This
  # means that depending on the order of converters call, trees feed to
  # converters may have element units.  All the converters will have the
  # document_root as argument.
  # It could be possible to unsplit before each converter call, but it is
  # better to check that this does not have an effect on conversion.
  # Any conversion to Info, Plaintext or HTML (both with output and convert)
  # leads to splitting by the converter, and generally the tests order is
  # first plaintext or info then html, so splitting not having an effect
  # on conversion should be fairly well tested.  See above the comment
  # near test_split with more explanation on why previous splitting should
  # not interfere with conversion.
  my $unsplit_needed = Texinfo::Structuring::unsplit($tree);
  print STDERR "  UNSPLIT: $test_name\n"
    if ($self->{'DEBUG'} and $unsplit_needed);

  # There is no XS overriding for the following codes. rebuild_output_units
  # does nothing if there is no XS structures, which allows to have tests
  # passing when XS is used (in the default case).  If overriding
  # of XS is setup, most likely all the functions should have an XS override
  # (units_directions has not, though there is an implementation in C),
  # otherwise some information will be missing in the rebuild_output_units
  # output units.
  my $output_units;
  if ($test_split eq 'node') {
    $output_units = Texinfo::Structuring::split_by_node($tree);
  } elsif ($test_split eq 'section') {
    $output_units = Texinfo::Structuring::split_by_section($tree);
  }
  if ($test_split) {
    my $identifier_target = $document->labels_information();
    Texinfo::Structuring::units_directions($main_configuration,
                                           $identifier_target,
                                           $output_units);
    $directions_text = '';
    foreach my $output_unit (@$output_units) {
      $directions_text .=
          Texinfo::Structuring::print_output_unit_directions($output_unit);
    }
  }
  if ($split_pages) {
    Texinfo::Structuring::split_pages($output_units, $split_pages);
  }

  if ($test_split or $split_pages) {
    Texinfo::Structuring::rebuild_output_units($output_units);
  }

  my $file = "t/results/$self->{'name'}/$test_name.pl";
  my $new_file = $file.'.new';

  my $split_result;
  if ($output_units) {
    $split_result = $output_units;
  } else {
    $split_result = $tree;
  }

  {
    local $Data::Dumper::Purity = 1;
    local $Data::Dumper::Indent = 1;

    my $out_file;
    if (!$self->{'generate'}) {
      $out_file = $new_file;
    } else {
      $out_file = $srcdir.$file;
    }
    open (OUT, ">$out_file") or die "Open $out_file: $!\n";
    binmode (OUT, ":encoding(utf8)");
    print OUT
     'use vars qw(%result_texis %result_texts %result_trees %result_errors '."\n".
     '   %result_indices %result_sectioning %result_nodes %result_menus'."\n".
     '   %result_floats %result_converted %result_converted_errors '."\n".
     '   %result_elements %result_directions_text %result_indices_sort_strings);'."\n\n";
    print OUT 'use utf8;'."\n\n";

    #print STDERR "Generate: ".Data::Dumper->Dump([$tree], ['$res']);
    # NOTE $test_name is in general used for directories and
    # file names, here it is used as a text string.  If non ascii, it
    # should be a character string in internal perl codepoints as OUT
    # is encoded as utf8.  It should also be encoded to be used as file name
    # in that case.
    my $out_result;
    {
      local $Data::Dumper::Sortkeys = \&filter_tree_keys;
      $out_result = Data::Dumper->Dump([$split_result],
                                       ['$result_trees{\''.$test_name.'\'}']);
      if ($out_result =~ /\r/) {
        # \r can be mangled upon reading if at end of line, with Useqq it is
        # protected
        local $Data::Dumper::Useqq = 1;
        $out_result = Data::Dumper->Dump([$split_result],
                                         ['$result_trees{\''.$test_name.'\'}']);
      }
    }
    my $converter_to_texinfo = Texinfo::Convert::PlainTexinfo->converter();
    my $texi_string_result = $converter_to_texinfo->convert($document);
    #my $texi_string_result
    #    = Texinfo::Convert::Texinfo::convert_to_texinfo($tree);
    $out_result .= "\n".'$result_texis{\''.$test_name.'\'} = \''
          .protect_perl_string($texi_string_result)."';\n\n";
    $out_result .= "\n".'$result_texts{\''.$test_name.'\'} = \''
          .protect_perl_string($converted_text)."';\n\n";

    my $sections_list = $document->sections_list();
    if ($sections_list and scalar(@$sections_list)) {
      local $Data::Dumper::Sortkeys = \&filter_sectioning_keys;
      my $sectioning_root
           = $sections_list->[0]->{'extra'}->{'sectioning_root'};
      $out_result .=  Data::Dumper->Dump([$sectioning_root],
                           ['$result_sectioning{\''.$test_name.'\'}'])."\n"
    }
    my $nodes_list = $document->nodes_list();
    if ($nodes_list and scalar(@$nodes_list)) {
      {
        local $Data::Dumper::Sortkeys = \&filter_nodes_keys;
        $out_result .= Data::Dumper->Dump([$nodes_list],
                               ['$result_nodes{\''.$test_name.'\'}'])."\n";
      }
      {
        local $Data::Dumper::Sortkeys = \&filter_menus_keys;
        $out_result .= Data::Dumper->Dump([$nodes_list],
                             ['$result_menus{\''.$test_name.'\'}'])."\n";
      }
    }
    {
      local $Data::Dumper::Sortkeys = 1;
      # NOTE file names in error messages are bytes, there could be a
      # need to decode them if there were file names with non ascii
      # characters.
      # FIXME remove the NOTE if file names in error messages are not bytes
      # anymore
      $out_result .= Data::Dumper->Dump([$errors],
                           ['$result_errors{\''.$test_name.'\'}']) ."\n\n";
      $out_result .= Data::Dumper->Dump([$indices],
                            ['$result_indices{\''.$test_name.'\'}']) ."\n\n"
         if ($indices);
    }
    my $floats = $document->floats_information();
    if ($floats) {
      local $Data::Dumper::Sortkeys = \&filter_floats_keys;
      $out_result .= Data::Dumper->Dump([$floats],
                            ['$result_floats{\''.$test_name.'\'}']) ."\n\n";
    }
    if ($indices_sorted_sort_strings) {
      local $Data::Dumper::Sortkeys = 1;
      $out_result .= Data::Dumper->Dump([$indices_sorted_sort_strings],
                      ['$result_indices_sort_strings{\''.$test_name.'\'}'])
                     ."\n\n";
    }
    if ($output_units) {
      local $Data::Dumper::Sortkeys = \&filter_elements_keys;
      $out_result .= Data::Dumper->Dump([$output_units],
                       ['$result_elements{\''.$test_name.'\'}'])
                     ."\n\n";
      $out_result .= "\n".'$result_directions_text{\''.$test_name.'\'} = \''
                             .protect_perl_string($directions_text)."';\n\n";
    }
    foreach my $format (@tested_formats) {
      if (defined($converted{$format})) {
        $out_result .= "\n".'$result_converted{\''.$format.'\'}->{\''
                       .$test_name.'\'} = \''
                       .protect_perl_string($converted{$format})."';\n\n";
      }
      if (defined($converted_errors{$format})) {
        local $Data::Dumper::Sortkeys = 1;
        $out_result .= Data::Dumper->Dump([$converted_errors{$format}],
             ['$result_converted_errors{\''.$format.'\'}->{\''.$test_name.'\'}'])
                       ."\n\n";
      }
    }

    $out_result .= "1;\n";
    print OUT $out_result;
    close (OUT);

    if ($self->{'generate'}) {
      print STDERR "--> $test_name\n";
    }
  }
  if (!$self->{'generate'}) {
    %result_converted = ();
    require "$srcdir$file";

    cmp_trimmed($split_result, $result_trees{$test_name}, \@avoided_keys_tree,
                $test_name.' tree');

    my $sections_list = $document->sections_list();
    my $sectioning_root
        = $sections_list->[0]->{'extra'}->{'sectioning_root'}
      if ($sections_list and scalar(@$sections_list));
    cmp_trimmed($sectioning_root, $result_sectioning{$test_name},
                 \@avoided_keys_sectioning, $test_name.' sectioning' );

    my $nodes_list = $document->nodes_list();
    my $nodes_result;
    $nodes_result = $nodes_list if ($nodes_list and scalar(@$nodes_list));
    cmp_trimmed($nodes_result, $result_nodes{$test_name}, \@avoided_keys_nodes,
                $test_name.' nodes');
    my $menus_result;
    $menus_result = $nodes_list if ($nodes_list and scalar(@$nodes_list));
    cmp_trimmed($menus_result, $result_menus{$test_name}, \@avoided_keys_menus,
                $test_name.' menus');

    my $floats = $document->floats_information();
    cmp_trimmed($floats, $result_floats{$test_name},
                \@avoided_keys_floats, $test_name.' floats');

    ok (Data::Compare::Compare($errors, $result_errors{$test_name}),
        $test_name.' errors');
    ok (Data::Compare::Compare($indices, $result_indices{$test_name}),
        $test_name.' indices');
    ok (Data::Compare::Compare($indices_sorted_sort_strings,
                               $result_indices_sort_strings{$test_name}),
        $test_name.' indices sort');
    # FIXME use PlainTexinfo converter to test the XS converter until
    # convert_to_texinfo goes through XS.
    my $converter_to_texinfo = Texinfo::Convert::PlainTexinfo->converter();
    my $texi_result = $converter_to_texinfo->convert($document);
    #my $texi_result = Texinfo::Convert::Texinfo::convert_to_texinfo($tree);
    is ($texi_result, $result_texis{$test_name}, $test_name.' texi');
    if ($todos{'text'}) {
      SKIP: {
        skip $todos{'text'}, 1;
        is ($converted_text, $result_texts{$test_name}, $test_name.' text');
      }
    } else {
      is ($converted_text, $result_texts{$test_name}, $test_name.' text');
    }
    $tests_count = $nr_comparisons;
    if (defined($result_directions_text{$test_name})) {
      cmp_trimmed($output_units, $result_elements{$test_name},
                  \@avoided_keys_elements, $test_name.' elements');
      $tests_count++;
      is ($directions_text, $result_directions_text{$test_name},
          $test_name.' directions text');
      $tests_count++;
    }
    if (@tested_formats) {
      foreach my $format (@tested_formats) {
        my $reference_exists;
        my $format_type = $format;
        if ($format_type =~ s/^file_//) {
          my $base = "t/results/$self->{'name'}/$test_name/";
          my $reference_dir = "$srcdir$base".'res_'.$format_type;
          my $results_dir = $base.'out_'.$format_type;
          if (-d $reference_dir) {
            $reference_exists = 1;
            $tests_count += 1;
            my $errors = compare_dirs_files($reference_dir, $results_dir);
            if ($todos{$format}) {
              SKIP: {
                skip $todos{$format}, 1;
                ok (!defined($errors), $test_name.' converted '.$format)
                  or diag (join("\n", @$errors));
              }
            } else {
              ok (!defined($errors), $test_name.' converted '.$format)
                or diag (join("\n", @$errors));
            }
          } else {
            print STDERR "\n$format $test_name: \n$results_dir\n";
          }
        } elsif (!defined($result_converted{$format})) {
          my $result;
          if (defined($converted{$format})) {
            $result = $converted{$format};
          } else {
            $result = 'UNDEF'."\n";
          }
          print STDERR "\n$format $test_name:\n$result";
        } else {
          $reference_exists = 1;
          $tests_count += 1;
          if ($todos{$format}) {
            SKIP: {
              skip $todos{$format}, 1;
              is ($converted{$format},
                  $result_converted{$format}->{$test_name},
                  $test_name.' converted '.$format);
            }
          } else {
            is ($converted{$format},
                $result_converted{$format}->{$test_name},
                $test_name.' converted '.$format);
          }
        }
        if ($reference_exists) {
          $tests_count += 1;
          ok (((not defined($converted_errors{$format})
               and (not $result_converted_errors{$format}
                    or not $result_converted_errors{$format}->{$test_name}))
               or Data::Compare::Compare($converted_errors{$format},
                              $result_converted_errors{$format}->{$test_name})),
              $test_name.' errors '.$format);
        }
      }
    }
  }

  Texinfo::Document::remove_document($document);

  return $tests_count;
}

# Main entry point for the tests.  Called from *.t files.
#  $NAME - a string, name of test
#  $TEST_CASES - array of sub-tests
#
# variables set from command line:
#  If $ARG_TEST_CASE is set, only run that test.
#  $ARG_GENERATE set means to generate reference test results (-g from command line).
#  $ARG_DEBUG is used for debugging (-d from command line).
#  The $ARG_COMPLETE variable is the -c option, to create Texinfo files for the
#  test cases.
sub run_all($$)
{
  my $name = shift;
  my $test_cases = shift;

  my $test = new_test($name, $arg_generate, $arg_debug);
  my $ran_tests;
  if (scalar(@ARGV)) {
    $ran_tests = [];
    foreach my $arg_test_case (@ARGV) {
      foreach my $test_case (@$test_cases) {
        if ($test_case->[0] eq $arg_test_case) {
          push @$ran_tests, $test_case;
          last;
        }
      }
    }
  } else {
    $ran_tests = $test_cases;
  }

  if (!defined($ran_tests)) {
    die "No test\n";
  }
  my $test_nrs = 0;

  foreach my $test_case (@$ran_tests) {
    if ($arg_complete) {
      $test->output_texi_file($test_case);
    } else {
      $test_nrs += $test->test($test_case);
    }
  }
  if ($arg_generate or $arg_complete) {
    plan tests => 1;
  } else {
    plan tests => (1 + $test_nrs);
  }
}

# Create a Texinfo file for a test case; used when -c option is given.
sub output_texi_file($)
{
  my $self = shift;
  my $test_case = shift;
  my $test_name = shift @$test_case;
  my $test_text = shift @$test_case;
  my $test_options = shift @$test_case;

  my $dir = "$generated_texis_dir/$self->{'name'}/";
  mkdir "$generated_texis_dir/" or die
     unless (-d "$generated_texis_dir/");
  mkdir $dir or die
     unless (-d $dir);
  my $file = "${dir}$test_name.texi";
  print STDERR "texi: $test_name\n" if ($arg_debug);
  open (OUTFILE, ">$file") or die ("Open $file: $!\n");

  my $encode = 1;
  my $first_line = "\\input texinfo \@c -*-texinfo-*-";
  my $from_file;
  if (!defined($test_text)) {
    $from_file = 1;
    # We do not decode to character strings in internal perl encoding,
    # we get bytes and output bytes already encoded, mixing with
    # character strings containing ascii characters only.
    my $test_file;
    if ($test_options and $test_options->{'test_file'}) {
      $encode = 0;
      $test_file = $input_files_dir . $test_options->{'test_file'};
      if (open (INFILE, $test_file)) {
        my $holdTerminator = $/;
        undef $/;
        $test_text = <INFILE>;
        $/ = $holdTerminator;
      } else {
        die "Open $test_file: $!\n";
      }
    }
  }
  my $node_top;
  if ($test_text =~ /^\@node +top[\s,]/mi
      or $test_text =~ /^\@node +top *$/mi) {
    $node_top = '';
  } else {
    $node_top = "\@node Top\n";
    unless ($test_text =~ /^\@top\s/m or $test_text =~ /^\@top *$/m) {
      $node_top .= "\@top $test_name\n";
    }
  }
  my $added_chapter = '';
  unless ($test_text =~ /^\@(chapter|unnumbered|appendix)\s/m
          or $test_text =~ /^\@(chapter|unnumbered|appendix) *$/m
          or $test_text =~ /^\@node +chap/mi) {
    # need a chapter or node after Top for LaTeX as Top node is ignored.
    if ($node_top ne '') {
      $added_chapter = "\@node chapter\n\@chapter chapter\n";
    } else {
      print STDERR "WARNING: $test_name: top in test, no chapter added\n";
    }
  }
  if ($from_file) {
    if ($node_top ne '' or $added_chapter ne '') {
         # \A matches beginning of string, even with /m
      if ($test_text =~ s/\A(\s*\\input texinfo(\.tex)? *\@.*)(\n|$)//m
          or $test_text =~ s/\A(\s*\\input texinfo(\.tex)? *)(\n|$)//m) {
        $first_line = $1;
      }
    } elsif ($test_text =~ /^\s*\\input texinfo(\.tex)? *\@/
             or $test_text =~ /\A\s*\\input texinfo(\.tex)? *$/m) {
      $first_line = "";
    }
  }
  my $bye = '';
  if ($test_text !~ /\@bye *$/m
      and $test_text !~ /\@bye[\@ ]/) {
    $bye = '@bye';
  }
  foreach my $output ($first_line, $node_top, $added_chapter) {
    print OUTFILE "$output\n"
      if ($output ne '');
  }
  # $test_text is already encoded if read from a file, but if it is
  # a test string from a *.t file code, it is a perl character string
  # and is encoded here, to UTF-8 as it is the default Texinfo encoding.
  $test_text = Encode::encode('UTF-8', $test_text) if ($encode);
  # Always add a newline in the end.  There may not be a newline for tests
  # defined as strings ending right after a character.
  chomp($test_text);
  print OUTFILE $test_text."\n";
  print OUTFILE "$bye\n" if ($bye ne '');
  close (OUTFILE) or die "Close $file: $!\n";
}

1;
