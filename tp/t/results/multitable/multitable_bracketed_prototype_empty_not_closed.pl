use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'multitable_bracketed_prototype_empty_not_closed'} = {
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
              'contents' => [
                {
                  'contents' => [],
                  'extra' => {
                    'spaces_before_argument' => '
'
                  },
                  'parent' => {},
                  'type' => 'bracketed'
                }
              ],
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'multitable',
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'multitable'
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
                'text_arg' => 'multitable'
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
            'end_command' => {},
            'max_columns' => 1,
            'prototypes' => [
              {
                'type' => 'bracketed_multitable_prototype'
              }
            ],
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 2,
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
$result_trees{'multitable_bracketed_prototype_empty_not_closed'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'multitable_bracketed_prototype_empty_not_closed'}{'contents'}[0];
$result_trees{'multitable_bracketed_prototype_empty_not_closed'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'multitable_bracketed_prototype_empty_not_closed'}{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'multitable_bracketed_prototype_empty_not_closed'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'multitable_bracketed_prototype_empty_not_closed'}{'contents'}[0]{'contents'}[1];
$result_trees{'multitable_bracketed_prototype_empty_not_closed'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'multitable_bracketed_prototype_empty_not_closed'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'multitable_bracketed_prototype_empty_not_closed'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'multitable_bracketed_prototype_empty_not_closed'}{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'multitable_bracketed_prototype_empty_not_closed'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'multitable_bracketed_prototype_empty_not_closed'}{'contents'}[0]{'contents'}[1];
$result_trees{'multitable_bracketed_prototype_empty_not_closed'}{'contents'}[0]{'contents'}[1]{'extra'}{'end_command'} = $result_trees{'multitable_bracketed_prototype_empty_not_closed'}{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'multitable_bracketed_prototype_empty_not_closed'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'multitable_bracketed_prototype_empty_not_closed'}{'contents'}[0];
$result_trees{'multitable_bracketed_prototype_empty_not_closed'}{'contents'}[0]{'parent'} = $result_trees{'multitable_bracketed_prototype_empty_not_closed'};

$result_texis{'multitable_bracketed_prototype_empty_not_closed'} = '
@multitable {
}@end multitable
';


$result_texts{'multitable_bracketed_prototype_empty_not_closed'} = '
';

$result_errors{'multitable_bracketed_prototype_empty_not_closed'} = [
  {
    'error_line' => 'misplaced {
',
    'file_name' => '',
    'line_nr' => 2,
    'macro' => '',
    'text' => 'misplaced {',
    'type' => 'error'
  }
];


$result_floats{'multitable_bracketed_prototype_empty_not_closed'} = {};


1;
