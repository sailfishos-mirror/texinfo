use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'multitable_two_columns_too_much_cells'} = {
  'contents' => [
    {
      'contents' => [
        {
          'cmdname' => 'multitable',
          'contents' => [
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => 'columnfractions',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => '0.4 0.6'
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
                        'misc_args' => [
                          '0.4',
                          '0.6'
                        ]
                      },
                      'info' => {
                        'spaces_before_argument' => {
                          'text' => ' '
                        }
                      },
                      'source_info' => {
                        'line_nr' => 1
                      }
                    }
                  ],
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
                          'text' => ' ',
                          'type' => 'ignorable_spaces_after_command'
                        },
                        {
                          'contents' => [
                            {
                              'text' => 'first '
                            }
                          ],
                          'type' => 'paragraph'
                        }
                      ],
                      'extra' => {
                        'cell_number' => 1
                      },
                      'source_info' => {
                        'line_nr' => 2
                      }
                    },
                    {
                      'cmdname' => 'tab',
                      'contents' => [
                        {
                          'text' => ' ',
                          'type' => 'ignorable_spaces_after_command'
                        },
                        {
                          'contents' => [
                            {
                              'text' => 'second '
                            }
                          ],
                          'type' => 'paragraph'
                        },
                        {
                          'text' => ' ',
                          'type' => 'ignorable_spaces_after_command'
                        },
                        {
                          'contents' => [
                            {
                              'text' => 'first out '
                            }
                          ],
                          'type' => 'paragraph'
                        },
                        {
                          'text' => ' ',
                          'type' => 'ignorable_spaces_after_command'
                        },
                        {
                          'contents' => [
                            {
                              'text' => 'second out '
                            }
                          ],
                          'type' => 'paragraph'
                        },
                        {
                          'text' => ' ',
                          'type' => 'ignorable_spaces_after_command'
                        },
                        {
                          'contents' => [
                            {
                              'text' => 'third out
'
                            }
                          ],
                          'type' => 'paragraph'
                        }
                      ],
                      'extra' => {
                        'cell_number' => 2
                      },
                      'source_info' => {
                        'line_nr' => 2
                      }
                    }
                  ],
                  'extra' => {
                    'row_number' => 1
                  },
                  'type' => 'row'
                },
                {
                  'contents' => [
                    {
                      'cmdname' => 'item',
                      'contents' => [
                        {
                          'text' => ' ',
                          'type' => 'ignorable_spaces_after_command'
                        },
                        {
                          'contents' => [
                            {
                              'text' => 'first1 
'
                            }
                          ],
                          'type' => 'paragraph'
                        }
                      ],
                      'extra' => {
                        'cell_number' => 1
                      },
                      'source_info' => {
                        'line_nr' => 3
                      }
                    }
                  ],
                  'extra' => {
                    'row_number' => 2
                  },
                  'type' => 'row'
                },
                {
                  'contents' => [
                    {
                      'cmdname' => 'item',
                      'contents' => [
                        {
                          'text' => ' ',
                          'type' => 'ignorable_spaces_after_command'
                        },
                        {
                          'contents' => [
                            {
                              'text' => 'first2 '
                            }
                          ],
                          'type' => 'paragraph'
                        }
                      ],
                      'extra' => {
                        'cell_number' => 1
                      },
                      'source_info' => {
                        'line_nr' => 4
                      }
                    },
                    {
                      'cmdname' => 'tab',
                      'contents' => [
                        {
                          'text' => ' ',
                          'type' => 'ignorable_spaces_after_command'
                        },
                        {
                          'contents' => [
                            {
                              'text' => 'second2 '
                            }
                          ],
                          'type' => 'paragraph'
                        },
                        {
                          'text' => ' ',
                          'type' => 'ignorable_spaces_after_command'
                        },
                        {
                          'contents' => [
                            {
                              'text' => 'first2 out
'
                            }
                          ],
                          'type' => 'paragraph'
                        }
                      ],
                      'extra' => {
                        'cell_number' => 2
                      },
                      'source_info' => {
                        'line_nr' => 4
                      }
                    }
                  ],
                  'extra' => {
                    'row_number' => 3
                  },
                  'type' => 'row'
                }
              ],
              'type' => 'multitable_body'
            },
            {
              'cmdname' => 'end',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'multitable'
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
                'text_arg' => 'multitable'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 5
              }
            }
          ],
          'extra' => {
            'columnfractions' => {},
            'max_columns' => 2
          },
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 1
          }
        }
      ],
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'multitable_two_columns_too_much_cells'}{'contents'}[0]{'contents'}[0]{'extra'}{'columnfractions'} = $result_trees{'multitable_two_columns_too_much_cells'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0];

$result_texis{'multitable_two_columns_too_much_cells'} = '@multitable @columnfractions 0.4 0.6
@item first @tab second  first out  second out  third out
@item first1 
@item first2 @tab second2  first2 out
@end multitable
';


$result_texts{'multitable_two_columns_too_much_cells'} = 'first second first out second out third out
first1 
first2 second2 first2 out
';

$result_errors{'multitable_two_columns_too_much_cells'} = [
  {
    'error_line' => 'too many columns in multitable item (max 2)
',
    'line_nr' => 2,
    'text' => 'too many columns in multitable item (max 2)',
    'type' => 'error'
  },
  {
    'error_line' => 'too many columns in multitable item (max 2)
',
    'line_nr' => 2,
    'text' => 'too many columns in multitable item (max 2)',
    'type' => 'error'
  },
  {
    'error_line' => 'too many columns in multitable item (max 2)
',
    'line_nr' => 2,
    'text' => 'too many columns in multitable item (max 2)',
    'type' => 'error'
  },
  {
    'error_line' => 'too many columns in multitable item (max 2)
',
    'line_nr' => 4,
    'text' => 'too many columns in multitable item (max 2)',
    'type' => 'error'
  }
];


$result_floats{'multitable_two_columns_too_much_cells'} = {};


1;
