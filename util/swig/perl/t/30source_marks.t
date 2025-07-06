# Copyright 2010-2025 Free Software Foundation, Inc.
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

use Test::More; 

plan tests => 2;

use Texinfo;

ok(1, 'modules loading');

my $document = Texinfo::parse_text('@set myval toto

@macro do {a, b}
then \a\ and \b\.
@end macro

@macro onearg {gg}
OO \gg\
@end macro

View @value{myval}.  And @do {mine, yours } .
Cmd @code{@value{myval}}, @footnote{@do{ feet , foot}}

@onearg the arg

text before @onearg  another arg@comment am I there?
');

Texinfo::output_parser_error_messages($document);

my $tree = Texinfo::document_tree($document);
my $descriptor = Texinfo::register_new_reader($tree, $document);
my $reader = Texinfo::retrieve_reader_descriptor($descriptor);

# also in tta/perl/t/test_utils.pl
sub protect_perl_string($)
{
  my $string = shift;
  #if (!defined($string)) {
  #  cluck();
  #}
  $string =~ s/\\/\\\\/g;
  $string =~ s/'/\\'/g;
  # \r can be mangled upon reading if at end of line
  $string =~ s/\r/'."\\r".'/g;
  return $string;
}

my %expanded_source_mark_types;
foreach my $type ($Texinfo::SM_type_defline_continuation,
 $Texinfo::SM_type_macro_expansion, $Texinfo::SM_type_linemacro_expansion,
 $Texinfo::SM_type_value_expansion,
 $Texinfo::SM_type_ignored_conditional_block,
 $Texinfo::SM_type_expanded_conditional_command) {
  $expanded_source_mark_types{$type} = 1; 
}

#my $v = Texinfo::READER_TOKEN->new();

my $result = '';

while (1) {
  my $next_token = Texinfo::reader_read($reader);
  last if (!defined($next_token));

  # does not work
  #my $element = Texinfo::READER_TOKEN_element_get($next_token);
  my $element = $next_token->swig_element_get();
  my $category = $next_token->swig_category_get();

  next if ($category eq $Texinfo::TXI_READ_ELEMENT_END);

  my $source_marks_nr = Texinfo::element_source_marks_number($element);
  if ($source_marks_nr) {
    my $type = Texinfo::element_type($element);
    $type = '' if (!defined($type));
    $result .= $type;
    my $text = Texinfo::element_text($element);
    if ($text eq '') {
      $result .= '[T]';
    } else {
      $text =~ s/\n/\\n/g;
      $result .= "[T: $text]";
    }
    my $cmdname = Texinfo::element_cmdname($element);
    $result .= '@'.$cmdname if (defined($cmdname));
    $result .= '|'.$source_marks_nr."\n";

    for (my $i = 0; $i < $source_marks_nr; $i++) {
      my $source_mark = Texinfo::element_get_source_mark($element, $i);
      my $source_mark_type = $source_mark->swig_type_get();
      if ($expanded_source_mark_types{$source_mark_type}) {
        my $source_mark_counter = $source_mark->swig_counter_get();
        my $source_mark_status = $source_mark->swig_status_get();
        my $source_mark_position = $source_mark->swig_position_get();
        $source_mark_position = '-' if (!defined($source_mark_position));
        $result .= " $i: c:$source_mark_counter; s:$source_mark_status; ".
                   "p:$source_mark_position|";
        my $source_mark_line = $source_mark->swig_line_get();
        if (defined($source_mark_line)) {
          chomp($source_mark_line);
          $result .= "($source_mark_line)";
        }
        my $source_mark_element = $source_mark->swig_element_get();
        if (defined($source_mark_element)) {
          #print STDERR "!! ".Texinfo::tree_print_details($source_mark_element)."\n";
          $result
            .= '{'.Texinfo::convert_to_texinfo($source_mark_element).'}';
        }
        $result .= "\n";
      }
    }
  }
}

#my $result_string = protect_perl_string($result);
#print STDERR "'$result_string'\n";

my $reference = '[T: View toto.  And then mine and yours . .\\n]|4
 0: c:1; s:1; p:5|(toto){@value{myval}}
 1: c:1; s:2; p:9|
 2: c:1; s:1; p:16|{@do {mine, yours }}
 3: c:1; s:2; p:37|
[T: toto]|2
 0: c:2; s:1; p:0|(toto){@value{myval}}
 1: c:2; s:2; p:4|
[T: then feet  and foot.]|2
 0: c:2; s:1; p:0|{@do{ feet , foot}}
 1: c:2; s:2; p:20|
[T: OO the arg\\n]|2
 0: c:3; s:1; p:0|{@onearg the arg}
 1: c:3; s:2; p:10|
[T: text before OO another arg]|2
 0: c:4; s:1; p:12|{@onearg  another arg@comment am I there?}
 1: c:4; s:2; p:26|
'
;

is($result, $reference, 'source marks representation');

1;
