use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'indices'} = {
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
          'contents' => [
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => 'txiindexbackslashignore',
                  'type' => 'misc_arg'
                },
                {
                  'parent' => {},
                  'text' => '',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'set',
              'extra' => {
                'arg_line' => ' txiindexbackslashignore
',
                'misc_args' => [
                  'txiindexbackslashignore',
                  ''
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
      'parent' => {},
      'source_info' => {
        'file_name' => '',
        'line_nr' => 4,
        'macro' => ''
      }
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
      'parent' => {},
      'source_info' => {
        'file_name' => '',
        'line_nr' => 7,
        'macro' => ''
      }
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
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 10,
                    'macro' => ''
                  }
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
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 10,
                    'macro' => ''
                  }
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
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 10,
                    'macro' => ''
                  }
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
              'index_ignore_chars' => {
                '\\' => 1
              },
              'index_name' => 'cp',
              'index_type_command' => 'cindex',
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
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 10,
                        'macro' => ''
                      }
                    },
                    {
                      'parent' => {},
                      'text' => ' ',
                      'type' => 'spaces_after_close_brace'
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
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 10,
                        'macro' => ''
                      }
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
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 10,
                        'macro' => ''
                      }
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
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 10,
                        'macro' => ''
                      }
                    },
                    {
                      'parent' => {},
                      'text' => ' ',
                      'type' => 'spaces_at_end'
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
                              'parent' => {},
                              'source_info' => {
                                'file_name' => '',
                                'line_nr' => 10,
                                'macro' => ''
                              }
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
                              'parent' => {},
                              'source_info' => {
                                'file_name' => '',
                                'line_nr' => 10,
                                'macro' => ''
                              }
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
                              'parent' => {},
                              'source_info' => {
                                'file_name' => '',
                                'line_nr' => 10,
                                'macro' => ''
                              }
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'seealso',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 10,
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
              'cmdname' => 'subentry',
              'extra' => {
                'level' => 1,
                'seealso' => {},
                'sortas' => 'a!"@b',
                'spaces_before_argument' => ' '
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 10,
                'macro' => ''
              }
            }
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 10,
            'macro' => ''
          },
          'type' => 'index_entry_command'
        },
        {},
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => '\\cmd'
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
              'index_ignore_chars' => {
                '\\' => 1
              },
              'index_name' => 'cp',
              'index_type_command' => 'cindex',
              'node' => {},
              'number' => 2
            },
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 11,
            'macro' => ''
          },
          'type' => 'index_entry_command'
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'totocmd'
                },
                {
                  'parent' => {},
                  'text' => ' ',
                  'type' => 'spaces_at_end'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => '\\cmd'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'sortas',
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
          'cmdname' => 'cindex',
          'extra' => {
            'index_entry' => {
              'command' => {},
              'content' => [],
              'content_normalized' => [],
              'in_code' => 0,
              'index_at_command' => 'cindex',
              'index_ignore_chars' => {
                '\\' => 1
              },
              'index_name' => 'cp',
              'index_type_command' => 'cindex',
              'node' => {},
              'number' => 3,
              'sortas' => '\\cmd'
            },
            'sortas' => '\\cmd',
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 12,
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
              'parent' => {},
              'text' => 'txiindexbackslashignore',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'clear',
          'extra' => {
            'arg_line' => ' txiindexbackslashignore
',
            'misc_args' => [
              'txiindexbackslashignore'
            ]
          },
          'parent' => {}
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
                  'text' => '\\some\\command for '
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'file'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'file',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 16,
                    'macro' => ''
                  }
                }
              ],
              'extra' => {
                'comment_at_end' => {
                  'args' => [
                    {
                      'parent' => {},
                      'text' => ' comment
',
                      'type' => 'misc_arg'
                    }
                  ],
                  'cmdname' => 'c',
                  'extra' => {
                    'misc_args' => [
                      ' comment
'
                    ]
                  },
                  'parent' => {}
                },
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
              'index_ignore_chars' => {},
              'index_name' => 'cp',
              'index_type_command' => 'cindex',
              'node' => {},
              'number' => 4
            },
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 16,
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
                  'text' => 'the '
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'person'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'r',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 18,
                    'macro' => ''
                  }
                },
                {
                  'parent' => {},
                  'text' => ' index '
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'aa'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'file',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 18,
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
              'number' => 1
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
            'line_nr' => 22,
            'macro' => ''
          }
        }
      ],
      'extra' => {
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
  'type' => 'document_root'
};
$result_trees{'indices'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'indices'}{'contents'}[0]{'contents'}[0];
$result_trees{'indices'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'indices'}{'contents'}[0];
$result_trees{'indices'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'indices'}{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'indices'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[1]{'parent'} = $result_trees{'indices'}{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'indices'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'indices'}{'contents'}[0]{'contents'}[1];
$result_trees{'indices'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'indices'}{'contents'}[0]{'contents'}[1];
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
$result_trees{'indices'}{'contents'}[4]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[3]{'args'}[0];
$result_trees{'indices'}{'contents'}[4]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[3];
$result_trees{'indices'}{'contents'}[4]{'contents'}[3]{'extra'}{'index_entry'}{'command'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[3];
$result_trees{'indices'}{'contents'}[4]{'contents'}[3]{'extra'}{'index_entry'}{'content'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[3]{'args'}[0]{'contents'};
$result_trees{'indices'}{'contents'}[4]{'contents'}[3]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[3]{'args'}[0]{'contents'};
$result_trees{'indices'}{'contents'}[4]{'contents'}[3]{'extra'}{'index_entry'}{'node'} = $result_trees{'indices'}{'contents'}[3];
$result_trees{'indices'}{'contents'}[4]{'contents'}[3]{'parent'} = $result_trees{'indices'}{'contents'}[4];
$result_trees{'indices'}{'contents'}[4]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[4]{'args'}[0];
$result_trees{'indices'}{'contents'}[4]{'contents'}[4]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[4]{'args'}[0];
$result_trees{'indices'}{'contents'}[4]{'contents'}[4]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[4]{'args'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'indices'}{'contents'}[4]{'contents'}[4]{'args'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[4]{'args'}[0]{'contents'}[2];
$result_trees{'indices'}{'contents'}[4]{'contents'}[4]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[4]{'args'}[0];
$result_trees{'indices'}{'contents'}[4]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[4];
$result_trees{'indices'}{'contents'}[4]{'contents'}[4]{'extra'}{'index_entry'}{'command'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[4];
$result_trees{'indices'}{'contents'}[4]{'contents'}[4]{'extra'}{'index_entry'}{'content'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[4]{'args'}[0]{'contents'};
$result_trees{'indices'}{'contents'}[4]{'contents'}[4]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[4]{'args'}[0]{'contents'};
$result_trees{'indices'}{'contents'}[4]{'contents'}[4]{'extra'}{'index_entry'}{'node'} = $result_trees{'indices'}{'contents'}[3];
$result_trees{'indices'}{'contents'}[4]{'contents'}[4]{'parent'} = $result_trees{'indices'}{'contents'}[4];
$result_trees{'indices'}{'contents'}[4]{'contents'}[5]{'parent'} = $result_trees{'indices'}{'contents'}[4];
$result_trees{'indices'}{'contents'}[4]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[6];
$result_trees{'indices'}{'contents'}[4]{'contents'}[6]{'parent'} = $result_trees{'indices'}{'contents'}[4];
$result_trees{'indices'}{'contents'}[4]{'contents'}[7]{'parent'} = $result_trees{'indices'}{'contents'}[4];
$result_trees{'indices'}{'contents'}[4]{'contents'}[8]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[8]{'args'}[0];
$result_trees{'indices'}{'contents'}[4]{'contents'}[8]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[8]{'args'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'indices'}{'contents'}[4]{'contents'}[8]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[8]{'args'}[0]{'contents'}[1];
$result_trees{'indices'}{'contents'}[4]{'contents'}[8]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[8]{'args'}[0];
$result_trees{'indices'}{'contents'}[4]{'contents'}[8]{'args'}[0]{'extra'}{'comment_at_end'}{'args'}[0]{'parent'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[8]{'args'}[0]{'extra'}{'comment_at_end'};
$result_trees{'indices'}{'contents'}[4]{'contents'}[8]{'args'}[0]{'extra'}{'comment_at_end'}{'parent'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[8]{'args'}[0];
$result_trees{'indices'}{'contents'}[4]{'contents'}[8]{'args'}[0]{'parent'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[8];
$result_trees{'indices'}{'contents'}[4]{'contents'}[8]{'extra'}{'index_entry'}{'command'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[8];
$result_trees{'indices'}{'contents'}[4]{'contents'}[8]{'extra'}{'index_entry'}{'content'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[8]{'args'}[0]{'contents'};
$result_trees{'indices'}{'contents'}[4]{'contents'}[8]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[8]{'args'}[0]{'contents'};
$result_trees{'indices'}{'contents'}[4]{'contents'}[8]{'extra'}{'index_entry'}{'node'} = $result_trees{'indices'}{'contents'}[3];
$result_trees{'indices'}{'contents'}[4]{'contents'}[8]{'parent'} = $result_trees{'indices'}{'contents'}[4];
$result_trees{'indices'}{'contents'}[4]{'contents'}[9]{'parent'} = $result_trees{'indices'}{'contents'}[4];
$result_trees{'indices'}{'contents'}[4]{'contents'}[10]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[10]{'args'}[0];
$result_trees{'indices'}{'contents'}[4]{'contents'}[10]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[10]{'args'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'indices'}{'contents'}[4]{'contents'}[10]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[10]{'args'}[0]{'contents'}[1];
$result_trees{'indices'}{'contents'}[4]{'contents'}[10]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[10]{'args'}[0];
$result_trees{'indices'}{'contents'}[4]{'contents'}[10]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[10]{'args'}[0];
$result_trees{'indices'}{'contents'}[4]{'contents'}[10]{'args'}[0]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[10]{'args'}[0]{'contents'}[3]{'args'}[0];
$result_trees{'indices'}{'contents'}[4]{'contents'}[10]{'args'}[0]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[10]{'args'}[0]{'contents'}[3];
$result_trees{'indices'}{'contents'}[4]{'contents'}[10]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[10]{'args'}[0];
$result_trees{'indices'}{'contents'}[4]{'contents'}[10]{'args'}[0]{'parent'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[10];
$result_trees{'indices'}{'contents'}[4]{'contents'}[10]{'extra'}{'index_entry'}{'command'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[10];
$result_trees{'indices'}{'contents'}[4]{'contents'}[10]{'extra'}{'index_entry'}{'content'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[10]{'args'}[0]{'contents'};
$result_trees{'indices'}{'contents'}[4]{'contents'}[10]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[10]{'args'}[0]{'contents'};
$result_trees{'indices'}{'contents'}[4]{'contents'}[10]{'extra'}{'index_entry'}{'node'} = $result_trees{'indices'}{'contents'}[3];
$result_trees{'indices'}{'contents'}[4]{'contents'}[10]{'parent'} = $result_trees{'indices'}{'contents'}[4];
$result_trees{'indices'}{'contents'}[4]{'contents'}[11]{'parent'} = $result_trees{'indices'}{'contents'}[4];
$result_trees{'indices'}{'contents'}[4]{'contents'}[12]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[12]{'args'}[0];
$result_trees{'indices'}{'contents'}[4]{'contents'}[12]{'args'}[0]{'parent'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[12];
$result_trees{'indices'}{'contents'}[4]{'contents'}[12]{'parent'} = $result_trees{'indices'}{'contents'}[4];
$result_trees{'indices'}{'contents'}[4]{'contents'}[13]{'parent'} = $result_trees{'indices'}{'contents'}[4];
$result_trees{'indices'}{'contents'}[4]{'contents'}[14]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[14]{'args'}[0];
$result_trees{'indices'}{'contents'}[4]{'contents'}[14]{'args'}[0]{'parent'} = $result_trees{'indices'}{'contents'}[4]{'contents'}[14];
$result_trees{'indices'}{'contents'}[4]{'contents'}[14]{'parent'} = $result_trees{'indices'}{'contents'}[4];
$result_trees{'indices'}{'contents'}[4]{'parent'} = $result_trees{'indices'};

$result_texis{'indices'} = '
@set txiindexbackslashignore

@node Top
@top top section

@node chapter
@chapter Index

@cindex @math{a!"@@b} "!@@ @"a @"{o} @subentry @sortas{a!"@@b} sub@math{a!"@@b} sub "!@@ @"a @"{o} @seealso{@math{a!"@@b} "!@@ @"a @"{o}}
@cindex \\cmd
@cindex totocmd @sortas{\\cmd}

@clear txiindexbackslashignore

@cindex \\some\\command for @file{file} @c comment

@findex the @r{person} index @file{aa}

@printindex cp

@printindex fn
';


$result_texts{'indices'} = '
top section
***********

1 Index
*******






';

$result_sectioning{'indices'} = {
  'structure' => {
    'section_childs' => [
      {
        'cmdname' => 'top',
        'extra' => {
          'associated_node' => {
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'Top'
            },
            'structure' => {}
          }
        },
        'structure' => {
          'section_childs' => [
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'isindex' => 1,
                    'normalized' => 'chapter'
                  },
                  'structure' => {}
                }
              },
              'structure' => {
                'section_level' => 1,
                'section_number' => 1,
                'section_up' => {},
                'toplevel_prev' => {},
                'toplevel_up' => {}
              }
            }
          ],
          'section_level' => 0,
          'section_up' => {}
        }
      }
    ],
    'section_level' => -1
  }
};
$result_sectioning{'indices'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'indices'}{'structure'}{'section_childs'}[0];
$result_sectioning{'indices'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_prev'} = $result_sectioning{'indices'}{'structure'}{'section_childs'}[0];
$result_sectioning{'indices'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_up'} = $result_sectioning{'indices'}{'structure'}{'section_childs'}[0];
$result_sectioning{'indices'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'indices'};

$result_nodes{'indices'} = {
  'cmdname' => 'node',
  'extra' => {
    'associated_section' => {
      'cmdname' => 'top',
      'extra' => {},
      'structure' => {}
    },
    'normalized' => 'Top'
  },
  'structure' => {
    'node_next' => {
      'cmdname' => 'node',
      'extra' => {
        'associated_section' => {
          'cmdname' => 'chapter',
          'extra' => {},
          'structure' => {
            'section_number' => 1
          }
        },
        'isindex' => 1,
        'normalized' => 'chapter'
      },
      'structure' => {
        'node_prev' => {},
        'node_up' => {}
      }
    }
  }
};
$result_nodes{'indices'}{'structure'}{'node_next'}{'structure'}{'node_prev'} = $result_nodes{'indices'};
$result_nodes{'indices'}{'structure'}{'node_next'}{'structure'}{'node_up'} = $result_nodes{'indices'};

$result_menus{'indices'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  },
  'structure' => {}
};

$result_errors{'indices'} = [
  {
    'error_line' => 'misplaced {
',
    'file_name' => '',
    'line_nr' => 16,
    'macro' => '',
    'text' => 'misplaced {',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced }
',
    'file_name' => '',
    'line_nr' => 16,
    'macro' => '',
    'text' => 'misplaced }',
    'type' => 'error'
  }
];


$result_floats{'indices'} = {};


$result_indices_sort_strings{'indices'} = {
  'cp' => [
    '\\cmd',
    '\\some\\command for file',
    'a!"@b "!@ a" o"',
    'cmd'
  ],
  'fn' => [
    'the person index aa'
  ]
};



$result_converted{'latex_text'}->{'indices'} = '
\\begin{document}
\\label{anchor:Top}%
\\chapter{{Index}}
\\label{anchor:chapter}%

\\index[cp]{a"!"""@b """!"@ a"" o""@$a"!"""@b$ """!"@ \\"{a} \\"{o}!a"!"""@b@sub$a"!"""@b$ sub """!"@ \\"{a} \\"{o}|seealso{$a"!"""@b$ """!"@ \\"{a} \\"{o}}}%
\\index[cp]{cmd@\\textbackslash{}cmd}%
\\index[cp]{\\textbackslash{}cmd@totocmd}%


\\index[cp]{\\textbackslash{}some\\textbackslash{}command for \\texttt{file}}%

\\index[fn]{the person index aa@\\texttt{the \\textnormal{person}\\ index \\texttt{aa}}}%

\\printindex[cp]

\\printindex[fn]
';

1;
