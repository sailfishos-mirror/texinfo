use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'macro_name_with_digit'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'parent' => {},
              'text' => 'macro1',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => 'macro1
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
            'arg_line' => ' macro1
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
          'args' => [
            {
              'parent' => {},
              'text' => 'macro11',
              'type' => 'macro_name'
            },
            {
              'parent' => {},
              'text' => 'arg',
              'type' => 'macro_arg'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => 'expand \\arg\\
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
                'line_nr' => 7,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'arg_line' => ' macro11 {arg}
'
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 5,
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
              'text' => 'expand some thing macro1
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
$result_trees{'macro_name_with_digit'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'macro_name_with_digit'}{'contents'}[0]{'contents'}[0];
$result_trees{'macro_name_with_digit'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_name_with_digit'}{'contents'}[0]{'contents'}[0];
$result_trees{'macro_name_with_digit'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_name_with_digit'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'macro_name_with_digit'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'macro_name_with_digit'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'macro_name_with_digit'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'macro_name_with_digit'}{'contents'}[0]{'contents'}[0];
$result_trees{'macro_name_with_digit'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_name_with_digit'}{'contents'}[0];
$result_trees{'macro_name_with_digit'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'macro_name_with_digit'}{'contents'}[0];
$result_trees{'macro_name_with_digit'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'macro_name_with_digit'}{'contents'}[0]{'contents'}[2];
$result_trees{'macro_name_with_digit'}{'contents'}[0]{'contents'}[2]{'args'}[1]{'parent'} = $result_trees{'macro_name_with_digit'}{'contents'}[0]{'contents'}[2];
$result_trees{'macro_name_with_digit'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'macro_name_with_digit'}{'contents'}[0]{'contents'}[2];
$result_trees{'macro_name_with_digit'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_name_with_digit'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'macro_name_with_digit'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'macro_name_with_digit'}{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'macro_name_with_digit'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'macro_name_with_digit'}{'contents'}[0]{'contents'}[2];
$result_trees{'macro_name_with_digit'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'macro_name_with_digit'}{'contents'}[0];
$result_trees{'macro_name_with_digit'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'macro_name_with_digit'}{'contents'}[0];
$result_trees{'macro_name_with_digit'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'macro_name_with_digit'}{'contents'}[0]{'contents'}[4];
$result_trees{'macro_name_with_digit'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'macro_name_with_digit'}{'contents'}[0];
$result_trees{'macro_name_with_digit'}{'contents'}[0]{'parent'} = $result_trees{'macro_name_with_digit'};

$result_texis{'macro_name_with_digit'} = '@macro macro1
macro1
@end macro

@macro macro11 {arg}
expand \\arg\\
@end macro

expand some thing macro1
';


$result_texts{'macro_name_with_digit'} = '

expand some thing macro1
';

$result_errors{'macro_name_with_digit'} = [];


$result_floats{'macro_name_with_digit'} = {};


1;
