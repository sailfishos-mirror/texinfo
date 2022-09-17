use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'include_after_empty_line_arg'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'parent' => {},
              'text' => 'mymacro',
              'type' => 'macro_name'
            },
            {
              'parent' => {},
              'text' => 'body',
              'type' => 'macro_arg'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => '@code{\\body\\}
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'macro'
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
                'text_arg' => 'macro'
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
            'arg_line' => ' mymacro{body}
'
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
          'contents' => [
            {
              'args' => [
                {
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'code',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 5,
                'macro' => 'mymacro'
              }
            },
            {
              'parent' => {},
              'text' => '
'
            },
            {
              'parent' => {},
              'text' => 'In included file.
'
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
        }
      ],
      'parent' => {},
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'include_after_empty_line_arg'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'include_after_empty_line_arg'}{'contents'}[0]{'contents'}[0];
$result_trees{'include_after_empty_line_arg'}{'contents'}[0]{'contents'}[0]{'args'}[1]{'parent'} = $result_trees{'include_after_empty_line_arg'}{'contents'}[0]{'contents'}[0];
$result_trees{'include_after_empty_line_arg'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'include_after_empty_line_arg'}{'contents'}[0]{'contents'}[0];
$result_trees{'include_after_empty_line_arg'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'include_after_empty_line_arg'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'include_after_empty_line_arg'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'include_after_empty_line_arg'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'include_after_empty_line_arg'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'include_after_empty_line_arg'}{'contents'}[0]{'contents'}[0];
$result_trees{'include_after_empty_line_arg'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'include_after_empty_line_arg'}{'contents'}[0];
$result_trees{'include_after_empty_line_arg'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'include_after_empty_line_arg'}{'contents'}[0];
$result_trees{'include_after_empty_line_arg'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'include_after_empty_line_arg'}{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'include_after_empty_line_arg'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'include_after_empty_line_arg'}{'contents'}[0]{'contents'}[2];
$result_trees{'include_after_empty_line_arg'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'include_after_empty_line_arg'}{'contents'}[0]{'contents'}[2];
$result_trees{'include_after_empty_line_arg'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'include_after_empty_line_arg'}{'contents'}[0]{'contents'}[2];
$result_trees{'include_after_empty_line_arg'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'include_after_empty_line_arg'}{'contents'}[0];
$result_trees{'include_after_empty_line_arg'}{'contents'}[0]{'parent'} = $result_trees{'include_after_empty_line_arg'};

$result_texis{'include_after_empty_line_arg'} = '@macro mymacro{body}
@code{\\body\\}
@end macro

@code{}
In included file.
';


$result_texts{'include_after_empty_line_arg'} = '

In included file.
';

$result_errors{'include_after_empty_line_arg'} = [];


$result_floats{'include_after_empty_line_arg'} = {};


1;
