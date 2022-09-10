use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'macro_expands_to_empty'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'parent' => {},
              'text' => 'foo',
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
              'text' => '\\arg\\
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
            'arg_line' => ' foo {arg}
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
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'aa
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
$result_trees{'macro_expands_to_empty'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'macro_expands_to_empty'}{'contents'}[0]{'contents'}[0];
$result_trees{'macro_expands_to_empty'}{'contents'}[0]{'contents'}[0]{'args'}[1]{'parent'} = $result_trees{'macro_expands_to_empty'}{'contents'}[0]{'contents'}[0];
$result_trees{'macro_expands_to_empty'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_expands_to_empty'}{'contents'}[0]{'contents'}[0];
$result_trees{'macro_expands_to_empty'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_expands_to_empty'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'macro_expands_to_empty'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'macro_expands_to_empty'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'macro_expands_to_empty'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'macro_expands_to_empty'}{'contents'}[0]{'contents'}[0];
$result_trees{'macro_expands_to_empty'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_expands_to_empty'}{'contents'}[0];
$result_trees{'macro_expands_to_empty'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'macro_expands_to_empty'}{'contents'}[0];
$result_trees{'macro_expands_to_empty'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'macro_expands_to_empty'}{'contents'}[0];
$result_trees{'macro_expands_to_empty'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'macro_expands_to_empty'}{'contents'}[0]{'contents'}[3];
$result_trees{'macro_expands_to_empty'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'macro_expands_to_empty'}{'contents'}[0];
$result_trees{'macro_expands_to_empty'}{'contents'}[0]{'parent'} = $result_trees{'macro_expands_to_empty'};

$result_texis{'macro_expands_to_empty'} = '@macro foo {arg}
\\arg\\
@end macro


aa
';


$result_texts{'macro_expands_to_empty'} = '

aa
';

$result_errors{'macro_expands_to_empty'} = [];


$result_floats{'macro_expands_to_empty'} = {};


1;
