# Copyright 2011-2024 Free Software Foundation, Inc.
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

# use an index specified by name instead of the first index for the Index
# button.
# Idea of Werner Lemberg

use strict;

use Texinfo::Convert::Texinfo;
    
my $selected_index_name = 'cp';
  
sub _set_index_global_direction_from_index_name
{
  my ($self, $document, $stage) = @_;

  # find the node the selected index printindex is in
  my $index_printindex_top_level_node = undef;

  my $global_commands_information
    = $document->global_commands_information();
  if ($global_commands_information
      and $global_commands_information->{'printindex'}) {
    foreach my $element (@{$global_commands_information->{'printindex'}}) {
      if ($element->{'extra'} and $element->{'extra'}->{'misc_args'}
          and $element->{'extra'}->{'misc_args'}->[0] eq $selected_index_name) {
        my ($output_unit, $top_level_element)
           = $self->get_element_root_command_element($element);
        if ($top_level_element) {
          if ($top_level_element->{'cmdname'} eq 'node') {
            $index_printindex_top_level_node = $top_level_element;
          } elsif ($top_level_element->{'extra'}
                   and $top_level_element->{'extra'}->{'associated_node'}) {
            $index_printindex_top_level_node
              = $top_level_element->{'extra'}->{'associated_node'};
          }
          last if ($index_printindex_top_level_node);
        }
      }
    }
  }
  if (defined($index_printindex_top_level_node)) {
    my $label_element = Texinfo::Common::get_label_element(
                                  $index_printindex_top_level_node);
    if (defined($label_element)) {
      my $node_name = Texinfo::Convert::Texinfo::convert_to_texinfo(
                           {'contents' => $label_element->{'contents'}});
      $self->set_global_direction('Index', $node_name);
    }
  }
  return 0;
}

texinfo_register_handler('setup',
            \&_set_index_global_direction_from_index_name);

