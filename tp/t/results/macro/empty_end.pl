use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'empty_end'} = {
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
              'text' => 'aaa',
              'type' => 'macro_arg'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => 'in foo',
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
            'arg_line' => ' foo {aaa, }
'
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 1,
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
$result_trees{'empty_end'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'empty_end'}{'contents'}[0]{'contents'}[0];
$result_trees{'empty_end'}{'contents'}[0]{'contents'}[0]{'args'}[1]{'parent'} = $result_trees{'empty_end'}{'contents'}[0]{'contents'}[0];
$result_trees{'empty_end'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_end'}{'contents'}[0]{'contents'}[0];
$result_trees{'empty_end'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'empty_end'}{'contents'}[0]{'contents'}[0];
$result_trees{'empty_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'empty_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'empty_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'empty_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'empty_end'}{'contents'}[0]{'contents'}[0];
$result_trees{'empty_end'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_end'}{'contents'}[0];
$result_trees{'empty_end'}{'contents'}[0]{'parent'} = $result_trees{'empty_end'};

$result_texis{'empty_end'} = '@macro foo {aaa, }
in foo
@end macro';


$result_texts{'empty_end'} = '';

$result_errors{'empty_end'} = [];


$result_floats{'empty_end'} = {};


1;
