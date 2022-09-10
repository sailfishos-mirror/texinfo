use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'macro_zero'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'parent' => {},
              'text' => 'zero',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => '0',
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
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 3,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'arg_line' => ' zero
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
              'text' => 'Macro
'
            },
            {
              'parent' => {},
              'text' => '0
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
$result_trees{'macro_zero'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'macro_zero'}{'contents'}[0]{'contents'}[0];
$result_trees{'macro_zero'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_zero'}{'contents'}[0]{'contents'}[0];
$result_trees{'macro_zero'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'macro_zero'}{'contents'}[0]{'contents'}[0];
$result_trees{'macro_zero'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_zero'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'macro_zero'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'macro_zero'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'macro_zero'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'macro_zero'}{'contents'}[0]{'contents'}[0];
$result_trees{'macro_zero'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_zero'}{'contents'}[0];
$result_trees{'macro_zero'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'macro_zero'}{'contents'}[0];
$result_trees{'macro_zero'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'macro_zero'}{'contents'}[0]{'contents'}[2];
$result_trees{'macro_zero'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'macro_zero'}{'contents'}[0]{'contents'}[2];
$result_trees{'macro_zero'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'macro_zero'}{'contents'}[0];
$result_trees{'macro_zero'}{'contents'}[0]{'parent'} = $result_trees{'macro_zero'};

$result_texis{'macro_zero'} = '@macro zero
0
@end macro

Macro
0
';


$result_texts{'macro_zero'} = '
Macro
0
';

$result_errors{'macro_zero'} = [];


$result_floats{'macro_zero'} = {};


1;
