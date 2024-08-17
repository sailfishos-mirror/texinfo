use strict;
use utf8;

use lib '.';
use Texinfo::ModulePath (undef, undef, undef, 'updirs' => 2);

use Test::More;

BEGIN { plan tests => 7; }

use Texinfo::Convert::HTML;
use Texinfo::Convert::Info;
use Texinfo::Convert::DocBook;

# invalid converter configuration option
my $html_converter = Texinfo::Convert::HTML->converter({'toto' => 1});
# cannot be used to test, as it triggers a call to confess
#my $toto = $html_converter->get_conf('toto');
my $html_converted_format = $html_converter->{'converted_format'};
#print STDERR "HTML: c '$html_converted_format'\n";
is ($html_converted_format, 'html', 'HTML converted_format');
my $html_output_format = $html_converter->{'output_format'};
#print STDERR "HTML: o '$html_output_format'\n";
is ($html_output_format, undef, 'HTML output_format unset');

my $html_converter_with_output_format
  = Texinfo::Convert::HTML->converter({'output_format' => 'my format'});
my $html_output_format_with_output_format
  = $html_converter_with_output_format->{'output_format'};
#print STDERR "HTML: s o '$html_output_format_with_output_format'\n";
is ($html_output_format_with_output_format, 'my format',
                                            'HTML output_format set');

my $info_converter = Texinfo::Convert::Info->converter({'titi' => 1});
my $info_converted_format = $info_converter->{'converted_format'};
#print STDERR "Info: '$info_converted_format'\n";
is ($info_converted_format, '', 'Info converted_format');

my $docbook_converter = Texinfo::Convert::DocBook->converter();
my $docbook_converted_format = $docbook_converter->{'converted_format'};
#print STDERR "DocBook: '$docbook_converted_format'\n";
is ($docbook_converted_format, 'docbook', 'DocBook converted_format');
my $docbook_output_format = $docbook_converter->{'output_format'};
#print STDERR "DocBook: o '$docbook_output_format'\n";
is ($docbook_output_format, undef, 'DocBook output_format unset');

my $docbook_converter_with_output_format
  = Texinfo::Convert::DocBook->converter({'output_format' => 'my dbk'});
my $docbook_output_format_with_output_format
  = $docbook_converter_with_output_format->{'output_format'};
#print STDERR "DocBook: s o '$docbook_output_format_with_output_format'\n";
is ($docbook_output_format_with_output_format, 'my dbk',
                                               'DocBook output_format set');


