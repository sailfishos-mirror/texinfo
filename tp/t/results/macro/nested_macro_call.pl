use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'nested_macro_call'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'parent' => {},
              'text' => 'machin',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => '(machin)
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
            'arg_line' => ' machin{}
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
              'text' => 'truc',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => '@machin{}
',
              'type' => 'raw'
            },
            {
              'parent' => {},
              'text' => '
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
                'line_nr' => 8,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'arg_line' => ' truc{}
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
              'text' => 'Before (machin)
'
            },
            {
              'parent' => {},
              'text' => ' after truc.
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
$result_trees{'nested_macro_call'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'nested_macro_call'}{'contents'}[0]{'contents'}[0];
$result_trees{'nested_macro_call'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_macro_call'}{'contents'}[0]{'contents'}[0];
$result_trees{'nested_macro_call'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_macro_call'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'nested_macro_call'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'nested_macro_call'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'nested_macro_call'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'nested_macro_call'}{'contents'}[0]{'contents'}[0];
$result_trees{'nested_macro_call'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_macro_call'}{'contents'}[0];
$result_trees{'nested_macro_call'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'nested_macro_call'}{'contents'}[0];
$result_trees{'nested_macro_call'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'nested_macro_call'}{'contents'}[0]{'contents'}[2];
$result_trees{'nested_macro_call'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'nested_macro_call'}{'contents'}[0]{'contents'}[2];
$result_trees{'nested_macro_call'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'nested_macro_call'}{'contents'}[0]{'contents'}[2];
$result_trees{'nested_macro_call'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_macro_call'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'args'}[0];
$result_trees{'nested_macro_call'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'nested_macro_call'}{'contents'}[0]{'contents'}[2]{'contents'}[2];
$result_trees{'nested_macro_call'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'nested_macro_call'}{'contents'}[0]{'contents'}[2];
$result_trees{'nested_macro_call'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'nested_macro_call'}{'contents'}[0];
$result_trees{'nested_macro_call'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'nested_macro_call'}{'contents'}[0];
$result_trees{'nested_macro_call'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'nested_macro_call'}{'contents'}[0]{'contents'}[4];
$result_trees{'nested_macro_call'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'nested_macro_call'}{'contents'}[0]{'contents'}[4];
$result_trees{'nested_macro_call'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'nested_macro_call'}{'contents'}[0];
$result_trees{'nested_macro_call'}{'contents'}[0]{'parent'} = $result_trees{'nested_macro_call'};

$result_texis{'nested_macro_call'} = '@macro machin{}
(machin)
@end macro

@macro truc{}
@machin{}

@end macro

Before (machin)
 after truc.
';


$result_texts{'nested_macro_call'} = '

Before (machin)
 after truc.
';

$result_errors{'nested_macro_call'} = [];


$result_floats{'nested_macro_call'} = {};


1;
