# Report.pm: prepare error messages.
#
# Copyright 2010-2020 Free Software Foundation, Inc.
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

package Texinfo::Report;

require Exporter;
use vars qw(@ISA @EXPORT @EXPORT_OK %EXPORT_TAGS);
@ISA = qw(Exporter);

%EXPORT_TAGS = ( 'all' => [ qw(
  errors
) ] );

@EXPORT_OK = ( @{ $EXPORT_TAGS{'all'} } );

@EXPORT = qw(
);

use 5.00405;
use strict;

# for fileparse
use File::Basename;

use Locale::Messages;

my $messages_textdomain = 'texinfo';

# this module does not use Texinfo::Common, therefore does not
# obtain those functions, they are defined here
sub __($) {
  my $msgid = shift;
  return Locale::Messages::dgettext($messages_textdomain, $msgid);
}

sub __p($$) {
  my $context = shift;
  my $msgid = shift;
  return Locale::Messages::dpgettext($messages_textdomain, $context, $msgid);
}



sub new(;$)
{
  my $self = shift;
  # if there is no argument, setup a separate Texinfo::Report object,
  # otherwise the structure is added to the converter, nothing is "blessed".
  if (not defined($self)) {
    $self = {};
    bless $self;
  }
  $self->{'errors_warnings'} = [];
  #print STDERR "REPORT NEW $self $self->{'errors_warnings'}\n";
  $self->{'errors_nrs'} = 0;
  return $self;
}

# return the errors and warnings
sub errors($)
{
  my $self = shift;
  return ($self->{'errors_warnings'}, $self->{'error_nrs'});
}

# format a line warning
sub line_warn($$$$)
{
  my $self = shift;
  my $configuration_informations = shift;
  my $text = shift;
  chomp ($text);
  my $line_number = shift;
  return if (!defined($line_number));
  my $file = $line_number->{'file_name'};
  # otherwise out of source build fail since the file names are different
  my ($directories, $suffix);
  ($file, $directories, $suffix) = fileparse($file)
    if ($configuration_informations->get_conf('TEST'));
  my $warn_line;
  if ($line_number->{'macro'} ne '') {
    $warn_line = sprintf(__p("Texinfo source file warning",
                             "%s:%d: warning: %s (possibly involving \@%s)\n"),
             $file, $line_number->{'line_nr'}, $text, $line_number->{'macro'});
  } else {
    $warn_line = sprintf(__p("Texinfo source file warning", 
                                    "%s:%d: warning: %s\n"),
                         $file, $line_number->{'line_nr'}, $text);
  }
  warn $warn_line if ($configuration_informations->get_conf('DEBUG'));
  push @{$self->{'errors_warnings'}},
       { 'type' => 'warning', 'text' => $text, 'error_line' => $warn_line,
         %{$line_number} };
}

# format a line error
sub line_error($$$$)
{
  my $self = shift;
  my $configuration_informations = shift;
  my $text = shift;
  chomp ($text);
  my $line_number = shift;
  if (defined($line_number)) {
    my $file = $line_number->{'file_name'};
    my ($directories, $suffix);
    ($file, $directories, $suffix) = fileparse($file)
       if ($configuration_informations->get_conf('TEST'));
    my $macro_text = '';
    $macro_text = " (possibly involving \@$line_number->{'macro'})"
       if ($line_number->{'macro'} ne '');
    my $error_text = "$file:$line_number->{'line_nr'}: $text$macro_text\n";
    warn "$error_text" if ($configuration_informations->get_conf('DEBUG'));
    push @{$self->{'errors_warnings'}},
         { 'type' => 'error', 'text' => $text, 'error_line' => $error_text,
           %{$line_number} };
  }
  $self->{'error_nrs'}++;
}

sub document_warn($$$)
{
  my $self = shift;
  my $configuration_informations = shift;
  my $text = shift;
  chomp($text);

  my $warn_line;
  if (defined($configuration_informations->get_conf('PROGRAM'))
      and $configuration_informations->get_conf('PROGRAM') ne '') {
    $warn_line = sprintf(__p("whole document warning", "%s: warning: %s\n"), 
                  $configuration_informations->get_conf('PROGRAM'), $text);
  } else {
    $warn_line = sprintf(__p("whole document warning", "warning: %s\n"), 
                         $text);
  }
  push @{$self->{'errors_warnings'}},
    { 'type' => 'warning', 'text' => $text, 'error_line' => $warn_line };
}

sub document_error($$$)
{
  my $self = shift;
  my $configuration_informations = shift;
  my $text = shift;
  chomp($text);
  my $error_line;
  if (defined($configuration_informations->get_conf('PROGRAM'))
      and $configuration_informations->get_conf('PROGRAM') ne '') {
    $error_line = sprintf("%s: %s\n",
          $configuration_informations->get_conf('PROGRAM'), $text);
  } else {
    $error_line = "$text\n";
  }
  push @{$self->{'errors_warnings'}},
    { 'type' => 'error', 'text' => $text, 'error_line' => $error_line };
  $self->{'error_nrs'}++;
}

sub file_line_warn($$$;$)
{
  my $self = shift;
  my $text = shift;
  chomp($text);
  my $file = shift;
  my $line_nr = shift;

  my $warn_line;
  if (!defined($file)) {
    $warn_line = sprintf(__p("file warning", "warning: %s\n"), $text);
  } elsif (!defined($line_nr)) {
    $warn_line = sprintf(__p("file warning", "%s: warning: %s\n"), 
                         $file, $text);
  } else {
    $warn_line = sprintf(__p("file warning", "%s:%d: warning: %s\n"), 
                         $file, $line_nr, $text);
  }
  #print STDERR "REPORT FILE_LINE_WARN $self $self->{'errors_warnings'}\n";
  push @{$self->{'errors_warnings'}},
    { 'type' => 'warning', 'text' => $text, 'error_line' => $warn_line};
}

sub file_line_error($$$;$)
{
  my $self = shift;
  my $text = shift;
  chomp($text);
  my $file = shift;
  my $line_nr = shift;

  my $error_line;
  if (!defined($file)) {
    $error_line = "$text\n";
  } elsif (!defined($line_nr)) {
    $error_line = "$file: $text\n";
  } else {
    $error_line = "$file:$line_nr: $text\n";
  }
  #print STDERR "REPORT FILE_LINE_WARN $self $self->{'errors_warnings'}\n";
  push @{$self->{'errors_warnings'}},
    { 'type' => 'error', 'text' => $text, 'error_line' => $error_line};
  $self->{'error_nrs'}++;
}


1;

__END__

=head1 NAME

Texinfo::Report - Error storing for Texinfo modules

=head1 SYNOPSIS

  use Texinfo::Report;

  my $registrar = Texinfo::Report::new();
  
  if ($warning_happened) {
    $registrar->line_warn($converter, sprintf(__("\@%s is wrongly used"),
                       $current->{'cmdname'}), $current->{'line_nr'});
  }
  
  my ($errors, $errors_count) = $registrar->errors();
  foreach my $error_message (@$errors) {
    warn $error_message->{'error_line'};
  }

=head1 DESCRIPTION

The Texinfo::Report module helps with error handling.  It is
used by the Texinfo modules Texinfo::Parser and 
Texinfo::Convert::Converter.  To use this module, either create
a new Texinfo::Report object or initialize another object 
such as to be able to call Texinfo::Report methods.  In any
case, C<Texinfo::Report::new()> is called to setup the module.

Besides the C<new> method, C<errors> is used for reporting errors, and the
other methods to store errors (and warnings).

=head1 METHODS

No method is exported in the default case.  

The C<new> method initializes Texinfo::Report related fields.
The errors collected are available through the C<errors> method, the other
methods allow registering errors and warnings.

=over

=item my $registrar = Texinfo::Report::new()

=item $converter->Texinfo::Report::new()

If called without argument, a Texinfo::Report object is initialized and
returned.  This is how the module is used in the Texinfo Parsers, as
a separate object.

If called on a C<$converter>, the C<$converter> is initialized itself
such as to be able to call Texinfo::Report methods.  It is how it is
used in the Converters.

=item ($error_warnings_list, $error_count) = errors ($registrar)

This function returns as I<$error_count> the count of errors since
calling C<new>.  The I<$error_warnings_list> is an array of hash references
one for each error, warning or error line continuation.  Each of these has 
the following keys:

=over

=item type

May be C<warning>, or C<error>.

=item text

The text of the error.

=item error_line

The text of the error formatted with the file name, line number and macro
name, as needed.

=item line_nr

The line number of the error or warning.

=item file_name

The file name where the error or warning occurs.

=item macro

The user macro name that is expanded at the location of 
the error or warning.

=back

=item $registrar->line_warn($text, $configuration_informations, $line_nr)

=item $registrar->line_error($text, $configuration_informations, $line_nr)

Register a warning or an error.  The I<$text> is the text of the
error or warning.  The I<$configuration_informations> object gives
some information that can modify the messages or their delivery.
The optional I<$line_nr> holds the information on the error or 
warning location.  It is associated with the I<line_nr> key of
Texinfo tree elements as described in L<Texinfo::Parser/line_nr>
for the @-commands.  The I<$line_nr> structure is described
in L<errors|($error_warnings_list, $error_count) = errors ($registrar)>
above.

=item $registrar->document_warn($text, $configuration_informations)

=item $registrar->document_error($text, $configuration_informations)

Register a document-wide error or warning.  I<$text> is the error or
warning message.  The I<$configuration_informations> object gives
some information that can modify the messages or their delivery.

=item $registrar->file_line_warn($text, $file, $line_nr)

Register the warning message I<$text> for file I<$file>, with, optionally
the line I<$line_nr> in the file.

=item $registrar->file_line_error($text, $file, $line_nr)

Register the error message I<$text> for file I<$file>, with, optionally
the line I<$line_nr> in the file.

=back

=head1 AUTHOR

Patrice Dumas, E<lt>pertusus@free.frE<gt>

=cut
