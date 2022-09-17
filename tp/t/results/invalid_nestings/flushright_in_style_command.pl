use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'flushright_in_style_command'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => '
'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'code',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 1,
                'macro' => ''
              }
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
        },
        {
          'args' => [
            {
              'extra' => {
                'spaces_after_argument' => '
'
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'flushright',
          'contents' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'in flushright
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
                      'text' => 'flushright'
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
                'text_arg' => 'flushright'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 4,
                'macro' => ''
              }
            }
          ],
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 2,
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
$result_trees{'flushright_in_style_command'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'flushright_in_style_command'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'flushright_in_style_command'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'flushright_in_style_command'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'flushright_in_style_command'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'flushright_in_style_command'}{'contents'}[0]{'contents'}[0];
$result_trees{'flushright_in_style_command'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'flushright_in_style_command'}{'contents'}[0];
$result_trees{'flushright_in_style_command'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'flushright_in_style_command'}{'contents'}[0]{'contents'}[1];
$result_trees{'flushright_in_style_command'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'flushright_in_style_command'}{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'flushright_in_style_command'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'flushright_in_style_command'}{'contents'}[0]{'contents'}[1];
$result_trees{'flushright_in_style_command'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'flushright_in_style_command'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'flushright_in_style_command'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'flushright_in_style_command'}{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'flushright_in_style_command'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'flushright_in_style_command'}{'contents'}[0]{'contents'}[1];
$result_trees{'flushright_in_style_command'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'flushright_in_style_command'}{'contents'}[0];
$result_trees{'flushright_in_style_command'}{'contents'}[0]{'parent'} = $result_trees{'flushright_in_style_command'};

$result_texis{'flushright_in_style_command'} = '@code{
}@flushright
in flushright
@end flushright
';


$result_texts{'flushright_in_style_command'} = '
in flushright
';

$result_errors{'flushright_in_style_command'} = [
  {
    'error_line' => 'warning: @flushright should not appear in @code
',
    'file_name' => '',
    'line_nr' => 2,
    'macro' => '',
    'text' => '@flushright should not appear in @code',
    'type' => 'warning'
  },
  {
    'error_line' => '@code missing closing brace
',
    'file_name' => '',
    'line_nr' => 1,
    'macro' => '',
    'text' => '@code missing closing brace',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced }
',
    'file_name' => '',
    'line_nr' => 5,
    'macro' => '',
    'text' => 'misplaced }',
    'type' => 'error'
  }
];


$result_floats{'flushright_in_style_command'} = {};


1;
