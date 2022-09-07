use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'no_macrobody'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'parent' => {},
              'text' => 'nomacrobody',
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
            'arg_line' => ' nomacrobody {arg}
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
              'text' => '.
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
$result_trees{'no_macrobody'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'no_macrobody'}{'contents'}[0]{'contents'}[0];
$result_trees{'no_macrobody'}{'contents'}[0]{'contents'}[0]{'args'}[1]{'parent'} = $result_trees{'no_macrobody'}{'contents'}[0]{'contents'}[0];
$result_trees{'no_macrobody'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'no_macrobody'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'no_macrobody'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'no_macrobody'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'no_macrobody'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'no_macrobody'}{'contents'}[0]{'contents'}[0];
$result_trees{'no_macrobody'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'no_macrobody'}{'contents'}[0];
$result_trees{'no_macrobody'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'no_macrobody'}{'contents'}[0];
$result_trees{'no_macrobody'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'no_macrobody'}{'contents'}[0];
$result_trees{'no_macrobody'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'no_macrobody'}{'contents'}[0];
$result_trees{'no_macrobody'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'no_macrobody'}{'contents'}[0];
$result_trees{'no_macrobody'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'parent'} = $result_trees{'no_macrobody'}{'contents'}[0]{'contents'}[5];
$result_trees{'no_macrobody'}{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'no_macrobody'}{'contents'}[0];
$result_trees{'no_macrobody'}{'contents'}[0]{'parent'} = $result_trees{'no_macrobody'};

$result_texis{'no_macrobody'} = '@macro nomacrobody {arg}
@end macro



.
';


$result_texts{'no_macrobody'} = '


.
';

$result_errors{'no_macrobody'} = [];


$result_floats{'no_macrobody'} = {};


1;
