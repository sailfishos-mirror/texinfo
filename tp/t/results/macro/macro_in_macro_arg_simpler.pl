use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'macro_in_macro_arg_simpler'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'parent' => {},
              'text' => 'macrooneone',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => 'a, macro2',
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
              'parent' => {}
            }
          ],
          'extra' => {
            'arg_line' => ' macrooneone
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
              'text' => 'a, macro2text for macro2
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
$result_trees{'macro_in_macro_arg_simpler'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'macro_in_macro_arg_simpler'}{'contents'}[0]{'contents'}[0];
$result_trees{'macro_in_macro_arg_simpler'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_macro_arg_simpler'}{'contents'}[0]{'contents'}[0];
$result_trees{'macro_in_macro_arg_simpler'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'macro_in_macro_arg_simpler'}{'contents'}[0]{'contents'}[0];
$result_trees{'macro_in_macro_arg_simpler'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_macro_arg_simpler'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'macro_in_macro_arg_simpler'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'macro_in_macro_arg_simpler'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'macro_in_macro_arg_simpler'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'macro_in_macro_arg_simpler'}{'contents'}[0]{'contents'}[0];
$result_trees{'macro_in_macro_arg_simpler'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_macro_arg_simpler'}{'contents'}[0];
$result_trees{'macro_in_macro_arg_simpler'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'macro_in_macro_arg_simpler'}{'contents'}[0];
$result_trees{'macro_in_macro_arg_simpler'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'macro_in_macro_arg_simpler'}{'contents'}[0]{'contents'}[2];
$result_trees{'macro_in_macro_arg_simpler'}{'contents'}[0]{'contents'}[2]{'args'}[1]{'parent'} = $result_trees{'macro_in_macro_arg_simpler'}{'contents'}[0]{'contents'}[2];
$result_trees{'macro_in_macro_arg_simpler'}{'contents'}[0]{'contents'}[2]{'args'}[2]{'parent'} = $result_trees{'macro_in_macro_arg_simpler'}{'contents'}[0]{'contents'}[2];
$result_trees{'macro_in_macro_arg_simpler'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'macro_in_macro_arg_simpler'}{'contents'}[0]{'contents'}[2];
$result_trees{'macro_in_macro_arg_simpler'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'macro_in_macro_arg_simpler'}{'contents'}[0]{'contents'}[2];
$result_trees{'macro_in_macro_arg_simpler'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'macro_in_macro_arg_simpler'}{'contents'}[0]{'contents'}[2];
$result_trees{'macro_in_macro_arg_simpler'}{'contents'}[0]{'contents'}[2]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_macro_arg_simpler'}{'contents'}[0]{'contents'}[2]{'contents'}[3]{'args'}[0];
$result_trees{'macro_in_macro_arg_simpler'}{'contents'}[0]{'contents'}[2]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'macro_in_macro_arg_simpler'}{'contents'}[0]{'contents'}[2]{'contents'}[3];
$result_trees{'macro_in_macro_arg_simpler'}{'contents'}[0]{'contents'}[2]{'contents'}[3]{'parent'} = $result_trees{'macro_in_macro_arg_simpler'}{'contents'}[0]{'contents'}[2];
$result_trees{'macro_in_macro_arg_simpler'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'macro_in_macro_arg_simpler'}{'contents'}[0];
$result_trees{'macro_in_macro_arg_simpler'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'macro_in_macro_arg_simpler'}{'contents'}[0];
$result_trees{'macro_in_macro_arg_simpler'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'macro_in_macro_arg_simpler'}{'contents'}[0]{'contents'}[4];
$result_trees{'macro_in_macro_arg_simpler'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'macro_in_macro_arg_simpler'}{'contents'}[0]{'contents'}[4];
$result_trees{'macro_in_macro_arg_simpler'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'macro_in_macro_arg_simpler'}{'contents'}[0];
$result_trees{'macro_in_macro_arg_simpler'}{'contents'}[0]{'parent'} = $result_trees{'macro_in_macro_arg_simpler'};

$result_texis{'macro_in_macro_arg_simpler'} = '@macro macrooneone
a, macro2
@end macro

@macro macrothree{text, arg}
\\text\\
&&&& \\arg\\
@end macro

a, macro2text for macro2
&&&& 
';


$result_texts{'macro_in_macro_arg_simpler'} = '

a, macro2text for macro2
&&&& 
';

$result_errors{'macro_in_macro_arg_simpler'} = [];


$result_floats{'macro_in_macro_arg_simpler'} = {};


1;
