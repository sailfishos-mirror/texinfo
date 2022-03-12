use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'multiple_in_preamble'} = {
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
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 1,
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
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 4,
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
                                'line_nr' => 5,
                                'macro' => ''
                              }
                            },
                            {
                              'parent' => {},
                              'text' => '
'
                            }
                          ],
                          'parent' => {},
                          'type' => 'paragraph'
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
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 6,
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
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 7,
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
                'line_nr' => 3,
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
                      'text' => 'hr'
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
                'text_arg' => 'hr'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 9,
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
        'line_nr' => 11,
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
        'line_nr' => 14,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'chap'
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
                            'documentlanguage' => 'hr'
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
                      'text' => 'hr'
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
                'documentlanguage' => 'hr',
                'index_entry' => {
                  'command' => {},
                  'content' => [
                    {},
                    {
                      'text' => ' od '
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
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 17,
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
                        'line_nr' => 18,
                        'macro' => ''
                      }
                    },
                    {
                      'parent' => {},
                      'text' => '
'
                    }
                  ],
                  'parent' => {},
                  'type' => 'paragraph'
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
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 19,
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
            'line_nr' => 17,
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
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 21,
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
                            'documentlanguage' => 'de'
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
                      'text' => 'de'
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
                      'text' => 'FFF'
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
                      'text' => 'GGG'
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
                'documentlanguage' => 'de',
                'index_entry' => {
                  'command' => {},
                  'content' => [
                    {},
                    {
                      'text' => ' von '
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
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 23,
                'macro' => ''
              },
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
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 24,
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
            'line_nr' => 23,
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
        'line_nr' => 15,
        'macro' => ''
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'multiple_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'multiple_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'multiple_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'multiple_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple_in_preamble'}{'contents'}[0]{'contents'}[0];
$result_trees{'multiple_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'multiple_in_preamble'}{'contents'}[0]{'contents'}[0];
$result_trees{'multiple_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'extra'}{'command'} = $result_trees{'multiple_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'multiple_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'multiple_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'multiple_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'multiple_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'multiple_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'multiple_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'multiple_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'multiple_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'multiple_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'multiple_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'multiple_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'multiple_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'multiple_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'multiple_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'multiple_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'multiple_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0];
$result_trees{'multiple_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'multiple_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'multiple_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'class'} = $result_trees{'multiple_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'multiple_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'multiple_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'multiple_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'multiple_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0];
$result_trees{'multiple_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'multiple_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'multiple_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[2] = $result_trees{'multiple_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'multiple_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'multiple_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'multiple_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[2] = $result_trees{'multiple_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'multiple_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'region'} = $result_trees{'multiple_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'multiple_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'multiple_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'multiple_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'multiple_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0];
$result_trees{'multiple_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'multiple_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'multiple_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'multiple_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'multiple_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1];
$result_trees{'multiple_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'multiple_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'multiple_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[0];
$result_trees{'multiple_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'multiple_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[2];
$result_trees{'multiple_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'multiple_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'multiple_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'extra'}{'end_command'} = $result_trees{'multiple_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[2];
$result_trees{'multiple_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'multiple_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'multiple_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'args'}[0];
$result_trees{'multiple_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'multiple_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2];
$result_trees{'multiple_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'multiple_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'multiple_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'extra'}{'end_command'} = $result_trees{'multiple_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2];
$result_trees{'multiple_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'multiple_in_preamble'}{'contents'}[0]{'contents'}[0];
$result_trees{'multiple_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'multiple_in_preamble'}{'contents'}[0]{'contents'}[0];
$result_trees{'multiple_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'multiple_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'multiple_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[4];
$result_trees{'multiple_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'multiple_in_preamble'}{'contents'}[0]{'contents'}[0];
$result_trees{'multiple_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'multiple_in_preamble'}{'contents'}[0]{'contents'}[0];
$result_trees{'multiple_in_preamble'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple_in_preamble'}{'contents'}[0];
$result_trees{'multiple_in_preamble'}{'contents'}[0]{'parent'} = $result_trees{'multiple_in_preamble'};
$result_trees{'multiple_in_preamble'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple_in_preamble'}{'contents'}[1]{'args'}[0];
$result_trees{'multiple_in_preamble'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'multiple_in_preamble'}{'contents'}[1];
$result_trees{'multiple_in_preamble'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'multiple_in_preamble'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'multiple_in_preamble'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'multiple_in_preamble'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'multiple_in_preamble'}{'contents'}[1]{'parent'} = $result_trees{'multiple_in_preamble'};
$result_trees{'multiple_in_preamble'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple_in_preamble'}{'contents'}[2]{'args'}[0];
$result_trees{'multiple_in_preamble'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'multiple_in_preamble'}{'contents'}[2];
$result_trees{'multiple_in_preamble'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'multiple_in_preamble'}{'contents'}[2];
$result_trees{'multiple_in_preamble'}{'contents'}[2]{'parent'} = $result_trees{'multiple_in_preamble'};
$result_trees{'multiple_in_preamble'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple_in_preamble'}{'contents'}[3]{'args'}[0];
$result_trees{'multiple_in_preamble'}{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'multiple_in_preamble'}{'contents'}[3];
$result_trees{'multiple_in_preamble'}{'contents'}[3]{'extra'}{'node_content'}[0] = $result_trees{'multiple_in_preamble'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'multiple_in_preamble'}{'contents'}[3]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'multiple_in_preamble'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'multiple_in_preamble'}{'contents'}[3]{'parent'} = $result_trees{'multiple_in_preamble'};
$result_trees{'multiple_in_preamble'}{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple_in_preamble'}{'contents'}[4]{'args'}[0];
$result_trees{'multiple_in_preamble'}{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'multiple_in_preamble'}{'contents'}[4];
$result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'multiple_in_preamble'}{'contents'}[4];
$result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[1]{'contents'}[0];
$result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'class'} = $result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[1]{'contents'}[0];
$result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[2] = $result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[2] = $result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'node'} = $result_trees{'multiple_in_preamble'}{'contents'}[3];
$result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[1];
$result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0];
$result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[1]{'contents'}[1];
$result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[1];
$result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[1]{'contents'}[2]{'args'}[0];
$result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[1]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[1]{'contents'}[2];
$result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[1];
$result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[1]{'extra'}{'end_command'} = $result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[1]{'contents'}[2];
$result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'multiple_in_preamble'}{'contents'}[4];
$result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[2]{'parent'} = $result_trees{'multiple_in_preamble'}{'contents'}[4];
$result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[3]{'args'}[0];
$result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[3];
$result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[3]{'parent'} = $result_trees{'multiple_in_preamble'}{'contents'}[4];
$result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[4]{'parent'} = $result_trees{'multiple_in_preamble'}{'contents'}[4];
$result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'args'}[0];
$result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'args'}[0];
$result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'args'}[0];
$result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'args'}[0];
$result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'args'}[0];
$result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'args'}[0];
$result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[5]{'contents'}[0];
$result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'class'} = $result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[5]{'contents'}[0];
$result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[2] = $result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[2] = $result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'extra'}{'index_entry'}{'node'} = $result_trees{'multiple_in_preamble'}{'contents'}[3];
$result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'parent'} = $result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[5];
$result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'args'}[0];
$result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[5]{'contents'}[1];
$result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'parent'} = $result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[5];
$result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[5]{'extra'}{'end_command'} = $result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[5]{'contents'}[1];
$result_trees{'multiple_in_preamble'}{'contents'}[4]{'contents'}[5]{'parent'} = $result_trees{'multiple_in_preamble'}{'contents'}[4];
$result_trees{'multiple_in_preamble'}{'contents'}[4]{'parent'} = $result_trees{'multiple_in_preamble'};

$result_texis{'multiple_in_preamble'} = '@documentlanguage fr

@copying
@defivar copying a b
@error{}
@end defivar
@end copying

@documentlanguage hr

@node Top
@top top section

@node chapter
@chapter chap

@defivar hr BBB CCC
@error{}
@end defivar

@documentlanguage de

@defivar de FFF GGG
@end defivar
';


$result_texts{'multiple_in_preamble'} = '


top section
***********

1 chap
******

Instance Variable of hr: BBB CCC
error-->


Instance Variable of de: FFF GGG
';

$result_sectioning{'multiple_in_preamble'} = {
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
$result_sectioning{'multiple_in_preamble'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'multiple_in_preamble'}{'structure'}{'section_childs'}[0];
$result_sectioning{'multiple_in_preamble'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_prev'} = $result_sectioning{'multiple_in_preamble'}{'structure'}{'section_childs'}[0];
$result_sectioning{'multiple_in_preamble'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_up'} = $result_sectioning{'multiple_in_preamble'}{'structure'}{'section_childs'}[0];
$result_sectioning{'multiple_in_preamble'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'multiple_in_preamble'};

$result_nodes{'multiple_in_preamble'} = {
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
        'normalized' => 'chapter'
      },
      'structure' => {
        'node_prev' => {},
        'node_up' => {}
      }
    }
  }
};
$result_nodes{'multiple_in_preamble'}{'structure'}{'node_next'}{'structure'}{'node_prev'} = $result_nodes{'multiple_in_preamble'};
$result_nodes{'multiple_in_preamble'}{'structure'}{'node_next'}{'structure'}{'node_up'} = $result_nodes{'multiple_in_preamble'};

$result_menus{'multiple_in_preamble'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  },
  'structure' => {}
};

$result_errors{'multiple_in_preamble'} = [];


$result_floats{'multiple_in_preamble'} = {};


$result_indices_sort_strings{'multiple_in_preamble'} = {
  'vr' => [
    'a de copying',
    'BBB od hr',
    'FFF von de'
  ]
};



$result_converted{'plaintext'}->{'multiple_in_preamble'} = 'top section
***********

1 chap
******

 -- Primjer varijable od hr: BBB CCC
     greška→

 -- Instanzvariable von de: FFF GGG
';


$result_converted{'info'}->{'multiple_in_preamble'} = 'This is , produced from .

 -- Primjer varijable od copying: a b
     greška→


File: ,  Node: Top,  Next: chapter,  Up: (dir)

top section
***********

* Menu:

* chapter::


File: ,  Node: chapter,  Prev: Top,  Up: Top

1 chap
******

 -- Primjer varijable od hr: BBB CCC
     greška→

 -- Instanzvariable von de: FFF GGG


Tag Table:
Node: Top82
Node: chapter179

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'html'}->{'multiple_in_preamble'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, http://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<!-- Primjer varijable od copying: a b
greška-> -->
<title>top section</title>

<meta name="description" content="top section">
<meta name="keywords" content="top section">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="viewport" content="width=device-width,initial-scale=1">

<link href="#Top" rel="start" title="Top">
<style type="text/css">
<!--
a.copiable-link {visibility: hidden; text-decoration: none; line-height: 0em}
span:hover a.copiable-link {visibility: visible}
-->
</style>


</head>

<body lang="hr">



<div class="top-level-extent" id="Top">
<div class="nav-panel">
<p>
Sljedeće: <a href="#chapter" accesskey="n" rel="next">chap</a> &nbsp; </p>
</div>
<h1 class="top" id="top-section">top section</h1>

<ul class="mini-toc">
<li><a href="#chapter" accesskey="1">chap</a></li>
</ul>
<hr>
<div class="chapter-level-extent" id="chapter">
<div class="nav-panel">
<p>
Prethodno: <a href="#Top" accesskey="p" rel="prev">top section</a>, Gore: <a href="#Top" accesskey="u" rel="up">top section</a> &nbsp; </p>
</div>
<h2 class="chapter" id="chap">1 chap</h2>

<dl class="first-defcv first-defivar-alias-first-defcv">
<dt class="defcv defivar-alias-defcv" id="index-BBB-of-hr"><span>Primjer varijable od hr: <strong class="strong">BBB</strong> <em class="emph">CCC</em><a class="copiable-link" href=\'#index-BBB-of-hr\'> &para;</a></span></dt>
<dd><p>greška&rarr;
</p></dd></dl>


<dl class="first-defcv first-defivar-alias-first-defcv">
<dt class="defcv defivar-alias-defcv" id="index-FFF-of-de"><span>Instanzvariable von de: <strong class="strong">FFF</strong> <em class="emph">GGG</em><a class="copiable-link" href=\'#index-FFF-of-de\'> &para;</a></span></dt>
</dl>
</div>
</div>



</body>
</html>
';


$result_converted{'xml'}->{'multiple_in_preamble'} = '<documentlanguage xml:lang="fr" spaces=" ">fr</documentlanguage>

<copying endspaces=" ">
<defivar spaces=" " endspaces=" "><definitionterm><indexterm index="vr" number="1">a de copying</indexterm><defcategory automatic="on" bracketed="on">Instance Variable</defcategory> <defclass>copying</defclass> <defclassvar>a</defclassvar> <defparam>b</defparam></definitionterm>
<definitionitem><para>&errorglyph;
</para></definitionitem></defivar>
</copying>

<documentlanguage xml:lang="hr" spaces=" ">hr</documentlanguage>

<node name="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">chapter</nodenext></node>
<top spaces=" "><sectiontitle>top section</sectiontitle>

</top>
<node name="chapter" spaces=" "><nodename>chapter</nodename><nodeprev automatic="on">Top</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>chap</sectiontitle>

<defivar spaces=" " endspaces=" "><definitionterm><indexterm index="vr" number="2">BBB od hr</indexterm><defcategory automatic="on" bracketed="on">Instance Variable</defcategory> <defclass>hr</defclass> <defclassvar>BBB</defclassvar> <defparam>CCC</defparam></definitionterm>
<definitionitem><para>&errorglyph;
</para></definitionitem></defivar>

<documentlanguage xml:lang="de" spaces=" ">de</documentlanguage>

<defivar spaces=" " endspaces=" "><definitionterm><indexterm index="vr" number="3">FFF von de</indexterm><defcategory automatic="on" bracketed="on">Instance Variable</defcategory> <defclass>de</defclass> <defclassvar>FFF</defclassvar> <defparam>GGG</defparam></definitionterm>
</defivar>
</chapter>
';


$result_converted{'docbook_doc'}->{'multiple_in_preamble'} = '<?xml version="1.0"?>
<!DOCTYPE book PUBLIC "-//OASIS//DTD DocBook XML V4.5//EN" "http://www.oasis-open.org/docbook/xml/4.5/docbookx.dtd" [
  <!ENTITY tex "TeX">
  <!ENTITY latex "LaTeX">
]>
<book lang="hr">
<title>top section</title>
<bookinfo><title>top section</title>
<legalnotice><synopsis><indexterm role="vr"><primary>a de copying</primary></indexterm><phrase role="category"><emphasis role="bold">Instance Variable</emphasis>:</phrase> <ooclass><classname>copying</classname></ooclass> <property>a</property> <emphasis role="arg">b</emphasis></synopsis>
<blockquote><para>greška&#8594;
</para></blockquote></legalnotice></bookinfo>
<chapter label="1" id="chapter">
<title>chap</title>

<synopsis><indexterm role="vr"><primary>BBB od hr</primary></indexterm><phrase role="category"><emphasis role="bold">Instance Variable</emphasis>:</phrase> <ooclass><classname>hr</classname></ooclass> <property>BBB</property> <emphasis role="arg">CCC</emphasis></synopsis>
<blockquote><para>greška&#8594;
</para></blockquote>

<synopsis><indexterm role="vr"><primary>FFF von de</primary></indexterm><phrase role="category"><emphasis role="bold">Instance Variable</emphasis>:</phrase> <ooclass><classname>de</classname></ooclass> <property>FFF</property> <emphasis role="arg">GGG</emphasis></synopsis>
</chapter>
</book>
';

1;
