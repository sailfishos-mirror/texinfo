use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'itemx_in_itemize_enumerate_in_table'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'contents' => [
                {
                  'cmdname' => 'strong',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 1,
                    'macro' => ''
                  },
                  'type' => 'command_as_argument'
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
          'cmdname' => 'table',
          'contents' => [
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'item'
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
                      'cmdname' => 'item',
                      'extra' => {
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
                  'type' => 'table_term'
                },
                {
                  'contents' => [
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
                          'text' => 'In item, nested itemize
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
                              'cmdname' => 'bullet',
                              'contents' => [],
                              'parent' => {},
                              'type' => 'command_as_argument_inserted'
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
                          'contents' => [
                            {
                              'args' => [
                                {
                                  'contents' => [
                                    {
                                      'parent' => {},
                                      'text' => 'in nested itemize itemx'
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
                                'line_nr' => 6,
                                'macro' => ''
                              }
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
                            'command_argument' => 'itemize',
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
                        'command_as_argument' => {},
                        'end_command' => {}
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
                          'contents' => [
                            {
                              'args' => [
                                {
                                  'contents' => [
                                    {
                                      'parent' => {},
                                      'text' => 'in nested enumerate itemx'
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
                                'line_nr' => 10,
                                'macro' => ''
                              }
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
                            'command_argument' => 'enumerate',
                            'spaces_before_argument' => ' ',
                            'text_arg' => 'enumerate'
                          },
                          'parent' => {},
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 11,
                            'macro' => ''
                          }
                        }
                      ],
                      'extra' => {
                        'end_command' => {},
                        'enumerate_specification' => '1'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 9,
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
                  'parent' => {},
                  'type' => 'table_item'
                }
              ],
              'parent' => {},
              'type' => 'table_entry'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'table'
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
                'command_argument' => 'table',
                'spaces_before_argument' => ' ',
                'text_arg' => 'table'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 13,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'command_as_argument' => {},
            'end_command' => {},
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
$result_trees{'itemx_in_itemize_enumerate_in_table'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemx_in_itemize_enumerate_in_table'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'itemx_in_itemize_enumerate_in_table'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemx_in_itemize_enumerate_in_table'}{'contents'}[0]{'contents'}[0];
$result_trees{'itemx_in_itemize_enumerate_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemx_in_itemize_enumerate_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'itemx_in_itemize_enumerate_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemx_in_itemize_enumerate_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'itemx_in_itemize_enumerate_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemx_in_itemize_enumerate_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'itemx_in_itemize_enumerate_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemx_in_itemize_enumerate_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'itemx_in_itemize_enumerate_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'itemx_in_itemize_enumerate_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'itemx_in_itemize_enumerate_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'itemx_in_itemize_enumerate_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'itemx_in_itemize_enumerate_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'itemx_in_itemize_enumerate_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'itemx_in_itemize_enumerate_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemx_in_itemize_enumerate_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0];
$result_trees{'itemx_in_itemize_enumerate_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'itemx_in_itemize_enumerate_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[2];
$result_trees{'itemx_in_itemize_enumerate_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemx_in_itemize_enumerate_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'itemx_in_itemize_enumerate_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemx_in_itemize_enumerate_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[0];
$result_trees{'itemx_in_itemize_enumerate_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemx_in_itemize_enumerate_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[2]{'contents'}[0];
$result_trees{'itemx_in_itemize_enumerate_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'itemx_in_itemize_enumerate_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[2];
$result_trees{'itemx_in_itemize_enumerate_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemx_in_itemize_enumerate_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'itemx_in_itemize_enumerate_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[2]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemx_in_itemize_enumerate_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[2]{'contents'}[1];
$result_trees{'itemx_in_itemize_enumerate_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'itemx_in_itemize_enumerate_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[2];
$result_trees{'itemx_in_itemize_enumerate_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[2]{'extra'}{'command_as_argument'} = $result_trees{'itemx_in_itemize_enumerate_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'itemx_in_itemize_enumerate_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[2]{'extra'}{'end_command'} = $result_trees{'itemx_in_itemize_enumerate_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[2]{'contents'}[1];
$result_trees{'itemx_in_itemize_enumerate_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'itemx_in_itemize_enumerate_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'itemx_in_itemize_enumerate_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'itemx_in_itemize_enumerate_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'itemx_in_itemize_enumerate_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'itemx_in_itemize_enumerate_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[4];
$result_trees{'itemx_in_itemize_enumerate_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemx_in_itemize_enumerate_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'itemx_in_itemize_enumerate_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemx_in_itemize_enumerate_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[4]{'contents'}[0]{'contents'}[0];
$result_trees{'itemx_in_itemize_enumerate_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemx_in_itemize_enumerate_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[4]{'contents'}[0];
$result_trees{'itemx_in_itemize_enumerate_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'itemx_in_itemize_enumerate_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[4];
$result_trees{'itemx_in_itemize_enumerate_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemx_in_itemize_enumerate_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[4]{'contents'}[1]{'args'}[0];
$result_trees{'itemx_in_itemize_enumerate_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[4]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemx_in_itemize_enumerate_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[4]{'contents'}[1];
$result_trees{'itemx_in_itemize_enumerate_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'itemx_in_itemize_enumerate_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[4];
$result_trees{'itemx_in_itemize_enumerate_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[4]{'extra'}{'end_command'} = $result_trees{'itemx_in_itemize_enumerate_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[4]{'contents'}[1];
$result_trees{'itemx_in_itemize_enumerate_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[4]{'parent'} = $result_trees{'itemx_in_itemize_enumerate_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'itemx_in_itemize_enumerate_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[5]{'parent'} = $result_trees{'itemx_in_itemize_enumerate_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'itemx_in_itemize_enumerate_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemx_in_itemize_enumerate_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'itemx_in_itemize_enumerate_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemx_in_itemize_enumerate_in_table'}{'contents'}[0]{'contents'}[0];
$result_trees{'itemx_in_itemize_enumerate_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemx_in_itemize_enumerate_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'itemx_in_itemize_enumerate_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemx_in_itemize_enumerate_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'itemx_in_itemize_enumerate_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemx_in_itemize_enumerate_in_table'}{'contents'}[0]{'contents'}[0];
$result_trees{'itemx_in_itemize_enumerate_in_table'}{'contents'}[0]{'contents'}[0]{'extra'}{'command_as_argument'} = $result_trees{'itemx_in_itemize_enumerate_in_table'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'itemx_in_itemize_enumerate_in_table'}{'contents'}[0]{'contents'}[0]{'extra'}{'end_command'} = $result_trees{'itemx_in_itemize_enumerate_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'itemx_in_itemize_enumerate_in_table'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemx_in_itemize_enumerate_in_table'}{'contents'}[0];
$result_trees{'itemx_in_itemize_enumerate_in_table'}{'contents'}[0]{'parent'} = $result_trees{'itemx_in_itemize_enumerate_in_table'};

$result_texis{'itemx_in_itemize_enumerate_in_table'} = '@table @strong
@item item

In item, nested itemize
@itemize
@itemx in nested itemize itemx
@end itemize

@enumerate
@itemx in nested enumerate itemx
@end enumerate

@end table
';


$result_texts{'itemx_in_itemize_enumerate_in_table'} = 'item

In item, nested itemize
in nested itemize itemx

in nested enumerate itemx

';

$result_errors{'itemx_in_itemize_enumerate_in_table'} = [
  {
    'error_line' => '@itemx outside of table or list
',
    'file_name' => '',
    'line_nr' => 6,
    'macro' => '',
    'text' => '@itemx outside of table or list',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: @itemize has text but no @item
',
    'file_name' => '',
    'line_nr' => 5,
    'macro' => '',
    'text' => '@itemize has text but no @item',
    'type' => 'warning'
  },
  {
    'error_line' => '@itemx outside of table or list
',
    'file_name' => '',
    'line_nr' => 10,
    'macro' => '',
    'text' => '@itemx outside of table or list',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: @enumerate has text but no @item
',
    'file_name' => '',
    'line_nr' => 9,
    'macro' => '',
    'text' => '@enumerate has text but no @item',
    'type' => 'warning'
  }
];


$result_floats{'itemx_in_itemize_enumerate_in_table'} = {};


1;
