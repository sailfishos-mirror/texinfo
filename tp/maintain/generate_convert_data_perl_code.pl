#! /usr/bin/env perl

# generate_convert_data_perl_code.pl: generate perl hashes based on
# data information also used in XS.
#
# Copyright 2024 Free Software Foundation, Inc.
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

# ./maintain/generate_convert_data_perl_code.pl Texinfo/Data/default_css_element_class_styles.csv Texinfo/Data/default_direction_strings.csv Texinfo/Data/default_special_unit_info.csv Texinfo/Data/html_style_commands_element.csv Texinfo/Data.pm

use strict;

use warnings;

use File::Basename;
use Text::Wrap;

my $program_name = basename($0);

my $base_default_css_element_class_styles_file = $ARGV[0];

open (BDCSS, "<$base_default_css_element_class_styles_file")
  or die "open $base_default_css_element_class_styles_file failed: $!";

my $default_direction_strings_file = $ARGV[1];
open (DDS, "<$default_direction_strings_file")
  or die "open $default_direction_strings_file failed: $!";

my $default_special_unit_info_file = $ARGV[2];
open (DSUI, "<$default_special_unit_info_file")
  or die "open $default_special_unit_info_file failed: $!";

my $style_commands_element_file = $ARGV[3];
open (SCE, "<$style_commands_element_file")
  or die "open $style_commands_element_file failed: $!";


my $header_line = <BDCSS>;
chomp($header_line);
#print STDERR "$header_line\n";
my @header = split(/\|/, $header_line);
my ($selector_index, $style_index, $notes_index);
my $header_index = 0;
foreach my $header (@header) {
  if ($header eq 'selector') {
    $selector_index = $header_index;
  } elsif ($header eq 'style') {
    $style_index = $header_index;
  } elsif ($header eq 'notes') {
    $notes_index = $header_index;
  }
  $header_index++;
}
if (!defined($selector_index) or !defined($style_index)
    or !defined($notes_index)) {
  die "missing header column ($selector_index, $style_index, $notes_index)\n";
}

my $out_file = $ARGV[4];

die "Need an output file\n" if (!defined($out_file));

open(OUT, ">$out_file") or die "Open $out_file: $!\n";
    
print OUT "# Automatically generated from $program_name\n\n";

print OUT "package Texinfo::Data;\n\n";

print OUT "use Texinfo::Common;\n\n";

print OUT "my %base_default_css_element_class_styles = (\n";

my $initial_notes_tab = ' # ';
my $subsequent_notes_tab = ' # ';
while (<BDCSS>) {
  chomp;
  my @data = split (/\|/);
  my $notes = $data[$notes_index];
  if (defined($notes) and $notes ne '') {
    my $lines = wrap($initial_notes_tab, $subsequent_notes_tab, ($notes));
    print OUT $lines."\n";
  }
  my $selector = $data[$selector_index];
  if (!defined($selector) or $selector eq '') {
    die "$base_default_css_element_class_styles_file: Bad selector\n";
  }
  my $style = $data[$style_index];
  if (!defined($style) or $style eq '') {
    die "$base_default_css_element_class_styles_file: Bad style\n";
  }
  print OUT "    '$selector'    => '$style',\n";
}

print OUT ");\n\n";

print OUT 'sub get_base_default_css_info() {
  return \%base_default_css_element_class_styles;
}'."\n\n";


my @su_ordered_untranslated_hashes;
my @su_ordered_translated_hashes;

my $su_header_line = <DSUI>;
chomp($su_header_line);
#print STDERR "$su_header_line\n";
my @su_header = split(/\|/, $su_header_line);
my $special_unit_header = shift @su_header;

my $su_header_index = 1;
my $su_type;
my %su_header_indices;
foreach my $header (@su_header) {
  if ($header =~ /^([^ ]+) ([^ ]+)$/) {
    my $spec = $2;
    if ($spec ne 'context' and $spec ne 'string') {
      die "Unknown special unit column spec $spec\n";
    }
    if ($spec eq 'context') {
      $su_type = $1;
      push @su_ordered_translated_hashes, $su_type;
      $su_header_indices{$su_type} = {};
    } elsif ($1 ne $su_type) {
      die "Non matching type $1 ne $su_type\n";
    }
    $su_header_indices{$su_type}->{$spec} = $su_header_index;
  } elsif ($header eq '') {
    continue;
  } else {
    push @su_ordered_untranslated_hashes, $header;
    $su_type = undef;
    $su_header_indices{$header} = $su_header_index;
  }
  $su_header_index++;
}

my %su_hash_lines;
foreach my $type (@su_ordered_untranslated_hashes, @su_ordered_translated_hashes) {
  $su_hash_lines{$type} = '';
}
# gather for direction structures below
my %su_directions;
my @su_ordered;
while (<DSUI>) {
  chomp;
  my @data = split (/\|/);
  my $special_unit = $data[0];
  push @su_ordered, $special_unit;
  foreach my $untranslated_type (@su_ordered_untranslated_hashes) {
    my $index = $su_header_indices{$untranslated_type};
    my $value = '';
    if (defined($data[$index])) {
      $value = $data[$index];
      if ($untranslated_type eq 'direction') {
        $su_directions{$value} = 1;
      }
    }
    $su_hash_lines{$untranslated_type} .= "    '$special_unit' => '$value',\n";
  }
  foreach my $translated_type (@su_ordered_translated_hashes) {
    my $context = $data[$su_header_indices{$translated_type}->{'context'}];
    my $string = $data[$su_header_indices{$translated_type}->{'string'}];
    if (defined($string) and $string ne '') {
      if (!defined($context) or $context eq '') {
        print STDERR "ERROR: '$special_unit': '$string' but no context\n";
      } else {
        $su_hash_lines{$translated_type}
         .= "    '$special_unit' => Texinfo::Common::pgdt('$context', '$string'),\n";
      }
    } else {
      print STDERR "REMARK: '$special_unit': no $translated_type\n";
    }
  }
}

print OUT "my %default_special_unit_info = (\n";

foreach my $type (@su_ordered_untranslated_hashes) {
  print OUT "\n  '$type' => {\n";
  print OUT $su_hash_lines{$type};
  print OUT "  },\n";
}

print OUT ");\n\n";

print OUT 'sub get_default_special_unit_info() {
  return \%default_special_unit_info;
}'."\n\n";

print OUT "my %default_translated_special_unit_info = (\n";
foreach my $type (@su_ordered_translated_hashes) {
  print OUT "\n  '$type' => {\n";
  print OUT $su_hash_lines{$type};
  print OUT "  },\n";
}
print OUT ");\n\n";

print OUT 'sub get_default_translated_special_unit_info() {
  return \%default_translated_special_unit_info;
}'."\n\n";


my @global_directions = ('First', 'Top', 'Index', 'Last');
# add space 'direction'
my @ordered_global_directions = (@global_directions, ' ');
my %ordered_global_directions_hash;
foreach my $global_direction (@ordered_global_directions) {
  $ordered_global_directions_hash{$global_direction} = 1;
}

my %direction_orders = (
  'global' => \@ordered_global_directions,
  'relative' => [],
  'file' => []
);
my @orders_order = ('global', 'relative', 'file');

my @d_ordered_untranslated_hashes;
my @d_ordered_translated_hashes;

my $d_header_line = <DDS>;
chomp($d_header_line);
#print STDERR "$d_header_line\n";
my @d_header = split(/\|/, $d_header_line);
my $direction_header = shift @d_header;

my $d_header_index = 1;
my $type;
my %d_header_indices;
foreach my $header (@d_header) {
  if ($header =~ /^([^ ]+) converted$/) {
    $type = $1;
    push @d_ordered_translated_hashes, $type;
    $d_header_indices{$type} = {'converted' => $d_header_index};
  } elsif ($header =~ /^([^ ]+) to_convert ([^ ]+)$/) {
    if ($1 ne $type) {
      die "Non matching type $1 ne $type\n";
    }
    my $spec = $2;
    if ($spec ne 'context' and $spec ne 'string') {
      die "Unknown to_convert spec $spec\n";
    }
    if (!defined($d_header_indices{$type}->{'to_convert'})) {
      $d_header_indices{$type}->{'to_convert'} = {};
    }
    $d_header_indices{$type}->{'to_convert'}->{$spec} = $d_header_index;
  } elsif ($header eq '') {
    continue;
  } else {
    push @d_ordered_untranslated_hashes, $header;
    $type = undef;
    $d_header_indices{$header} = $d_header_index;
  }
  $d_header_index++;
}

sub substitute_direction_value
{
  my $input = shift;
  $input =~ s/\$html_default_entity_nbsp/&nbsp;/;
  $input =~ s/\$\{bar\}/\|/;
  return $input;
}

my %hash_lines;
foreach my $type (@d_ordered_untranslated_hashes, @d_ordered_translated_hashes) {
  $hash_lines{$type} = '';
}
my @relative_directions_order;
my @file_directions_order;
while (<DDS>) {
  chomp;
  my @data = split (/\|/);
  my $direction = $data[0];
  if (!$ordered_global_directions_hash{$direction}
      and !$su_directions{$direction}) {
    if ($direction =~ /File/) {
      push @{$direction_orders{'file'}}, $direction;
    } else {
      push @{$direction_orders{'relative'}}, $direction;
    }
  }
  foreach my $untranslated_type (@d_ordered_untranslated_hashes) {
    my $index = $d_header_indices{$untranslated_type};
    my $value = '';
    if (defined($data[$index])) {
      $value = substitute_direction_value($data[$index]);
    }
    $hash_lines{$untranslated_type} .= "    '$direction' => '$value',\n";
  }
  foreach my $translated_type (@d_ordered_translated_hashes) {
    my $converted_value = $data[$d_header_indices{$translated_type}->{'converted'}];
    if (defined($converted_value) and $converted_value ne '') {
      $hash_lines{$translated_type}
        .= "    '$direction' => {'converted' => '"
                   .substitute_direction_value($converted_value)."'},\n";
    } else {
      my $context = $data[$d_header_indices{$translated_type}->{'to_convert'}->{'context'}];
      my $string = $data[$d_header_indices{$translated_type}->{'to_convert'}->{'string'}];
      if (defined($string) and $string ne '') {
        if (!defined($context) or $context eq '') {
          print STDERR "ERROR: '$direction': '$string' but no context\n";
        } else {
          $hash_lines{$translated_type}
           .= "    '$direction' => {'to_convert' => Texinfo::Common::pgdt('$context', '"
             . substitute_direction_value($string)."')},\n";
        }
      } else {
        print STDERR "REMARK: '$direction': no $translated_type\n";
      }
    }
  }
}

print OUT 'sub get_directions_order() {'."\n"
  . 'return [';
foreach my $order (@orders_order) {
  print OUT '['.join(', ', map{"'$_'"} @{$direction_orders{$order}})."],\n";
}
print OUT "];\n}\n\n";


print OUT "my %default_converted_directions_strings = (\n";

foreach my $type (@d_ordered_untranslated_hashes) {
  print OUT "\n  '$type' => {\n";
  print OUT $hash_lines{$type};
  print OUT "  },\n";
}

print OUT ");\n\n";

print OUT 'sub get_default_converted_directions_strings() {
  return \%default_converted_directions_strings;
}'."\n\n";

print OUT "my %default_translated_directions_strings = (\n";
foreach my $type (@d_ordered_translated_hashes) {
  print OUT "\n  '$type' => {\n";
  print OUT $hash_lines{$type};
  print OUT "  },\n";
}
print OUT ");\n\n";

print OUT 'sub get_default_translated_directions_strings() {
  return \%default_translated_directions_strings;
}'."\n\n";


my $sce_header_line = <SCE>;
chomp($sce_header_line);
#print STDERR "$sce_header_line\n";
my @sce_header = split(/\|/, $sce_header_line);
my ($sce_command_index, $sce_html_element_index, $sce_notes_index);
my $sce_header_index = 0;
foreach my $header (@sce_header) {
  if ($header eq 'command') {
    $sce_command_index = $sce_header_index;
  } elsif ($header eq 'html_element') {
    $sce_html_element_index = $sce_header_index;
  } elsif ($header eq 'notes') {
    $sce_notes_index = $sce_header_index;
  }
  $sce_header_index++;
}
if (!defined($sce_command_index) or !defined($sce_html_element_index)
    or !defined($notes_index)) {
  die "missing header column ($sce_command_index, "
                   ."$sce_html_element_index, $sce_notes_index)\n";
}

print OUT "my %html_style_commands_element = (\n";

my $line_nr = 1;
while (<SCE>) {
  $line_nr++;
  chomp;
  my @data = split (/\|/);
  my $notes = $data[$sce_notes_index];
  if (defined($notes) and $notes ne '') {
    my $lines = wrap($initial_notes_tab, $subsequent_notes_tab, ($notes));
    print OUT $lines."\n";
  }
  my $sce_command = $data[$sce_command_index];
  if (!defined($sce_command) or $sce_command eq '') {
    die "$style_commands_element_file: $line_nr: Bad command\n";
  }
  my $sce_html_element = $data[$sce_html_element_index];
  if (!defined($sce_html_element) or $sce_html_element eq '') {
    die "$style_commands_element_file: $line_nr: Bad html_element\n";
  }
  print OUT "    '$sce_command'    => '$sce_html_element',\n";
}

print OUT ");\n\n";

print OUT 'sub get_html_style_commands_element() {
  return \%html_style_commands_element;
}'."\n\n";

print OUT "1;\n";

