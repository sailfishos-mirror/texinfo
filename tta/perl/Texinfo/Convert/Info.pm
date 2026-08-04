# Info.pm: output tree as Info.  XS loading
#
# Copyright 2010-2026 Free Software Foundation, Inc.
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
# along with this program.  If not, see <https://www.gnu.org/licenses/>.

package Texinfo::Convert::Info;

use 5.006;
use strict;
use warnings;

# To check if there is no erroneous autovivification
#no autovivification qw(fetch delete exists store strict);

#use Carp qw(cluck confess);

use Texinfo::Convert::Plaintext;

our @ISA = qw(Texinfo::Convert::Plaintext);

our $VERSION = '7.3dev';

# Load XS interface or interface Perl implementation
BEGIN {
  my $xs_interface;
  # Main conversion XS and NonXS interfaces loading
  if (defined($ENV{'TEXINFO_XS_INCOMPLETE'})
      and $ENV{'TEXINFO_XS_INCOMPLETE'} eq '2') {
    $xs_interface = 'ConvertInfoXS';
  }
  Texinfo::XSLoader::init (
    "Texinfo::Convert::Info",
    "Texinfo::Convert::InfoNonXS",
    $xs_interface,
    undef,
    ['texinfo', 'texinfoxs', 'texinfo-convert', 'texinfo-convertxs'],
  );
}


1;

__END__
# Automatically generated from Convert_format_template.pod

=head1 NAME

Texinfo::Convert::Info - Convert Texinfo tree to Info

=head1 SYNOPSIS

  my $converter
    = Texinfo::Convert::Info->converter({'NUMBER_SECTIONS' => 0});

  # output to files
  $converter->output($document);
  # no header nor footer output
  my $converted = $converter->convert($document);


=head1 NOTES

The Texinfo Perl module main purpose is to be used in C<texi2any> to convert
Texinfo to other formats.  There is no promise of API stability.

=head1 DESCRIPTION

Texinfo::Convert::Info converts a Texinfo tree to Info.

=head1 METHODS

=over

=item $converter = Texinfo::Convert::Info->converter($options)

Initialize converter from Texinfo to Info.

The I<$options> hash reference holds Texinfo customization options for the
converter.  These options should be Texinfo customization options
that can be passed to the converter.  Most of the customization options are
described in the Texinfo manual or in the customization API manual.  Those
customization options, when appropriate, override the document content.

See L<Texinfo::Convert::Converter> for more information.

=item $converter->output($document)

Convert a Texinfo parsed document I<$document> and output the result in files as
described in the Texinfo manual.

=item $result = $converter->convert($document)

Convert a Texinfo parsed document I<$document> and return the resulting output.

=item $result = $converter->convert_tree($tree)

Convert a Texinfo tree portion I<$tree> and return the resulting
output.  This function does not try to output a full document but only
portions.  In general it is better to call this function when conversion
is already ongoing, as it requires an association to a document and a suitably
initialized converter formatting state.

=back

=head1 AUTHOR

Patrice Dumas, E<lt>bug-texinfo@gnu.orgE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright 2010- Free Software Foundation, Inc.  See the source file for
all copyright years.

This library is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 3 of the License, or (at
your option) any later version.

=cut
