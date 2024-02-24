# Copyright 2014-2024 Free Software Foundation, Inc.
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

# Since there are different parser implementation, XS and NonXS, it is
# better to have the Texinfo::Parser packages define only the parser
# API functions.  Constants, functions useful in both parsers, and other
# functions useful in other codes are better defined in other Texinfo
# modules.

# File to be loaded in conjunction with Parsetexi.xs module
#
# In general, the Parser works with character strings decoded from the
# command line, from input files or from the parsed document and returns
# character strings.  There are exceptions for the following files and
# directory names that are binary strings:
# * the input file name passed through parse_texi_file is a binary string
# * the 'file_name' values in 'source_info' from convert_errors and in
#   the tree elements 'source_info' are returned as binary strings
#
# Binary strings are passed from parse_texi_file as arguments of parse_file.

package Texinfo::Parser;

use 5.008;
use strict;
use warnings;

# To check if there is no erroneous autovivification
#no autovivification qw(fetch delete exists store strict);

use Storable qw(dclone); # standard in 5.007003
use Encode qw(decode);
use File::Basename; # for fileparse

use Texinfo::Common;
use Texinfo::Report;
use Texinfo::Translations;
# to return a resulting document
use Texinfo::Document;

require Exporter;

our @ISA = qw(Exporter);
our %EXPORT_TAGS = ( 'all' => [ qw(
    parser
    parse_texi_file
    parse_texi_line
    parse_texi_piece
    parse_texi_text
) ] );

our @EXPORT_OK = ( @{ $EXPORT_TAGS{'all'} } );

my %parser_default_configuration =
  (%Texinfo::Common::default_parser_customization_values);

sub get_conf($$)
{
  my $self = shift;
  my $var = shift;
  return $self->{'conf'}->{$var};
}

sub simple_parser {
  my $conf = shift;

  my $new_conf = {'restricted' => 1};
  if ($conf) {
    %$new_conf = (%$new_conf, %$conf);
  }

  return parser($new_conf);
}

# Initialize the parser
sub parser (;$$)
{
  my $conf = shift;

  my $parser = dclone(\%parser_default_configuration);

  if (defined($conf)) {
    foreach my $key (keys (%$conf)) {
      # Copy conf to parser object.
      # we keep registrar instead of copying on purpose, to reuse the object
      if ($key ne 'values' and $key ne 'registrar' and ref($conf->{$key})) {
        $parser->{$key} = dclone($conf->{$key});
      } else {
        $parser->{$key} = $conf->{$key};
      }
    }
  }
  # restrict variables found by get_conf, and set the values to the
  # parser initialization values only.  What is found in the document
  # has no effect.
  $parser->{'conf'} = {};
  foreach my $key (keys(%Texinfo::Common::default_parser_customization_values)) {
    $parser->{'conf'}->{$key} = $parser->{$key};
  }

  # pass directly DEBUG value to reset_parser to override previous
  # parser configuration, as the configuration isn't already reset and the new
  # configuration is set afterwards.
  my $debug = 0;
  $debug = $parser->{'DEBUG'} if ($parser->{'DEBUG'});
  reset_parser ($debug);

  if (defined($conf)) {
    foreach my $key (keys (%$conf)) {
      if ($key eq 'INCLUDE_DIRECTORIES') {
        # the directories from the command line or the input file name
        # are already byte strings (or ascii).  The encoding was detected
        # as COMMAND_LINE_ENCODING, but it is not used in the XS parser.
        foreach my $d (@{$conf->{'INCLUDE_DIRECTORIES'}}) {
          parser_add_include_directory ($d);
        }
      } elsif ($key eq 'values') {
        for my $flag (keys %{$conf->{'values'}}) {
          my $bytes_flag = Encode::encode('utf-8', $flag);
          my $bytes_value = Encode::encode('utf-8', $conf->{'values'}->{$flag});
          parser_store_value ($bytes_flag, $bytes_value);
        }
      } elsif ($key eq 'EXPANDED_FORMATS') {
        parser_clear_expanded_formats ();

        for my $f (@{$conf->{$key}}) {
          my $utf8_bytes = Encode::encode('utf-8', $f);
          parser_add_expanded_format ($utf8_bytes);
        }
      } elsif ($key eq 'documentlanguage') {
        if (defined ($conf->{$key})) {
          my $utf8_bytes = Encode::encode('utf-8', $conf->{$key});
          parser_set_documentlanguage_override ($utf8_bytes);
        }
      } elsif ($key eq 'FORMAT_MENU') {
        if ($conf->{$key} eq 'menu') {
          conf_set_show_menu (1);
        } else {
          conf_set_show_menu (0);
        }
      } elsif ($key eq 'IGNORE_SPACE_AFTER_BRACED_COMMAND_NAME') {
        conf_set_IGNORE_SPACE_AFTER_BRACED_COMMAND_NAME ($conf->{$key});
      } elsif ($key eq 'CPP_LINE_DIRECTIVES') {
        conf_set_CPP_LINE_DIRECTIVES($conf->{$key});
      } elsif ($key eq 'MAX_MACRO_CALL_NESTING') {
        conf_set_MAX_MACRO_CALL_NESTING($conf->{$key});
      } elsif ($key eq 'DEBUG') {
        parser_set_debug($conf->{$key}) if (defined($conf->{$key}));
      } elsif ($key eq 'DOC_ENCODING_FOR_INPUT_FILE_NAME') {
        parser_set_DOC_ENCODING_FOR_INPUT_FILE_NAME ($conf->{$key});
      } elsif ($key eq 'INPUT_FILE_NAME_ENCODING' and defined($conf->{$key})) {
        my $utf8_bytes = Encode::encode('utf-8', $conf->{$key});
        parser_set_input_file_name_encoding ($utf8_bytes);
      } elsif ($key eq 'LOCALE_ENCODING' and defined($conf->{$key})) {
        my $utf8_bytes = Encode::encode('utf-8', $conf->{$key});
        parser_set_locale_encoding ($utf8_bytes);
      } elsif ($key eq 'accept_internalvalue' and $conf->{$key}) {
        parser_set_accept_internalvalue(1);
      } elsif ($key eq 'restricted' and $conf->{$key}) {
        parser_set_restricted(1);
      } elsif ($key eq 'registrar' or $key eq 'COMMAND_LINE_ENCODING') {
        # no action needed, only used in perl code
      } else {
        warn "ignoring parser configuration value \"$key\"\n";
      }
    }
  }

  bless $parser;

  return $parser;
}

sub _get_error_registrar($)
{
  my $self = shift;
  if (not $self->{'registrar'}) {
    $self->{'registrar'} = Texinfo::Report::new();
  }
  my $registrar = $self->{'registrar'};
  my $configuration_information = $self;
  return $registrar, $configuration_information;
}

sub _get_parser_info($$;$$) {
  my $self = shift;
  my $document_descriptor = shift;
  my $no_build = shift;
  my $no_store = shift;

  my ($registrar, $configuration_information)
     = _get_error_registrar($self);

  my $document;
  if ($no_build) {
    $document = get_document ($document_descriptor);
  } else {
    $document = build_document ($document_descriptor, $no_store);
  }

  #Texinfo::Translations::complete_indices ($self,
  #                                 $document->indices_information());

  # Copy the errors into the error list in Texinfo::Report.
  foreach my $error (@{$document->{'errors'}}) {
    $registrar->add_formatted_message($error);
  }
  @{$document->{'errors'}} = ();
  clear_document_errors($document_descriptor);

  # Reference the same Texinfo::Report object
  $document->{'registrar'} = $registrar;

  # additional info relevant in perl only.
  my $perl_encoding
    = Texinfo::Common::get_perl_encoding($document->{'commands_info'},
                              $registrar, $configuration_information);
  $perl_encoding = 'utf-8' if (!defined($perl_encoding));
  Texinfo::Document::set_document_global_info($document,
                     'input_perl_encoding', $perl_encoding);

  return $document;
}

sub parse_texi_file ($$;$)
{
  my $self = shift;
  my $input_file_path = shift;
  my $no_build = shift;
  my $tree_stream;

  # the file is already a byte string, taken as is from the command
  # line.  The encoding was detected as COMMAND_LINE_ENCODING, but
  # it is not useful for the XS parser.
  # TODO instead of using fileparse here, reimplement fileparse
  # in XS, or use a file name parsing code from somewhere else?
  my ($basename, $directories, $suffix) = fileparse($input_file_path);
  my $document_descriptor = parse_file ($input_file_path,
                                        $basename, $directories);
  if (!$document_descriptor) {
    my ($registrar, $configuration_information) = _get_error_registrar($self);
    my $input_file_name = $input_file_path;
    my $encoding = $self->get_conf('COMMAND_LINE_ENCODING');
    if (defined($encoding)) {
      $input_file_name = decode($encoding, $input_file_path);
    }
    $registrar->document_error($configuration_information,
       sprintf(__("could not open %s: %s"), $input_file_name, $!));
    return undef;
  }

  my $document = _get_parser_info($self, $document_descriptor, $no_build);

  return $document;
}


# Used in tests under tp/t.
sub parse_texi_piece($$;$$$)
{
  my ($self, $text, $line_nr, $no_build, $no_store) = @_;

  return undef if (!defined($text));

  $line_nr = 1 if (not defined($line_nr));

  $self = parser() if (!defined($self));

  # pass a binary UTF-8 encoded string to C code
  my $utf8_bytes = Encode::encode('utf-8', $text);
  my $document_descriptor = parse_piece($utf8_bytes, $line_nr);

  my $document = _get_parser_info($self, $document_descriptor, $no_build,
                                  $no_store);

  return $document;
}

# Used in tests under tp/t.
sub parse_texi_text($$;$$)
{
  my ($self, $text, $line_nr, $no_build) = @_;

  return undef if (!defined($text));

  $line_nr = 1 if (not defined($line_nr));

  $self = parser() if (!defined($self));

  # pass a binary UTF-8 encoded string to C code
  my $utf8_bytes = Encode::encode('utf-8', $text);
  my $document_descriptor = parse_text($utf8_bytes, $line_nr);

  my $document = _get_parser_info($self, $document_descriptor, $no_build);

  return $document;
}

sub parse_texi_line($$;$$$)
{
  my ($self, $text, $line_nr, $no_build, $no_store) = @_;

  return undef if (!defined($text));

  $line_nr = 1 if (not defined($line_nr));

  $self = parser() if (!defined($self));

  # pass a binary UTF-8 encoded string to C code
  my $utf8_bytes = Encode::encode('utf-8', $text);
  my $document_descriptor = parse_string($utf8_bytes, $line_nr);

  my $document = _get_parser_info($self, $document_descriptor, $no_build,
                                  $no_store);

  return $document->tree();
}

sub registered_errors($)
{
  my $self = shift;
  return $self->{'registrar'};
}

1;
__END__

The POD documentation of Texinfo::Parser is in Texinfo::ParserNonXS.
