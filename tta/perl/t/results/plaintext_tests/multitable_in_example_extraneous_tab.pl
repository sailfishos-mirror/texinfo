use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'multitable_in_example_extraneous_tab'} = {
  'contents' => [
    {
      'contents' => [
        {
          'cmdname' => 'example',
          'contents' => [
            {
              'contents' => [
                {
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
              'cmdname' => 'multitable',
              'contents' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'a'
                            }
                          ],
                          'source_info' => {
                            'line_nr' => 2
                          },
                          'type' => 'bracketed_arg'
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
                                  'text' => ' ',
                                  'type' => 'ignorable_spaces_after_command'
                                },
                                {
                                  'text' => 'ita '
                                }
                              ],
                              'type' => 'preformatted'
                            },
                            {
                              'contents' => [
                                {
                                  'text' => ' ',
                                  'type' => 'ignorable_spaces_after_command'
                                },
                                {
                                  'text' => 'tmp
'
                                }
                              ],
                              'type' => 'preformatted'
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
                              'contents' => [
                                {
                                  'text' => ' ',
                                  'type' => 'ignorable_spaces_after_command'
                                },
                                {
                                  'text' => 'secit '
                                }
                              ],
                              'type' => 'preformatted'
                            },
                            {
                              'contents' => [
                                {
                                  'text' => '
',
                                  'type' => 'ignorable_spaces_after_command'
                                }
                              ],
                              'type' => 'preformatted'
                            }
                          ],
                          'extra' => {
                            'cell_number' => 1
                          },
                          'source_info' => {
                            'line_nr' => 4
                          }
                        }
                      ],
                      'extra' => {
                        'row_number' => 2
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
                'max_columns' => 1
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 2
              }
            },
            {
              'cmdname' => 'end',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'example'
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
                'text_arg' => 'example'
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

$result_texis{'multitable_in_example_extraneous_tab'} = '@example
@multitable {a}
@item ita  tmp
@item secit 
@end multitable
@end example
';


$result_texts{'multitable_in_example_extraneous_tab'} = 'ita tmp
secit ';

$result_errors{'multitable_in_example_extraneous_tab'} = [
  {
    'error_line' => 'too many columns in multitable item (max 1)
',
    'line_nr' => 3,
    'text' => 'too many columns in multitable item (max 1)',
    'type' => 'error'
  },
  {
    'error_line' => 'too many columns in multitable item (max 1)
',
    'line_nr' => 4,
    'text' => 'too many columns in multitable item (max 1)',
    'type' => 'error'
  }
];


$result_floats{'multitable_in_example_extraneous_tab'} = {};



$result_converted{'plaintext'}->{'multitable_in_example_extraneous_tab'} = '     ita
     tmp
     secit
';

1;
