use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'blockitem_no_item'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'text' => 'mycommand',
              'type' => 'macro_name'
            },
            {
              'text' => 'a',
              'type' => 'macro_arg'
            },
            {
              'text' => 'b',
              'type' => 'macro_arg'
            },
            {
              'text' => 'c',
              'type' => 'macro_arg'
            }
          ],
          'cmdname' => 'linemacro',
          'contents' => [
            {
              'text' => '\\a\\, \\b\\ \\c\\
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'linemacro'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => {
                      'text' => '
'
                    }
                  },
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'text_arg' => 'linemacro'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 3,
                'macro' => ''
              }
            }
          ],
          'info' => {
            'arg_line' => ' mycommand {a, b, c}
'
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 1,
            'macro' => ''
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'cmdname' => 'bullet',
                  'type' => 'command_as_argument_inserted'
                }
              ],
              'info' => {
                'spaces_after_argument' => {
                  'text' => '
'
                }
              },
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'itemize',
          'contents' => [
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'AA
'
                    },
                    {
                      'source_marks' => [
                        {
                          'counter' => 1,
                          'element' => {
                            'args' => [
                              {
                                'contents' => [
                                  {
                                    'text' => 'd'
                                  },
                                  {
                                    'extra' => {
                                      'def_role' => 'spaces'
                                    },
                                    'text' => ' ',
                                    'type' => 'spaces'
                                  },
                                  {
                                    'text' => 'e'
                                  },
                                  {
                                    'extra' => {
                                      'def_role' => 'spaces'
                                    },
                                    'text' => ' ',
                                    'type' => 'spaces'
                                  },
                                  {
                                    'contents' => [
                                      {
                                        'text' => 'f'
                                      },
                                      {
                                        'extra' => {
                                          'def_role' => 'spaces'
                                        },
                                        'text' => ' ',
                                        'type' => 'spaces'
                                      },
                                      {
                                        'cmdname' => '
'
                                      }
                                    ],
                                    'type' => 'def_aggregate'
                                  }
                                ],
                                'type' => 'line_arg'
                              }
                            ],
                            'extra' => {
                              'name' => 'mycommand'
                            },
                            'info' => {
                              'spaces_before_argument' => {
                                'text' => ' '
                              }
                            },
                            'type' => 'linemacro_call'
                          },
                          'sourcemark_type' => 'linemacro_expansion',
                          'status' => 'start'
                        }
                      ],
                      'text' => '',
                      'type' => 'empty_line'
                    }
                  ],
                  'type' => 'paragraph'
                }
              ],
              'type' => 'before_item'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'itemize'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => {
                      'text' => '
'
                    }
                  },
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'text_arg' => 'itemize'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 8,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'command_as_argument' => {}
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 5,
            'macro' => ''
          }
        },
        {
          'contents' => [
            {
              'text' => 'd, e f '
            },
            {
              'cmdname' => '
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'source_marks' => [
            {
              'counter' => 1,
              'position' => 1,
              'sourcemark_type' => 'linemacro_expansion',
              'status' => 'end'
            }
          ],
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'blockitem_no_item'}{'contents'}[0]{'contents'}[2]{'extra'}{'command_as_argument'} = $result_trees{'blockitem_no_item'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0];

$result_texis{'blockitem_no_item'} = '@linemacro mycommand {a, b, c}
\\a\\, \\b\\ \\c\\
@end linemacro

@itemize
AA
@end itemize
d, e f @

';


$result_texts{'blockitem_no_item'} = '
AA
d, e f  
';

$result_errors{'blockitem_no_item'} = [
  {
    'error_line' => 'warning: @end should only appear at the beginning of a line
',
    'file_name' => '',
    'line_nr' => 8,
    'macro' => '',
    'text' => '@end should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @itemize has text but no @item
',
    'file_name' => '',
    'line_nr' => 5,
    'macro' => '',
    'text' => '@itemize has text but no @item',
    'type' => 'warning'
  }
];


$result_floats{'blockitem_no_item'} = {};


1;
