use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'begin_conditional_in_linemacro'} = {
  'contents' => [
    {
      'contents' => [
        {
          'cmdname' => 'linemacro',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => ' lm {a}
',
                  'type' => 'macro_line'
                }
              ],
              'type' => 'arguments_line'
            },
            {
              'text' => 'b \\a\\ a
',
              'type' => 'raw'
            },
            {
              'cmdname' => 'end',
              'contents' => [
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
              'extra' => {
                'text_arg' => 'linemacro'
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
            'macro_name' => 'lm',
            'misc_args' => [
              'a'
            ]
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
          'contents' => [
            {
              'source_marks' => [
                {
                  'counter' => 1,
                  'element' => {
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'text' => '
@ifset',
                            'type' => 'bracketed_linemacro_arg'
                          }
                        ],
                        'type' => 'line_arg'
                      }
                    ],
                    'info' => {
                      'command_name' => 'lm',
                      'spaces_before_argument' => {
                        'text' => ' '
                      }
                    },
                    'type' => 'linemacro_call'
                  },
                  'sourcemark_type' => 'linemacro_expansion',
                  'status' => 'start'
                },
                {
                  'counter' => 1,
                  'element' => {
                    'cmdname' => 'ifset',
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'contents' => [
                              {
                                'source_marks' => [
                                  {
                                    'counter' => 1,
                                    'position' => 1,
                                    'sourcemark_type' => 'linemacro_expansion',
                                    'status' => 'end'
                                  }
                                ],
                                'text' => 'a'
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
                        'text' => 'in ifset
',
                        'type' => 'raw'
                      },
                      {
                        'cmdname' => 'end',
                        'contents' => [
                          {
                            'contents' => [
                              {
                                'text' => 'ifset'
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
                          'text_arg' => 'ifset'
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
                    'info' => {
                      'spaces_before_argument' => {
                        'text' => ' '
                      }
                    },
                    'source_info' => {
                      'line_nr' => 6,
                      'macro' => 'lm'
                    }
                  },
                  'position' => 3,
                  'sourcemark_type' => 'ignored_conditional_block'
                }
              ],
              'text' => 'b 
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
          'contents' => [
            {
              'source_marks' => [
                {
                  'counter' => 2,
                  'element' => {
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'text' => '
@ifclear',
                            'type' => 'bracketed_linemacro_arg'
                          }
                        ],
                        'type' => 'line_arg'
                      }
                    ],
                    'info' => {
                      'command_name' => 'lm',
                      'spaces_before_argument' => {
                        'text' => ' '
                      }
                    },
                    'type' => 'linemacro_call'
                  },
                  'sourcemark_type' => 'linemacro_expansion',
                  'status' => 'start'
                },
                {
                  'counter' => 1,
                  'element' => {
                    'cmdname' => 'ifclear',
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'contents' => [
                              {
                                'source_marks' => [
                                  {
                                    'counter' => 2,
                                    'position' => 1,
                                    'sourcemark_type' => 'linemacro_expansion',
                                    'status' => 'end'
                                  }
                                ],
                                'text' => 'a'
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
                      }
                    ],
                    'info' => {
                      'spaces_before_argument' => {
                        'text' => ' '
                      }
                    },
                    'source_info' => {
                      'line_nr' => 11,
                      'macro' => 'lm'
                    }
                  },
                  'position' => 3,
                  'sourcemark_type' => 'expanded_conditional_command',
                  'status' => 'start'
                }
              ],
              'text' => 'b 
'
            },
            {
              'source_marks' => [
                {
                  'counter' => 1,
                  'element' => {
                    'cmdname' => 'end',
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'text' => 'ifclear'
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
                      'text_arg' => 'ifclear'
                    },
                    'info' => {
                      'spaces_before_argument' => {
                        'text' => ' '
                      }
                    },
                    'source_info' => {
                      'line_nr' => 13
                    }
                  },
                  'position' => 11,
                  'sourcemark_type' => 'expanded_conditional_command',
                  'status' => 'end'
                }
              ],
              'text' => 'in ifclear
'
            }
          ],
          'type' => 'paragraph'
        }
      ],
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};

$result_texis{'begin_conditional_in_linemacro'} = '@linemacro lm {a}
b \\a\\ a
@end linemacro

b 

b 
in ifclear
';


$result_texts{'begin_conditional_in_linemacro'} = '
b 

b 
in ifclear
';

$result_errors{'begin_conditional_in_linemacro'} = [];


$result_floats{'begin_conditional_in_linemacro'} = {};


1;
