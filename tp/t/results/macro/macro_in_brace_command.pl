use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'macro_in_brace_command'} = {
  'contents' => [
    {
      'contents' => [
        {
          'cmdname' => 'macro',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => ' foo
',
                  'type' => 'macro_line'
                }
              ],
              'type' => 'argument'
            },
            {
              'text' => 'foo-expansion
',
              'type' => 'raw'
            },
            {
              'cmdname' => 'end',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'macro'
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
                'text_arg' => 'macro'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 3
              }
            }
          ],
          'extra' => {
            'macro_name' => 'foo',
            'misc_args' => []
          },
          'source_info' => {
            'line_nr' => 1
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'macro',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => ' abar
',
                  'type' => 'macro_line'
                }
              ],
              'type' => 'argument'
            },
            {
              'text' => 'bar-expansion
',
              'type' => 'raw'
            },
            {
              'cmdname' => 'end',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'macro'
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
                'text_arg' => 'macro'
              },
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
          'extra' => {
            'macro_name' => 'abar',
            'misc_args' => []
          },
          'source_info' => {
            'line_nr' => 5
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'itemize',
          'contents' => [
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => 'bullet',
                      'source_info' => {
                        'line_nr' => 9
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
              'type' => 'argument'
            },
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
                      'cmdname' => 'email',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'source_marks' => [
                                {
                                  'counter' => 1,
                                  'element' => {
                                    'contents' => [
                                      {
                                        'type' => 'brace_arg'
                                      }
                                    ],
                                    'info' => {
                                      'command_name' => 'foo'
                                    },
                                    'type' => 'macro_call'
                                  },
                                  'sourcemark_type' => 'macro_expansion',
                                  'status' => 'start'
                                },
                                {
                                  'counter' => 1,
                                  'position' => 13,
                                  'sourcemark_type' => 'macro_expansion',
                                  'status' => 'end'
                                }
                              ],
                              'text' => 'foo-expansion'
                            },
                            {
                              'cmdname' => '@',
                              'source_marks' => [
                                {
                                  'counter' => 2,
                                  'element' => {
                                    'contents' => [
                                      {
                                        'type' => 'brace_arg'
                                      }
                                    ],
                                    'info' => {
                                      'command_name' => 'abar'
                                    },
                                    'type' => 'macro_call'
                                  },
                                  'sourcemark_type' => 'macro_expansion',
                                  'status' => 'start'
                                }
                              ]
                            },
                            {
                              'source_marks' => [
                                {
                                  'counter' => 2,
                                  'position' => 13,
                                  'sourcemark_type' => 'macro_expansion',
                                  'status' => 'end'
                                }
                              ],
                              'text' => 'bar-expansion'
                            }
                          ],
                          'type' => 'brace_arg'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 10
                      }
                    },
                    {
                      'text' => ',
'
                    },
                    {
                      'text' => '  also helped.
'
                    }
                  ],
                  'type' => 'paragraph'
                }
              ],
              'extra' => {
                'item_number' => 1
              },
              'source_info' => {
                'line_nr' => 10
              }
            },
            {
              'cmdname' => 'end',
              'contents' => [
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
              'extra' => {
                'text_arg' => 'itemize'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 12
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
            'line_nr' => 9
          }
        }
      ],
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'macro_in_brace_command'}{'contents'}[0]{'contents'}[4]{'extra'}{'command_as_argument'} = $result_trees{'macro_in_brace_command'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'contents'}[0];

$result_texis{'macro_in_brace_command'} = '@macro foo
foo-expansion
@end macro

@macro abar
bar-expansion
@end macro

@itemize @bullet
@item @email{foo-expansion@@bar-expansion},
  also helped.
@end itemize
';


$result_texts{'macro_in_brace_command'} = '

foo-expansion@bar-expansion,
  also helped.
';

$result_errors{'macro_in_brace_command'} = [];


$result_floats{'macro_in_brace_command'} = {};


1;
