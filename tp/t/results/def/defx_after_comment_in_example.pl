use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'defx_after_comment_in_example'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
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
          'cmdname' => 'example',
          'contents' => [
            {
              'cmdname' => 'deffn',
              'contents' => [
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'contents' => [
                                {
                                  'text' => 'fset'
                                }
                              ],
                              'type' => 'def_line_arg'
                            }
                          ],
                          'extra' => {
                            'def_role' => 'category'
                          },
                          'type' => 'def_category'
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
                              'contents' => [
                                {
                                  'args' => [
                                    {
                                      'contents' => [
                                        {
                                          'text' => 'i'
                                        }
                                      ],
                                      'type' => 'brace_command_arg'
                                    }
                                  ],
                                  'cmdname' => 'var',
                                  'source_info' => {
                                    'line_nr' => 2
                                  }
                                }
                              ],
                              'type' => 'def_line_arg'
                            }
                          ],
                          'extra' => {
                            'def_role' => 'name'
                          },
                          'type' => 'def_name'
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
                              'contents' => [
                                {
                                  'text' => 'a'
                                }
                              ],
                              'type' => 'def_line_arg'
                            }
                          ],
                          'extra' => {
                            'def_role' => 'arg'
                          },
                          'type' => 'def_arg'
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
                              'contents' => [
                                {
                                  'text' => 'g'
                                }
                              ],
                              'type' => 'def_line_arg'
                            }
                          ],
                          'extra' => {
                            'def_role' => 'arg'
                          },
                          'type' => 'def_arg'
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
                  'extra' => {
                    'def_command' => 'deffn',
                    'def_index_element' => {},
                    'index_entry' => [
                      'fn',
                      1
                    ],
                    'original_def_cmdname' => 'deffn'
                  },
                  'source_info' => {
                    'line_nr' => 2
                  },
                  'type' => 'def_line'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'args' => [
                            {
                              'text' => ' comment
',
                              'type' => 'rawline_arg'
                            }
                          ],
                          'cmdname' => 'c'
                        }
                      ],
                      'type' => 'preformatted'
                    }
                  ],
                  'type' => 'inter_def_item'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'contents' => [
                                {
                                  'text' => 'truc'
                                }
                              ],
                              'source_info' => {
                                'line_nr' => 4
                              },
                              'type' => 'bracketed_arg'
                            }
                          ],
                          'extra' => {
                            'def_role' => 'category'
                          },
                          'type' => 'def_category'
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
                              'contents' => [
                                {
                                  'text' => 'bidulr'
                                }
                              ],
                              'type' => 'def_line_arg'
                            }
                          ],
                          'extra' => {
                            'def_role' => 'name'
                          },
                          'type' => 'def_name'
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
                              'contents' => [
                                {
                                  'text' => 'machin...'
                                }
                              ],
                              'type' => 'def_line_arg'
                            }
                          ],
                          'extra' => {
                            'def_role' => 'arg'
                          },
                          'type' => 'def_arg'
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
                  'cmdname' => 'deffnx',
                  'extra' => {
                    'def_command' => 'deffn',
                    'def_index_element' => {},
                    'index_entry' => [
                      'fn',
                      2
                    ],
                    'original_def_cmdname' => 'deffnx'
                  },
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'source_info' => {
                    'line_nr' => 4
                  },
                  'type' => 'def_line'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'text' => 'deffn'
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
                    'text_arg' => 'deffn'
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
              'args' => [
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
              'cmdname' => 'end',
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
$result_trees{'defx_after_comment_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'def_index_element'} = $result_trees{'defx_after_comment_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'defx_after_comment_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'extra'}{'def_index_element'} = $result_trees{'defx_after_comment_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[2];

$result_texis{'defx_after_comment_in_example'} = '@example
@deffn fset @var{i} a g
@c comment
@deffnx {truc} bidulr machin...
@end deffn
@end example
';


$result_texts{'defx_after_comment_in_example'} = 'fset: i a g
truc: bidulr machin...
';

$result_errors{'defx_after_comment_in_example'} = [
  {
    'error_line' => 'warning: entry for index `fn\' outside of any node
',
    'line_nr' => 2,
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `fn\' outside of any node
',
    'line_nr' => 4,
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  }
];


$result_floats{'defx_after_comment_in_example'} = {};


$result_indices_sort_strings{'defx_after_comment_in_example'} = {
  'fn' => [
    'bidulr',
    'i'
  ]
};



$result_converted{'plaintext'}->{'defx_after_comment_in_example'} = '      -- fset: I a g
      -- truc: bidulr machin...
';

1;
