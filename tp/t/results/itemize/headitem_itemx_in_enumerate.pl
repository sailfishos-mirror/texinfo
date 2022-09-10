use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'headitem_itemx_in_enumerate'} = {
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
          'cmdname' => 'enumerate',
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
                      'text' => 'item enumerate
'
                    }
                  ],
                  'parent' => {},
                  'type' => 'paragraph'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'itemx enumerate'
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
                  'cmdname' => 'itemx',
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 3,
                    'macro' => ''
                  }
                },
                {
                  'parent' => {},
                  'text' => ' ',
                  'type' => 'empty_line_after_command'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'headitem enumerate
'
                    }
                  ],
                  'parent' => {},
                  'type' => 'paragraph'
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
                      'text' => 'enumerate'
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
                'text_arg' => 'enumerate'
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
            'enumerate_specification' => '1'
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
$result_trees{'headitem_itemx_in_enumerate'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'headitem_itemx_in_enumerate'}{'contents'}[0]{'contents'}[0];
$result_trees{'headitem_itemx_in_enumerate'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'headitem_itemx_in_enumerate'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'headitem_itemx_in_enumerate'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'headitem_itemx_in_enumerate'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'headitem_itemx_in_enumerate'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'headitem_itemx_in_enumerate'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'headitem_itemx_in_enumerate'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'headitem_itemx_in_enumerate'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'headitem_itemx_in_enumerate'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'headitem_itemx_in_enumerate'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'headitem_itemx_in_enumerate'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'headitem_itemx_in_enumerate'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'headitem_itemx_in_enumerate'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'headitem_itemx_in_enumerate'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'headitem_itemx_in_enumerate'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'headitem_itemx_in_enumerate'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[4];
$result_trees{'headitem_itemx_in_enumerate'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'headitem_itemx_in_enumerate'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'headitem_itemx_in_enumerate'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'headitem_itemx_in_enumerate'}{'contents'}[0]{'contents'}[0];
$result_trees{'headitem_itemx_in_enumerate'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'headitem_itemx_in_enumerate'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'headitem_itemx_in_enumerate'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'headitem_itemx_in_enumerate'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'headitem_itemx_in_enumerate'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'headitem_itemx_in_enumerate'}{'contents'}[0]{'contents'}[0];
$result_trees{'headitem_itemx_in_enumerate'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'headitem_itemx_in_enumerate'}{'contents'}[0];
$result_trees{'headitem_itemx_in_enumerate'}{'contents'}[0]{'parent'} = $result_trees{'headitem_itemx_in_enumerate'};

$result_texis{'headitem_itemx_in_enumerate'} = '@enumerate
@item item enumerate
@itemx itemx enumerate
 headitem enumerate
@end enumerate
';


$result_texts{'headitem_itemx_in_enumerate'} = '1. item enumerate
itemx enumerate
headitem enumerate
';

$result_errors{'headitem_itemx_in_enumerate'} = [
  {
    'error_line' => '@itemx outside of table or list
',
    'file_name' => '',
    'line_nr' => 3,
    'macro' => '',
    'text' => '@itemx outside of table or list',
    'type' => 'error'
  },
  {
    'error_line' => '@headitem not meaningful inside `@enumerate\' block
',
    'file_name' => '',
    'line_nr' => 4,
    'macro' => '',
    'text' => '@headitem not meaningful inside `@enumerate\' block',
    'type' => 'error'
  }
];


$result_floats{'headitem_itemx_in_enumerate'} = {};


1;
