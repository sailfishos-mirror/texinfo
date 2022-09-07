use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'macro_in_end_argument'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'parent' => {},
              'text' => 'acartouche',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => 'cartouche',
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
            'arg_line' => ' acartouche
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
          'args' => [
            {
              'contents' => [],
              'extra' => {
                'spaces_after_argument' => '
'
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'cartouche',
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'cartouche'
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
                'text_arg' => 'cartouche'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 6,
                'macro' => ''
              }
            }
          ],
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 5,
            'macro' => ''
          }
        }
      ],
      'parent' => {},
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'macro_in_end_argument'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'macro_in_end_argument'}{'contents'}[0]{'contents'}[0];
$result_trees{'macro_in_end_argument'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_end_argument'}{'contents'}[0]{'contents'}[0];
$result_trees{'macro_in_end_argument'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'macro_in_end_argument'}{'contents'}[0]{'contents'}[0];
$result_trees{'macro_in_end_argument'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_end_argument'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'macro_in_end_argument'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'macro_in_end_argument'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'macro_in_end_argument'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'macro_in_end_argument'}{'contents'}[0]{'contents'}[0];
$result_trees{'macro_in_end_argument'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_end_argument'}{'contents'}[0];
$result_trees{'macro_in_end_argument'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'macro_in_end_argument'}{'contents'}[0];
$result_trees{'macro_in_end_argument'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'macro_in_end_argument'}{'contents'}[0];
$result_trees{'macro_in_end_argument'}{'contents'}[0]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'macro_in_end_argument'}{'contents'}[0]{'contents'}[3];
$result_trees{'macro_in_end_argument'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_end_argument'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0];
$result_trees{'macro_in_end_argument'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'macro_in_end_argument'}{'contents'}[0]{'contents'}[3]{'contents'}[0];
$result_trees{'macro_in_end_argument'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'macro_in_end_argument'}{'contents'}[0]{'contents'}[3];
$result_trees{'macro_in_end_argument'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'macro_in_end_argument'}{'contents'}[0];
$result_trees{'macro_in_end_argument'}{'contents'}[0]{'parent'} = $result_trees{'macro_in_end_argument'};

$result_texis{'macro_in_end_argument'} = '@macro acartouche
cartouche
@end macro

@cartouche
@end cartouche
';


$result_texts{'macro_in_end_argument'} = '
';

$result_errors{'macro_in_end_argument'} = [];


$result_floats{'macro_in_end_argument'} = {};


1;
