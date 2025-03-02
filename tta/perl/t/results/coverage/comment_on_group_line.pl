use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'comment_on_group_line'} = {
  'contents' => [
    {
      'contents' => [
        {
          'cmdname' => 'group',
          'contents' => [
            {
              'contents' => [
                {
                  'info' => {
                    'comment_at_end' => {
                      'cmdname' => 'c',
                      'contents' => [
                        {
                          'text' => ' comment
',
                          'type' => 'rawline_arg'
                        }
                      ]
                    }
                  },
                  'type' => 'block_line_arg'
                }
              ],
              'type' => 'arguments_line'
            },
            {
              'contents' => [
                {
                  'text' => 'in group.
'
                }
              ],
              'type' => 'paragraph'
            },
            {
              'cmdname' => 'end',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'group'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => {
                      'text' => '
'
                    }
                  },
                  'type' => 'line_arg'
                }
              ],
              'extra' => {
                'text_arg' => 'group'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 3
              }
            }
          ],
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 1
          }
        }
      ],
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};

$result_texis{'comment_on_group_line'} = '@group @c comment
in group.
@end group
';


$result_texts{'comment_on_group_line'} = 'in group.
';

$result_errors{'comment_on_group_line'} = [];


$result_floats{'comment_on_group_line'} = {};



$result_converted{'plaintext'}->{'comment_on_group_line'} = 'in group.
';


$result_converted{'html_text'}->{'comment_on_group_line'} = '<div class="group"><p>in group.
</p></div>';


$result_converted{'xml'}->{'comment_on_group_line'} = '<group spaces=" " endspaces=" "><!-- c comment -->
<para>in group.
</para></group>
';


$result_converted{'latex_text'}->{'comment_on_group_line'} = 'in group.
';


$result_converted{'docbook'}->{'comment_on_group_line'} = '<para>in group.
</para>';

1;
