use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'redefine_texinfo_macro'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'parent' => {},
              'text' => 'code',
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
              'text' => '@emph{\\arg\\}',
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
            'arg_line' => ' code{arg}
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
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'code'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'emph',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 5,
                'macro' => 'code'
              }
            },
            {
              'parent' => {},
              'text' => '
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
$result_trees{'redefine_texinfo_macro'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'redefine_texinfo_macro'}{'contents'}[0]{'contents'}[0];
$result_trees{'redefine_texinfo_macro'}{'contents'}[0]{'contents'}[0]{'args'}[1]{'parent'} = $result_trees{'redefine_texinfo_macro'}{'contents'}[0]{'contents'}[0];
$result_trees{'redefine_texinfo_macro'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'redefine_texinfo_macro'}{'contents'}[0]{'contents'}[0];
$result_trees{'redefine_texinfo_macro'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'redefine_texinfo_macro'}{'contents'}[0]{'contents'}[0];
$result_trees{'redefine_texinfo_macro'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'redefine_texinfo_macro'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'redefine_texinfo_macro'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'redefine_texinfo_macro'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'redefine_texinfo_macro'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'redefine_texinfo_macro'}{'contents'}[0]{'contents'}[0];
$result_trees{'redefine_texinfo_macro'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'redefine_texinfo_macro'}{'contents'}[0];
$result_trees{'redefine_texinfo_macro'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'redefine_texinfo_macro'}{'contents'}[0];
$result_trees{'redefine_texinfo_macro'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'redefine_texinfo_macro'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'redefine_texinfo_macro'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'redefine_texinfo_macro'}{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'redefine_texinfo_macro'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'redefine_texinfo_macro'}{'contents'}[0]{'contents'}[2];
$result_trees{'redefine_texinfo_macro'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'redefine_texinfo_macro'}{'contents'}[0]{'contents'}[2];
$result_trees{'redefine_texinfo_macro'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'redefine_texinfo_macro'}{'contents'}[0];
$result_trees{'redefine_texinfo_macro'}{'contents'}[0]{'parent'} = $result_trees{'redefine_texinfo_macro'};

$result_texis{'redefine_texinfo_macro'} = '@macro code{arg}
@emph{\\arg\\}
@end macro

@emph{code}
';


$result_texts{'redefine_texinfo_macro'} = '
code
';

$result_errors{'redefine_texinfo_macro'} = [
  {
    'error_line' => 'warning: redefining Texinfo language command: @code
',
    'file_name' => '',
    'line_nr' => 1,
    'macro' => '',
    'text' => 'redefining Texinfo language command: @code',
    'type' => 'warning'
  }
];


$result_floats{'redefine_texinfo_macro'} = {};


1;
