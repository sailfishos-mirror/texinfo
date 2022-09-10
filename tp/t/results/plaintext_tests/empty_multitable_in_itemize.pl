use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'empty_multitable_in_itemize'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'a--n itemize line'
                }
              ],
              'extra' => {
                'spaces_after_argument' => '
'
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'itemize',
          'contents' => [
            {
              'cmdname' => 'item',
              'contents' => [
                {
                  'parent' => {},
                  'text' => ' ',
                  'type' => 'empty_line_after_command'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'in macro
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
                        'line_nr' => 5,
                        'macro' => ''
                      }
                    }
                  ],
                  'extra' => {
                    'max_columns' => 0,
                    'prototypes' => []
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 4,
                    'macro' => ''
                  }
                },
                {
                  'parent' => {},
                  'text' => '
',
                  'type' => 'empty_line'
                }
              ],
              'extra' => {
                'item_number' => 1
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 2,
                'macro' => ''
              }
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'itemize'
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
                'text_arg' => 'itemize'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 7,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'spaces_before_argument' => ' '
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
$result_trees{'empty_multitable_in_itemize'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_multitable_in_itemize'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'empty_multitable_in_itemize'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'empty_multitable_in_itemize'}{'contents'}[0]{'contents'}[0];
$result_trees{'empty_multitable_in_itemize'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_multitable_in_itemize'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'empty_multitable_in_itemize'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'empty_multitable_in_itemize'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'empty_multitable_in_itemize'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'empty_multitable_in_itemize'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'empty_multitable_in_itemize'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'empty_multitable_in_itemize'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'empty_multitable_in_itemize'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'empty_multitable_in_itemize'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[3];
$result_trees{'empty_multitable_in_itemize'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_multitable_in_itemize'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0];
$result_trees{'empty_multitable_in_itemize'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'empty_multitable_in_itemize'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[0];
$result_trees{'empty_multitable_in_itemize'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'empty_multitable_in_itemize'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[3];
$result_trees{'empty_multitable_in_itemize'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'empty_multitable_in_itemize'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'empty_multitable_in_itemize'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'empty_multitable_in_itemize'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'empty_multitable_in_itemize'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_multitable_in_itemize'}{'contents'}[0]{'contents'}[0];
$result_trees{'empty_multitable_in_itemize'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_multitable_in_itemize'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'empty_multitable_in_itemize'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'empty_multitable_in_itemize'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'empty_multitable_in_itemize'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'empty_multitable_in_itemize'}{'contents'}[0]{'contents'}[0];
$result_trees{'empty_multitable_in_itemize'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_multitable_in_itemize'}{'contents'}[0];
$result_trees{'empty_multitable_in_itemize'}{'contents'}[0]{'parent'} = $result_trees{'empty_multitable_in_itemize'};

$result_texis{'empty_multitable_in_itemize'} = '@itemize a--n itemize line
@item in macro

@multitable
@end multitable

@end itemize
';


$result_texts{'empty_multitable_in_itemize'} = 'in macro


';

$result_errors{'empty_multitable_in_itemize'} = [
  {
    'error_line' => 'warning: empty multitable
',
    'file_name' => '',
    'line_nr' => 4,
    'macro' => '',
    'text' => 'empty multitable',
    'type' => 'warning'
  }
];


$result_floats{'empty_multitable_in_itemize'} = {};



$result_converted{'plaintext'}->{'empty_multitable_in_itemize'} = '   a–n itemize line in macro

';

1;
