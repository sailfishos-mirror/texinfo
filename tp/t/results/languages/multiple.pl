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
              'cmdname' => 'copying',
              'contents' => [
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
        'line_nr' => 9,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'top'
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
        'line_nr' => 10,
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
            'normalized' => 'chap'
          }
        ],
        'normalized' => 'chap',
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
              'text' => 'Chap'
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
                'line_nr' => 15,
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
                        'line_nr' => 16,
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
                'line_nr' => 17,
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
            'line_nr' => 23,
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
                'line_nr' => 25,
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
                        'line_nr' => 26,
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
                'line_nr' => 27,
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
            'line_nr' => 29,
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
            'line_nr' => 31,
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
        'line_nr' => 13,
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
$result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[0];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'class'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[0];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[2] = $result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[2] = $result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'region'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[0];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[1];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[2];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'extra'}{'end_command'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[2];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'extra'}{'end_command'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[0];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'multiple'}{'contents'}[0]{'contents'}[0];
$result_trees{'multiple'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[0];
$result_trees{'multiple'}{'contents'}[0]{'parent'} = $result_trees{'multiple'};
$result_trees{'multiple'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[1]{'args'}[0];
$result_trees{'multiple'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[1];
$result_trees{'multiple'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'multiple'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'multiple'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'multiple'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'multiple'}{'contents'}[1]{'parent'} = $result_trees{'multiple'};
$result_trees{'multiple'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[2]{'args'}[0];
$result_trees{'multiple'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[2];
$result_trees{'multiple'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[2];
$result_trees{'multiple'}{'contents'}[2]{'parent'} = $result_trees{'multiple'};
$result_trees{'multiple'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[3]{'args'}[0];
$result_trees{'multiple'}{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[3];
$result_trees{'multiple'}{'contents'}[3]{'extra'}{'node_content'}[0] = $result_trees{'multiple'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'multiple'}{'contents'}[3]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'multiple'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'multiple'}{'contents'}[3]{'parent'} = $result_trees{'multiple'};
$result_trees{'multiple'}{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[4]{'args'}[0];
$result_trees{'multiple'}{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[4];
$result_trees{'multiple'}{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[4];
$result_trees{'multiple'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'multiple'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'multiple'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'multiple'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'multiple'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'multiple'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'multiple'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'multiple'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'multiple'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'multiple'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'multiple'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'multiple'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'multiple'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[4]{'contents'}[1]{'contents'}[0];
$result_trees{'multiple'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'multiple'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'multiple'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'class'} = $result_trees{'multiple'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'multiple'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'multiple'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'multiple'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'multiple'}{'contents'}[4]{'contents'}[1]{'contents'}[0];
$result_trees{'multiple'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'multiple'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'multiple'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[2] = $result_trees{'multiple'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'multiple'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'multiple'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'multiple'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[2] = $result_trees{'multiple'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'multiple'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'node'} = $result_trees{'multiple'}{'contents'}[3];
$result_trees{'multiple'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[4]{'contents'}[1];
$result_trees{'multiple'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0];
$result_trees{'multiple'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'multiple'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'multiple'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'multiple'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[4]{'contents'}[1]{'contents'}[1];
$result_trees{'multiple'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'multiple'}{'contents'}[4]{'contents'}[1];
$result_trees{'multiple'}{'contents'}[4]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[4]{'contents'}[1]{'contents'}[2]{'args'}[0];
$result_trees{'multiple'}{'contents'}[4]{'contents'}[1]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[4]{'contents'}[1]{'contents'}[2];
$result_trees{'multiple'}{'contents'}[4]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'multiple'}{'contents'}[4]{'contents'}[1];
$result_trees{'multiple'}{'contents'}[4]{'contents'}[1]{'extra'}{'end_command'} = $result_trees{'multiple'}{'contents'}[4]{'contents'}[1]{'contents'}[2];
$result_trees{'multiple'}{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'multiple'}{'contents'}[4];
$result_trees{'multiple'}{'contents'}[4]{'contents'}[2]{'parent'} = $result_trees{'multiple'}{'contents'}[4];
$result_trees{'multiple'}{'contents'}[4]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[4]{'contents'}[3]{'args'}[0];
$result_trees{'multiple'}{'contents'}[4]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[4]{'contents'}[3];
$result_trees{'multiple'}{'contents'}[4]{'contents'}[3]{'parent'} = $result_trees{'multiple'}{'contents'}[4];
$result_trees{'multiple'}{'contents'}[4]{'contents'}[4]{'parent'} = $result_trees{'multiple'}{'contents'}[4];
$result_trees{'multiple'}{'contents'}[4]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[4]{'contents'}[5];
$result_trees{'multiple'}{'contents'}[4]{'contents'}[5]{'parent'} = $result_trees{'multiple'}{'contents'}[4];
$result_trees{'multiple'}{'contents'}[4]{'contents'}[6]{'parent'} = $result_trees{'multiple'}{'contents'}[4];
$result_trees{'multiple'}{'contents'}[4]{'contents'}[7]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[4]{'contents'}[7]{'args'}[0];
$result_trees{'multiple'}{'contents'}[4]{'contents'}[7]{'args'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[4]{'contents'}[7];
$result_trees{'multiple'}{'contents'}[4]{'contents'}[7]{'parent'} = $result_trees{'multiple'}{'contents'}[4];
$result_trees{'multiple'}{'contents'}[4]{'contents'}[8]{'parent'} = $result_trees{'multiple'}{'contents'}[4];
$result_trees{'multiple'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'multiple'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'args'}[0];
$result_trees{'multiple'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'multiple'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'args'}[0];
$result_trees{'multiple'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'multiple'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'args'}[0];
$result_trees{'multiple'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'multiple'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'args'}[0];
$result_trees{'multiple'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'multiple'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'args'}[0];
$result_trees{'multiple'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'multiple'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'args'}[0];
$result_trees{'multiple'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[4]{'contents'}[9]{'contents'}[0];
$result_trees{'multiple'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'multiple'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'multiple'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'class'} = $result_trees{'multiple'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'multiple'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'multiple'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'multiple'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'multiple'}{'contents'}[4]{'contents'}[9]{'contents'}[0];
$result_trees{'multiple'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'multiple'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'multiple'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[2] = $result_trees{'multiple'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'multiple'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'multiple'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'multiple'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[2] = $result_trees{'multiple'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'multiple'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'extra'}{'index_entry'}{'node'} = $result_trees{'multiple'}{'contents'}[3];
$result_trees{'multiple'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[4]{'contents'}[9];
$result_trees{'multiple'}{'contents'}[4]{'contents'}[9]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[4]{'contents'}[9]{'contents'}[1]{'contents'}[0]{'contents'}[0];
$result_trees{'multiple'}{'contents'}[4]{'contents'}[9]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[4]{'contents'}[9]{'contents'}[1]{'contents'}[0];
$result_trees{'multiple'}{'contents'}[4]{'contents'}[9]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'multiple'}{'contents'}[4]{'contents'}[9]{'contents'}[1]{'contents'}[0];
$result_trees{'multiple'}{'contents'}[4]{'contents'}[9]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[4]{'contents'}[9]{'contents'}[1];
$result_trees{'multiple'}{'contents'}[4]{'contents'}[9]{'contents'}[1]{'parent'} = $result_trees{'multiple'}{'contents'}[4]{'contents'}[9];
$result_trees{'multiple'}{'contents'}[4]{'contents'}[9]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[4]{'contents'}[9]{'contents'}[2]{'args'}[0];
$result_trees{'multiple'}{'contents'}[4]{'contents'}[9]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[4]{'contents'}[9]{'contents'}[2];
$result_trees{'multiple'}{'contents'}[4]{'contents'}[9]{'contents'}[2]{'parent'} = $result_trees{'multiple'}{'contents'}[4]{'contents'}[9];
$result_trees{'multiple'}{'contents'}[4]{'contents'}[9]{'extra'}{'end_command'} = $result_trees{'multiple'}{'contents'}[4]{'contents'}[9]{'contents'}[2];
$result_trees{'multiple'}{'contents'}[4]{'contents'}[9]{'parent'} = $result_trees{'multiple'}{'contents'}[4];
$result_trees{'multiple'}{'contents'}[4]{'contents'}[10]{'parent'} = $result_trees{'multiple'}{'contents'}[4];
$result_trees{'multiple'}{'contents'}[4]{'contents'}[11]{'args'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[4]{'contents'}[11];
$result_trees{'multiple'}{'contents'}[4]{'contents'}[11]{'parent'} = $result_trees{'multiple'}{'contents'}[4];
$result_trees{'multiple'}{'contents'}[4]{'contents'}[12]{'parent'} = $result_trees{'multiple'}{'contents'}[4];
$result_trees{'multiple'}{'contents'}[4]{'contents'}[13]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[4]{'contents'}[13]{'args'}[0];
$result_trees{'multiple'}{'contents'}[4]{'contents'}[13]{'args'}[0]{'parent'} = $result_trees{'multiple'}{'contents'}[4]{'contents'}[13];
$result_trees{'multiple'}{'contents'}[4]{'contents'}[13]{'parent'} = $result_trees{'multiple'}{'contents'}[4];
$result_trees{'multiple'}{'contents'}[4]{'parent'} = $result_trees{'multiple'};

$result_texis{'multiple'} = '@documentlanguage fr

@copying
@defivar copying a b
@error{}
@end defivar
@end copying

@node Top
@top top

@node chap
@chapter Chap

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

top
***

1 Chap
******

Instance Variable of fr: BBB CCC
error-->




Instance Variable of hr: BBB CCC
error-->


';

$result_sectioning{'multiple'} = {
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
                    'normalized' => 'chap'
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
$result_sectioning{'multiple'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'multiple'}{'structure'}{'section_childs'}[0];
$result_sectioning{'multiple'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_prev'} = $result_sectioning{'multiple'}{'structure'}{'section_childs'}[0];
$result_sectioning{'multiple'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_up'} = $result_sectioning{'multiple'}{'structure'}{'section_childs'}[0];
$result_sectioning{'multiple'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'multiple'};

$result_nodes{'multiple'} = {
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
        'normalized' => 'chap'
      },
      'structure' => {
        'node_prev' => {},
        'node_up' => {}
      }
    }
  }
};
$result_nodes{'multiple'}{'structure'}{'node_next'}{'structure'}{'node_prev'} = $result_nodes{'multiple'};
$result_nodes{'multiple'}{'structure'}{'node_next'}{'structure'}{'node_up'} = $result_nodes{'multiple'};

$result_menus{'multiple'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  },
  'structure' => {}
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



$result_converted{'plaintext'}->{'multiple'} = 'top
***

1 Chap
******

 -- Variable d\'instance de fr : BBB CCC
     erreur→

 -- Instanzvariable von copying: a b
     error→

 -- Primjer varijable od hr: BBB CCC
     greška→

 -- Primjer varijable od copying: a b
     greška→

* Menu:

* a de copying:                          chap.                 (line 15)
* BBB de fr:                             chap.                 (line  6)
* BBB od hr:                             chap.                 (line 12)

';


$result_converted{'info'}->{'multiple'} = 'This is , produced from .

 -- Variable d\'instance de copying : a b
     erreur→


File: ,  Node: Top,  Next: chap,  Up: (dir)

top
***

* Menu:

* chap::


File: ,  Node: chap,  Prev: Top,  Up: Top

1 Chap
******

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

* a de copying:                          chap.                 (line 15)
* BBB de fr:                             chap.                 (line  6)
* BBB od hr:                             chap.                 (line 12)



Tag Table:
Node: Top84
Node: chap159

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
<!-- Variable d\'instance of copying: a b
erreur→ -->
<title>top</title>

<meta name="description" content="top">
<meta name="keywords" content="top">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="viewport" content="width=device-width,initial-scale=1">

<link href="#Top" rel="start" title="Top">
<link href="#chap" rel="index" title="chap">
<style type="text/css">
<!--
a.copiable-link {visibility: hidden; text-decoration: none; line-height: 0em}
a.summary-letter-printindex {text-decoration: none}
span:hover a.copiable-link {visibility: visible}
strong.def-name {font-family: monospace; font-weight: bold; font-size: larger}
td.printindex-index-entry {vertical-align: top}
td.printindex-index-section {vertical-align: top}
th.entries-header-printindex {text-align:left}
th.sections-header-printindex {text-align:left}
-->
</style>


</head>

<body lang="fr">


<div class="top-level-extent" id="Top">
<div class="nav-panel">
<p>
Suivant: <a href="#chap" accesskey="n" rel="next">Chap</a> &nbsp; [<a href="#chap" title="Index" rel="index">Index</a>]</p>
</div>
<h1 class="top" id="top">top</h1>

<ul class="mini-toc">
<li><a href="#chap" accesskey="1">Chap</a></li>
</ul>
<hr>
<div class="chapter-level-extent" id="chap">
<div class="nav-panel">
<p>
Pr&eacute;c&eacute;dent: <a href="#Top" accesskey="p" rel="prev">top</a>, Monter: <a href="#Top" accesskey="u" rel="up">top</a> &nbsp; [<a href="#chap" title="Index" rel="index">Index</a>]</p>
</div>
<h2 class="chapter" id="Chap">1 Chap</h2>

<dl class="first-defcv first-defivar-alias-first-defcv">
<dt class="defcv defivar-alias-defcv" id="index-BBB-of-fr"><span class="category-def">Variable d&rsquo;instance of <code class="code">fr</code>: </span><span><strong class="def-name">BBB</strong> <var class="def-var-arguments">CCC</var><a class="copiable-link" href=\'#index-BBB-of-fr\'> &para;</a></span></dt>
<dd><p>erreur&rarr;
</p></dd></dl>


<dl class="first-defcv first-defivar-alias-first-defcv">
<dt class="defcv defivar-alias-defcv" id="index-copying-a-of-copying"><span class="category-def">Instanzvariable of <code class="code">copying</code>: </span><span><strong class="def-name">a</strong> <var class="def-var-arguments">b</var><a class="copiable-link" href=\'#index-copying-a-of-copying\'> &para;</a></span></dt>
<dd><p>error&rarr;
</p></dd></dl>


<dl class="first-defcv first-defivar-alias-first-defcv">
<dt class="defcv defivar-alias-defcv" id="index-BBB-of-hr"><span class="category-def">Primjer varijable of <code class="code">hr</code>: </span><span><strong class="def-name">BBB</strong> <var class="def-var-arguments">CCC</var><a class="copiable-link" href=\'#index-BBB-of-hr\'> &para;</a></span></dt>
<dd><p>greška&rarr;
</p></dd></dl>

<dl class="first-defcv first-defivar-alias-first-defcv">
<dt class="defcv defivar-alias-defcv" id="index-copying-a-of-copying"><span class="category-def">Primjer varijable of <code class="code">copying</code>: </span><span><strong class="def-name">a</strong> <var class="def-var-arguments">b</var><a class="copiable-link" href=\'#index-copying-a-of-copying\'> &para;</a></span></dt>
<dd><p>greška&rarr;
</p></dd></dl>

<div class="printindex vr-printindex">
<table class="vr-letters-header-printindex"><tr><th>Preskoči na: &nbsp; </th><td><a class="summary-letter-printindex" href="#chap_vr_letter-A"><b>A</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#chap_vr_letter-B"><b>B</b></a>
 &nbsp; 
</td></tr></table>
<table class="vr-entries-printindex" border="0">
<tr><td></td><th class="entries-header-printindex">Stavka indeksa</th><td>&nbsp;</td><th class="sections-header-printindex"> Odlomak</th></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="chap_vr_letter-A">A</th><td></td><td></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-copying-a-of-copying"><code>a de copying</code></a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="chap_vr_letter-B">B</th><td></td><td></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-BBB-of-fr"><code>BBB de fr</code></a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-BBB-of-hr"><code>BBB od hr</code></a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
</table>
<table class="vr-letters-footer-printindex"><tr><th>Preskoči na: &nbsp; </th><td><a class="summary-letter-printindex" href="#chap_vr_letter-A"><b>A</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#chap_vr_letter-B"><b>B</b></a>
 &nbsp; 
</td></tr></table>
</div>
</div>
</div>



</body>
</html>
';


$result_converted{'xml'}->{'multiple'} = '<documentlanguage xml:lang="fr" spaces=" ">fr</documentlanguage>

<copying endspaces=" ">
<defivar spaces=" " endspaces=" "><definitionterm><indexterm index="vr" number="1">a de copying</indexterm><defcategory automatic="on" bracketed="on">Instance Variable</defcategory> <defclass>copying</defclass> <defclassvar>a</defclassvar> <defparam>b</defparam></definitionterm>
<definitionitem><para>&errorglyph;
</para></definitionitem></defivar>
</copying>

<node name="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">chap</nodenext></node>
<top spaces=" "><sectiontitle>top</sectiontitle>

</top>
<node name="chap" spaces=" "><nodename>chap</nodename><nodeprev automatic="on">Top</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>Chap</sectiontitle>

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
</chapter>
';


$result_converted{'docbook_doc'}->{'multiple'} = '<?xml version="1.0"?>
<!DOCTYPE book PUBLIC "-//OASIS//DTD DocBook XML V4.5//EN" "http://www.oasis-open.org/docbook/xml/4.5/docbookx.dtd" [
  <!ENTITY tex "TeX">
  <!ENTITY latex "LaTeX">
]>
<book lang="fr">
<title>top</title>
<bookinfo><title>top</title>
<legalnotice><synopsis><indexterm role="vr"><primary>a de copying</primary></indexterm><phrase role="category"><emphasis role="bold">Instance Variable</emphasis>:</phrase> <ooclass><classname>copying</classname></ooclass> <property>a</property> <emphasis role="arg">b</emphasis></synopsis>
<blockquote><para>erreur&#8594;
</para></blockquote></legalnotice></bookinfo>
<chapter label="1" id="chap">
<title>Chap</title>

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
</chapter>
</book>
';

1;
