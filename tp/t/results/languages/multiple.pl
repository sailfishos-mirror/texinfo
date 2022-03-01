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
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 11,
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
                        'line_nr' => 12,
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
                'line_nr' => 13,
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
            'line_nr' => 15,
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
              'parent' => {},
              'text' => '
',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'insertcopying',
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
            'line_nr' => 19,
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
                  'number' => 3
                },
                'original_def_cmdname' => 'defivar'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 21,
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
                        'line_nr' => 22,
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
                'line_nr' => 23,
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
          'args' => [
            {
              'parent' => {},
              'text' => '
',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'insertcopying',
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 25,
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
            'line_nr' => 27,
            'macro' => ''
          }
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
        'line_nr' => 9,
        'macro' => ''
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[0];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[0];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'extra'}{'command'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'class'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[2] = $result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[2] = $result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'region'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[0];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[2];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'extra'}{'end_command'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[2];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'args'}[0];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'extra'}{'end_command'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[0];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[0];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[0];
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
$result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[1];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[1];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[0];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[2];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[1];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'extra'}{'end_command'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[1]{'contents'}[2];
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
$result_trees{'multiple'}{'contents'}[1]{'contents'}[9]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[9]{'contents'}[1]{'contents'}[0]{'contents'}[0];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[9]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[9]{'contents'}[1]{'contents'}[0];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[9]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[9]{'contents'}[1]{'contents'}[0];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[9]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[9]{'contents'}[1];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[9]{'contents'}[1]{'parent'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[9];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[9]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[9]{'contents'}[2]{'args'}[0];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[9]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[9]{'contents'}[2];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[9]{'contents'}[2]{'parent'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[9];
$result_trees{'multiple'}{'contents'}[1]{'contents'}[9]{'extra'}{'end_command'} = $result_trees{'multiple'}{'contents'}[1]{'contents'}[9]{'contents'}[2];
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
@error{}
@end defivar
@end copying

@node Top

@defivar fr BBB CCC
@error{}
@end defivar

@documentlanguage de

@insertcopying

@documentlanguage hr

@defivar hr BBB CCC
@error{}
@end defivar

@insertcopying

@printindex vr
';


$result_texts{'multiple'} = '


Instance Variable of fr: BBB CCC
error-->




Instance Variable of hr: BBB CCC
error-->


';

$result_nodes{'multiple'} = {
  'cmdname' => 'node',
  'extra' => {
    'isindex' => 1,
    'normalized' => 'Top'
  }
};

$result_menus{'multiple'} = {
  'cmdname' => 'node',
  'extra' => {
    'isindex' => 1,
    'normalized' => 'Top'
  }
};

$result_errors{'multiple'} = [];


$result_floats{'multiple'} = {};


$result_indices_sort_strings{'multiple'} = {
  'vr' => [
    'a de copying',
    'BBB de fr',
    'BBB od hr'
  ]
};



$result_converted{'plaintext'}->{'multiple'} = ' -- Variable d\'instance de fr : BBB CCC
     erreur→

 -- Instanzvariable von copying: a b
     error→

 -- Primjer varijable od hr: BBB CCC
     greška→

 -- Primjer varijable od copying: a b
     greška→

* Menu:

* a de copying:                          Top.                   (line 9)
* BBB de fr:                             Top.                   (line 0)
* BBB od hr:                             Top.                   (line 6)

';


$result_converted{'info'}->{'multiple'} = 'This is , produced from .

 -- Variable d\'instance de copying : a b
     erreur→


File: ,  Node: Top,  Up: (dir)

 -- Variable d\'instance de fr : BBB CCC
     erreur→

 -- Instanzvariable von copying: a b
     error→

 -- Primjer varijable od hr: BBB CCC
     greška→

 -- Primjer varijable od copying: a b
     greška→

 [index ]
* Menu:

* a de copying:                          Top.                  (line 12)
* BBB de fr:                             Top.                  (line  3)
* BBB od hr:                             Top.                  (line  9)



Tag Table:
Node: Top84

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
<!-- Variable d\'instance de copying: a b
erreur-> -->
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
a.copiable-link {visibility: hidden; text-decoration: none; line-height: 0em}
a.summary-letter-printindex {text-decoration: none}
span:hover a.copiable-link {visibility: visible}
-->
</style>


</head>

<body lang="fr">


<h1 class="node" id="Top">Top</h1>

<dl class="first-defcv first-defivar-alias-first-defcv">
<dt class="defcv defivar-alias-defcv" id="index-BBB-of-fr"><span>Variable d\'instance de fr&nbsp;: <strong class="strong">BBB</strong> <em class="emph">CCC</em><a class="copiable-link" href=\'#index-BBB-of-fr\'> &para;</a></span></dt>
<dd><p>erreur&rarr;
</p></dd></dl>


<dl class="first-defcv first-defivar-alias-first-defcv">
<dt class="defcv defivar-alias-defcv" id="index-copying-a-of-copying"><span>Instanzvariable von copying: <strong class="strong">a</strong> <em class="emph">b</em><a class="copiable-link" href=\'#index-copying-a-of-copying\'> &para;</a></span></dt>
<dd><p>error&rarr;
</p></dd></dl>


<dl class="first-defcv first-defivar-alias-first-defcv">
<dt class="defcv defivar-alias-defcv" id="index-BBB-of-hr"><span>Primjer varijable od hr: <strong class="strong">BBB</strong> <em class="emph">CCC</em><a class="copiable-link" href=\'#index-BBB-of-hr\'> &para;</a></span></dt>
<dd><p>greška&rarr;
</p></dd></dl>

<dl class="first-defcv first-defivar-alias-first-defcv">
<dt class="defcv defivar-alias-defcv" id="index-copying-a-of-copying"><span>Primjer varijable od copying: <strong class="strong">a</strong> <em class="emph">b</em><a class="copiable-link" href=\'#index-copying-a-of-copying\'> &para;</a></span></dt>
<dd><p>greška&rarr;
</p></dd></dl>

<div class="printindex vr-printindex">
<table class="vr-letters-header-printindex"><tr><th valign="top">Preskoči na: &nbsp; </th><td><a class="summary-letter-printindex" href="#Top_vr_letter-A"><b>A</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Top_vr_letter-B"><b>B</b></a>
 &nbsp; 
</td></tr></table>
<table class="vr-entries-printindex" border="0">
<tr><td></td><th align="left">Stavka indeksa</th><td>&nbsp;</td><th align="left"> Odlomak</th></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Top_vr_letter-A">A</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-copying-a-of-copying"><code>a de copying</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Top">Top</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Top_vr_letter-B">B</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-BBB-of-fr"><code>BBB de fr</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Top">Top</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-BBB-of-hr"><code>BBB od hr</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Top">Top</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
</table>
<table class="vr-letters-footer-printindex"><tr><th valign="top">Preskoči na: &nbsp; </th><td><a class="summary-letter-printindex" href="#Top_vr_letter-A"><b>A</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Top_vr_letter-B"><b>B</b></a>
 &nbsp; 
</td></tr></table>
</div>



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
<definitionitem><para>&errorglyph;
</para></definitionitem></defivar>
</copying>

<node name="Top" spaces=" "><nodename>Top</nodename></node>

<defivar spaces=" " endspaces=" "><definitionterm><indexterm index="vr" number="2">BBB de fr</indexterm><defcategory automatic="on" bracketed="on">Instance Variable</defcategory> <defclass>fr</defclass> <defclassvar>BBB</defclassvar> <defparam>CCC</defparam></definitionterm>
<definitionitem><para>&errorglyph;
</para></definitionitem></defivar>

<documentlanguage xml:lang="de" spaces=" ">de</documentlanguage>

<insertcopying></insertcopying>

<documentlanguage xml:lang="hr" spaces=" ">hr</documentlanguage>

<defivar spaces=" " endspaces=" "><definitionterm><indexterm index="vr" number="3">BBB od hr</indexterm><defcategory automatic="on" bracketed="on">Instance Variable</defcategory> <defclass>hr</defclass> <defclassvar>BBB</defclassvar> <defparam>CCC</defparam></definitionterm>
<definitionitem><para>&errorglyph;
</para></definitionitem></defivar>

<insertcopying></insertcopying>

<printindex value="vr" line="vr"></printindex>
';


$result_converted{'docbook_doc'}->{'multiple'} = '<?xml version="1.0"?>
<!DOCTYPE book PUBLIC "-//OASIS//DTD DocBook XML V4.5//EN" "http://www.oasis-open.org/docbook/xml/4.5/docbookx.dtd" [
  <!ENTITY tex "TeX">
  <!ENTITY latex "LaTeX">
]>
<book lang="fr">
<bookinfo><legalnotice><synopsis><indexterm role="vr"><primary>a de copying</primary></indexterm><phrase role="category"><emphasis role="bold">Instance Variable</emphasis>:</phrase> <ooclass><classname>copying</classname></ooclass> <property>a</property> <emphasis role="arg">b</emphasis></synopsis>
<blockquote><para>erreur&#8594;
</para></blockquote></legalnotice></bookinfo>


<anchor id="Top"/>

<synopsis><indexterm role="vr"><primary>BBB de fr</primary></indexterm><phrase role="category"><emphasis role="bold">Instance Variable</emphasis>:</phrase> <ooclass><classname>fr</classname></ooclass> <property>BBB</property> <emphasis role="arg">CCC</emphasis></synopsis>
<blockquote><para>erreur&#8594;
</para></blockquote>

<synopsis><indexterm role="vr"><primary>a de copying</primary></indexterm><phrase role="category"><emphasis role="bold">Instance Variable</emphasis>:</phrase> <ooclass><classname>copying</classname></ooclass> <property>a</property> <emphasis role="arg">b</emphasis></synopsis>
<blockquote><para>error&#8594;
</para></blockquote>

<synopsis><indexterm role="vr"><primary>BBB od hr</primary></indexterm><phrase role="category"><emphasis role="bold">Instance Variable</emphasis>:</phrase> <ooclass><classname>hr</classname></ooclass> <property>BBB</property> <emphasis role="arg">CCC</emphasis></synopsis>
<blockquote><para>greška&#8594;
</para></blockquote>
<synopsis><indexterm role="vr"><primary>a de copying</primary></indexterm><phrase role="category"><emphasis role="bold">Instance Variable</emphasis>:</phrase> <ooclass><classname>copying</classname></ooclass> <property>a</property> <emphasis role="arg">b</emphasis></synopsis>
<blockquote><para>greška&#8594;
</para></blockquote>
<index role="vr"></index>
</book>
';

1;
