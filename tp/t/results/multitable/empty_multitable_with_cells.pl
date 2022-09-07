use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'empty_multitable_with_cells'} = {
  'contents' => [
    {
      'contents' => [
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
          'cmdname' => 'multitable',
          'contents' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => ' ',
                  'type' => 'empty_spaces_after_command'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'item in empty multitable '
                    }
                  ],
                  'parent' => {},
                  'type' => 'paragraph'
                },
                {
                  'parent' => {},
                  'text' => ' ',
                  'type' => 'empty_spaces_after_command'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'tab in empty m '
                    }
                  ],
                  'parent' => {},
                  'type' => 'paragraph'
                },
                {
                  'parent' => {},
                  'text' => ' ',
                  'type' => 'empty_spaces_after_command'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'second tab in empty m
'
                    }
                  ],
                  'parent' => {},
                  'type' => 'paragraph'
                },
                {
                  'parent' => {},
                  'text' => ' ',
                  'type' => 'empty_spaces_after_command'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'item in empty m
'
                    }
                  ],
                  'parent' => {},
                  'type' => 'paragraph'
                }
              ],
              'parent' => {},
              'type' => 'before_item'
            },
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
                'line_nr' => 4,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'end_command' => {},
            'max_columns' => 0,
            'prototypes' => []
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
$result_trees{'empty_multitable_with_cells'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'empty_multitable_with_cells'}{'contents'}[0]{'contents'}[0];
$result_trees{'empty_multitable_with_cells'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_multitable_with_cells'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'empty_multitable_with_cells'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'empty_multitable_with_cells'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'empty_multitable_with_cells'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'empty_multitable_with_cells'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'empty_multitable_with_cells'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'empty_multitable_with_cells'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'empty_multitable_with_cells'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'empty_multitable_with_cells'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[3];
$result_trees{'empty_multitable_with_cells'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'empty_multitable_with_cells'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'empty_multitable_with_cells'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'empty_multitable_with_cells'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'empty_multitable_with_cells'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[5]{'contents'}[0]{'parent'} = $result_trees{'empty_multitable_with_cells'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[5];
$result_trees{'empty_multitable_with_cells'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'empty_multitable_with_cells'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'empty_multitable_with_cells'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[6]{'parent'} = $result_trees{'empty_multitable_with_cells'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'empty_multitable_with_cells'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[7]{'contents'}[0]{'parent'} = $result_trees{'empty_multitable_with_cells'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[7];
$result_trees{'empty_multitable_with_cells'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[7]{'parent'} = $result_trees{'empty_multitable_with_cells'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'empty_multitable_with_cells'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_multitable_with_cells'}{'contents'}[0]{'contents'}[0];
$result_trees{'empty_multitable_with_cells'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_multitable_with_cells'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'empty_multitable_with_cells'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'empty_multitable_with_cells'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'empty_multitable_with_cells'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'empty_multitable_with_cells'}{'contents'}[0]{'contents'}[0];
$result_trees{'empty_multitable_with_cells'}{'contents'}[0]{'contents'}[0]{'extra'}{'end_command'} = $result_trees{'empty_multitable_with_cells'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'empty_multitable_with_cells'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_multitable_with_cells'}{'contents'}[0];
$result_trees{'empty_multitable_with_cells'}{'contents'}[0]{'parent'} = $result_trees{'empty_multitable_with_cells'};

$result_texis{'empty_multitable_with_cells'} = '@multitable
 item in empty multitable  tab in empty m  second tab in empty m
 item in empty m
@end multitable
';


$result_texts{'empty_multitable_with_cells'} = 'item in empty multitable tab in empty m second tab in empty m
item in empty m
';

$result_errors{'empty_multitable_with_cells'} = [
  {
    'error_line' => 'warning: empty multitable
',
    'file_name' => '',
    'line_nr' => 1,
    'macro' => '',
    'text' => 'empty multitable',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @item in empty multitable
',
    'file_name' => '',
    'line_nr' => 2,
    'macro' => '',
    'text' => '@item in empty multitable',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @tab in empty multitable
',
    'file_name' => '',
    'line_nr' => 2,
    'macro' => '',
    'text' => '@tab in empty multitable',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @tab in empty multitable
',
    'file_name' => '',
    'line_nr' => 2,
    'macro' => '',
    'text' => '@tab in empty multitable',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @item in empty multitable
',
    'file_name' => '',
    'line_nr' => 3,
    'macro' => '',
    'text' => '@item in empty multitable',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @multitable has text but no @item
',
    'file_name' => '',
    'line_nr' => 1,
    'macro' => '',
    'text' => '@multitable has text but no @item',
    'type' => 'warning'
  }
];


$result_floats{'empty_multitable_with_cells'} = {};


1;
