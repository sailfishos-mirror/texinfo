use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'ftable_vtable'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => '
',
              'type' => 'text_before_beginning'
            }
          ],
          'parent' => {},
          'type' => 'preamble_before_beginning'
        },
        {
          'contents' => [],
          'parent' => {},
          'type' => 'preamble_before_content'
        }
      ],
      'parent' => {},
      'type' => 'before_node_section'
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'Top'
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
      'cmdname' => 'node',
      'contents' => [
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'cmdname' => 'emph',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 4,
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
          'cmdname' => 'ftable',
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
                              'text' => 'function1'
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
                        'index_entry' => {
                          'command' => {},
                          'content' => [],
                          'content_normalized' => [],
                          'in_code' => 1,
                          'index_at_command' => 'item',
                          'index_ignore_chars' => {},
                          'index_name' => 'fn',
                          'index_type_command' => 'ftable',
                          'node' => {},
                          'number' => 1
                        },
                        'spaces_before_argument' => ' '
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 5,
                        'macro' => ''
                      }
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'function2x'
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
                        'index_entry' => {
                          'command' => {},
                          'content' => [],
                          'content_normalized' => [],
                          'in_code' => 1,
                          'index_at_command' => 'itemx',
                          'index_ignore_chars' => {},
                          'index_name' => 'fn',
                          'index_type_command' => 'ftable',
                          'node' => {},
                          'number' => 2
                        },
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
                  'type' => 'table_term'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'Text
'
                        }
                      ],
                      'parent' => {},
                      'type' => 'paragraph'
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
              'contents' => [
                {
                  'contents' => [
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'fun3'
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
                        'index_entry' => {
                          'command' => {},
                          'content' => [],
                          'content_normalized' => [],
                          'in_code' => 1,
                          'index_at_command' => 'item',
                          'index_ignore_chars' => {},
                          'index_name' => 'fn',
                          'index_type_command' => 'ftable',
                          'node' => {},
                          'number' => 3
                        },
                        'spaces_before_argument' => ' '
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 8,
                        'macro' => ''
                      }
                    }
                  ],
                  'parent' => {},
                  'type' => 'table_term'
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
                      'text' => 'ftable'
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
                'text_arg' => 'ftable'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 9,
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
            'line_nr' => 4,
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
              'contents' => [
                {
                  'cmdname' => 'emph',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 11,
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
          'cmdname' => 'vtable',
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
                              'text' => 'var1 '
                            },
                            {
                              'args' => [
                                {
                                  'contents' => [],
                                  'parent' => {},
                                  'type' => 'brace_command_arg'
                                }
                              ],
                              'cmdname' => 'error',
                              'contents' => [],
                              'parent' => {},
                              'source_info' => {
                                'file_name' => '',
                                'line_nr' => 12,
                                'macro' => ''
                              }
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
                        'index_entry' => {
                          'command' => {},
                          'content' => [],
                          'content_normalized' => [],
                          'in_code' => 1,
                          'index_at_command' => 'item',
                          'index_ignore_chars' => {},
                          'index_name' => 'vr',
                          'index_type_command' => 'vtable',
                          'node' => {},
                          'number' => 1
                        },
                        'spaces_before_argument' => ' '
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 12,
                        'macro' => ''
                      }
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'varx2'
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
                        'index_entry' => {
                          'command' => {},
                          'content' => [],
                          'content_normalized' => [],
                          'in_code' => 1,
                          'index_at_command' => 'itemx',
                          'index_ignore_chars' => {},
                          'index_name' => 'vr',
                          'index_type_command' => 'vtable',
                          'node' => {},
                          'number' => 2
                        },
                        'spaces_before_argument' => ' '
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 13,
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
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'Text
'
                        }
                      ],
                      'parent' => {},
                      'type' => 'paragraph'
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
              'contents' => [
                {
                  'contents' => [
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'var3'
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
                        'index_entry' => {
                          'command' => {},
                          'content' => [],
                          'content_normalized' => [],
                          'in_code' => 1,
                          'index_at_command' => 'item',
                          'index_ignore_chars' => {},
                          'index_name' => 'vr',
                          'index_type_command' => 'vtable',
                          'node' => {},
                          'number' => 3
                        },
                        'spaces_before_argument' => ' '
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 15,
                        'macro' => ''
                      }
                    }
                  ],
                  'parent' => {},
                  'type' => 'table_term'
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
                      'text' => 'vtable'
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
                'text_arg' => 'vtable'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 16,
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
            'line_nr' => 11,
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
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'function1'
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
          'cmdname' => 'findex',
          'extra' => {
            'index_entry' => {
              'command' => {},
              'content' => [],
              'content_normalized' => [],
              'in_code' => 1,
              'index_at_command' => 'findex',
              'index_ignore_chars' => {},
              'index_name' => 'fn',
              'index_type_command' => 'findex',
              'node' => {},
              'number' => 4
            },
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 18,
            'macro' => ''
          },
          'type' => 'index_entry_command'
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
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'fn'
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
          'cmdname' => 'printindex',
          'extra' => {
            'misc_args' => [
              'fn'
            ],
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 20,
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
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'vr'
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
          'cmdname' => 'printindex',
          'extra' => {
            'misc_args' => [
              'vr'
            ],
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 22,
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
      'extra' => {
        'isindex' => 1,
        'node_content' => [
          {}
        ],
        'nodes_manuals' => [
          {
            'node_content' => [
              {}
            ],
            'normalized' => 'Top'
          }
        ],
        'normalized' => 'Top',
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
  'type' => 'document_root'
};
$result_trees{'ftable_vtable'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'ftable_vtable'}{'contents'}[0]{'contents'}[0];
$result_trees{'ftable_vtable'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'ftable_vtable'}{'contents'}[0];
$result_trees{'ftable_vtable'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'ftable_vtable'}{'contents'}[0];
$result_trees{'ftable_vtable'}{'contents'}[0]{'parent'} = $result_trees{'ftable_vtable'};
$result_trees{'ftable_vtable'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'ftable_vtable'}{'contents'}[1]{'args'}[0];
$result_trees{'ftable_vtable'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'ftable_vtable'}{'contents'}[1];
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'ftable_vtable'}{'contents'}[1];
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[1];
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'content'} = $result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'};
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'};
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'node'} = $result_trees{'ftable_vtable'}{'contents'}[1];
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0];
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'extra'}{'index_entry'}{'command'} = $result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'extra'}{'index_entry'}{'content'} = $result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'extra'}{'index_entry'}{'node'} = $result_trees{'ftable_vtable'}{'contents'}[1];
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0];
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[1];
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[1];
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0];
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0];
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'content'} = $result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'};
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'};
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'node'} = $result_trees{'ftable_vtable'}{'contents'}[1];
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[1]{'contents'}[1];
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[1];
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[0];
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[1]{'contents'}[2];
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[1];
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[1]{'extra'}{'command_as_argument'} = $result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[1]{'extra'}{'end_command'} = $result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[1]{'contents'}[2];
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'ftable_vtable'}{'contents'}[1];
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'ftable_vtable'}{'contents'}[1];
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[3]{'args'}[0];
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[3];
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1];
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'content'} = $result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'};
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'};
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'node'} = $result_trees{'ftable_vtable'}{'contents'}[1];
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'contents'}[0];
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'extra'}{'index_entry'}{'command'} = $result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'extra'}{'index_entry'}{'content'} = $result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'extra'}{'index_entry'}{'node'} = $result_trees{'ftable_vtable'}{'contents'}[1];
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'contents'}[0];
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[3]{'contents'}[0];
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'contents'}[1];
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[3]{'contents'}[0];
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[3];
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'contents'}[0];
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'contents'}[0];
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'content'} = $result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'};
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'};
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'node'} = $result_trees{'ftable_vtable'}{'contents'}[1];
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'contents'}[0];
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[3]{'contents'}[1];
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[3];
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[3]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[3]{'contents'}[2]{'args'}[0];
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[3]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[3]{'contents'}[2];
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[3]{'contents'}[2]{'parent'} = $result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[3];
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[3]{'extra'}{'command_as_argument'} = $result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[3]{'extra'}{'end_command'} = $result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[3]{'contents'}[2];
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'ftable_vtable'}{'contents'}[1];
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[4]{'parent'} = $result_trees{'ftable_vtable'}{'contents'}[1];
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[5]{'args'}[0];
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[5];
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[5]{'extra'}{'index_entry'}{'command'} = $result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[5];
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[5]{'extra'}{'index_entry'}{'content'} = $result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[5]{'args'}[0]{'contents'};
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[5]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[5]{'args'}[0]{'contents'};
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[5]{'extra'}{'index_entry'}{'node'} = $result_trees{'ftable_vtable'}{'contents'}[1];
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[5]{'parent'} = $result_trees{'ftable_vtable'}{'contents'}[1];
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[6]{'parent'} = $result_trees{'ftable_vtable'}{'contents'}[1];
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[7]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[7]{'args'}[0];
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[7]{'args'}[0]{'parent'} = $result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[7];
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[7]{'parent'} = $result_trees{'ftable_vtable'}{'contents'}[1];
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[8]{'parent'} = $result_trees{'ftable_vtable'}{'contents'}[1];
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[9]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[9]{'args'}[0];
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[9]{'args'}[0]{'parent'} = $result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[9];
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[9]{'parent'} = $result_trees{'ftable_vtable'}{'contents'}[1];
$result_trees{'ftable_vtable'}{'contents'}[1]{'contents'}[10]{'parent'} = $result_trees{'ftable_vtable'}{'contents'}[1];
$result_trees{'ftable_vtable'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'ftable_vtable'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'ftable_vtable'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'ftable_vtable'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'ftable_vtable'}{'contents'}[1]{'parent'} = $result_trees{'ftable_vtable'};

$result_texis{'ftable_vtable'} = '
@node Top

@ftable @emph
@item function1
@itemx function2x
Text
@item fun3
@end ftable

@vtable @emph
@item var1 @error{}
@itemx varx2
Text
@item var3
@end vtable

@findex function1

@printindex fn

@printindex vr

';


$result_texts{'ftable_vtable'} = '
function1
function2x
Text
fun3

var1 error-->
varx2
Text
var3




';

$result_nodes{'ftable_vtable'} = {
  'cmdname' => 'node',
  'extra' => {
    'isindex' => 1,
    'normalized' => 'Top'
  }
};

$result_menus{'ftable_vtable'} = {
  'cmdname' => 'node',
  'extra' => {
    'isindex' => 1,
    'normalized' => 'Top'
  }
};

$result_errors{'ftable_vtable'} = [];


$result_floats{'ftable_vtable'} = {};


$result_indices_sort_strings{'ftable_vtable'} = {
  'fn' => [
    'fun3',
    'function1',
    'function1',
    'function2x'
  ],
  'vr' => [
    'var1 error-->',
    'var3',
    'varx2'
  ]
};



$result_converted{'info'}->{'ftable_vtable'} = 'This is , produced from .


File: ,  Node: Top,  Up: (dir)

_function1_
_function2x_
     Text
_fun3_

_var1 error→_
_varx2_
     Text
_var3_

 [index ]
* Menu:

* fun3:                                  Top.                  (line  6)
* function1:                             Top.                  (line  3)
* function1 <1>:                         Top.                  (line 13)
* function2x:                            Top.                  (line  4)

 [index ]
* Menu:

* var1 error→:                           Top.                  (line  8)
* var3:                                  Top.                  (line 11)
* varx2:                                 Top.                  (line  9)



Tag Table:
Node: Top27

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'plaintext'}->{'ftable_vtable'} = '_function1_
_function2x_
     Text
_fun3_

_var1 error→_
_varx2_
     Text
_var3_

* Menu:

* fun3:                                  Top.                  (line  3)
* function1:                             Top.                  (line  0)
* function1 <1>:                         Top.                  (line 10)
* function2x:                            Top.                  (line  1)

* Menu:

* var1 error→:                           Top.                   (line 5)
* var3:                                  Top.                   (line 8)
* varx2:                                 Top.                   (line 6)

';


$result_converted{'html_text'}->{'ftable_vtable'} = '<h1 class="node" id="Top">Top</h1>

<dl class="ftable">
<dt id=\'index-function1\'><span><em class="emph">function1</em><a class="copiable-link" href=\'#index-function1\'> &para;</a></span></dt>
<dt id=\'index-function2x\'><span><em class="emph">function2x</em><a class="copiable-link" href=\'#index-function2x\'> &para;</a></span></dt>
<dd><p>Text
</p></dd>
<dt id=\'index-fun3\'><span><em class="emph">fun3</em><a class="copiable-link" href=\'#index-fun3\'> &para;</a></span></dt>
</dl>

<dl class="vtable">
<dt id=\'index-var1-error_002d_002d_003e\'><span><em class="emph">var1 error&rarr;</em><a class="copiable-link" href=\'#index-var1-error_002d_002d_003e\'> &para;</a></span></dt>
<dt id=\'index-varx2\'><span><em class="emph">varx2</em><a class="copiable-link" href=\'#index-varx2\'> &para;</a></span></dt>
<dd><p>Text
</p></dd>
<dt id=\'index-var3\'><span><em class="emph">var3</em><a class="copiable-link" href=\'#index-var3\'> &para;</a></span></dt>
</dl>

<a class="index-entry-id" id="index-function1-1"></a>

<div class="printindex fn-printindex">
<table class="fn-entries-printindex" border="0">
<tr><td></td><th class="entries-header-printindex">Index Entry</th><td>&nbsp;</td><th class="sections-header-printindex"> Section</th></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="t_i_fn_letter-F">F</th><td></td><td></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-fun3"><code>fun3</code></a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Top">Top</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-function1"><code>function1</code></a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Top">Top</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-function1-1"><code>function1</code></a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Top">Top</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-function2x"><code>function2x</code></a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Top">Top</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
</table>
</div>

<div class="printindex vr-printindex">
<table class="vr-entries-printindex" border="0">
<tr><td></td><th class="entries-header-printindex">Index Entry</th><td>&nbsp;</td><th class="sections-header-printindex"> Section</th></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="t_i_vr_letter-V">V</th><td></td><td></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-var1-error_002d_002d_003e"><code>var1 error&rarr;</code></a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Top">Top</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-var3"><code>var3</code></a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Top">Top</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-varx2"><code>varx2</code></a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#Top">Top</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
</table>
</div>

';

1;
