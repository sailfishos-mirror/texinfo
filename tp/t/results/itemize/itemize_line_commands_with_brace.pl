use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'itemize_line_commands_with_brace'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'contents' => [
                {
                  'args' => [
                    {
                      'contents' => [],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'bullet',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 1,
                    'macro' => ''
                  },
                  'type' => 'command_as_argument'
                }
              ],
              'extra' => {
                'spaces_after_argument' => '
'
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'itemize',
          'contents' => [
            {
              'cmdname' => 'item',
              'contents' => [
                {
                  'parent' => {},
                  'text' => ' ',
                  'type' => 'empty_line_after_command'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'bullet
'
                    }
                  ],
                  'parent' => {},
                  'type' => 'paragraph'
                }
              ],
              'extra' => {
                'item_number' => 1
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 2,
                'macro' => ''
              }
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'itemize'
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
                'spaces_before_argument' => ' ',
                'text_arg' => 'itemize'
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
            'command_as_argument' => {},
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 1,
            'macro' => ''
          }
        },
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'args' => [
                    {
                      'contents' => [],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'minus',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 5,
                    'macro' => ''
                  },
                  'type' => 'command_as_argument'
                }
              ],
              'extra' => {
                'spaces_after_argument' => '
'
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'itemize',
          'contents' => [
            {
              'cmdname' => 'item',
              'contents' => [
                {
                  'parent' => {},
                  'text' => ' ',
                  'type' => 'empty_line_after_command'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'minus
'
                    }
                  ],
                  'parent' => {},
                  'type' => 'paragraph'
                }
              ],
              'extra' => {
                'item_number' => 1
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 6,
                'macro' => ''
              }
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'itemize'
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
                'spaces_before_argument' => ' ',
                'text_arg' => 'itemize'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 7,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'command_as_argument' => {},
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 5,
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
$result_trees{'itemize_line_commands_with_brace'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_line_commands_with_brace'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_line_commands_with_brace'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_line_commands_with_brace'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'itemize_line_commands_with_brace'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_line_commands_with_brace'}{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_line_commands_with_brace'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_line_commands_with_brace'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_line_commands_with_brace'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'itemize_line_commands_with_brace'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_line_commands_with_brace'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_line_commands_with_brace'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_line_commands_with_brace'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_line_commands_with_brace'}{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_line_commands_with_brace'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_line_commands_with_brace'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_line_commands_with_brace'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_line_commands_with_brace'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_line_commands_with_brace'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_line_commands_with_brace'}{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_line_commands_with_brace'}{'contents'}[0]{'contents'}[0]{'extra'}{'command_as_argument'} = $result_trees{'itemize_line_commands_with_brace'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_line_commands_with_brace'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_line_commands_with_brace'}{'contents'}[0];
$result_trees{'itemize_line_commands_with_brace'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_line_commands_with_brace'}{'contents'}[0];
$result_trees{'itemize_line_commands_with_brace'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_line_commands_with_brace'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_line_commands_with_brace'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_line_commands_with_brace'}{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'itemize_line_commands_with_brace'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'itemize_line_commands_with_brace'}{'contents'}[0]{'contents'}[2];
$result_trees{'itemize_line_commands_with_brace'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_line_commands_with_brace'}{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'itemize_line_commands_with_brace'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'itemize_line_commands_with_brace'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_line_commands_with_brace'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_line_commands_with_brace'}{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'itemize_line_commands_with_brace'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'itemize_line_commands_with_brace'}{'contents'}[0]{'contents'}[2];
$result_trees{'itemize_line_commands_with_brace'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_line_commands_with_brace'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_line_commands_with_brace'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_line_commands_with_brace'}{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'itemize_line_commands_with_brace'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'itemize_line_commands_with_brace'}{'contents'}[0]{'contents'}[2];
$result_trees{'itemize_line_commands_with_brace'}{'contents'}[0]{'contents'}[2]{'extra'}{'command_as_argument'} = $result_trees{'itemize_line_commands_with_brace'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_line_commands_with_brace'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'itemize_line_commands_with_brace'}{'contents'}[0];
$result_trees{'itemize_line_commands_with_brace'}{'contents'}[0]{'parent'} = $result_trees{'itemize_line_commands_with_brace'};

$result_texis{'itemize_line_commands_with_brace'} = '@itemize @bullet{}
@item bullet
@end itemize

@itemize @minus{}
@item minus
@end itemize
';


$result_texts{'itemize_line_commands_with_brace'} = 'bullet

minus
';

$result_errors{'itemize_line_commands_with_brace'} = [];


$result_floats{'itemize_line_commands_with_brace'} = {};



$result_converted{'plaintext'}->{'itemize_line_commands_with_brace'} = '   • bullet

   − minus
';


$result_converted{'html_text'}->{'itemize_line_commands_with_brace'} = '<ul class="itemize mark-bullet">
<li>bullet
</li></ul>

<ul class="itemize mark-minus">
<li>minus
</li></ul>
';

1;
