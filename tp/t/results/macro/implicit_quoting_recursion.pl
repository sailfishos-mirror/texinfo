use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'implicit_quoting_recursion'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'parent' => {},
              'text' => 'cat',
              'type' => 'macro_name'
            },
            {
              'parent' => {},
              'text' => 'a',
              'type' => 'macro_arg'
            },
            {
              'parent' => {},
              'text' => 'b',
              'type' => 'macro_arg'
            }
          ],
          'cmdname' => 'rmacro',
          'contents' => [
            {
              'parent' => {},
              'text' => '\\a\\\\b\\',
              'type' => 'raw'
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'last_raw_newline'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'rmacro'
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
                'text_arg' => 'rmacro'
              },
              'parent' => {}
            }
          ],
          'extra' => {
            'arg_line' => ' cat{a,b}
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
              'parent' => {},
              'text' => 'natopocotuototam
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
$result_trees{'implicit_quoting_recursion'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'implicit_quoting_recursion'}{'contents'}[0]{'contents'}[0];
$result_trees{'implicit_quoting_recursion'}{'contents'}[0]{'contents'}[0]{'args'}[1]{'parent'} = $result_trees{'implicit_quoting_recursion'}{'contents'}[0]{'contents'}[0];
$result_trees{'implicit_quoting_recursion'}{'contents'}[0]{'contents'}[0]{'args'}[2]{'parent'} = $result_trees{'implicit_quoting_recursion'}{'contents'}[0]{'contents'}[0];
$result_trees{'implicit_quoting_recursion'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'implicit_quoting_recursion'}{'contents'}[0]{'contents'}[0];
$result_trees{'implicit_quoting_recursion'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'implicit_quoting_recursion'}{'contents'}[0]{'contents'}[0];
$result_trees{'implicit_quoting_recursion'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'implicit_quoting_recursion'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'implicit_quoting_recursion'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'implicit_quoting_recursion'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'implicit_quoting_recursion'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'implicit_quoting_recursion'}{'contents'}[0]{'contents'}[0];
$result_trees{'implicit_quoting_recursion'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'implicit_quoting_recursion'}{'contents'}[0];
$result_trees{'implicit_quoting_recursion'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'implicit_quoting_recursion'}{'contents'}[0];
$result_trees{'implicit_quoting_recursion'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'implicit_quoting_recursion'}{'contents'}[0]{'contents'}[2];
$result_trees{'implicit_quoting_recursion'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'implicit_quoting_recursion'}{'contents'}[0];
$result_trees{'implicit_quoting_recursion'}{'contents'}[0]{'parent'} = $result_trees{'implicit_quoting_recursion'};

$result_texis{'implicit_quoting_recursion'} = '@rmacro cat{a,b}
\\a\\\\b\\
@end rmacro

natopocotuototam
';


$result_texts{'implicit_quoting_recursion'} = '
natopocotuototam
';

$result_errors{'implicit_quoting_recursion'} = [];


$result_floats{'implicit_quoting_recursion'} = {};


1;
