# TexinfoSXML.pm: output tree as Texinfo SXML.
#
# Copyright 2013, 2014, 2015, 2016, 2017, 2018 Free Software Foundation, Inc.
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
#
# This is a simple subclass of Texinfo::Convert::TexinfoXML that overrides
# format specific functions.

package Texinfo::Convert::TexinfoSXML;

use 5.00405;
use strict;

use Texinfo::Convert::TexinfoXML;
use Carp qw(cluck);

use vars qw($VERSION @ISA);
@ISA = qw(Texinfo::Convert::TexinfoXML);

$VERSION = '6.8dev';


# SXML specific
my %defaults = (
  'ENABLE_ENCODING'      => 0,
  'FORMAT_MENU'          => 'menu',
  'EXTENSION'            => 'sxml',
  'OUTPUT_ENCODING_NAME' => 'utf-8',
  'OUTFILE'              => undef,
  'SUBDIR'               => undef,
  'converted_format'     => 'texinfosxml',
  'SPLIT'                => 0,
  'documentlanguage'     => 'en',
);

sub converter_defaults($$)
{
  return %defaults;
}

# format specific.  Used in few places where plain text is used outside
# of attributes.
sub protect_text($$)
{
  my $self = shift;
  my $string = shift;
  $string =~ s/\\/\\\\/g;
  $string =~ s/"/\\"/g;
  return $string;
}

sub _sxml_attributes($$)
{
  my $self = shift;
  my $attributes = shift;
  if (ref($attributes) ne 'ARRAY') {
    cluck "attributes not an array($attributes).";
  }
  my $result = '(@';
  foreach my $attribute_spec (@$attributes) {
    if (ref($attribute_spec) ne 'ARRAY') {
      cluck "attribute_spec not an array($attribute_spec).";
    }

    $result .= " ($attribute_spec->[0] \"".
          $self->protect_text($attribute_spec->[1])."\")";
  }
  return $result . ')';
}

# format specific
sub element($$$)
{
  my $self = shift;
  my $element_name = shift;
  my $attributes = shift;
  my $result = '('.$element_name." ";
  $attributes = [] if (!defined($attributes));
  $result .= $self->_sxml_attributes($attributes);
  $result .= ')';
  return $result;
}

# format specific
sub open_element($$$)
{
  my $self = shift;
  my $element_name = shift;
  my $attributes = shift;
  my $result = '('.$element_name." ";
  $attributes = [] if (!defined($attributes));
  $result .= $self->_sxml_attributes($attributes);
  $result .= " ";
  return $result;
}

# format specific
sub close_element($$)
{
  my $self = shift;
  my $element_name = shift;
  my $result= ')';
  return $result;
}

my %no_arg_commands_formatting = %Texinfo::Convert::TexinfoXML::no_arg_commands_formatting;

# format specific
sub format_atom($$)
{
  my $self = shift;
  my $atom = shift;
  if ($no_arg_commands_formatting{$atom} ne '') {
    return '('.$no_arg_commands_formatting{$atom}.' (@))';
  } else {
    return '';
  }
}

# format specific
#FIXME
sub format_comment($$)
{
  my $self = shift;
  my $string = shift;

  return '';
}

# format specific
sub format_text($$)
{
  my $self = shift;
  my $element = shift;
  my $result = $self->protect_text($element->{'text'});
  if (! defined($element->{'type'}) or $element->{'type'} ne 'raw') {
    if (!$self->{'document_context'}->[-1]->{'monospace'}->[-1]) {
      $result =~ s/``/" (textldquo (@)) "/g;
      $result =~ s/\'\'/" (textrdquo (@)) "/g;
      $result =~ s/---/" (textmdash (@)) "/g;
      $result =~ s/--/" (textndash (@)) "/g;
      $result =~ s/'/" (textrsquo (@)) "/g;
      $result =~ s/`/" (textlsquo (@)) "/g;
    }
  }
  return '"'.$result.'" ';
}

# output format specific
sub format_header($$$)
{
  my $self = shift;
  my $output_file = shift;
  my $output_filename = shift;

  my $header = '';
  my $encoding = '';
  if ($self->get_conf('OUTPUT_ENCODING_NAME')
      and $self->get_conf('OUTPUT_ENCODING_NAME') ne 'utf-8') {
    $encoding = $self->get_conf('OUTPUT_ENCODING_NAME');
  }
  if ($output_file ne '') {
    my $output_filename = $output_filename;
  }
  return $header;
}

1;
