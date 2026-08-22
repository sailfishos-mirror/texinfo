# Breadcrumbs navigation.
#
# Copyright 2026 Free Software Foundation, Inc.
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
#
# Inspired by lilypond
# https://gitlab.com/lilypond/lilypond/-/merge_requests/3097/diffs?commit_id=3a70b019d6ba0fef73c331ca4c727d3c85d49810

use strict;
use warnings;

use Texinfo::Structuring;

# To check if there is no erroneous autovivification
no autovivification qw(fetch delete exists store strict);

sub _txi_readcrumb_nav_format_navigation_panel($$$$;$$) {
  my ($self, $buttons, $cmdname, $source_command, $vertical, $in_header) = @_;

  my $breadcrumbs = '';
  if ($in_header) {
    my @up_text_href;
    my $output_unit = $source_command->{'associated_unit'};
    if (defined($output_unit) and exists($output_unit->{'unit_section'})) {
      my $current_relations = $output_unit->{'unit_section'};
      my @up_commands;
      while (exists($current_relations->{'section_directions'})
             and exists($current_relations->{'section_directions'}->{'up'})
             and ($current_relations->{'section_directions'}->{'up'}
                                                   ne $current_relations)) {
        $current_relations = $current_relations->{'section_directions'}->{'up'};
        my $target_element = $current_relations->{'element'};
        my $href = $self->command_href($target_element);
        my $text = $self->command_text($target_element);
        if (defined($href) and defined($text)) {
          push @up_text_href, [$href, $text];
        }
      }
    }
    my $top_unit = $self->global_direction_unit('Top');
    if (defined($top_unit)) {
      my $up_top_href = $self->from_element_direction('Up', 'href', $top_unit);
      my $up_top_text = $self->from_element_direction('Up', 'text', $top_unit);

      if (defined($up_top_href) and defined($up_top_text)) {
        push @up_text_href, [$up_top_href, $up_top_text];
      }
    }
    if (scalar(@up_text_href)) {
      $breadcrumbs .= $self->html_attribute_class('p', ['nav-breadcrumbs']). '>';
      # process in reverse order to start from upper and go to lower
      for (my $i = scalar(@up_text_href) - 1; $i >= 0; $i--) {
        my $class;
        if ($i == 0) {
          $class = 'nav-last-breadcrumb';
        } else {
          # appended / for that class
          $class = 'nav-breadcrumb';
        }
        my ($href, $text) = @{$up_text_href[$i]};
        $breadcrumbs .= $self->html_attribute_class('span', [$class]) . '>'
                .  "<a href=\"$href\">$text</a></span>";
      }
      $breadcrumbs .= "</p>\n";
    }
  }

  return $breadcrumbs . &{$self->default_formatting_function('format_navigation_panel')}(
    $self, $buttons, $cmdname, $source_command, $vertical, $in_header);
}

texinfo_register_formatting_function('format_navigation_panel',
                                     \&_txi_readcrumb_nav_format_navigation_panel);

# Add CSS and remove Up button.

# avoid doing twice if there are more than one manual processed
my $button_removed;
sub _txi_readcrumb_nav_set_css {
  my ($self, $document, $stage) = @_;

  #my $tree = $document->tree();
  $self->css_set_selector_style('p.nav-breadcrumbs', 'font-size: 0.9rem');

  $self->css_add_info('rules', 'span.nav-breadcrumb::after {
   content: "/";
   padding: 0 0.4em;
 }
 ');

  if (!$button_removed) {
    foreach my $buttons_spec ('SECTION_BUTTONS', 'CHAPTER_BUTTONS',
                              'TOP_BUTTONS') {
      my $buttons_list = $self->get_conf($buttons_spec);
      my @buttons;
      for (my $i = 0; $i < scalar (@$buttons_list); $i++) {
        if ((ref($buttons_list->[$i]) ne '' or $buttons_list->[$i] ne 'Up')
            and (ref($buttons_list->[$i]) ne 'ARRAY' or $buttons_list->[$i][0] ne 'Up')) {
          push @buttons, $buttons_list->[$i];
        }
      }
      $self->set_conf($buttons_spec, \@buttons);
    }
    $button_removed = 1;
  }

  return 0;
}


texinfo_register_handler('setup', \&_txi_readcrumb_nav_set_css);

1;
