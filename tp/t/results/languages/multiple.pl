use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'multiple'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'fr'
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
          'cmdname' => 'documentlanguage',
          'extra' => {
            'spaces_before_argument' => ' ',
            'text_arg' => 'fr'
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
        },
        {
          'cmdname' => 'copying',
          'contents' => [
            {
              'extra' => {
                'command' => {}
              },
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line_after_command'
            },
            {
              'cmdname' => 'defivar',
              'contents' => [
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'extra' => {
                                'documentlanguage' => 'fr'
                              },
                              'parent' => {},
                              'text' => 'Instance Variable',
                              'type' => 'untranslated'
                            }
                          ],
                          'extra' => {
                            'def_role' => 'category'
                          },
                          'parent' => {},
                          'type' => 'bracketed_inserted'
                        },
                        {
                          'extra' => {
                            'def_role' => 'spaces'
                          },
                          'parent' => {},
                          'text' => ' ',
                          'type' => 'spaces_inserted'
                        },
                        {
                          'extra' => {
                            'def_role' => 'class'
                          },
                          'text' => 'copying'
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
                            'def_role' => 'name'
                          },
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
                          'text' => 'b'
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
                    'def_command' => 'defivar',
                    'def_parsed_hash' => {
                      'category' => {},
                      'class' => {},
                      'name' => {}
                    },
                    'documentlanguage' => 'fr',
                    'index_entry' => {
                      'command' => {},
                      'content' => [
                        {},
                        {
                          'text' => ' de '
                        },
                        {}
                      ],
                      'content_normalized' => [
                        {},
                        {
                          'text' => ' of '
                        },
                        {}
                      ],
                      'in_code' => 1,
                      'index_at_command' => 'defivar',
                      'index_ignore_chars' => {},
                      'index_name' => 'vr',
                      'index_type_command' => 'defivar',
                      'number' => 1,
                      'region' => {}
                    },
                    'original_def_cmdname' => 'defivar'
                  },
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 4,
                    'macro' => ''
                  },
                  'parent' => {},
                  'type' => 'def_line'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'defivar'
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
                    'command_argument' => 'defivar',
                    'spaces_before_argument' => ' ',
                    'text_arg' => 'defivar'
                  },
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 5,
                    'macro' => ''
                  },
                  'parent' => {}
                }
              ],
              'extra' => {
                'end_command' => {},
                'spaces_before_argument' => ' '
              },
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
                      'text' => 'copying'
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
                'command_argument' => 'copying',
                'spaces_before_argument' => ' ',
                'text_arg' => 'copying'
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 6,
                'macro' => ''
              },
              'parent' => {}
            }
          ],
          'extra' => {
            'end_command' => {}
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 3,
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
      'contents' => [
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'defivar',
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'extra' => {
                            'documentlanguage' => 'fr'
                          },
                          'parent' => {},
                          'text' => 'Instance Variable',
                          'type' => 'untranslated'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'category'
                      },
                      'parent' => {},
                      'type' => 'bracketed_inserted'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => ' ',
                      'type' => 'spaces_inserted'
                    },
                    {
                      'extra' => {
                        'def_role' => 'class'
                      },
                      'text' => 'fr'
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
                        'def_role' => 'name'
                      },
                      'text' => 'BBB'
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
                      'text' => 'CCC'
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
                'def_command' => 'defivar',
                'def_parsed_hash' => {
                  'category' => {},
                  'class' => {},
                  'name' => {}
                },
                'documentlanguage' => 'fr',
                'index_entry' => {
                  'command' => {},
                  'content' => [
                    {},
                    {
                      'text' => ' de '
                    },
                    {}
                  ],
                  'content_normalized' => [
                    {},
                    {
                      'text' => ' of '
                    },
                    {}
                  ],
                  'in_code' => 1,
                  'index_at_command' => 'defivar',
                  'index_ignore_chars' => {},
                  'index_name' => 'vr',
                  'index_type_command' => 'defivar',
                  'node' => {},
                  'number' => 2
                },
                'original_def_cmdname' => 'defivar'
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 10,
                'macro' => ''
              },
              'parent' => {},
              'type' => 'def_line'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'defivar'
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
                'command_argument' => 'defivar',
                'spaces_before_argument' => ' ',
                'text_arg' => 'defivar'
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
            'end_command' => {},
            'spaces_before_argument' => ' '
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 10,
            'macro' => ''
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
                  'text' => 'de'
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
          'cmdname' => 'documentlanguage',
          'extra' => {
            'spaces_before_argument' => ' ',
            'text_arg' => 'de'
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 13,
            'macro' => ''
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
              'parent' => {},
              'text' => '
',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'insertcopying',
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 15,
            'macro' => ''
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
                  'text' => 'pt'
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
          'cmdname' => 'documentlanguage',
          'extra' => {
            'spaces_before_argument' => ' ',
            'text_arg' => 'pt'
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 17,
            'macro' => ''
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
          'cmdname' => 'defivar',
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'extra' => {
                            'documentlanguage' => 'pt'
                          },
                          'parent' => {},
                          'text' => 'Instance Variable',
                          'type' => 'untranslated'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'category'
                      },
                      'parent' => {},
                      'type' => 'bracketed_inserted'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => ' ',
                      'type' => 'spaces_inserted'
                    },
                    {
                      'extra' => {
                        'def_role' => 'class'
                      },
                      'text' => 'pt'
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
                        'def_role' => 'name'
                      },
                      'text' => 'BBB'
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
                      'text' => 'CCC'
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
                'def_command' => 'defivar',
                'def_parsed_hash' => {
                  'category' => {},
                  'class' => {},
                  'name' => {}
                },
                'documentlanguage' => 'pt',
                'index_entry' => {
                  'command' => {},
                  'content' => [
                    {},
                    {
                      'text' => ' da '
                    },
                    {}
                  ],
                  'content_normalized' => [
                    {},
                    {
                      'text' => ' of '
                    },
                    {}
                  ],
                  'in_code' => 1,
                  'index_at_command' => 'defivar',
                  'index_ignore_chars' => {},
                  'index_name' => 'vr',
                  'index_type_command' => 'defivar',
                  'node' => {},
                  'number' => 3
                },
                'original_def_cmdname' => 'defivar'
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 19,
                'macro' => ''
              },
              'parent' => {},
              'type' => 'def_line'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'defivar'
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
                'command_argument' => 'defivar',
                'spaces_before_argument' => ' ',
                'text_arg' => 'defivar'
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 20,
                'macro' => ''
              },
              'parent' => {}
            }
          ],
          'extra' => {
            'end_command' => {},
            'spaces_before_argument' => ' '
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 19,
            'macro' => ''
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
              'parent' => {},
              'text' => '
',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'insertcopying',
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 22,
            'macro' => ''
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
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 24,
            'macro' => ''
          },
          'parent' => {}
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
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 8,
        'macro' => ''
      },
      'parent' => {}
    }
  ],
  'type' => 'document_root'
};
$result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[0];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[0];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'multiple'}{'contents'}[0];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'extra'}{'command'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[2];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[2];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'class'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[2] = $result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[2] = $result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'region'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[2];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'extra'}{'end_command'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[2];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'args'}[0];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[2];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[2];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'extra'}{'end_command'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'contents'}[2];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'multiple'}{'contents'}[0];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'multiple'}{'contents'}[0];
$result_trees{'multiple'}{'contents'}[0]{'parent'} = $result_trees{'multiple'};
$result_trees{'multiple'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[1]{'args'}[0];
$result_trees{'multiple'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[1];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[1];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'class'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[2] = $result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[2] = $result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'node'} = $result_trees{'multiple'}{'contents'}[1];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[1];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[1];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[1];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'extra'}{'end_command'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[1];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'multiple'}{'contents'}[1];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'multiple'}{'contents'}[1];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[3]{'args'}[0];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[3];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'multiple'}{'contents'}[1];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[4]{'parent'} = $result_trees{'multiple'}{'contents'}[1];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[5];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[5]{'parent'} = $result_trees{'multiple'}{'contents'}[1];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[6]{'parent'} = $result_trees{'multiple'}{'contents'}[1];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[7]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[7]{'args'}[0];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[7]{'args'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[7];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[7]{'parent'} = $result_trees{'multiple'}{'contents'}[1];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[8]{'parent'} = $result_trees{'multiple'}{'contents'}[1];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[9]{'contents'}[0]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[9]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[9]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[9]{'contents'}[0]{'args'}[0];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[9]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[9]{'contents'}[0]{'args'}[0];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[9]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[9]{'contents'}[0]{'args'}[0];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[9]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[9]{'contents'}[0]{'args'}[0];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[9]{'contents'}[0]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[9]{'contents'}[0]{'args'}[0];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[9]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[9]{'contents'}[0]{'args'}[0];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[9]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[9]{'contents'}[0];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[9]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[9]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[9]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'class'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[9]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[9]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[9]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[9]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[9]{'contents'}[0];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[9]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'multiple'}{'contents'}[1]{'contents'}[9]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[9]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[2] = $result_trees{'multiple'}{'contents'}[1]{'contents'}[9]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[9]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'multiple'}{'contents'}[1]{'contents'}[9]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[9]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[2] = $result_trees{'multiple'}{'contents'}[1]{'contents'}[9]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[9]{'contents'}[0]{'extra'}{'index_entry'}{'node'} = $result_trees{'multiple'}{'contents'}[1];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[9]{'contents'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[9];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[9]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[9]{'contents'}[1]{'args'}[0];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[9]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[9]{'contents'}[1];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[9]{'contents'}[1]{'parent'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[9];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[9]{'extra'}{'end_command'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[9]{'contents'}[1];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[9]{'parent'} = $result_trees{'multiple'}{'contents'}[1];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[10]{'parent'} = $result_trees{'multiple'}{'contents'}[1];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[11]{'args'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[11];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[11]{'parent'} = $result_trees{'multiple'}{'contents'}[1];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[12]{'parent'} = $result_trees{'multiple'}{'contents'}[1];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[13]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[13]{'args'}[0];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[13]{'args'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[13];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[13]{'parent'} = $result_trees{'multiple'}{'contents'}[1];
$result_trees{'multiple'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'multiple'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'multiple'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'multiple'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'multiple'}{'contents'}[1]{'parent'} = $result_trees{'multiple'};

$result_texis{'multiple'} = '@documentlanguage fr

@copying
@defivar copying a b
@end defivar
@end copying

@node Top

@defivar fr BBB CCC
@end defivar

@documentlanguage de

@insertcopying

@documentlanguage pt

@defivar pt BBB CCC
@end defivar

@insertcopying

@printindex vr
';


$result_texts{'multiple'} = '


Instance Variable of fr: BBB CCC




Instance Variable of pt: BBB CCC


';

$result_nodes{'multiple'} = {
  'cmdname' => 'node',
  'extra' => {
    'isindex' => 1,
    'normalized' => 'Top',
    'spaces_before_argument' => ' '
  }
};

$result_menus{'multiple'} = {
  'cmdname' => 'node',
  'extra' => {
    'isindex' => 1,
    'normalized' => 'Top',
    'spaces_before_argument' => ' '
  }
};

$result_errors{'multiple'} = [];


$result_floats{'multiple'} = {};


$result_indices_sort_strings{'multiple'} = {
  'vr' => [
    'a de copying',
    'BBB da pt',
    'BBB de fr'
  ]
};



$result_converted{'plaintext'}->{'multiple'} = ' -- Variable d\'instance de fr : BBB CCC

 -- Instanzvariable von copying: a b

 -- Variável de instância da pt: BBB CCC

 -- Variável de instância da copying: a b

* Menu:

* a de copying:                          Top.                   (line 6)
* BBB da pt:                             Top.                   (line 4)
* BBB de fr:                             Top.                   (line 0)

';


$result_converted{'info'}->{'multiple'} = 'This is , produced from .

 -- Variable d\'instance de copying : a b


File: ,  Node: Top,  Up: (dir)

 -- Variable d\'instance de fr : BBB CCC

 -- Instanzvariable von copying: a b

 -- Variável de instância da pt: BBB CCC

 -- Variável de instância da copying: a b

 [index ]
* Menu:

* a de copying:                          Top.                   (line 9)
* BBB da pt:                             Top.                   (line 7)
* BBB de fr:                             Top.                   (line 3)



Tag Table:
Node: Top69

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'html'}->{'multiple'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, http://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<!-- Variable d\'instance de copying: a b -->
<title>Document sans titre</title>

<meta name="description" content="Document sans titre">
<meta name="keywords" content="Document sans titre">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="viewport" content="width=device-width,initial-scale=1">

<link href="#Top" rel="start" title="Top">
<link href="#Top" rel="index" title="Top">
<style type="text/css">
<!--
a.copiable-anchor {visibility: hidden; text-decoration: none; line-height: 0em}
a.summary-letter {text-decoration: none}
blockquote.indentedblock {margin-right: 0em}
div.center-align {text-align:center}
div.display {margin-left: 3.2em}
div.example {margin-left: 3.2em}
h1.center-align {text-align:center}
h2.center-align {text-align:center}
h3.center-align {text-align:center}
h3.right-align {text-align:right}
h4.center-align {text-align:center}
kbd {font-style: oblique}
p.center-align {text-align:center}
p.left-align {text-align:left}
p.right-align {text-align:right}
pre.display {font-family: inherit}
pre.format {font-family: inherit}
pre.menu-comment {font-family: serif}
pre.menu-preformatted {font-family: serif}
span.nolinebreak {white-space: nowrap}
span.roman {font-family: initial; font-weight: normal}
span.sansserif {font-family: sans-serif; font-weight: normal}
span:hover a.copiable-anchor {visibility: visible}
ul.no-bullet {list-style: none}
-->
</style>


</head>

<body lang="fr">


<h1 class="node-heading" id="Top">Top</h1>

<dl class="def">
<dt id="index-BBB-of-fr"><span>Variable d\'instance de fr&nbsp;: <strong>BBB</strong> <em>CCC</em><a href=\'#index-BBB-of-fr\' class=\'copiable-anchor\'> &para;</a></span></dt>
</dl>


<dl class="def">
<dt id="index-copying-a-of-copying"><span>Instanzvariable von copying: <strong>a</strong> <em>b</em><a href=\'#index-copying-a-of-copying\' class=\'copiable-anchor\'> &para;</a></span></dt>
</dl>


<dl class="def">
<dt id="index-BBB-of-pt"><span>Variável de instância da pt: <strong>BBB</strong> <em>CCC</em><a href=\'#index-BBB-of-pt\' class=\'copiable-anchor\'> &para;</a></span></dt>
</dl>

<dl class="def">
<dt id="index-copying-a-of-copying"><span>Variável de instância da copying: <strong>a</strong> <em>b</em><a href=\'#index-copying-a-of-copying\' class=\'copiable-anchor\'> &para;</a></span></dt>
</dl>

<table><tr><th valign="top">Pular para: &nbsp; </th><td><a class="summary-letter" href="#Top_vr_letter-A"><b>A</b></a>
 &nbsp; 
<a class="summary-letter" href="#Top_vr_letter-B"><b>B</b></a>
 &nbsp; 
</td></tr></table>
<table class="index-vr" border="0">
<tr><td></td><th align="left">Entrada de &Iacute;ndice</th><td>&nbsp;</td><th align="left"> Se&ccedil;&atilde;o</th></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Top_vr_letter-A">A</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-copying-a-of-copying"><code>a de copying</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Top">Top</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Top_vr_letter-B">B</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-BBB-of-pt"><code>BBB da pt</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Top">Top</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-BBB-of-fr"><code>BBB de fr</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Top">Top</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
</table>
<table><tr><th valign="top">Pular para: &nbsp; </th><td><a class="summary-letter" href="#Top_vr_letter-A"><b>A</b></a>
 &nbsp; 
<a class="summary-letter" href="#Top_vr_letter-B"><b>B</b></a>
 &nbsp; 
</td></tr></table>
<hr>



</body>
</html>
';

$result_converted_errors{'html'}->{'multiple'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];



$result_converted{'xml'}->{'multiple'} = '<documentlanguage xml:lang="fr" spaces=" ">fr</documentlanguage>

<copying endspaces=" ">
<defivar spaces=" " endspaces=" "><definitionterm><indexterm index="vr" number="1">a de copying</indexterm><defcategory automatic="on" bracketed="on">Instance Variable</defcategory> <defclass>copying</defclass> <defclassvar>a</defclassvar> <defparam>b</defparam></definitionterm>
</defivar>
</copying>

<node name="Top" spaces=" "><nodename>Top</nodename></node>

<defivar spaces=" " endspaces=" "><definitionterm><indexterm index="vr" number="2">BBB de fr</indexterm><defcategory automatic="on" bracketed="on">Instance Variable</defcategory> <defclass>fr</defclass> <defclassvar>BBB</defclassvar> <defparam>CCC</defparam></definitionterm>
</defivar>

<documentlanguage xml:lang="de" spaces=" ">de</documentlanguage>

<insertcopying></insertcopying>

<documentlanguage xml:lang="pt" spaces=" ">pt</documentlanguage>

<defivar spaces=" " endspaces=" "><definitionterm><indexterm index="vr" number="3">BBB da pt</indexterm><defcategory automatic="on" bracketed="on">Instance Variable</defcategory> <defclass>pt</defclass> <defclassvar>BBB</defclassvar> <defparam>CCC</defparam></definitionterm>
</defivar>

<insertcopying></insertcopying>

<printindex value="vr" line="vr"></printindex>
';

1;
