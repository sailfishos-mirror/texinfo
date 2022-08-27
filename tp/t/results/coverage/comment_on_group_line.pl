use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'comment_on_group_line'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'contents' => [],
              'extra' => {
                'comment_at_end' => {
                  'args' => [
                    {
                      'parent' => {},
                      'text' => ' comment
',
                      'type' => 'misc_arg'
                    }
                  ],
                  'cmdname' => 'c',
                  'extra' => {
                    'misc_args' => [
                      ' comment
'
                    ]
                  },
                  'parent' => {}
                }
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'group',
          'contents' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'in group.
'
                }
              ],
              'parent' => {},
              'type' => 'paragraph'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'group'
                    }
                  ],
                  'extra' => {
                    'spaces_after_argument' => '
'
                  },
                  'parent' => {},
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'command_argument' => 'group',
                'spaces_before_argument' => ' ',
                'text_arg' => 'group'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 3,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'end_command' => {},
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 1,
            'macro' => ''
          }
        }
      ],
      'parent' => {},
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'comment_on_group_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'extra'}{'comment_at_end'}{'args'}[0]{'parent'} = $result_trees{'comment_on_group_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'extra'}{'comment_at_end'};
$result_trees{'comment_on_group_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'extra'}{'comment_at_end'}{'parent'} = $result_trees{'comment_on_group_line'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'comment_on_group_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'comment_on_group_line'}{'contents'}[0]{'contents'}[0];
$result_trees{'comment_on_group_line'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'comment_on_group_line'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'comment_on_group_line'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'comment_on_group_line'}{'contents'}[0]{'contents'}[0];
$result_trees{'comment_on_group_line'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'comment_on_group_line'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'comment_on_group_line'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'comment_on_group_line'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'comment_on_group_line'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'comment_on_group_line'}{'contents'}[0]{'contents'}[0];
$result_trees{'comment_on_group_line'}{'contents'}[0]{'contents'}[0]{'extra'}{'end_command'} = $result_trees{'comment_on_group_line'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'comment_on_group_line'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'comment_on_group_line'}{'contents'}[0];
$result_trees{'comment_on_group_line'}{'contents'}[0]{'parent'} = $result_trees{'comment_on_group_line'};

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


$result_converted{'latex'}->{'comment_on_group_line'} = '\\vtop{%
in group.
\\strut}%
';


$result_converted{'docbook'}->{'comment_on_group_line'} = '<para>in group.
</para>';

1;
