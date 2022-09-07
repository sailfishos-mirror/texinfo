use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'macro_in_macro_arg'} = {
  'contents' => [
    {
      'contents' => [
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
              'text' => 'macroone',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => 'a, @macrotwo',
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
            'arg_line' => ' macroone
'
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 2,
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
          'args' => [
            {
              'parent' => {},
              'text' => 'macrotwo',
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
              'text' => 'hello \\arg\\ after arg',
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
            'arg_line' => ' macrotwo{arg}
'
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 6,
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
          'args' => [
            {
              'parent' => {},
              'text' => 'macrothree',
              'type' => 'macro_name'
            },
            {
              'parent' => {},
              'text' => 'text',
              'type' => 'macro_arg'
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
              'text' => '\\text\\
',
              'type' => 'raw'
            },
            {
              'parent' => {},
              'text' => '&&&& \\arg\\',
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
            'arg_line' => ' macrothree{text, arg}
'
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 10,
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
              'text' => 'a, hello text for macro2 after arg
'
            },
            {
              'parent' => {},
              'text' => '&&&& 
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
$result_trees{'macro_in_macro_arg'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_macro_arg'}{'contents'}[0];
$result_trees{'macro_in_macro_arg'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'macro_in_macro_arg'}{'contents'}[0]{'contents'}[1];
$result_trees{'macro_in_macro_arg'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'macro_in_macro_arg'}{'contents'}[0]{'contents'}[1];
$result_trees{'macro_in_macro_arg'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'macro_in_macro_arg'}{'contents'}[0]{'contents'}[1];
$result_trees{'macro_in_macro_arg'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_macro_arg'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0];
$result_trees{'macro_in_macro_arg'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'macro_in_macro_arg'}{'contents'}[0]{'contents'}[1]{'contents'}[2];
$result_trees{'macro_in_macro_arg'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'macro_in_macro_arg'}{'contents'}[0]{'contents'}[1];
$result_trees{'macro_in_macro_arg'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'macro_in_macro_arg'}{'contents'}[0];
$result_trees{'macro_in_macro_arg'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'macro_in_macro_arg'}{'contents'}[0];
$result_trees{'macro_in_macro_arg'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'macro_in_macro_arg'}{'contents'}[0];
$result_trees{'macro_in_macro_arg'}{'contents'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'macro_in_macro_arg'}{'contents'}[0]{'contents'}[4];
$result_trees{'macro_in_macro_arg'}{'contents'}[0]{'contents'}[4]{'args'}[1]{'parent'} = $result_trees{'macro_in_macro_arg'}{'contents'}[0]{'contents'}[4];
$result_trees{'macro_in_macro_arg'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'macro_in_macro_arg'}{'contents'}[0]{'contents'}[4];
$result_trees{'macro_in_macro_arg'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'macro_in_macro_arg'}{'contents'}[0]{'contents'}[4];
$result_trees{'macro_in_macro_arg'}{'contents'}[0]{'contents'}[4]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_macro_arg'}{'contents'}[0]{'contents'}[4]{'contents'}[2]{'args'}[0];
$result_trees{'macro_in_macro_arg'}{'contents'}[0]{'contents'}[4]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'macro_in_macro_arg'}{'contents'}[0]{'contents'}[4]{'contents'}[2];
$result_trees{'macro_in_macro_arg'}{'contents'}[0]{'contents'}[4]{'contents'}[2]{'parent'} = $result_trees{'macro_in_macro_arg'}{'contents'}[0]{'contents'}[4];
$result_trees{'macro_in_macro_arg'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'macro_in_macro_arg'}{'contents'}[0];
$result_trees{'macro_in_macro_arg'}{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'macro_in_macro_arg'}{'contents'}[0];
$result_trees{'macro_in_macro_arg'}{'contents'}[0]{'contents'}[6]{'parent'} = $result_trees{'macro_in_macro_arg'}{'contents'}[0];
$result_trees{'macro_in_macro_arg'}{'contents'}[0]{'contents'}[7]{'args'}[0]{'parent'} = $result_trees{'macro_in_macro_arg'}{'contents'}[0]{'contents'}[7];
$result_trees{'macro_in_macro_arg'}{'contents'}[0]{'contents'}[7]{'args'}[1]{'parent'} = $result_trees{'macro_in_macro_arg'}{'contents'}[0]{'contents'}[7];
$result_trees{'macro_in_macro_arg'}{'contents'}[0]{'contents'}[7]{'args'}[2]{'parent'} = $result_trees{'macro_in_macro_arg'}{'contents'}[0]{'contents'}[7];
$result_trees{'macro_in_macro_arg'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'parent'} = $result_trees{'macro_in_macro_arg'}{'contents'}[0]{'contents'}[7];
$result_trees{'macro_in_macro_arg'}{'contents'}[0]{'contents'}[7]{'contents'}[1]{'parent'} = $result_trees{'macro_in_macro_arg'}{'contents'}[0]{'contents'}[7];
$result_trees{'macro_in_macro_arg'}{'contents'}[0]{'contents'}[7]{'contents'}[2]{'parent'} = $result_trees{'macro_in_macro_arg'}{'contents'}[0]{'contents'}[7];
$result_trees{'macro_in_macro_arg'}{'contents'}[0]{'contents'}[7]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_macro_arg'}{'contents'}[0]{'contents'}[7]{'contents'}[3]{'args'}[0];
$result_trees{'macro_in_macro_arg'}{'contents'}[0]{'contents'}[7]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'macro_in_macro_arg'}{'contents'}[0]{'contents'}[7]{'contents'}[3];
$result_trees{'macro_in_macro_arg'}{'contents'}[0]{'contents'}[7]{'contents'}[3]{'parent'} = $result_trees{'macro_in_macro_arg'}{'contents'}[0]{'contents'}[7];
$result_trees{'macro_in_macro_arg'}{'contents'}[0]{'contents'}[7]{'parent'} = $result_trees{'macro_in_macro_arg'}{'contents'}[0];
$result_trees{'macro_in_macro_arg'}{'contents'}[0]{'contents'}[8]{'parent'} = $result_trees{'macro_in_macro_arg'}{'contents'}[0];
$result_trees{'macro_in_macro_arg'}{'contents'}[0]{'contents'}[9]{'parent'} = $result_trees{'macro_in_macro_arg'}{'contents'}[0];
$result_trees{'macro_in_macro_arg'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'parent'} = $result_trees{'macro_in_macro_arg'}{'contents'}[0]{'contents'}[10];
$result_trees{'macro_in_macro_arg'}{'contents'}[0]{'contents'}[10]{'contents'}[1]{'parent'} = $result_trees{'macro_in_macro_arg'}{'contents'}[0]{'contents'}[10];
$result_trees{'macro_in_macro_arg'}{'contents'}[0]{'contents'}[10]{'parent'} = $result_trees{'macro_in_macro_arg'}{'contents'}[0];
$result_trees{'macro_in_macro_arg'}{'contents'}[0]{'parent'} = $result_trees{'macro_in_macro_arg'};

$result_texis{'macro_in_macro_arg'} = '
@macro macroone
a, @macrotwo
@end macro

@macro macrotwo{arg}
hello \\arg\\ after arg
@end macro

@macro macrothree{text, arg}
\\text\\
&&&& \\arg\\
@end macro

a, hello text for macro2 after arg
&&&& 
';


$result_texts{'macro_in_macro_arg'} = '



a, hello text for macro2 after arg
&&&& 
';

$result_errors{'macro_in_macro_arg'} = [];


$result_floats{'macro_in_macro_arg'} = {};


1;
