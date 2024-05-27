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
use Texinfo::Document;

# Initialize the parser
# The last argument, optional, is a hash provided by the user to change
# the default values for what is present in %parser_settable_configuration.
sub parser (;$)
{
  my $conf = shift;

  # In Texinfo::Common because all the
  # customization options information is gathered here, and also
  # because it is used in other codes, in particular the XS parser.
  # Note that it also contains inner options like accept_internalvalue
  # and customizable document parser state values in addition to
  # regular customization options.
  my $parser_conf = dclone(\%Texinfo::Common::parser_document_parsing_options);
  my $parser = {};
  bless $parser;

  # Reset conf from argument, restricting to parser_document_parsing_options,
  # and set directly parser keys if in parser_settable_configuration and not in
  # parser_document_parsing_options.
  if (defined($conf)) {
    foreach my $key (keys(%$conf)) {
      if (exists($Texinfo::Common::parser_document_parsing_options{$key})) {
        if (ref($conf->{$key})) {
          $parser_conf->{$key} = dclone($conf->{$key});
        } else {
          $parser_conf->{$key} = $conf->{$key};
        }
      } elsif (exists($Texinfo::Common::parser_settable_configuration{$key})) {
        # we keep instead of copying on purpose, to reuse the objects
        # Should only be registrar
        $parser->{$key} = $conf->{$key};
      } else {
        # no warning here as in pure Perl as it is warned below
        #warn "ignoring parser configuration value \"$key\"\n";
      }
    }
  }

  # pass directly DEBUG value to reset_parser to override previous
  # parser configuration, as the configuration isn't already reset and the new
  # configuration is set afterwards.
  my $debug = 0;
  $debug = $parser_conf->{'DEBUG'} if ($parser_conf->{'DEBUG'});

  # The reset_parser call resets the conf to the same values as found in
  # Texinfo::Common parser_document_parsing_options.
  reset_parser($debug);

  # Following code does the same as Perl code just above to
  # setup parser_conf in C.
  # (re)set debug in any case, assuming that undef DEBUG is no debug
  parser_conf_set_DEBUG($debug);

  # Storing conf is only needed if the parser is reused.  There could be
  # a customization variable.  Instead, we set store_conf to 0 if
  # accept_internalvalue is set, if called from gdt as we know for sure that
  # the parser is not gonna be reused.
  my $store_conf = 1;
  if (defined($conf)) {
    foreach my $key (keys(%$conf)) {
      if ($key eq 'INCLUDE_DIRECTORIES') {
        parser_store_INCLUDE_DIRECTORIES($conf->{'INCLUDE_DIRECTORIES'});
      } elsif ($key eq 'values') {
        parser_store_values($conf->{'values'});
      } elsif ($key eq 'EXPANDED_FORMATS') {
        parser_store_EXPANDED_FORMATS($conf->{'EXPANDED_FORMATS'});
      } elsif ($key eq 'documentlanguage') {
        if (defined ($conf->{$key})) {
          parser_conf_set_documentlanguage($conf->{$key});
        }
      } elsif ($key eq 'FORMAT_MENU') {
        if ($conf->{$key} and $conf->{$key} eq 'menu') {
          parser_conf_set_show_menu(1);
        } else {
          parser_conf_set_show_menu(0);
        }
      } elsif ($key eq 'IGNORE_SPACE_AFTER_BRACED_COMMAND_NAME') {
        parser_conf_set_IGNORE_SPACE_AFTER_BRACED_COMMAND_NAME($conf->{$key});
      } elsif ($key eq 'CPP_LINE_DIRECTIVES') {
        parser_conf_set_CPP_LINE_DIRECTIVES($conf->{$key});
      } elsif ($key eq 'MAX_MACRO_CALL_NESTING') {
        parser_conf_set_MAX_MACRO_CALL_NESTING($conf->{$key});
      } elsif ($key eq 'NO_INDEX') {
        parser_conf_set_NO_INDEX($conf->{$key});
      } elsif ($key eq 'NO_USER_COMMANDS') {
        parser_conf_set_NO_USER_COMMANDS($conf->{$key});
      } elsif ($key eq 'DOC_ENCODING_FOR_INPUT_FILE_NAME') {
        parser_conf_set_DOC_ENCODING_FOR_INPUT_FILE_NAME($conf->{$key});
      } elsif ($key eq 'INPUT_FILE_NAME_ENCODING') {
        if (defined($conf->{$key})) {
          parser_conf_set_INPUT_FILE_NAME_ENCODING($conf->{$key});
        }
      } elsif ($key eq 'LOCALE_ENCODING') {
        if (defined($conf->{$key})) {
          parser_conf_set_LOCALE_ENCODING($conf->{$key});
        }
      } elsif ($key eq 'accept_internalvalue') {
        if ($conf->{$key}) {
          # called from gdt, no need to store the parser configuration
          parser_conf_set_accept_internalvalue(1);
          $store_conf = 0;
        }
      } elsif ($key eq 'registrar' or $key eq 'COMMAND_LINE_ENCODING'
               or $key eq 'DEBUG') {
        # no action needed, already taken into account or only for Perl code
      } else {
        warn "ignoring parser configuration value \"$key\"\n";
      }
    }
  }
  if ($store_conf) {
    register_parser_conf($parser);

    # variables set to the parser initialization values
    # only.  What is found in the document has no effect.
    $parser->{'conf'} = $parser_conf;
  }

  if (not $parser->{'registrar'}) {
    $parser->{'registrar'} = Texinfo::Report::new();
  }

  return $parser;
}

sub _get_parser_info($$;$) {
  my $self = shift;
  my $document_descriptor = shift;
  my $no_store = shift;

  # get hold of errors before calling build_document, as if $no_store is set
  # they will be destroyed.
  pass_document_parser_errors_to_registrar($document_descriptor, $self);

  my $document;
  if (!$no_store) {
    $document = get_document ($document_descriptor);
  } else {
    $document = build_document ($document_descriptor, 1);
  }

  # additional info relevant in perl only.
  my $perl_encoding
    = Texinfo::Common::get_perl_encoding($document->{'commands_info'},
                        $self->{'registrar'}, $self->{'conf'}->{'DEBUG'});
  $perl_encoding = 'utf-8' if (!defined($perl_encoding));
  Texinfo::Document::set_document_global_info($document,
                     'input_perl_encoding', $perl_encoding);

  # New error registrar for document to be used after parsing, for
  # structuring and tree modifications
  $document->{'registrar'} = Texinfo::Report::new();

  return $document;
}

sub parse_texi_file ($$)
{
  my $self = shift;
  my $input_file_path = shift;
  my $tree_stream;

  return undef if (!defined($self));

  # the file is already a byte string, taken as is from the command
  # line.  The encoding was detected as COMMAND_LINE_ENCODING, but
  # it is not useful for the XS parser.
  my ($input_file_name, $directories, $suffix) = fileparse($input_file_path);
  my $document_descriptor = parse_file($self, $input_file_path);
  if (!$document_descriptor) {
    my $parser_registrar = $self->{'registrar'};
    my $decoded_input_file_path = $input_file_path;
    my $encoding = $self->{'conf'}->{'COMMAND_LINE_ENCODING'};
    if (defined($encoding)) {
      $decoded_input_file_path = decode($encoding, $input_file_path);
    }
    $parser_registrar->document_error($self,
       sprintf(__("could not open %s: %s"), $decoded_input_file_path, $!));
    return undef;
  }

  my $document = _get_parser_info($self, $document_descriptor);

  return $document;
}


# Used in tests under tp/t.
sub parse_texi_piece($$;$$)
{
  my ($self, $text, $line_nr, $no_store) = @_;

  return undef if (!defined($text) or !defined($self));

  $line_nr = 1 if (not defined($line_nr));

  my $document_descriptor = parse_piece($self, $text, $line_nr);

  my $document = _get_parser_info($self, $document_descriptor, $no_store);

  return $document;
}

# Used in tests under tp/t.
sub parse_texi_text($$;$)
{
  my ($self, $text, $line_nr) = @_;

  return undef if (!defined($text) or !defined($self));

  $line_nr = 1 if (not defined($line_nr));

  my $document_descriptor = parse_text($self, $text, $line_nr);

  my $document = _get_parser_info($self, $document_descriptor);

  return $document;
}

sub parse_texi_line($$;$$)
{
  my ($self, $text, $line_nr, $no_store) = @_;

  return undef if (!defined($text) or !defined($self));

  $line_nr = 1 if (not defined($line_nr));

  my $document_descriptor = parse_string($self, $text, $line_nr);

  my $document = _get_parser_info($self, $document_descriptor, $no_store);

  return $document->tree();
}

# Only used in a test, not documented, there for symmetry with document
sub registrar($)
{
  my $self = shift;
  return $self->{'registrar'};
}

sub errors($)
{
  my $self = shift;
  my $registrar = $self->{'registrar'};
  if (!$registrar) {
    return undef;
  }
  my ($error_warnings_list, $error_count) = $registrar->errors();

  $registrar->clear();

  return ($error_warnings_list, $error_count);
}

1;
__END__

The POD documentation of Texinfo::Parser is in Texinfo::ParserNonXS.
