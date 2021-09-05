# Utils.pm: miscellaneous functions usable in simple converters
#
# Copyright 2010-2021 Free Software Foundation, Inc.
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
# This module contains the methods that can be used in converters
# even if they do not inherit Texinfo::Convert::Converter.  In practice
# it means that the converter argument will not be defined and
# there will be no error reporting nor string translation in that case.
# Some methods still require a converter, it means that they are used
# conditionally in some converters that do not inherit
# Texinfo::Convert::Converter but can have gotten a converter object
# (case of Texinfo::Convert::Text).


package Texinfo::Convert::Utils;

use strict;

use Texinfo::Common;
# only needed in debugging comments.  Ok to keep it here anyway.
use Texinfo::Convert::Texinfo;

# debugging
use Carp qw(cluck);

require Exporter;

use vars qw($VERSION @ISA @EXPORT_OK %EXPORT_TAGS);
@ISA = qw(Exporter);

%EXPORT_TAGS = ( 'all' => [ qw(
definition_category
expand_today
expand_verbatiminclude
numbered_heading
) ] );

@EXPORT_OK = ( @{ $EXPORT_TAGS{'all'} } );

$VERSION = '6.8dev';


our @MONTH_NAMES =
    (
     'January', 'February', 'March', 'April', 'May',
     'June', 'July', 'August', 'September', 'October',
     'November', 'December'
    );

# this method requires a converter.
sub expand_today($)
{
  my $self = shift;
  if ($self->get_conf('TEST')) {
    return {'text' => 'a sunny day'};
  }

  my ($sec, $min, $hour, $mday, $mon, $year, $wday, $yday, $isdst)
    = ($ENV{SOURCE_DATE_EPOCH}
        ? gmtime($ENV{SOURCE_DATE_EPOCH})
        : localtime(time));
  # See https://reproducible-builds.org/specs/source-date-epoch/.

  $year += ($year < 70) ? 2000 : 1900;
  return $self->gdt('{month} {day}, {year}',
          { 'month' => $self->gdt($MONTH_NAMES[$mon]),
            'day' => $mday, 'year' => $year });
}

sub definition_arguments_content($)
{
  my $root = shift;

  return undef if (!defined($root->{'extra'})
                    or !defined($root->{'extra'}->{'def_parsed_hash'}));
  my @args = @{$root->{'args'}->[0]->{'contents'}};
  while (@args) {
    last if (defined($args[0]->{'extra'})
             and defined($args[0]->{'extra'}->{'def_role'})
             and $args[0]->{'extra'}->{'def_role'} ne 'spaces'
             and !$root->{'extra'}->{'def_parsed_hash'}
                       ->{$args[0]->{'extra'}->{'def_role'}});
    shift @args;
  }
  if (scalar(@args) > 0) {
    return \@args;
  } else {
    return undef;
  }
}

# $SELF converter argument is optional
sub definition_category($$)
{
  my $self = shift;
  my $current = shift;

  return undef if (!$current->{'extra'}
      or !$current->{'extra'}->{'def_parsed_hash'});

  my $arg_category = $current->{'extra'}->{'def_parsed_hash'}->{'category'};
  my $arg_class = $current->{'extra'}->{'def_parsed_hash'}->{'class'};

  return $arg_category
    if (!defined($arg_class));
  
  my $style = $Texinfo::Common::command_index{$current->{'extra'}->{'def_command'}};
  if ($style eq 'fn') {
    if ($self) {
      return $self->gdt('{category} on {class}', { 'category' => $arg_category,
                                          'class' => $arg_class });
    } else {
      return {'contents' => [$arg_category, {'text' => ' on '}, $arg_class]};
    }
  } elsif ($style eq 'vr') {
    if ($self) {
      return $self->gdt('{category} of {class}', { 'category' => $arg_category,
                                          'class' => $arg_class });
    } else {
      return {'contents' => [$arg_category, {'text' => ' of '}, $arg_class]};
    }
  }
}

# find the accent commands stack and the innermost text contents
sub find_innermost_accent_contents($;$)
{
  my $current = shift;
  my $encoding = shift;
  my @accent_commands = ();
  my $debug = 0;
 ACCENT:
  while (1) {
    # the following can happen if called with a bad tree
    if (!$current->{'cmdname'}
        or !$Texinfo::Common::accent_commands{$current->{'cmdname'}}) {
      #print STDERR "BUG: Not an accent command in accent\n";
      cluck "BUG: Not an accent command in accent\n";
      #print STDERR Texinfo::Convert::Texinfo::convert_to_texinfo($current)."\n";
      #print STDERR Data::Dumper->Dump([$current]);
      last;
    }
    push @accent_commands, $current;
    # A bogus accent, that may happen
    if (!$current->{'args'}) {
      return ([], \@accent_commands);
    }
    my $arg = $current->{'args'}->[0];
    if (!$arg->{'contents'}) {
      print STDERR "BUG: No content in accent command\n";
      #print STDERR Data::Dumper->Dump([$current]);
      #print STDERR Texinfo::Convert::Texinfo::convert_to_texinfo($current)."\n";
      return ([], \@accent_commands);
    }
    # inside the argument of an accent
    my $text_contents = [];
    foreach my $content (@{$arg->{'contents'}}) {
      if (!($content->{'cmdname'} and ($content->{'cmdname'} eq 'c'
                                  or $content->{'cmdname'} eq 'comment'))) {
        if ($content->{'cmdname'} and $Texinfo::Common::accent_commands{$content->{'cmdname'}}) {
          $current = $content;
          next ACCENT;
        } else {
          push @$text_contents, $content;
        }
      }
    }
    # we go here if there was no nested accent
    return ($text_contents, \@accent_commands);
  }
}

# $REGISTRAR argument (in practice, a converter) is optional.
# $CONFIGURATION_INFORMATIONS is also optional, but without this
# argument and the 'INCLUDE_DIRECTORIES' available through
# get_conf(), the included file can only be found in specific
# circumstances.
sub expand_verbatiminclude($$$)
{
  my $registrar = shift;
  my $configuration_informations = shift;
  my $current = shift;

  return unless ($current->{'extra'} and defined($current->{'extra'}->{'text_arg'}));
  my $text = $current->{'extra'}->{'text_arg'};
  my $file = Texinfo::Common::locate_include_file($configuration_informations, $text);

  my $verbatiminclude;

  if (defined($file)) {
    if (!open(VERBINCLUDE, $file)) {
      if ($registrar) {
        $registrar->line_error($configuration_informations,
                               sprintf(__("could not read %s: %s"), $file, $!),
                               $current->{'line_nr'});
      }
    } else {
      if (defined $current->{'extra'}->{'input_perl_encoding'}) {
        binmode(VERBINCLUDE, ":encoding("
                             . $current->{'extra'}->{'input_perl_encoding'}
                             . ")");
      }
      $verbatiminclude = { 'cmdname' => 'verbatim',
                           'parent' => $current->{'parent'},
                           'extra' =>
                        {'text_arg' => $current->{'extra'}->{'text_arg'}} };
      while (<VERBINCLUDE>) {
        push @{$verbatiminclude->{'contents'}},
                  {'type' => 'raw', 'text' => $_ };
      }
      if (!close (VERBINCLUDE)) {
        if ($registrar) {
          $registrar->document_warn(
                 $configuration_informations, sprintf(__(
                      "error on closing \@verbatiminclude file %s: %s"),
                             $file, $!));
        }
      }
    }
  } elsif ($registrar) {
    $registrar->line_error($configuration_informations,
                           sprintf(__("\@%s: could not find %s"),
                                        $current->{'cmdname'}, $text),
                           $current->{'line_nr'});
  }
  return $verbatiminclude;
}

sub numbered_heading($$$;$)
{
  my $self = shift;
  my $current = shift;
  my $text = shift;
  my $numbered = shift;

  my $number;
  if (defined($current->{'number'}) and ($numbered or !defined($numbered))) {
    $number = $current->{'number'};
  }

  my $result;
  if ($self) {
    if (defined($number)) {
      if ($current->{'cmdname'} eq 'appendix' and $current->{'level'} == 1) {
        $result = $self->gdt('Appendix {number} {section_title}',
                   {'number' => $number, 'section_title' => $text},
                   'translated_text');
      } else {
        $result = $self->gdt('{number} {section_title}',
                   {'number' => $number, 'section_title' => $text},
                   'translated_text');
      }
    } else {
      $result = $text;
    }
  } else {
    $result = $text;
    $result = $number.' '.$result if (defined($number));
    if ($current->{'cmdname'} eq 'appendix' and $current->{'level'} == 1) {
      $result = 'Appendix '.$result;
    }
  }
  chomp ($result);
  return $result;
}

# this requires a converter argument.  It is defined here, in order
# to hide from the caller the 'translated_commands' converter key
# that is set by Texinfo::Convert::Converter.  This is especially
# relevant for converters that do not inherit Texinfo::Convert::Converter
# and call the method on a converter object they got (case of
# Texinfo::Convert::Text).
sub translated_command_tree($$)
{
  my $self = shift;
  my $cmdname = shift;
  if ($self->{'translated_commands'}->{$cmdname}) {
    return $self->gdt($self->{'translated_commands'}->{$cmdname});
  }
  return undef;
}

1;

__END__

=head1 NAME

Texinfo::Convert::Utils - miscellaneous functions usable in simple converters

=head1 SYNOPSIS

  use Texinfo::Convert::Utils qw(expand_today expand_verbatiminclude);
  
  my $today_tree = expand_today($converter);
  my $verbatiminclude_tree
     = expand_verbatiminclude(undef, $converter, $verbatiminclude);

=head1 DESCRIPTION

miscellaneous methods that may be useful for backends converting texinfo
trees.  This module contains the methods that can be used in converters
that do not inherit Texinfo::Convert::Converter.

=head1 METHODS

No method is exported in the default case.

Most methods takes a I<$converter> as argument, in general optionally,
to get some information and use methods for error reporting,
see L<Texinfo::Convert::Converter> and L<Texinfo::Report>.  Also
to tranlate strings, see L<Texinfo::Translations>.

=over

=item $tree = definition_category($converter, $def_line)

The I<$converter> argument may be undef.  I<$def_line> is a
C<def_line> texinfo tree container.  This function
returns a texinfo tree corresponding to the category of the
I<$def_line> taking the class into account, if there is one.
If I<$converter> is not defined, the resulting string won't be
translated.

=item $tree = expand_today($converter)

Expand today's date, as a texinfo tree with translations.

=item $tree = expand_verbatiminclude($registrar, $configuration_informations, $verbatiminclude)

The I<$registrar> argument may be undef.  I<$verbatiminclude> is a
C<@verbatiminclude> tree element.  This function returns a
C<@verbatim> tree elements after finding the included file and
reading it.  If I<$registrar> is not defined, errors messages are
not registered.

=item $result = numbered_heading ($converter, $heading_element, $heading_text, $do_number)

The I<$converter> argument may be undef.  I<$heading_element> is
a heading command tree element.  I<$heading_text> is the already
formatted heading text.  if the I<$do_number> optional argument is
defined and false, no number is used and the text is returned as is.
This function returns the heading with a number and the appendix
part if needed.  If I<$converter> is not defined, the resulting
string won't be translated.

=head1 SEE ALSO

L<Texinfo::Convert::Converter> and L<Texinfo::Translations>.

=head1 AUTHOR

Patrice Dumas, E<lt>pertusus@free.frE<gt>

=cut
