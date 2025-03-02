use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'in_errormsg'} = {
  'contents' => [
    {
      'contents' => [
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'anchor',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'in ref'
                }
              ],
              'type' => 'brace_arg'
            }
          ],
          'extra' => {
            'is_target' => 1,
            'normalized' => 'in-ref'
          },
          'source_info' => {
            'line_nr' => 2
          }
        },
        {
          'text' => '
',
          'type' => 'spaces_after_close_brace'
        },
        {
          'contents' => [
            {
              'text' => 'Text. '
            },
            {
              'cmdname' => 'errormsg',
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => 'anchor',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'in anchor'
                            }
                          ],
                          'type' => 'brace_arg'
                        }
                      ],
                      'extra' => {
                        'is_target' => 1,
                        'normalized' => 'in-anchor'
                      },
                      'source_info' => {
                        'line_nr' => 3
                      }
                    },
                    {
                      'text' => ' ',
                      'type' => 'spaces_after_close_brace'
                    },
                    {
                      'cmdname' => 'ref',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'in ref'
                            }
                          ],
                          'extra' => {
                            'node_content' => {
                              'contents' => [
                                {}
                              ]
                            },
                            'normalized' => 'in-ref'
                          },
                          'type' => 'brace_arg'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 3
                      }
                    }
                  ],
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'line_nr' => 3
              }
            },
            {
              'text' => '
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'errormsg',
          'contents' => [
            {
              'info' => {
                'spaces_before_argument' => {
                  'text' => '
'
                }
              },
              'type' => 'brace_arg'
            }
          ],
          'source_info' => {
            'line_nr' => 5
          }
        },
        {
          'cmdname' => 'table',
          'contents' => [
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => 'asis',
                      'source_info' => {
                        'line_nr' => 6
                      }
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
              'type' => 'arguments_line'
            },
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => 'item',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'item'
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
                      'info' => {
                        'spaces_before_argument' => {
                          'text' => ' '
                        }
                      },
                      'source_info' => {
                        'line_nr' => 7
                      }
                    }
                  ],
                  'type' => 'table_term'
                }
              ],
              'type' => 'table_entry'
            },
            {
              'cmdname' => 'end',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'table'
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
              'extra' => {
                'text_arg' => 'table'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 8
              }
            }
          ],
          'extra' => {
            'command_as_argument' => {}
          },
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 6
          }
        }
      ],
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'in_errormsg'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'in_errormsg'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[0];
$result_trees{'in_errormsg'}{'contents'}[0]{'contents'}[6]{'extra'}{'command_as_argument'} = $result_trees{'in_errormsg'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'contents'}[0]{'contents'}[0];

$result_texis{'in_errormsg'} = '
@anchor{in ref}
Text. @errormsg{@anchor{in anchor} @ref{in ref}}

@errormsg{
}@table @asis
@item item
@end table
';


$result_texts{'in_errormsg'} = '
Text. 

item
';

$result_errors{'in_errormsg'} = [
  {
    'error_line' => 'warning: @anchor should not appear anywhere inside @errormsg
',
    'line_nr' => 3,
    'text' => '@anchor should not appear anywhere inside @errormsg',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @ref should not appear anywhere inside @errormsg
',
    'line_nr' => 3,
    'text' => '@ref should not appear anywhere inside @errormsg',
    'type' => 'warning'
  },
  {
    'error_line' => '
',
    'line_nr' => 3,
    'text' => '',
    'type' => 'error'
  },
  {
    'error_line' => '@errormsg missing closing brace
',
    'line_nr' => 5,
    'text' => '@errormsg missing closing brace',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced }
',
    'line_nr' => 9,
    'text' => 'misplaced }',
    'type' => 'error'
  }
];


$result_floats{'in_errormsg'} = {};


1;
