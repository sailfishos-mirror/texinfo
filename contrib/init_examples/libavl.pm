# Copyright 2011-2025 Free Software Foundation, Inc.
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

# Proposed on the bug-avl mailing list
# https://lists.gnu.org/archive/html/bug-avl/2025-02/msg00001.html

# in htmlpp, there is code to handle generated HTML with catalogue-entry-*
# in target names, however such HTML does not seems to exist anymore

# texi2any directions corresponding to htmlpp directions:
# skipback [Skip Back]: Next
# prev [Prev]: Back
# next [Next]: Forward
# up [Up]: Up
# skipfwd [Skip Fwd] Skip Forward: Next

# Used for development, can be removed once integrated
# mkdir -p libavl_html_test
# cp -p skipback.png prev.png next.png up.png skipfwd.png padding.png toc.png index.png libavl_html_test
# ./texiweb tangle --segments libavl.w libavl_html_test/
# ../texinfo/tta/perl/texi2any.pl --html --number-sections  --output=libavl_html_test --init=../texinfo/contrib/init_examples/libavl.pm libavl.texi

use strict;

use Texinfo::Commands;

texinfo_set_from_init_file('NODE_FILES', 0);

# start different from texi2any, title is "Top" in texi2any
# contents and index are the same and could be omitted here
# and set through LINKS_DIRECTIONS
my $extra_head = 
'<meta name=author content="Ben Pfaff">
<link rel=Start href="index.html" title="Table of Contents">
<link rel=Contents href="index.html" title="Table of Contents">
<link rel=Index href="Index.html" title="Index">
<link rel=Glossary href="Glossary.html" title="Glossary">
<link rel=Copyright href="http://www.gnu.org/copyleft/gpl.html" title="License">
';

texinfo_set_from_init_file('LINKS_DIRECTIONS', ['Back', 'Forward', 'Up']);

sub link_or_cp {
    my ($src, $dst) = @_;
    # link fails if the dst already exist even if it is a link to src
    # and when dst is opened src, as a link to dst is destroyed
    if (-f $dst) {
      unlink ($dst);
    }
    if (!link ($src, $dst)) {
       open (S, "<$src") || die "$src: open: $!\n";
       open (D, ">$dst") || die "$dst: create: $!\n";
       my ($s);
       sysread (S, $s, -s $src);
       syswrite (D, $s);
       close (D);
       close (S);
    }
}

my $dstdir;
my $srcdir;

sub _avl_structure
{
  my ($self, $document, $stage) = @_;
  
  $dstdir = $self->get_info('destination_directory');
  my $global_information = $document->global_information();
  $srcdir = $global_information->{'input_directory'};
  $srcdir = '.' if (!defined($srcdir) or $srcdir eq '');

  my $sections_list = $document->sections_list();
  if ($sections_list and scalar(@$sections_list)) {
    foreach my $section (@$sections_list) {
      if ($section->{'extra'} and $section->{'extra'}->{'section_level'}
          and $section->{'extra'}->{'section_level'} == 1) {
        my $href = $self->command_href($section, '');
        if ($href) {
          my $text = $self->command_text($section, 'string');
          my $rel = 'Chapter';
          if ($section->{'cmdname'} eq 'appendix') {
            # FIXME remove /^appendix / from $text?
            $rel = 'Appendix';
          }
          $extra_head .= "<link rel=\"$rel\" href=\"$href\" title=\"$text\">\n";
        }
      }
    }
  }
  $self->set_conf('EXTRA_HEAD', $extra_head);

  return 0;
}

texinfo_register_handler('structure', \&_avl_structure);

# Following 3 functions handle HTMLPP: file= substitutions.
# <!-- HTMLPP: file=
my $pending_file;
my $pending_RANG;

sub _avl_convert_html_raw_command($$$$$)
{
  my $self = shift;
  my $cmdname = shift;
  my $command = shift;
  my $args = shift;
  my $content = shift;


  if ($content and $content =~ /<!-- HTMLPP: file='(.*)' -->/) {
    my $file = $1;
    print STDERR "BUG: $pending_file\n" if ($pending_file);
    print STDERR "BUG: $pending_RANG\n" if ($pending_RANG);
    $pending_file = "${file}.txt";
    #link_or_cp ("$srcdir/$file", "$dstdir/$pending_file");
    link_or_cp ("$dstdir/$file", "$dstdir/$pending_file");
    return '';
  }
  return &{$self->default_command_conversion($cmdname)}(
                     $self, $cmdname, $command, $args, $content);
}

texinfo_register_command_formatting('html', \&_avl_convert_html_raw_command);

sub _avl_convert_anchor_command($$$$)
{
  my $self = shift;
  my $cmdname = shift;
  my $command = shift;
  my $args = shift;

  my $result = &{$self->default_command_conversion($cmdname)}(
                     $self, $cmdname, $command, $args);

  if ($pending_file) {
    $result .= "<a href=\"$pending_file\">";
    $pending_RANG = $pending_file;
    $pending_file = undef;
  }

  return $result;
}

texinfo_register_command_formatting('anchor', \&_avl_convert_anchor_command);

sub _avl_convert_text($$$$)
{
  my $self = shift;
  my $type = shift;
  my $element = shift;
  my $text = shift;

  my $result = &{$self->default_type_conversion('text')}(
                     $self, $type, $element, $text);

  if ($pending_RANG) {
    if ($element->{'source_marks'}) {
      foreach my $source_mark (@{$element->{'source_marks'}}) {
        if ($source_mark->{'sourcemark_type'} eq 'value_expansion'
            and $source_mark->{'status'} eq 'start') {
          my $value_element = $source_mark->{'element'};
          if ($value_element) {
            my $flag = $value_element->{'contents'}->[0]->{'contents'}->[0]
                              ->{'text'};
            if ($flag eq 'RANG') {
              $result =~ s%(.*)(\&gt;)%$1</a>$2%;
              $pending_RANG = undef;
            }
          }
        }
      }
    }
  }
  return $result;
}

texinfo_register_type_formatting('text', \&_avl_convert_text);

# buttons
my %directions_info = (
  'Contents' => ['Table of Contents', 'toc', 'Toc'],
  'Index' => ['Index', 'index', 'Index'],
  'Prev' => ['Skip Back', 'skipback', 'Skip Back'],
  'Next' => ['Skip Forward', 'skipfwd', 'Skip Fwd'],
  'Back' => ['Prev', 'prev', 'Prev'],
  'Up' => ['Up', 'up', 'Up'],
  'Forward' => ['Next', 'next', 'Next']
);

# could call link_or_cp on directions_info base_icon.png files
# + padding.png

# Note that the code could also have been used directly instead of through
# the call to format_button.
sub _avl_button_dynamic_direction($$;$)
{
  my $self = shift;
  my $direction = shift;
  my $source_command = shift;

  my $href = $self->from_element_direction($direction, 'href',
                                           undef, undef, $source_command);

  if ($href) {
    my ($title_string, $icon_base, $alt) = @{$directions_info{$direction}};
    my $section_text = $self->from_element_direction($direction, 'string');
    my $title;
    if ($section_text) {
      $title = "$title_string: $section_text";
    } else {
      $title = $title_string;
    }
    return "<a href=\"$href\" title=\"$title\" ><img src=\"${icon_base}.png\" "
            . "border=0 alt=\"[$alt]\"></a>", 0;
  } else {
    return '<img src="padding.png">', 0;
  }
}

my @avl_directions = ('Contents', 'Index', 'Space', 'Prev', 'Next',
                      'Space', 'Back', 'Up', 'Forward');
my @avl_header_buttons;

foreach my $button (@avl_directions) {
  if ($button eq 'Space') {
    push @avl_header_buttons, $button;
  } else {
    push @avl_header_buttons, [$button, \&_avl_button_dynamic_direction];
  }
}

texinfo_register_direction_string_info('Space', 'text', '&nbsp;&nbsp;&nbsp;');

# Redefined to prevent heading to be output for commands associated
# with nodes, as the heading is formatted as part of the navigation panel.
# For sectioning commands not associated with node, call
# the default formatting function, as they will not have an associated
# header and therefore need to be output as regular headings.
# Note that this code probably leads to incorrect output in many cases.
sub _avl_convert_heading_command($$$$$)
{
  my $self = shift;
  my $cmdname = shift;
  my $element = shift;
  my $args = shift;
  my $content = shift;

  my $result = '';

  # No situation where this could happen
  if ($self->in_string()) {
    $result .= $self->command_text($element, 'string') ."\n"
      if ($cmdname ne 'node');
    $result .= $content if (defined($content));
    return $result;
  }

  my $element_id = $self->command_id($element);

  print STDERR "CONVERT elt heading "
        # uncomment next line for the perl object name
        #."$element "
        .Texinfo::Convert::Texinfo::root_heading_command_to_texinfo($element)."\n"
          if ($self->get_conf('DEBUG'));
  my $output_unit;
  # All the root commands are associated to an output unit, the condition
  # on associated_unit is always true.
  if ($Texinfo::Commands::root_commands{$element->{'cmdname'}}
      and $element->{'associated_unit'}) {
    $output_unit = $element->{'associated_unit'};
  }
  my $element_header = '';

  my $result = '';

  if ($cmdname eq 'node') {
    if (defined($element_id) and $element_id ne '') {
      $result .= &{$self->formatting_function('format_separate_anchor')}($self,
                                                        $element_id, $cmdname);
    }
  }

  my $node;
  if ($output_unit and $cmdname ne 'node'
      and $element->{'extra'}
      and $element->{'extra'}->{'associated_node'}) {
    # use the node here, as format_element_header will only put a
    # header at the beginning of a file, and it only detects the node
    # as being at the beginning of the file.
    $node = $element->{'extra'}->{'associated_node'};
    $element_header = &{$self->formatting_function('format_element_header')}(
                                     $self, $cmdname, $node, $output_unit);
  }

  if ($cmdname ne 'node' and !$node) {
    return &{$self->default_command_conversion($cmdname)}(
                     $self, $cmdname, $element, $args, $content);
  }

  # following taken from Texinfo::Convert::HTML _convert_heading_command

  my $document = $self->get_info('document');
  my $sections_list;
  if ($document) {
    $sections_list = $document->sections_list();
  }

  my $toc_or_mini_toc_or_auto_menu = '';
  if ($self->get_conf('CONTENTS_OUTPUT_LOCATION') eq 'after_top'
      and $cmdname eq 'top'
      and $sections_list
      and scalar(@{$sections_list}) > 1) {
    foreach my $content_command_name ('shortcontents', 'contents') {
      if ($self->get_conf($content_command_name)) {
        my $contents_text
          = $self->_contents_inline_element($content_command_name, undef);
        if ($contents_text ne '') {
          $toc_or_mini_toc_or_auto_menu .= $contents_text;
        }
      }
    }
  }
  if ($toc_or_mini_toc_or_auto_menu eq ''
      and $Texinfo::Commands::sectioning_heading_commands{$cmdname}) {
    if ($self->get_conf('FORMAT_MENU') eq 'sectiontoc') {
      $toc_or_mini_toc_or_auto_menu = $self->_mini_toc($element);
    } elsif ($self->get_conf('FORMAT_MENU') eq 'menu') {
      my $node = $element->{'extra'}->{'associated_node'}
        if ($element->{'extra'} and $element->{'extra'}->{'associated_node'});

      if ($node) {
        # arguments_line type element
        my $arguments_line = $node->{'contents'}->[0];
        my $automatic_directions = 1;
        if (scalar(@{$arguments_line->{'contents'}}) > 1) {
          $automatic_directions = 0;
        }

        if ($node->{'extra'}
            and not $node->{'extra'}->{'menus'}
            and $automatic_directions) {
          my $identifiers_target;
          if ($document) {
            $identifiers_target = $document->labels_information();
          }
          my $menu_node
            = Texinfo::Structuring::new_complete_menu_master_menu($self,
                                                 $identifiers_target, $node);
          if ($menu_node) {
            $toc_or_mini_toc_or_auto_menu = $self->convert_tree($menu_node,
                                                         'master menu');
          }
        }
      }
    }
  }

  $result .= $element_header;

  $result .= $content if (defined($content));

  $result .= $toc_or_mini_toc_or_auto_menu;

  return $result;
}

foreach my $command (keys(%Texinfo::Commands::root_commands)) {
  texinfo_register_command_formatting($command, \&_avl_convert_heading_command);
}

my @footer_directions = ('Back', 'Up', 'Forward');
my %footer_direction_align = (
  'Back' => 'left', 'Up' => 'middle', 'Forward' => 'right'
);

# Note that we always ignore the buttons argument instead of redefining
# the different types of buttons.
sub _avl_format_navigation_panel($$$$;$$)
{    
  my $self = shift;
  my $buttons = shift;
  my $cmdname = shift;
  my $source_command = shift;
  my $vertical = shift;
  my $in_header = shift;

  my $result = '';

  if ($in_header) {
    # Header navigation panel
    my $output_unit;
    my $is_top = 0;
    if ($Texinfo::Commands::root_commands{$source_command->{'cmdname'}}
        and $source_command->{'associated_unit'}) {
      $output_unit = $source_command->{'associated_unit'};
      $is_top = $self->unit_is_top_output_unit($output_unit);
    }

    my $header_text;
    if ($is_top) {
      my $simpletitle_tree = $self->get_info('simpletitle_tree');
      if ($simpletitle_tree) {
        my $simpletitle_command_name
          = $self->get_info('simpletitle_command_name');
        $header_text
          = $self->convert_tree_new_formatting_context($simpletitle_tree,
                                    "$simpletitle_command_name simpletitle");
      }
    } else {
      my $element;
      if ($source_command->{'extra'}
          and $source_command->{'extra'}->{'associated_section'}) {
        $element = $source_command->{'extra'}->{'associated_section'};
      } else {
        $element = $source_command;
      }
      $header_text = $self->command_text($element);
    }
    $result .= '<table bgcolor="#d0d0d0" cellpadding=0 width="100%"><tr>'."\n";
    $result .= "<td align=\"left\"><big><b>$header_text</b></big></td>"."\n";
    $result .= '<td align="right">'."\n";

    foreach my $button (@avl_header_buttons) {
      my ($active, $passive, $need_delimiter)
        = &{$self->formatting_function('format_button')}($self, $button,
                                                         $source_command);
      if (defined($active)) {
        $result .= $active;
      } elsif (defined($passive)) {
        $result .= $passive;
      }
      $result .= "\n";
    }

    $result .= '</td></tr></table>'."\n";
    return $result;
  }

  # Footer navigation panel
  $result .= '<table bgcolor="#d0d0d0" cellpadding="0" width="100%"><tbody><tr valign="middle">'."\n";
  foreach my $direction (@footer_directions) {
    $result .= '<td align="'.$footer_direction_align{$direction}
                  .'" width="33%">'."\n";
    my $href = $self->from_element_direction($direction, 'href',
                                         undef, undef, $source_command);

   if ($href) {
     my ($title_string, $icon_base, $alt) = @{$directions_info{$direction}};
      my $section_text = $self->from_element_direction($direction, 'section',
                                                undef, undef, $source_command);
      $result .= "<a href=\"$href\"><img src=\"${icon_base}.png\" ".
              "border=\"0\" alt=\"$alt\" align=\"middle\"></a>\n";
      $result .= $section_text;
    }

    $result .= '</td>'."\n";
  }
  return $result;
}

texinfo_register_formatting_function('format_navigation_panel',
                                     \&_avl_format_navigation_panel);

1;
