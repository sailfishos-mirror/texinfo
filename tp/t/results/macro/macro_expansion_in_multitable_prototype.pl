use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'macro_expansion_in_multitable_prototype'} = {
  'contents' => [
    {
      'contents' => [
        {
          'cmdname' => 'macro',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'simple',
                  'type' => 'macro_name'
                }
              ],
              'type' => 'argument'
            },
            {
              'text' => 'ab
',
              'type' => 'raw'
            },
            {
              'args' => [
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
              'cmdname' => 'end',
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
          'info' => {
            'arg_line' => ' simple
'
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
                  'text' => 'endbrace',
                  'type' => 'macro_name'
                },
                {
                  'text' => 'arg',
                  'type' => 'macro_arg'
                }
              ],
              'type' => 'argument'
            },
            {
              'text' => 'c\\arg\\d}
',
              'type' => 'raw'
            },
            {
              'args' => [
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
              'cmdname' => 'end',
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
          'info' => {
            'arg_line' => ' endbrace {arg}
'
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
          'cmdname' => 'multitable',
          'contents' => [
            {
              'contents' => [
                {
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
                                  'command_name' => 'simple'
                                },
                                'type' => 'macro_call'
                              },
                              'position' => 2,
                              'sourcemark_type' => 'macro_expansion',
                              'status' => 'start'
                            },
                            {
                              'counter' => 1,
                              'position' => 4,
                              'sourcemark_type' => 'macro_expansion',
                              'status' => 'end'
                            }
                          ],
                          'text' => 'h ab i'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 9
                      },
                      'type' => 'bracketed_arg'
                    },
                    {
                      'text' => ' '
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
                                    'type' => 'brace_arg'
                                  }
                                ],
                                'info' => {
                                  'command_name' => 'simple'
                                },
                                'type' => 'macro_call'
                              },
                              'position' => 2,
                              'sourcemark_type' => 'macro_expansion',
                              'status' => 'start'
                            },
                            {
                              'counter' => 2,
                              'position' => 4,
                              'sourcemark_type' => 'macro_expansion',
                              'status' => 'end'
                            }
                          ],
                          'text' => 'j ab'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 9
                      },
                      'type' => 'bracketed_arg'
                    },
                    {
                      'text' => ' '
                    },
                    {
                      'contents' => [
                        {
                          'text' => 'k '
                        },
                        {
                          'cmdname' => 'emph',
                          'contents' => [
                            {
                              'contents' => [
                                {
                                  'text' => 's'
                                }
                              ],
                              'type' => 'brace_container'
                            }
                          ],
                          'source_info' => {
                            'line_nr' => 9
                          }
                        },
                        {
                          'source_marks' => [
                            {
                              'counter' => 3,
                              'element' => {
                                'contents' => [
                                  {
                                    'type' => 'brace_arg'
                                  }
                                ],
                                'info' => {
                                  'command_name' => 'simple'
                                },
                                'type' => 'macro_call'
                              },
                              'position' => 1,
                              'sourcemark_type' => 'macro_expansion',
                              'status' => 'start'
                            },
                            {
                              'counter' => 3,
                              'position' => 3,
                              'sourcemark_type' => 'macro_expansion',
                              'status' => 'end'
                            }
                          ],
                          'text' => 'nab'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 9
                      },
                      'type' => 'bracketed_arg'
                    },
                    {
                      'text' => ' '
                    },
                    {
                      'contents' => [
                        {
                          'source_marks' => [
                            {
                              'counter' => 4,
                              'element' => {
                                'contents' => [
                                  {
                                    'contents' => [
                                      {
                                        'text' => '@code{l}'
                                      }
                                    ],
                                    'type' => 'brace_arg'
                                  }
                                ],
                                'info' => {
                                  'command_name' => 'endbrace'
                                },
                                'type' => 'macro_call'
                              },
                              'position' => 2,
                              'sourcemark_type' => 'macro_expansion',
                              'status' => 'start'
                            }
                          ],
                          'text' => 'g c'
                        },
                        {
                          'cmdname' => 'code',
                          'contents' => [
                            {
                              'contents' => [
                                {
                                  'text' => 'l'
                                }
                              ],
                              'type' => 'brace_container'
                            }
                          ],
                          'source_info' => {
                            'line_nr' => 9,
                            'macro' => 'endbrace'
                          }
                        },
                        {
                          'text' => 'd'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 9
                      },
                      'source_marks' => [
                        {
                          'counter' => 4,
                          'sourcemark_type' => 'macro_expansion',
                          'status' => 'end'
                        }
                      ],
                      'type' => 'bracketed_arg'
                    },
                    {
                      'text' => ' '
                    },
                    {
                      'contents' => [
                        {
                          'source_marks' => [
                            {
                              'counter' => 5,
                              'element' => {
                                'contents' => [
                                  {
                                    'contents' => [
                                      {
                                        'text' => 'T'
                                      }
                                    ],
                                    'type' => 'brace_arg'
                                  }
                                ],
                                'info' => {
                                  'command_name' => 'endbrace'
                                },
                                'type' => 'macro_call'
                              },
                              'position' => 2,
                              'sourcemark_type' => 'macro_expansion',
                              'status' => 'start'
                            }
                          ],
                          'text' => 'h cTd'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 9
                      },
                      'source_marks' => [
                        {
                          'counter' => 5,
                          'sourcemark_type' => 'macro_expansion',
                          'status' => 'end'
                        }
                      ],
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
              'type' => 'argument'
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
                              'text' => 'l1 '
                            }
                          ],
                          'type' => 'paragraph'
                        }
                      ],
                      'extra' => {
                        'cell_number' => 1
                      },
                      'source_info' => {
                        'line_nr' => 10
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
                              'text' => 't1 '
                            }
                          ],
                          'type' => 'paragraph'
                        }
                      ],
                      'extra' => {
                        'cell_number' => 2
                      },
                      'source_info' => {
                        'line_nr' => 10
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
                              'text' => 't2 '
                            }
                          ],
                          'type' => 'paragraph'
                        }
                      ],
                      'extra' => {
                        'cell_number' => 3
                      },
                      'source_info' => {
                        'line_nr' => 10
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
                              'text' => 't3 '
                            }
                          ],
                          'type' => 'paragraph'
                        }
                      ],
                      'extra' => {
                        'cell_number' => 4
                      },
                      'source_info' => {
                        'line_nr' => 10
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
                              'text' => 't4
'
                            }
                          ],
                          'type' => 'paragraph'
                        }
                      ],
                      'extra' => {
                        'cell_number' => 5
                      },
                      'source_info' => {
                        'line_nr' => 10
                      }
                    }
                  ],
                  'extra' => {
                    'row_number' => 1
                  },
                  'type' => 'row'
                }
              ],
              'type' => 'multitable_body'
            },
            {
              'args' => [
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
              'cmdname' => 'end',
              'extra' => {
                'text_arg' => 'multitable'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 11
              }
            }
          ],
          'extra' => {
            'max_columns' => 5
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

$result_texis{'macro_expansion_in_multitable_prototype'} = '@macro simple
ab
@end macro

@macro endbrace {arg}
c\\arg\\d}
@end macro

@multitable {h ab i} {j ab} {k @emph{s}nab} {g c@code{l}d} {h cTd}
@item l1 @tab t1 @tab t2 @tab t3 @tab t4
@end multitable
';


$result_texts{'macro_expansion_in_multitable_prototype'} = '

l1 t1 t2 t3 t4
';

$result_errors{'macro_expansion_in_multitable_prototype'} = [];


$result_floats{'macro_expansion_in_multitable_prototype'} = {};


1;
