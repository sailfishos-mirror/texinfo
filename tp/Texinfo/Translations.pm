# Translations.pm: translate strings.
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

package Texinfo::Translations;

require Exporter;
use vars qw(@ISA @EXPORT @EXPORT_OK %EXPORT_TAGS);
@ISA = qw(Exporter);

%EXPORT_TAGS = ( 'all' => [ qw(
  gdt
) ] );

@EXPORT_OK = ( @{ $EXPORT_TAGS{'all'} } );

@EXPORT = qw(
);

use 5.00405;
use strict;

use POSIX qw(setlocale LC_ALL);
use Locale::Messages;
# to be able to load a parser if none was given to gdt.
use Texinfo::Parser;

# we want a reliable way to switch locale for the document
# strings translations so we don't use the system gettext.
Locale::Messages->select_package ('gettext_pp');

# i18n

my $DEFAULT_LANGUAGE = 'en';

my $messages_textdomain = 'texinfo';
my $strings_textdomain = 'texinfo_document';

# libintl converts between encodings but doesn't decode them into the
# perl internal format.  This is only called if the encoding is a proper
# perl encoding.
sub _encode_i18n_string($$)
{
  my $string = shift;
  my $encoding = shift;
  return Encode::decode($encoding, $string);
}

# Get document translation - handle translations of in-document strings.
# Return a parsed Texinfo tree
sub gdt($$;$$)
{
  my ($self, $message, $context, $type) = @_;

  my $re = join '|', map { quotemeta $_ } keys %$context
      if (defined($context) and ref($context));

  my $saved_LC_ALL = POSIX::setlocale(LC_ALL);
  my $saved_LANGUAGE = $ENV{'LANGUAGE'};

  # We need to set LC_MESSAGES to a valid locale other than "C" or "POSIX"
  # for translation via LANGUAGE to work.  (The locale is "C" if the
  # tests are being run.)
  #   Set LC_ALL rather than LC_MESSAGES for Perl for MS-Windows.

  my $locale;
  our $working_locale;
  if ($working_locale) {
    $locale = POSIX::setlocale(LC_ALL, $working_locale);
  }
  if (!$locale) {
    $locale = POSIX::setlocale(LC_ALL, "en_US.UTF-8");
  }
  if (!$locale) {
    $locale = POSIX::setlocale(LC_ALL, "en_US")
  }
  our $locale_command;
  if (!$locale and !$locale_command) {
    $locale_command = "locale -a";
    my @locales = split("\n", `$locale_command`);
    if ($? == 0) {
      for my $try (@locales) {
        next if $try eq 'C' or $try eq 'POSIX';
        $locale = POSIX::setlocale(LC_ALL, $try);
        last if $locale;
      }
    }
  }
  $working_locale = $locale;


  Locale::Messages::textdomain($strings_textdomain);

  # FIXME do this only once when encoding is seen (or at beginning)
  # instead of here, each time that gdt is called?
  my $encoding;
  if ($self->get_conf('OUTPUT_ENCODING_NAME')) {
    $encoding = $self->get_conf('OUTPUT_ENCODING_NAME');
  }
  Locale::Messages::bind_textdomain_codeset($strings_textdomain, $encoding)
    if ($encoding and $encoding ne 'us-ascii');
  if (!($encoding and $encoding eq 'us-ascii')) {
    my $perl_encoding;
    if ($self->get_conf('OUTPUT_PERL_ENCODING')) {
      $perl_encoding = $self->get_conf('OUTPUT_PERL_ENCODING');
    }
    if ($perl_encoding) {
      Locale::Messages::bind_textdomain_filter($strings_textdomain,
        \&_encode_i18n_string, $perl_encoding);
    }
  }

  # This needs to be dynamic in case there is an untranslated string
  # from another language that needs to be translated.
  # FIXME make it an argument
  my $lang = $self->get_conf('documentlanguage');
  $lang = $DEFAULT_LANGUAGE if (!defined($lang));
  my @langs = ($lang);
  if ($lang =~ /^([a-z]+)_([A-Z]+)/) {
    my $main_lang = $1;
    my $region_code = $2;
    push @langs, $main_lang;
  }

  my $locales = '';

  foreach my $language (@langs) {
    if ($encoding) {
      $locales .= "$language.$encoding:";
    } else {
      $locales .= "$language:";
    }
    # always try us-ascii, the charset should always be a subset of
    # all charset, and should resort to @-commands if needed for non
    # ascii characters
    if (!$encoding or ($encoding and $encoding ne 'us-ascii')) {
      $locales .= "$language.us-ascii:";
    }
  }
  $locales =~ s/:$//;

  Locale::Messages::nl_putenv("LANGUAGE=$locales");

  my $translated_message = Locale::Messages::gettext($message);

  Locale::Messages::textdomain($messages_textdomain);
  if (!defined($saved_LANGUAGE)) {
    delete ($ENV{'LANGUAGE'});
  } else {
    $ENV{'LANGUAGE'} = $saved_LANGUAGE;
  }
  if (defined($saved_LC_ALL)) {
    POSIX::setlocale(LC_ALL, $saved_LC_ALL);
  } else {
    POSIX::setlocale(LC_ALL, '');
  }

  my $translation_result = $translated_message;

  if ($type and $type eq 'translated_text') {
    if (defined($re)) {
      # next line taken from libintl perl, copyright Guido. sub __expand
      $translation_result =~ s/\{($re)\}/defined $context->{$1} ? $context->{$1} : "{$1}"/ge;
    }
    return $translation_result;
  }

  my $parser_conf;
  # we change the substituted brace-enclosed strings to values, that
  # way they are substituted, including when they are Texinfo trees.
  # a _ is prepended to avoid clashing with other values, although since
  # the parser is a new one there should not be any problem anyway.
  if (defined($re)) {
    # next line taken from libintl perl, copyright Guido. sub __expand
    $translation_result =~ s/\{($re)\}/\@txiinternalvalue\{$1\}/g;
  }

  # Don't reuse the current parser itself, as (tested) the parsing goes 
  # wrong, certainly because the parsed text can affect the parser state.
  my $current_parser;
  if (ref($self) eq 'Texinfo::Parser') {
    $current_parser = $self;
  } elsif ($self->{'parser'}) {
    $current_parser = $self->{'parser'};
  }

  if ($current_parser) {
    # 'TEST' can be used fot @today{} expansion.
    # FIXME use get_conf
    foreach my $duplicated_conf ('clickstyle', 'kbdinputstyle', 'DEBUG',
                                 'TEST') {
      $parser_conf->{$duplicated_conf} = $current_parser->{$duplicated_conf}
        if (defined($current_parser->{$duplicated_conf}));
    }
  }
  # accept @txiinternalvalue as a valid Texinfo command
  $parser_conf->{'accept_internalvalue'} = 1;
  my $parser = Texinfo::Parser::simple_parser($parser_conf);
  if ($parser->{'DEBUG'}) {
    print STDERR "GDT $translation_result\n";
  }

  my $tree = $parser->parse_texi_line($translation_result);
  my $registrar = $parser->registered_errors();
  my ($errors, $errors_count) = $registrar->errors();
  if ($errors_count) {
    warn "translation $errors_count error(s)\n";
    warn "translated message: $translated_message\n";
    warn "Error messages: \n";
    foreach my $error_message (@$errors) {
      warn $error_message->{'error_line'};
    }
  }
  $tree = _substitute ($tree, $context);
  return $tree;
}

sub _substitute_element_array ($$);
sub _substitute_element_array ($$) {
  my $array = shift; my $context = shift;

  @{$array} = map {
    if ($_->{'cmdname'} and $_->{'cmdname'} eq 'txiinternalvalue') {
      my $name = $_->{'args'}->[0]->{'text'};
      if (ref($context->{$name}) eq 'HASH') {
        $context->{$name};
      } elsif (ref($context->{$name}) eq 'ARRAY') {
        @{$context->{$name}};
      } elsif (ref($context->{$name}) eq '') {
        {'text' => $context->{$name}};
      } else {
        (); # undefined - shouldn't happen?
      }
    } else {
      _substitute($_, $context);
      ( $_ );
    }
  } @{$array};
}

# Recursively substitute @txiinternalvalue elements in $TREE with 
# their values given in $CONTEXT.
sub _substitute ($$);
sub _substitute ($$) {
  my $tree = shift; my $context = shift;

  if ($tree->{'contents'}) {
    _substitute_element_array ($tree->{'contents'}, $context);
  }

  if ($tree->{'args'}) {
    _substitute_element_array ($tree->{'args'}, $context);
  }

  return $tree;
}


1;

__END__

=head1 NAME

Texinfo::Translations - Translations of output documents strings for Texinfo modules

=head1 SYNOPSIS

  @ISA = qw(Texinfo::Translations);

  my $tree_translated = $converter->gdt('See {reference} in @cite{{book}}',
                       {'reference' => $tree_reference,
                        'book'  => {'text' => $book_name}});


=head1 DESCRIPTION

The Texinfo::Translations module helps with string translations
in output documents.

Translation of error messages uses another interface which
is the classical gettext based perl interface.  It is not
described as it is described in details elsewhere.

=head1 METHODS

No method is exported in the default case.  

The C<gdt> method is used to translate strings to be output in 
converted documents, and return a texinfo tree.

=over

=item $tree = $converter->gdt($string, $replaced_substrings, $mode)

The I<$string> is a string to be translated.  In the default case, 
the function returns a Texinfo tree, as the string is 
interpreted as Texinfo code after
translation.  I<$replaced_substrings> is an optional 
hash reference specifying some 
substitution to be done after the translation.  The key of 
the I<$replaced_substrings> hash reference identifies what is to 
be substituted, and the value is some string, texinfo tree or array content 
that is substituted in the resulting texinfo tree.
In the string to be translated word in brace matching keys of 
I<$replaced_substrings> are replaced.

I<$mode> is an optional string which may modify how the function
behaves.  The possible values are

=over 

=item translated_text

In that case the string is not considered to be Texinfo, a plain string
that is returned after translation and substitution.  The substitutions
may only be strings in that case.

=back

For example in the following call, the string 
I<See {reference} in @cite{{book}}> is translated, then
parsed as a Texinfo string, with I<{reference}> substituted by
I<$tree_reference> in the resulting tree, and I<{book}> 
replaced by the associated texinfo tree text element:

  $tree = $converter->gdt('See {reference} in @cite{{book}}',
                       {'reference' => $tree_reference,
                        'book'  => {'text' => $book_name}});

C<gdt> uses the information in the I<$converter> to know the
encoding and documentlanguage.  More precisely, 
C<< $converter->{'encoding_name'} >>, C<< $converter->{'perl_encoding'} >>
and C<< $converter->get_conf('documentlanguage') >> are used.

C<gdt> uses a gettext-like infrastructure to retrieve the 
translated strings, using the I<texinfo_document> domain.

=back

=head1 AUTHOR

Patrice Dumas, E<lt>pertusus@free.frE<gt>

=cut
