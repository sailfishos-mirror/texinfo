use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'expansion_order'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'parent' => {},
              'text' => 'bidule',
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
              'text' => '@machin{}
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
            'arg_line' => ' bidule{arg}
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
              'text' => 'machin',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => '\\\\arg\\\\
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
            'arg_line' => ' machin
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
              'text' => '\\arg\\
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
        }
      ],
      'parent' => {},
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'expansion_order'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'expansion_order'}{'contents'}[0]{'contents'}[0];
$result_trees{'expansion_order'}{'contents'}[0]{'contents'}[0]{'args'}[1]{'parent'} = $result_trees{'expansion_order'}{'contents'}[0]{'contents'}[0];
$result_trees{'expansion_order'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'expansion_order'}{'contents'}[0]{'contents'}[0];
$result_trees{'expansion_order'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'expansion_order'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'expansion_order'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'expansion_order'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'expansion_order'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'expansion_order'}{'contents'}[0]{'contents'}[0];
$result_trees{'expansion_order'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'expansion_order'}{'contents'}[0];
$result_trees{'expansion_order'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'expansion_order'}{'contents'}[0];
$result_trees{'expansion_order'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'expansion_order'}{'contents'}[0]{'contents'}[2];
$result_trees{'expansion_order'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'expansion_order'}{'contents'}[0]{'contents'}[2];
$result_trees{'expansion_order'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'expansion_order'}{'contents'}[0]{'contents'}[2];
$result_trees{'expansion_order'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'expansion_order'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'args'}[0];
$result_trees{'expansion_order'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'expansion_order'}{'contents'}[0]{'contents'}[2]{'contents'}[2];
$result_trees{'expansion_order'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'expansion_order'}{'contents'}[0]{'contents'}[2];
$result_trees{'expansion_order'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'expansion_order'}{'contents'}[0];
$result_trees{'expansion_order'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'expansion_order'}{'contents'}[0];
$result_trees{'expansion_order'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'expansion_order'}{'contents'}[0]{'contents'}[4];
$result_trees{'expansion_order'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'expansion_order'}{'contents'}[0];
$result_trees{'expansion_order'}{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'expansion_order'}{'contents'}[0];
$result_trees{'expansion_order'}{'contents'}[0]{'parent'} = $result_trees{'expansion_order'};

$result_texis{'expansion_order'} = '@macro bidule{arg}
@machin{}
@end macro

@macro machin
\\\\arg\\\\

@end macro

\\arg\\

';


$result_texts{'expansion_order'} = '

\\arg\\

';

$result_errors{'expansion_order'} = [];


$result_floats{'expansion_order'} = {};


1;
