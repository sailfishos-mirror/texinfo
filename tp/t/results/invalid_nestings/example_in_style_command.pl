use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'example_in_style_command'} = {
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
              'contents' => [],
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
              'contents' => [],
              'extra' => {
                'spaces_after_argument' => '
'
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'example',
          'contents' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'example
'
                }
              ],
              'parent' => {},
              'type' => 'preformatted'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'example'
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
                'command_argument' => 'example',
                'spaces_before_argument' => ' ',
                'text_arg' => 'example'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 4,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'end_command' => {}
          },
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
$result_trees{'example_in_style_command'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'example_in_style_command'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'example_in_style_command'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'example_in_style_command'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'example_in_style_command'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'example_in_style_command'}{'contents'}[0]{'contents'}[0];
$result_trees{'example_in_style_command'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'example_in_style_command'}{'contents'}[0];
$result_trees{'example_in_style_command'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'example_in_style_command'}{'contents'}[0]{'contents'}[1];
$result_trees{'example_in_style_command'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'example_in_style_command'}{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'example_in_style_command'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'example_in_style_command'}{'contents'}[0]{'contents'}[1];
$result_trees{'example_in_style_command'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'example_in_style_command'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'example_in_style_command'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'example_in_style_command'}{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'example_in_style_command'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'example_in_style_command'}{'contents'}[0]{'contents'}[1];
$result_trees{'example_in_style_command'}{'contents'}[0]{'contents'}[1]{'extra'}{'end_command'} = $result_trees{'example_in_style_command'}{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'example_in_style_command'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'example_in_style_command'}{'contents'}[0];
$result_trees{'example_in_style_command'}{'contents'}[0]{'parent'} = $result_trees{'example_in_style_command'};

$result_texis{'example_in_style_command'} = '@code{
}@example
example
@end example
';


$result_texts{'example_in_style_command'} = '
example
';

$result_errors{'example_in_style_command'} = [
  {
    'error_line' => 'warning: @example should not appear in @code
',
    'file_name' => '',
    'line_nr' => 2,
    'macro' => '',
    'text' => '@example should not appear in @code',
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


$result_floats{'example_in_style_command'} = {};


1;
