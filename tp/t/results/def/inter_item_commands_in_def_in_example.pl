use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'inter_item_commands_in_def_in_example'} = {
  'contents' => [
    {
      'contents' => [
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
                          'extra' => {
                            'def_role' => 'category'
                          },
                          'parent' => {},
                          'text' => 'fset'
                        },
                        {
                          'extra' => {
                            'def_role' => 'spaces'
                          },
                          'parent' => {},
                          'text' => ' ',
                          'type' => 'spaces'
                        },
                        {
                          'args' => [
                            {
                              'contents' => [
                                {
                                  'parent' => {},
                                  'text' => 'i'
                                }
                              ],
                              'parent' => {},
                              'type' => 'brace_command_arg'
                            }
                          ],
                          'cmdname' => 'var',
                          'contents' => [],
                          'extra' => {
                            'def_role' => 'name'
                          },
                          'parent' => {},
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 2,
                            'macro' => ''
                          }
                        },
                        {
                          'extra' => {
                            'def_role' => 'spaces'
                          },
                          'parent' => {},
                          'text' => ' ',
                          'type' => 'spaces'
                        },
                        {
                          'extra' => {
                            'def_role' => 'arg'
                          },
                          'parent' => {},
                          'text' => 'a'
                        },
                        {
                          'extra' => {
                            'def_role' => 'spaces'
                          },
                          'parent' => {},
                          'text' => ' ',
                          'type' => 'spaces'
                        },
                        {
                          'extra' => {
                            'def_role' => 'arg'
                          },
                          'parent' => {},
                          'text' => 'g'
                        },
                        {
                          'extra' => {
                            'def_role' => 'spaces'
                          },
                          'parent' => {},
                          'text' => '
',
                          'type' => 'spaces_at_end'
                        }
                      ],
                      'parent' => {},
                      'type' => 'block_line_arg'
                    }
                  ],
                  'extra' => {
                    'def_command' => 'deffn',
                    'def_parsed_hash' => {
                      'category' => {},
                      'name' => {}
                    },
                    'index_entry' => {
                      'command' => {},
                      'content' => [
                        {}
                      ],
                      'content_normalized' => [
                        {}
                      ],
                      'in_code' => 1,
                      'index_at_command' => 'deffn',
                      'index_ignore_chars' => {},
                      'index_name' => 'fn',
                      'index_type_command' => 'deffn',
                      'number' => 1
                    },
                    'original_def_cmdname' => 'deffn'
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 2,
                    'macro' => ''
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
                              'parent' => {},
                              'text' => ' comment before first deffnx
',
                              'type' => 'misc_arg'
                            }
                          ],
                          'cmdname' => 'c',
                          'extra' => {
                            'misc_args' => [
                              ' comment before first deffnx
'
                            ]
                          },
                          'parent' => {}
                        },
                        {
                          'parent' => {},
                          'text' => '
',
                          'type' => 'empty_line'
                        }
                      ],
                      'parent' => {},
                      'type' => 'preformatted'
                    }
                  ],
                  'parent' => {},
                  'type' => 'inter_def_item'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'extra' => {
                            'def_role' => 'category'
                          },
                          'parent' => {},
                          'text' => 'Command'
                        },
                        {
                          'extra' => {
                            'def_role' => 'spaces'
                          },
                          'parent' => {},
                          'text' => ' ',
                          'type' => 'spaces'
                        },
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'log trap1'
                            }
                          ],
                          'extra' => {
                            'def_role' => 'name',
                            'spaces_before_argument' => ' '
                          },
                          'parent' => {},
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 5,
                            'macro' => ''
                          },
                          'type' => 'bracketed_def_content'
                        },
                        {
                          'extra' => {
                            'def_role' => 'spaces'
                          },
                          'parent' => {},
                          'text' => ' ',
                          'type' => 'spaces'
                        },
                        {
                          'contents' => [],
                          'extra' => {
                            'def_role' => 'arg'
                          },
                          'parent' => {},
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 5,
                            'macro' => ''
                          },
                          'type' => 'bracketed_def_content'
                        },
                        {
                          'extra' => {
                            'def_role' => 'spaces'
                          },
                          'parent' => {},
                          'text' => '  
',
                          'type' => 'spaces_at_end'
                        }
                      ],
                      'parent' => {},
                      'type' => 'line_arg'
                    }
                  ],
                  'cmdname' => 'deffnx',
                  'extra' => {
                    'def_command' => 'deffn',
                    'def_parsed_hash' => {
                      'category' => {},
                      'name' => {}
                    },
                    'index_entry' => {
                      'command' => {},
                      'content' => [
                        {}
                      ],
                      'content_normalized' => [
                        {}
                      ],
                      'in_code' => 1,
                      'index_at_command' => 'deffnx',
                      'index_ignore_chars' => {},
                      'index_name' => 'fn',
                      'index_type_command' => 'deffn',
                      'number' => 2
                    },
                    'original_def_cmdname' => 'deffnx',
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 5,
                    'macro' => ''
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
                              'contents' => [
                                {
                                  'parent' => {},
                                  'text' => 'between deffnx'
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
                          'cmdname' => 'cindex',
                          'extra' => {
                            'index_entry' => {
                              'command' => {},
                              'content' => [],
                              'content_normalized' => [],
                              'in_code' => 0,
                              'index_at_command' => 'cindex',
                              'index_ignore_chars' => {},
                              'index_name' => 'cp',
                              'index_type_command' => 'cindex',
                              'number' => 1
                            },
                            'spaces_before_argument' => ' '
                          },
                          'parent' => {},
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 6,
                            'macro' => ''
                          },
                          'type' => 'index_entry_command'
                        }
                      ],
                      'parent' => {},
                      'type' => 'preformatted'
                    }
                  ],
                  'parent' => {},
                  'type' => 'inter_def_item'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'extra' => {
                            'def_role' => 'category'
                          },
                          'parent' => {},
                          'text' => 'cmde2'
                        },
                        {
                          'extra' => {
                            'def_role' => 'spaces'
                          },
                          'parent' => {},
                          'text' => ' ',
                          'type' => 'spaces'
                        },
                        {
                          'args' => [
                            {
                              'contents' => [
                                {
                                  'parent' => {},
                                  'text' => 'id '
                                },
                                {
                                  'args' => [
                                    {
                                      'contents' => [
                                        {
                                          'parent' => {},
                                          'text' => 'i'
                                        }
                                      ],
                                      'parent' => {},
                                      'type' => 'brace_command_arg'
                                    }
                                  ],
                                  'cmdname' => 'samp',
                                  'contents' => [],
                                  'parent' => {},
                                  'source_info' => {
                                    'file_name' => '',
                                    'line_nr' => 7,
                                    'macro' => ''
                                  }
                                },
                                {
                                  'parent' => {},
                                  'text' => ' ule'
                                }
                              ],
                              'parent' => {},
                              'type' => 'brace_command_arg'
                            }
                          ],
                          'cmdname' => 'b',
                          'contents' => [],
                          'extra' => {
                            'def_role' => 'name'
                          },
                          'parent' => {},
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 7,
                            'macro' => ''
                          }
                        },
                        {
                          'extra' => {
                            'def_role' => 'spaces'
                          },
                          'parent' => {},
                          'text' => ' ',
                          'type' => 'spaces'
                        },
                        {
                          'extra' => {
                            'def_role' => 'arg'
                          },
                          'parent' => {},
                          'text' => 'truc'
                        },
                        {
                          'extra' => {
                            'def_role' => 'spaces'
                          },
                          'parent' => {},
                          'text' => '
',
                          'type' => 'spaces_at_end'
                        }
                      ],
                      'parent' => {},
                      'type' => 'line_arg'
                    }
                  ],
                  'cmdname' => 'deffnx',
                  'extra' => {
                    'def_command' => 'deffn',
                    'def_parsed_hash' => {
                      'category' => {},
                      'name' => {}
                    },
                    'index_entry' => {
                      'command' => {},
                      'content' => [
                        {}
                      ],
                      'content_normalized' => [
                        {}
                      ],
                      'in_code' => 1,
                      'index_at_command' => 'deffnx',
                      'index_ignore_chars' => {},
                      'index_name' => 'fn',
                      'index_type_command' => 'deffn',
                      'number' => 3
                    },
                    'original_def_cmdname' => 'deffnx',
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 7,
                    'macro' => ''
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
                              'contents' => [
                                {
                                  'parent' => {},
                                  'text' => 'cindex in deff item'
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
                          'cmdname' => 'cindex',
                          'extra' => {
                            'index_entry' => {
                              'command' => {},
                              'content' => [],
                              'content_normalized' => [],
                              'in_code' => 0,
                              'index_at_command' => 'cindex',
                              'index_ignore_chars' => {},
                              'index_name' => 'cp',
                              'index_type_command' => 'cindex',
                              'number' => 2
                            },
                            'spaces_before_argument' => ' '
                          },
                          'parent' => {},
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 8,
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
                          'parent' => {},
                          'text' => 'In deff item.
'
                        }
                      ],
                      'parent' => {},
                      'type' => 'preformatted'
                    }
                  ],
                  'parent' => {},
                  'type' => 'def_item'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'deffn'
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
                    'text_arg' => 'deffn'
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
                'spaces_before_argument' => ' '
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 2,
                'macro' => ''
              }
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'example'
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
                'text_arg' => 'example'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 12,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'end_command' => {}
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
$result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[2];
$result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[2];
$result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'extra'}{'index_entry'}{'command'} = $result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[2];
$result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[2];
$result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'content'} = $result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'};
$result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'};
$result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[0];
$result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[3];
$result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[1];
$result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[0]{'contents'}[2];
$result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[4];
$result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[4]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[4]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[0]{'contents'}[2];
$result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[4]{'extra'}{'index_entry'}{'command'} = $result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[4];
$result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[4]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[0]{'contents'}[2];
$result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[4]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[0]{'contents'}[2];
$result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[5]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[5]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[5]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[5]{'contents'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[5]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[5]{'contents'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[5]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'content'} = $result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[5]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'};
$result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[5]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[5]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'};
$result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[5]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[5]{'contents'}[0];
$result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[5]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[5]{'contents'}[0];
$result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[5]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[5]{'contents'}[0];
$result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[5]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[5];
$result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[6]{'args'}[0];
$result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[6];
$result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[6]{'parent'} = $result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'end_command'} = $result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[6];
$result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0];
$result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'extra'}{'end_command'} = $result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0];
$result_trees{'inter_item_commands_in_def_in_example'}{'contents'}[0]{'parent'} = $result_trees{'inter_item_commands_in_def_in_example'};

$result_texis{'inter_item_commands_in_def_in_example'} = '@example
@deffn fset @var{i} a g
@c comment before first deffnx

@deffnx Command { log trap1} {}  
@cindex between deffnx
@deffnx cmde2 @b{id @samp{i} ule} truc
@cindex cindex in deff item

In deff item.
@end deffn
@end example
';


$result_texts{'inter_item_commands_in_def_in_example'} = 'fset: i a g

Command: log trap1 
cmde2: id i ule truc

In deff item.
';

$result_errors{'inter_item_commands_in_def_in_example'} = [
  {
    'error_line' => 'warning: entry for index `fn\' outside of any node
',
    'file_name' => '',
    'line_nr' => 2,
    'macro' => '',
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `fn\' outside of any node
',
    'file_name' => '',
    'line_nr' => 5,
    'macro' => '',
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `cp\' outside of any node
',
    'file_name' => '',
    'line_nr' => 6,
    'macro' => '',
    'text' => 'entry for index `cp\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `fn\' outside of any node
',
    'file_name' => '',
    'line_nr' => 7,
    'macro' => '',
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `cp\' outside of any node
',
    'file_name' => '',
    'line_nr' => 8,
    'macro' => '',
    'text' => 'entry for index `cp\' outside of any node',
    'type' => 'warning'
  }
];


$result_floats{'inter_item_commands_in_def_in_example'} = {};


$result_indices_sort_strings{'inter_item_commands_in_def_in_example'} = {
  'cp' => [
    'between deffnx',
    'cindex in deff item'
  ],
  'fn' => [
    'i',
    'id i ule',
    'log trap1'
  ]
};



$result_converted{'plaintext'}->{'inter_item_commands_in_def_in_example'} = '      -- fset: I a g

      -- Command: log trap1
      -- cmde2: id i ule truc

          In deff item.
';

1;
