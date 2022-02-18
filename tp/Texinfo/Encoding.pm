# Encoding.pm: Encodings definitions and aliases.
#
# Copyright 2010, 2011, 2012 Free Software Foundation, Inc.
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

package Texinfo::Encoding;

use strict;

use Encode qw(find_encoding);

require Exporter;
use vars qw(@ISA @EXPORT_OK);
@ISA = qw(Exporter);

@EXPORT_OK = qw( encoding_alias );

my %canonical_texinfo_encodings;
# These are the encodings from the texinfo manual
foreach my $canonical_encoding ('us-ascii', 'utf-8', 'iso-8859-1',
                  'iso-8859-15', 'iso-8859-2', 'koi8-r', 'koi8-u') {
  $canonical_texinfo_encodings{$canonical_encoding} = 1;
}

sub encoding_alias($)
{
  my $encoding = shift;
  my $enc = find_encoding($encoding);
  my ($perl_encoding, $canonical_output_encoding);
  if (defined($enc)) {
    $perl_encoding = $enc->name();
    # mime_name() is upper-case, our keys are lower case, set to lower case
    $canonical_output_encoding = lc($enc->mime_name());
  }
  my $canonical_texinfo_encoding;
  foreach my $possible_encoding ($encoding, $canonical_output_encoding,
                                            $perl_encoding) {
    if (defined($possible_encoding)
        and $canonical_texinfo_encodings{lc($possible_encoding)}) {
      $canonical_texinfo_encoding = $possible_encoding;
    }
  }
  return ($canonical_texinfo_encoding, $perl_encoding, $canonical_output_encoding);
}

1;

__END__

=head1 NAME

Texinfo::Encoding - Encodings and encoding aliases

=head1 SYNOPSIS

  use Texinfo::Encoding qw(encoding_alias);

  my ($canonical_texinfo_encoding, $perl_encoding,
      $canonical_output_encoding) = encoding_alias($encoding);

=head1 NOTES

The Texinfo Perl module main purpose is to be used in C<texi2any> to convert
Texinfo to other formats.  There is no promise of API stability.

=head1 DESCRIPTION

Texinfo::Encoding takes care of encoding definition and aliasing.

=head1 METHODS

=over

=item ($canonical_texinfo_encoding, $perl_encoding, $canonical_output_encoding) = encoding_alias($encoding)
X<C<encoding_alias>>

Taking an encoding name as argument, the function returns the
corresponding canonical Texinfo encoding I<$canonical_texinfo_encoding>
as described in the Texinfo manual (or C<undef>), an encoding name suitable
for perl I<$perl_encoding>, and an encoding name suitable for most
output formats, especially HTML, I<$canonical_output_encoding>.

=back

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
