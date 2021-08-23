use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text);

use utf8;

$result_trees{'indices'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'indices.info'
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
          'cmdname' => 'setfilename',
          'extra' => {
            'spaces_before_argument' => ' ',
            'text_arg' => 'indices.info'
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 1,
            'macro' => ''
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
      'type' => 'text_root'
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
      'contents' => [],
      'extra' => {
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
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 3,
        'macro' => ''
      },
      'parent' => {}
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'top section'
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
      'cmdname' => 'top',
      'contents' => [
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'extra' => {
        'spaces_before_argument' => ' '
      },
      'level' => 0,
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 4,
        'macro' => ''
      },
      'parent' => {}
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'chapter'
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
      'contents' => [],
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
            'normalized' => 'chapter'
          }
        ],
        'normalized' => 'chapter',
        'spaces_before_argument' => ' '
      },
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 6,
        'macro' => ''
      },
      'parent' => {}
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'Index'
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
      'cmdname' => 'chapter',
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
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'a!"'
                        },
                        {
                          'cmdname' => '@',
                          'parent' => {}
                        },
                        {
                          'parent' => {},
                          'text' => 'b'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_context'
                    }
                  ],
                  'cmdname' => 'math',
                  'contents' => [],
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 9,
                    'macro' => ''
                  },
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => ' "!'
                },
                {
                  'cmdname' => '@',
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => ' '
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'a'
                        }
                      ],
                      'parent' => {},
                      'type' => 'following_arg'
                    }
                  ],
                  'cmdname' => '"',
                  'contents' => [],
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 9,
                    'macro' => ''
                  },
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => ' '
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'o'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => '"',
                  'contents' => [],
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 9,
                    'macro' => ''
                  },
                  'parent' => {}
                }
              ],
              'extra' => {
                'spaces_after_argument' => ' '
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
              'index_name' => 'cp',
              'index_type_command' => 'cindex',
              'key' => "a!\"\@b \"!\@ \x{e4} \x{f6}",
              'node' => {},
              'number' => 1
            },
            'spaces_before_argument' => ' ',
            'subentry' => {
              'args' => [
                {
                  'contents' => [
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'a!"'
                            },
                            {
                              'cmdname' => '@',
                              'parent' => {}
                            },
                            {
                              'parent' => {},
                              'text' => 'b'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'sortas',
                      'contents' => [],
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 9,
                        'macro' => ''
                      },
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => ' ',
                      'type' => 'empty_spaces_after_close_brace'
                    },
                    {
                      'parent' => {},
                      'text' => 'sub'
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'a!"'
                            },
                            {
                              'cmdname' => '@',
                              'parent' => {}
                            },
                            {
                              'parent' => {},
                              'text' => 'b'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_context'
                        }
                      ],
                      'cmdname' => 'math',
                      'contents' => [],
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 9,
                        'macro' => ''
                      },
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => ' sub "!'
                    },
                    {
                      'cmdname' => '@',
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => ' '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'a'
                            }
                          ],
                          'parent' => {},
                          'type' => 'following_arg'
                        }
                      ],
                      'cmdname' => '"',
                      'contents' => [],
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 9,
                        'macro' => ''
                      },
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => ' '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'o'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => '"',
                      'contents' => [],
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 9,
                        'macro' => ''
                      },
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => ' ',
                      'type' => 'empty_spaces_before_argument'
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'args' => [
                                {
                                  'contents' => [
                                    {
                                      'parent' => {},
                                      'text' => 'a!"'
                                    },
                                    {
                                      'cmdname' => '@',
                                      'parent' => {}
                                    },
                                    {
                                      'parent' => {},
                                      'text' => 'b'
                                    }
                                  ],
                                  'parent' => {},
                                  'type' => 'brace_command_context'
                                }
                              ],
                              'cmdname' => 'math',
                              'contents' => [],
                              'line_nr' => {
                                'file_name' => '',
                                'line_nr' => 9,
                                'macro' => ''
                              },
                              'parent' => {}
                            },
                            {
                              'parent' => {},
                              'text' => ' "!'
                            },
                            {
                              'cmdname' => '@',
                              'parent' => {}
                            },
                            {
                              'parent' => {},
                              'text' => ' '
                            },
                            {
                              'args' => [
                                {
                                  'contents' => [
                                    {
                                      'parent' => {},
                                      'text' => 'a'
                                    }
                                  ],
                                  'parent' => {},
                                  'type' => 'following_arg'
                                }
                              ],
                              'cmdname' => '"',
                              'contents' => [],
                              'line_nr' => {
                                'file_name' => '',
                                'line_nr' => 9,
                                'macro' => ''
                              },
                              'parent' => {}
                            },
                            {
                              'parent' => {},
                              'text' => ' '
                            },
                            {
                              'args' => [
                                {
                                  'contents' => [
                                    {
                                      'parent' => {},
                                      'text' => 'o'
                                    }
                                  ],
                                  'parent' => {},
                                  'type' => 'brace_command_arg'
                                }
                              ],
                              'cmdname' => '"',
                              'contents' => [],
                              'line_nr' => {
                                'file_name' => '',
                                'line_nr' => 9,
                                'macro' => ''
                              },
                              'parent' => {}
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'seealso',
                      'contents' => [],
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 9,
                        'macro' => ''
                      },
                      'parent' => {}
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
              'cmdname' => 'subentry',
              'extra' => {
                'level' => 1,
                'seealso' => {},
                'sortas' => 'a!"@b',
                'spaces_before_argument' => ' '
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 9,
                'macro' => ''
              },
              'parent' => {}
            }
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 9,
            'macro' => ''
          },
          'parent' => {},
          'type' => 'index_entry_command'
        },
        {},
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
                  'text' => 'cp'
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
              'cp'
            ],
            'spaces_before_argument' => ' '
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 11,
            'macro' => ''
          },
          'parent' => {}
        }
      ],
      'extra' => {
        'spaces_before_argument' => ' '
      },
      'level' => 1,
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 7,
        'macro' => ''
      },
      'number' => 1,
      'parent' => {}
    }
  ],
  'type' => 'document_root'
};
$result_trees{'indices'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'indices'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'indices'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'indices'}{'contents'}[0]{'contents'}[0];
$result_trees{'indices'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'indices'}{'contents'}[0];
$result_trees{'indices'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'indices'}{'contents'}[0];
$result_trees{'indices'}{'contents'}[0]{'parent'} = $result_trees{'indices'};
$result_trees{'indices'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'indices'}{'contents'}[1]{'args'}[0];
$result_trees{'indices'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'indices'}{'contents'}[1];
$result_trees{'indices'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'indices'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'indices'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'indices'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'indices'}{'contents'}[1]{'parent'} = $result_trees{'indices'};
$result_trees{'indices'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'indices'}{'contents'}[2]{'args'}[0];
$result_trees{'indices'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'indices'}{'contents'}[2];
$result_trees{'indices'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'indices'}{'contents'}[2];
$result_trees{'indices'}{'contents'}[2]{'parent'} = $result_trees{'indices'};
$result_trees{'indices'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'indices'}{'contents'}[3]{'args'}[0];
$result_trees{'indices'}{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'indices'}{'contents'}[3];
$result_trees{'indices'}{'contents'}[3]{'extra'}{'node_content'}[0] = $result_trees{'indices'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'indices'}{'contents'}[3]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'indices'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'indices'}{'contents'}[3]{'parent'} = $result_trees{'indices'};
$result_trees{'indices'}{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'indices'}{'contents'}[4]{'args'}[0];
$result_trees{'indices'}{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'indices'}{'contents'}[4];
$result_trees{'indices'}{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'indices'}{'contents'}[4];
$result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'args'}[0];
$result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'args'}[0];
$result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'args'}[0];
$result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'args'}[0];
$result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[4];
$result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'args'}[0];
$result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'args'}[0];
$result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[6]{'args'}[0];
$result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[6];
$result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'args'}[0];
$result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[1];
$result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'index_entry'}{'command'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[1];
$result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'index_entry'}{'content'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'index_entry'}{'node'} = $result_trees{'indices'}{'contents'}[3];
$result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0]{'contents'}[0];
$result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0];
$result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0];
$result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0];
$result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0]{'contents'}[3]{'args'}[0];
$result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0]{'contents'}[3]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0]{'contents'}[3]{'args'}[0];
$result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0]{'contents'}[3]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0]{'contents'}[3]{'args'}[0];
$result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0]{'contents'}[3];
$result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0];
$result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0];
$result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0];
$result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0];
$result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0]{'contents'}[7]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0]{'contents'}[7]{'args'}[0];
$result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0]{'contents'}[7]{'args'}[0]{'parent'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0]{'contents'}[7];
$result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0];
$result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0]{'contents'}[8]{'parent'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0];
$result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0]{'contents'}[9]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0]{'contents'}[9]{'args'}[0];
$result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0]{'contents'}[9]{'args'}[0]{'parent'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0]{'contents'}[9];
$result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0]{'contents'}[9]{'parent'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0];
$result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0]{'contents'}[10]{'parent'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0];
$result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0]{'contents'}[11]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0]{'contents'}[11]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0]{'contents'}[11]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0]{'contents'}[11]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0]{'contents'}[11]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0]{'contents'}[11]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0]{'contents'}[11]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0]{'contents'}[11]{'args'}[0]{'contents'}[0];
$result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0]{'contents'}[11]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0]{'contents'}[11]{'args'}[0];
$result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0]{'contents'}[11]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0]{'contents'}[11]{'args'}[0];
$result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0]{'contents'}[11]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0]{'contents'}[11]{'args'}[0];
$result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0]{'contents'}[11]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0]{'contents'}[11]{'args'}[0];
$result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0]{'contents'}[11]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0]{'contents'}[11]{'args'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0]{'contents'}[11]{'args'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0]{'contents'}[11]{'args'}[0]{'contents'}[4];
$result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0]{'contents'}[11]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0]{'contents'}[11]{'args'}[0];
$result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0]{'contents'}[11]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0]{'contents'}[11]{'args'}[0];
$result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0]{'contents'}[11]{'args'}[0]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0]{'contents'}[11]{'args'}[0]{'contents'}[6]{'args'}[0];
$result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0]{'contents'}[11]{'args'}[0]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0]{'contents'}[11]{'args'}[0]{'contents'}[6];
$result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0]{'contents'}[11]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0]{'contents'}[11]{'args'}[0];
$result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0]{'contents'}[11]{'args'}[0]{'parent'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0]{'contents'}[11];
$result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0]{'contents'}[11]{'parent'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0];
$result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0]{'parent'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'};
$result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'extra'}{'seealso'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'args'}[0]{'contents'}[11];
$result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'}{'parent'} = $result_trees{'indices'}{'contents'}[4];
$result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'indices'}{'contents'}[4];
$result_trees{'indices'}{'contents'}[4]{'contents'}[2] = $result_trees{'indices'}{'contents'}[4]{'contents'}[1]{'extra'}{'subentry'};
$result_trees{'indices'}{'contents'}[4]{'contents'}[3]{'parent'} = $result_trees{'indices'}{'contents'}[4];
$result_trees{'indices'}{'contents'}[4]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[4]{'args'}[0];
$result_trees{'indices'}{'contents'}[4]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[4];
$result_trees{'indices'}{'contents'}[4]{'contents'}[4]{'parent'} = $result_trees{'indices'}{'contents'}[4];
$result_trees{'indices'}{'contents'}[4]{'parent'} = $result_trees{'indices'};

$result_texis{'indices'} = '@setfilename indices.info

@node Top
@top top section

@node chapter
@chapter Index

@cindex @math{a!"@@b} "!@@ @"a @"{o} @subentry @sortas{a!"@@b} sub@math{a!"@@b} sub "!@@ @"a @"{o} @seealso{@math{a!"@@b} "!@@ @"a @"{o}}

@printindex cp
';


$result_texts{'indices'} = '
top section
***********

1 Index
*******


';

$result_sectioning{'indices'} = {
  'level' => -1,
  'section_childs' => [
    {
      'cmdname' => 'top',
      'extra' => {
        'associated_node' => {
          'cmdname' => 'node',
          'extra' => {
            'normalized' => 'Top',
            'spaces_before_argument' => ' '
          }
        },
        'spaces_before_argument' => ' '
      },
      'level' => 0,
      'section_childs' => [
        {
          'cmdname' => 'chapter',
          'extra' => {
            'associated_node' => {
              'cmdname' => 'node',
              'extra' => {
                'isindex' => 1,
                'normalized' => 'chapter',
                'spaces_before_argument' => ' '
              }
            },
            'spaces_before_argument' => ' '
          },
          'level' => 1,
          'number' => 1,
          'section_up' => {},
          'toplevel_prev' => {},
          'toplevel_up' => {}
        }
      ],
      'section_up' => {}
    }
  ]
};
$result_sectioning{'indices'}{'section_childs'}[0]{'section_childs'}[0]{'section_up'} = $result_sectioning{'indices'}{'section_childs'}[0];
$result_sectioning{'indices'}{'section_childs'}[0]{'section_childs'}[0]{'toplevel_prev'} = $result_sectioning{'indices'}{'section_childs'}[0];
$result_sectioning{'indices'}{'section_childs'}[0]{'section_childs'}[0]{'toplevel_up'} = $result_sectioning{'indices'}{'section_childs'}[0];
$result_sectioning{'indices'}{'section_childs'}[0]{'section_up'} = $result_sectioning{'indices'};

$result_nodes{'indices'} = {
  'cmdname' => 'node',
  'extra' => {
    'associated_section' => {
      'cmdname' => 'top',
      'extra' => {
        'spaces_before_argument' => ' '
      },
      'level' => 0
    },
    'normalized' => 'Top',
    'spaces_before_argument' => ' '
  },
  'node_next' => {
    'cmdname' => 'node',
    'extra' => {
      'associated_section' => {
        'cmdname' => 'chapter',
        'extra' => {
          'spaces_before_argument' => ' '
        },
        'level' => 1,
        'number' => 1
      },
      'isindex' => 1,
      'normalized' => 'chapter',
      'spaces_before_argument' => ' '
    },
    'node_prev' => {},
    'node_up' => {}
  }
};
$result_nodes{'indices'}{'node_next'}{'node_prev'} = $result_nodes{'indices'};
$result_nodes{'indices'}{'node_next'}{'node_up'} = $result_nodes{'indices'};

$result_menus{'indices'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top',
    'spaces_before_argument' => ' '
  }
};

$result_errors{'indices'} = [];


$result_floats{'indices'} = {};



$result_converted{'latex'}->{'indices'} = '
\\chapter{Index}
\\label{anchor:chapter}%

\\index[cp]{$a"!"""@b$ """!"@ \\"{a} \\"{o}!a!"@b@sub$a"!"""@b$ sub """!"@ \\"{a} \\"{o}|seealso{$a"!"""@b$ """!"@ \\"{a} \\"{o}}}%

\\printindex[cp]
';

1;
