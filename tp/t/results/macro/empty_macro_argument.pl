use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'empty_macro_argument'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'parent' => {},
              'text' => 'mymacro',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => 'text',
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
                      'text' => 'macro'
                    }
                  ],
                  'parent' => {},
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'spaces_before_argument' => ' ',
                'text_arg' => 'macro'
              },
              'parent' => {}
            }
          ],
          'extra' => {
            'arg_line' => ' mymacro{}
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
          'type' => 'empty_line_after_command'
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
              'text' => 'text text text text
'
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
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
              'text' => 'mytwo',
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
              'text' => 'X\\arg\\X',
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
                      'text' => 'macro'
                    }
                  ],
                  'parent' => {},
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'spaces_before_argument' => ' ',
                'text_arg' => 'macro'
              },
              'parent' => {}
            }
          ],
          'extra' => {
            'arg_line' => ' mytwo{arg}
'
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 7,
            'macro' => ''
          }
        },
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line_after_command'
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
              'text' => 'XX XX XX XxX'
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
$result_trees{'empty_macro_argument'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'empty_macro_argument'}{'contents'}[0]{'contents'}[0];
$result_trees{'empty_macro_argument'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_macro_argument'}{'contents'}[0]{'contents'}[0];
$result_trees{'empty_macro_argument'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'empty_macro_argument'}{'contents'}[0]{'contents'}[0];
$result_trees{'empty_macro_argument'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_macro_argument'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'empty_macro_argument'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'empty_macro_argument'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'empty_macro_argument'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'empty_macro_argument'}{'contents'}[0]{'contents'}[0];
$result_trees{'empty_macro_argument'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_macro_argument'}{'contents'}[0];
$result_trees{'empty_macro_argument'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'empty_macro_argument'}{'contents'}[0];
$result_trees{'empty_macro_argument'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'empty_macro_argument'}{'contents'}[0];
$result_trees{'empty_macro_argument'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'empty_macro_argument'}{'contents'}[0]{'contents'}[3];
$result_trees{'empty_macro_argument'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'empty_macro_argument'}{'contents'}[0];
$result_trees{'empty_macro_argument'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'empty_macro_argument'}{'contents'}[0];
$result_trees{'empty_macro_argument'}{'contents'}[0]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'empty_macro_argument'}{'contents'}[0]{'contents'}[5];
$result_trees{'empty_macro_argument'}{'contents'}[0]{'contents'}[5]{'args'}[1]{'parent'} = $result_trees{'empty_macro_argument'}{'contents'}[0]{'contents'}[5];
$result_trees{'empty_macro_argument'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'parent'} = $result_trees{'empty_macro_argument'}{'contents'}[0]{'contents'}[5];
$result_trees{'empty_macro_argument'}{'contents'}[0]{'contents'}[5]{'contents'}[1]{'parent'} = $result_trees{'empty_macro_argument'}{'contents'}[0]{'contents'}[5];
$result_trees{'empty_macro_argument'}{'contents'}[0]{'contents'}[5]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_macro_argument'}{'contents'}[0]{'contents'}[5]{'contents'}[2]{'args'}[0];
$result_trees{'empty_macro_argument'}{'contents'}[0]{'contents'}[5]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'empty_macro_argument'}{'contents'}[0]{'contents'}[5]{'contents'}[2];
$result_trees{'empty_macro_argument'}{'contents'}[0]{'contents'}[5]{'contents'}[2]{'parent'} = $result_trees{'empty_macro_argument'}{'contents'}[0]{'contents'}[5];
$result_trees{'empty_macro_argument'}{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'empty_macro_argument'}{'contents'}[0];
$result_trees{'empty_macro_argument'}{'contents'}[0]{'contents'}[6]{'parent'} = $result_trees{'empty_macro_argument'}{'contents'}[0];
$result_trees{'empty_macro_argument'}{'contents'}[0]{'contents'}[7]{'parent'} = $result_trees{'empty_macro_argument'}{'contents'}[0];
$result_trees{'empty_macro_argument'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'parent'} = $result_trees{'empty_macro_argument'}{'contents'}[0]{'contents'}[8];
$result_trees{'empty_macro_argument'}{'contents'}[0]{'contents'}[8]{'parent'} = $result_trees{'empty_macro_argument'}{'contents'}[0];
$result_trees{'empty_macro_argument'}{'contents'}[0]{'parent'} = $result_trees{'empty_macro_argument'};

$result_texis{'empty_macro_argument'} = '@macro mymacro{}
text
@end macro

text text text text

@macro mytwo{arg}
X\\arg\\X
@end macro

XX XX XX XxX';


$result_texts{'empty_macro_argument'} = '
text text text text


XX XX XX XxX';

$result_errors{'empty_macro_argument'} = [
  {
    'error_line' => 'macro `mymacro\' declared without argument called with an argument
',
    'file_name' => '',
    'line_nr' => 5,
    'macro' => '',
    'text' => 'macro `mymacro\' declared without argument called with an argument',
    'type' => 'error'
  }
];


$result_floats{'empty_macro_argument'} = {};


1;
