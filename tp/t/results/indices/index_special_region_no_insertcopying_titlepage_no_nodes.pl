use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'text' => '\\input texinfo @c -*-texinfo-*-
',
              'type' => 'text_before_beginning'
            },
            {
              'text' => '
',
              'type' => 'text_before_beginning'
            }
          ],
          'type' => 'preamble_before_beginning'
        },
        {
          'contents' => [
            {
              'args' => [
                {
                  'info' => {
                    'spaces_after_argument' => ' 
'
                  },
                  'type' => 'block_line_arg'
                }
              ],
              'cmdname' => 'copying',
              'contents' => [
                {
                  'text' => '
',
                  'type' => 'empty_line'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'text' => 'Copying this document'
                        }
                      ],
                      'info' => {
                        'spaces_after_argument' => '
'
                      },
                      'type' => 'line_arg'
                    }
                  ],
                  'cmdname' => 'cindex',
                  'extra' => {
                    'index_entry' => {
                      'content_normalized' => [],
                      'entry_content' => [],
                      'entry_element' => {},
                      'entry_number' => 1,
                      'entry_region' => {},
                      'in_code' => 0,
                      'index_at_command' => 'cindex',
                      'index_ignore_chars' => {},
                      'index_name' => 'cp',
                      'index_type_command' => 'cindex'
                    }
                  },
                  'info' => {
                    'spaces_before_argument' => ' '
                  },
                  'source_info' => {
                    'file_name' => 'index_special_region_no_insertcopying.texi',
                    'line_nr' => 5,
                    'macro' => ''
                  },
                  'type' => 'index_entry_command'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'text' => 'Copying information'
                        }
                      ],
                      'extra' => {
                        'region' => {}
                      },
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'anchor',
                  'extra' => {
                    'node_content' => [
                      {}
                    ],
                    'normalized' => 'Copying-information'
                  },
                  'source_info' => {
                    'file_name' => 'index_special_region_no_insertcopying.texi',
                    'line_nr' => 6,
                    'macro' => ''
                  }
                },
                {
                  'text' => '
',
                  'type' => 'spaces_after_close_brace'
                },
                {
                  'text' => '
',
                  'type' => 'empty_line'
                },
                {
                  'contents' => [
                    {
                      'text' => 'This is a test manual, trivially and explicitly in the public
'
                    },
                    {
                      'text' => 'domain'
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
                                      'text' => 'Public domain reference'
                                    }
                                  ],
                                  'extra' => {
                                    'region' => {}
                                  },
                                  'type' => 'brace_command_arg'
                                }
                              ],
                              'cmdname' => 'anchor',
                              'extra' => {
                                'node_content' => [
                                  {}
                                ],
                                'normalized' => 'Public-domain-reference'
                              },
                              'source_info' => {
                                'file_name' => 'index_special_region_no_insertcopying.texi',
                                'line_nr' => 9,
                                'macro' => ''
                              }
                            },
                            {
                              'text' => ' ',
                              'type' => 'spaces_after_close_brace'
                            },
                            {
                              'contents' => [
                                {
                                  'text' => 'The public
'
                                },
                                {
                                  'text' => 'domain is something you should allready know
'
                                }
                              ],
                              'type' => 'paragraph'
                            },
                            {
                              'text' => '
',
                              'type' => 'empty_line'
                            },
                            {
                              'args' => [
                                {
                                  'contents' => [
                                    {
                                      'text' => 'Public domain'
                                    }
                                  ],
                                  'info' => {
                                    'spaces_after_argument' => '
'
                                  },
                                  'type' => 'line_arg'
                                }
                              ],
                              'cmdname' => 'cindex',
                              'extra' => {
                                'index_entry' => {
                                  'content_normalized' => [],
                                  'entry_content' => [],
                                  'entry_element' => {},
                                  'entry_number' => 2,
                                  'entry_region' => {},
                                  'in_code' => 0,
                                  'index_at_command' => 'cindex',
                                  'index_ignore_chars' => {},
                                  'index_name' => 'cp',
                                  'index_type_command' => 'cindex'
                                }
                              },
                              'info' => {
                                'spaces_before_argument' => ' '
                              },
                              'source_info' => {
                                'file_name' => 'index_special_region_no_insertcopying.texi',
                                'line_nr' => 12,
                                'macro' => ''
                              },
                              'type' => 'index_entry_command'
                            }
                          ],
                          'type' => 'brace_command_context'
                        }
                      ],
                      'cmdname' => 'footnote',
                      'source_info' => {
                        'file_name' => 'index_special_region_no_insertcopying.texi',
                        'line_nr' => 9,
                        'macro' => ''
                      }
                    },
                    {
                      'text' => '.
'
                    }
                  ],
                  'type' => 'paragraph'
                },
                {
                  'text' => '
',
                  'type' => 'empty_line'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'text' => 'cp'
                        }
                      ],
                      'info' => {
                        'spaces_after_argument' => '
'
                      },
                      'type' => 'line_arg'
                    }
                  ],
                  'cmdname' => 'printindex',
                  'extra' => {
                    'misc_args' => [
                      'cp'
                    ]
                  },
                  'info' => {
                    'spaces_before_argument' => ' '
                  },
                  'source_info' => {
                    'file_name' => 'index_special_region_no_insertcopying.texi',
                    'line_nr' => 15,
                    'macro' => ''
                  }
                },
                {
                  'text' => '
',
                  'type' => 'empty_line'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'text' => 'copying'
                        }
                      ],
                      'info' => {
                        'spaces_after_argument' => '
'
                      },
                      'type' => 'line_arg'
                    }
                  ],
                  'cmdname' => 'end',
                  'extra' => {
                    'text_arg' => 'copying'
                  },
                  'info' => {
                    'spaces_before_argument' => ' '
                  },
                  'source_info' => {
                    'file_name' => 'index_special_region_no_insertcopying.texi',
                    'line_nr' => 17,
                    'macro' => ''
                  }
                }
              ],
              'source_info' => {
                'file_name' => 'index_special_region_no_insertcopying.texi',
                'line_nr' => 3,
                'macro' => ''
              }
            },
            {
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'args' => [
                {
                  'info' => {
                    'spaces_after_argument' => '
'
                  },
                  'type' => 'block_line_arg'
                }
              ],
              'cmdname' => 'titlepage',
              'contents' => [
                {
                  'text' => '
',
                  'type' => 'empty_line'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'text' => 'Titlepage index'
                        }
                      ],
                      'info' => {
                        'spaces_after_argument' => '
'
                      },
                      'type' => 'line_arg'
                    }
                  ],
                  'cmdname' => 'cindex',
                  'extra' => {
                    'index_entry' => {
                      'content_normalized' => [],
                      'entry_content' => [],
                      'entry_element' => {},
                      'entry_number' => 3,
                      'entry_region' => {},
                      'in_code' => 0,
                      'index_at_command' => 'cindex',
                      'index_ignore_chars' => {},
                      'index_name' => 'cp',
                      'index_type_command' => 'cindex'
                    }
                  },
                  'info' => {
                    'spaces_before_argument' => ' '
                  },
                  'source_info' => {
                    'file_name' => 'index_special_region_no_insertcopying.texi',
                    'line_nr' => 21,
                    'macro' => ''
                  },
                  'type' => 'index_entry_command'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'text' => 'Titlepage anchor'
                        }
                      ],
                      'extra' => {
                        'region' => {}
                      },
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'anchor',
                  'extra' => {
                    'node_content' => [
                      {}
                    ],
                    'normalized' => 'Titlepage-anchor'
                  },
                  'source_info' => {
                    'file_name' => 'index_special_region_no_insertcopying.texi',
                    'line_nr' => 22,
                    'macro' => ''
                  }
                },
                {
                  'text' => '
',
                  'type' => 'spaces_after_close_brace'
                },
                {
                  'text' => '
',
                  'type' => 'empty_line'
                },
                {
                  'contents' => [
                    {
                      'text' => 'This is the titlepage'
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
                                      'text' => 'Titlepage footnote anchor'
                                    }
                                  ],
                                  'extra' => {
                                    'region' => {}
                                  },
                                  'type' => 'brace_command_arg'
                                }
                              ],
                              'cmdname' => 'anchor',
                              'extra' => {
                                'node_content' => [
                                  {}
                                ],
                                'normalized' => 'Titlepage-footnote-anchor'
                              },
                              'source_info' => {
                                'file_name' => 'index_special_region_no_insertcopying.texi',
                                'line_nr' => 24,
                                'macro' => ''
                              }
                            },
                            {
                              'text' => '
',
                              'type' => 'spaces_after_close_brace'
                            },
                            {
                              'contents' => [
                                {
                                  'text' => 'This is a fine document.
'
                                }
                              ],
                              'type' => 'paragraph'
                            },
                            {
                              'text' => '
',
                              'type' => 'empty_line'
                            },
                            {
                              'args' => [
                                {
                                  'contents' => [
                                    {
                                      'text' => 'Titlepage footnote'
                                    }
                                  ],
                                  'info' => {
                                    'spaces_after_argument' => '
'
                                  },
                                  'type' => 'line_arg'
                                }
                              ],
                              'cmdname' => 'cindex',
                              'extra' => {
                                'index_entry' => {
                                  'content_normalized' => [],
                                  'entry_content' => [],
                                  'entry_element' => {},
                                  'entry_number' => 4,
                                  'entry_region' => {},
                                  'in_code' => 0,
                                  'index_at_command' => 'cindex',
                                  'index_ignore_chars' => {},
                                  'index_name' => 'cp',
                                  'index_type_command' => 'cindex'
                                }
                              },
                              'info' => {
                                'spaces_before_argument' => ' '
                              },
                              'source_info' => {
                                'file_name' => 'index_special_region_no_insertcopying.texi',
                                'line_nr' => 27,
                                'macro' => ''
                              },
                              'type' => 'index_entry_command'
                            }
                          ],
                          'type' => 'brace_command_context'
                        }
                      ],
                      'cmdname' => 'footnote',
                      'source_info' => {
                        'file_name' => 'index_special_region_no_insertcopying.texi',
                        'line_nr' => 24,
                        'macro' => ''
                      }
                    },
                    {
                      'text' => '
'
                    }
                  ],
                  'type' => 'paragraph'
                },
                {
                  'text' => '
',
                  'type' => 'empty_line'
                },
                {
                  'args' => [
                    {
                      'text' => '
',
                      'type' => 'misc_arg'
                    }
                  ],
                  'cmdname' => 'insertcopying',
                  'source_info' => {
                    'file_name' => 'index_special_region_no_insertcopying.texi',
                    'line_nr' => 30,
                    'macro' => ''
                  }
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'text' => 'titlepage'
                        }
                      ],
                      'info' => {
                        'spaces_after_argument' => '
'
                      },
                      'type' => 'line_arg'
                    }
                  ],
                  'cmdname' => 'end',
                  'extra' => {
                    'text_arg' => 'titlepage'
                  },
                  'info' => {
                    'spaces_before_argument' => ' '
                  },
                  'source_info' => {
                    'file_name' => 'index_special_region_no_insertcopying.texi',
                    'line_nr' => 31,
                    'macro' => ''
                  }
                }
              ],
              'source_info' => {
                'file_name' => 'index_special_region_no_insertcopying.texi',
                'line_nr' => 19,
                'macro' => ''
              }
            },
            {
              'text' => '
',
              'type' => 'empty_line'
            }
          ],
          'type' => 'preamble_before_content'
        }
      ],
      'type' => 'before_node_section'
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'text' => 'Top'
            }
          ],
          'info' => {
            'spaces_after_argument' => '
'
          },
          'type' => 'line_arg'
        }
      ],
      'cmdname' => 'node',
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
        'normalized' => 'Top'
      },
      'info' => {
        'spaces_before_argument' => ' '
      },
      'source_info' => {
        'file_name' => 'index_special_region_no_insertcopying.texi',
        'line_nr' => 33,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'text' => 'Top'
            }
          ],
          'info' => {
            'spaces_after_argument' => '
'
          },
          'type' => 'line_arg'
        }
      ],
      'cmdname' => 'top',
      'extra' => {},
      'info' => {
        'spaces_before_argument' => ' '
      },
      'source_info' => {
        'file_name' => 'index_special_region_no_insertcopying.texi',
        'line_nr' => 34,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'text' => 'Chapter'
            }
          ],
          'info' => {
            'spaces_after_argument' => '
'
          },
          'type' => 'line_arg'
        }
      ],
      'cmdname' => 'chapter',
      'contents' => [
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'args' => [
            {
              'text' => ' @insertcopying
',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'c',
          'extra' => {
            'misc_args' => [
              ' @insertcopying
'
            ]
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'text' => 'This test demonstrates '
            },
            {
              'cmdname' => '@'
            },
            {
              'text' => 'anchor and indices in '
            },
            {
              'cmdname' => '@'
            },
            {
              'text' => 'copying
'
            },
            {
              'text' => 'and titlepage, and various wrong index entries.
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'text' => 'findex entry'
                }
              ],
              'info' => {
                'spaces_after_argument' => '
'
              },
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'findex',
          'extra' => {
            'index_entry' => {
              'content_normalized' => [],
              'entry_content' => [],
              'entry_element' => {},
              'entry_node' => {},
              'entry_number' => 1,
              'in_code' => 1,
              'index_at_command' => 'findex',
              'index_ignore_chars' => {},
              'index_name' => 'fn',
              'index_type_command' => 'findex'
            }
          },
          'info' => {
            'spaces_before_argument' => ' '
          },
          'source_info' => {
            'file_name' => 'index_special_region_no_insertcopying.texi',
            'line_nr' => 42,
            'macro' => ''
          },
          'type' => 'index_entry_command'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'args' => [
            {
              'info' => {
                'spaces_after_argument' => '
'
              },
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'cindex',
          'extra' => {
            'missing_argument' => 1
          },
          'source_info' => {
            'file_name' => 'index_special_region_no_insertcopying.texi',
            'line_nr' => 44,
            'macro' => ''
          }
        },
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
                          'text' => 'truc'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'category'
                      },
                      'source_info' => {
                        'file_name' => 'index_special_region_no_insertcopying.texi',
                        'line_nr' => 45,
                        'macro' => ''
                      },
                      'type' => 'bracketed_def_content'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'extra' => {
                        'def_role' => 'name'
                      },
                      'info' => {
                        'spaces_before_argument' => ' '
                      },
                      'source_info' => {
                        'file_name' => 'index_special_region_no_insertcopying.texi',
                        'line_nr' => 45,
                        'macro' => ''
                      },
                      'type' => 'bracketed_def_content'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => '
'
                  },
                  'type' => 'block_line_arg'
                }
              ],
              'extra' => {
                'def_command' => 'deffn',
                'def_parsed_hash' => {
                  'category' => {},
                  'name' => {}
                },
                'original_def_cmdname' => 'deffn'
              },
              'source_info' => {
                'file_name' => 'index_special_region_no_insertcopying.texi',
                'line_nr' => 45,
                'macro' => ''
              },
              'type' => 'def_line'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'truc'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'category'
                      },
                      'source_info' => {
                        'file_name' => 'index_special_region_no_insertcopying.texi',
                        'line_nr' => 46,
                        'macro' => ''
                      },
                      'type' => 'bracketed_def_content'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => '
'
                  },
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'deffnx',
              'extra' => {
                'def_command' => 'deffn',
                'def_parsed_hash' => {
                  'category' => {}
                },
                'original_def_cmdname' => 'deffnx'
              },
              'source_info' => {
                'file_name' => 'index_special_region_no_insertcopying.texi',
                'line_nr' => 46,
                'macro' => ''
              },
              'type' => 'def_line'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'extra' => {
                        'def_role' => 'category'
                      },
                      'source_info' => {
                        'file_name' => 'index_special_region_no_insertcopying.texi',
                        'line_nr' => 47,
                        'macro' => ''
                      },
                      'type' => 'bracketed_def_content'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'extra' => {
                        'def_role' => 'name'
                      },
                      'source_info' => {
                        'file_name' => 'index_special_region_no_insertcopying.texi',
                        'line_nr' => 47,
                        'macro' => ''
                      },
                      'type' => 'bracketed_def_content'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => '
'
                  },
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
                'original_def_cmdname' => 'deffnx'
              },
              'source_info' => {
                'file_name' => 'index_special_region_no_insertcopying.texi',
                'line_nr' => 47,
                'macro' => ''
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
                    'spaces_after_argument' => '
'
                  },
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'text_arg' => 'deffn'
              },
              'info' => {
                'spaces_before_argument' => ' '
              },
              'source_info' => {
                'file_name' => 'index_special_region_no_insertcopying.texi',
                'line_nr' => 48,
                'macro' => ''
              }
            }
          ],
          'source_info' => {
            'file_name' => 'index_special_region_no_insertcopying.texi',
            'line_nr' => 45,
            'macro' => ''
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'args' => [
            {
              'cmdname' => 'asis',
              'type' => 'command_as_argument_inserted'
            },
            {
              'info' => {
                'spaces_after_argument' => '
'
              },
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
                          'info' => {
                            'spaces_after_argument' => '
'
                          },
                          'type' => 'line_arg'
                        }
                      ],
                      'cmdname' => 'item',
                      'extra' => {
                        'missing_argument' => 1
                      },
                      'source_info' => {
                        'file_name' => 'index_special_region_no_insertcopying.texi',
                        'line_nr' => 51,
                        'macro' => ''
                      }
                    }
                  ],
                  'type' => 'table_term'
                }
              ],
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
                              'text' => 'fun'
                            }
                          ],
                          'info' => {
                            'spaces_after_argument' => '
'
                          },
                          'type' => 'line_arg'
                        }
                      ],
                      'cmdname' => 'item',
                      'extra' => {
                        'index_entry' => {
                          'content_normalized' => [],
                          'entry_content' => [],
                          'entry_element' => {},
                          'entry_node' => {},
                          'entry_number' => 2,
                          'in_code' => 1,
                          'index_at_command' => 'item',
                          'index_ignore_chars' => {},
                          'index_name' => 'fn',
                          'index_type_command' => 'ftable'
                        }
                      },
                      'info' => {
                        'spaces_before_argument' => ' '
                      },
                      'source_info' => {
                        'file_name' => 'index_special_region_no_insertcopying.texi',
                        'line_nr' => 52,
                        'macro' => ''
                      }
                    }
                  ],
                  'type' => 'table_term'
                }
              ],
              'type' => 'table_entry'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'ftable'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => '
'
                  },
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'text_arg' => 'ftable'
              },
              'info' => {
                'spaces_before_argument' => ' '
              },
              'source_info' => {
                'file_name' => 'index_special_region_no_insertcopying.texi',
                'line_nr' => 53,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'command_as_argument' => {}
          },
          'source_info' => {
            'file_name' => 'index_special_region_no_insertcopying.texi',
            'line_nr' => 50,
            'macro' => ''
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'args' => [
            {
              'info' => {
                'spaces_after_argument' => '
'
              },
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'menu',
          'contents' => [
            {
              'args' => [
                {
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'text' => 'Copying and indices'
                    }
                  ],
                  'type' => 'menu_entry_node'
                },
                {
                  'text' => '::',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => '
'
                        }
                      ],
                      'type' => 'preformatted'
                    }
                  ],
                  'type' => 'menu_entry_description'
                }
              ],
              'extra' => {
                'menu_entry_description' => {},
                'menu_entry_node' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => 'Copying-and-indices'
                }
              },
              'source_info' => {
                'file_name' => 'index_special_region_no_insertcopying.texi',
                'line_nr' => 56,
                'macro' => ''
              },
              'type' => 'menu_entry'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'menu'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => '
'
                  },
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'text_arg' => 'menu'
              },
              'info' => {
                'spaces_before_argument' => ' '
              },
              'source_info' => {
                'file_name' => 'index_special_region_no_insertcopying.texi',
                'line_nr' => 57,
                'macro' => ''
              }
            }
          ],
          'source_info' => {
            'file_name' => 'index_special_region_no_insertcopying.texi',
            'line_nr' => 55,
            'macro' => ''
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'extra' => {},
      'info' => {
        'spaces_before_argument' => ' '
      },
      'source_info' => {
        'file_name' => 'index_special_region_no_insertcopying.texi',
        'line_nr' => 35,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'text' => 'Copying and indices'
            }
          ],
          'info' => {
            'spaces_after_argument' => '
'
          },
          'type' => 'line_arg'
        }
      ],
      'cmdname' => 'node',
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
            'normalized' => 'Copying-and-indices'
          }
        ],
        'normalized' => 'Copying-and-indices'
      },
      'info' => {
        'spaces_before_argument' => ' '
      },
      'source_info' => {
        'file_name' => 'index_special_region_no_insertcopying.texi',
        'line_nr' => 59,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'text' => 'Copying and indices'
            }
          ],
          'info' => {
            'spaces_after_argument' => '
'
          },
          'type' => 'line_arg'
        }
      ],
      'cmdname' => 'appendix',
      'contents' => [
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'text' => 'In the appendix, we print the indices and references.
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'text' => 'another fun'
                }
              ],
              'info' => {
                'spaces_after_argument' => '
'
              },
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'findex',
          'extra' => {
            'index_entry' => {
              'content_normalized' => [],
              'entry_content' => [],
              'entry_element' => {},
              'entry_node' => {},
              'entry_number' => 3,
              'in_code' => 1,
              'index_at_command' => 'findex',
              'index_ignore_chars' => {},
              'index_name' => 'fn',
              'index_type_command' => 'findex'
            }
          },
          'info' => {
            'spaces_before_argument' => ' '
          },
          'source_info' => {
            'file_name' => 'index_special_region_no_insertcopying.texi',
            'line_nr' => 64,
            'macro' => ''
          },
          'type' => 'index_entry_command'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'text' => 'Copying appendix'
                }
              ],
              'info' => {
                'spaces_after_argument' => '
'
              },
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'cindex',
          'extra' => {
            'index_entry' => {
              'content_normalized' => [],
              'entry_content' => [],
              'entry_element' => {},
              'entry_node' => {},
              'entry_number' => 5,
              'in_code' => 0,
              'index_at_command' => 'cindex',
              'index_ignore_chars' => {},
              'index_name' => 'cp',
              'index_type_command' => 'cindex'
            }
          },
          'info' => {
            'spaces_before_argument' => ' '
          },
          'source_info' => {
            'file_name' => 'index_special_region_no_insertcopying.texi',
            'line_nr' => 66,
            'macro' => ''
          },
          'type' => 'index_entry_command'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'Copying information'
                    }
                  ],
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'ref',
              'extra' => {
                'label' => {},
                'node_argument' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => 'Copying-information'
                }
              },
              'source_info' => {
                'file_name' => 'index_special_region_no_insertcopying.texi',
                'line_nr' => 68,
                'macro' => ''
              }
            },
            {
              'text' => ' for the copying information.
'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'Public domain reference'
                    }
                  ],
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'ref',
              'extra' => {
                'label' => {},
                'node_argument' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => 'Public-domain-reference'
                }
              },
              'source_info' => {
                'file_name' => 'index_special_region_no_insertcopying.texi',
                'line_nr' => 69,
                'macro' => ''
              }
            },
            {
              'text' => ' for reference on the licence.
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'Titlepage anchor'
                    }
                  ],
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'ref',
              'extra' => {
                'label' => {},
                'node_argument' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => 'Titlepage-anchor'
                }
              },
              'source_info' => {
                'file_name' => 'index_special_region_no_insertcopying.texi',
                'line_nr' => 71,
                'macro' => ''
              }
            },
            {
              'text' => ' for the titlepage.
'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'Titlepage footnote anchor'
                    }
                  ],
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'ref',
              'extra' => {
                'label' => {},
                'node_argument' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => 'Titlepage-footnote-anchor'
                }
              },
              'source_info' => {
                'file_name' => 'index_special_region_no_insertcopying.texi',
                'line_nr' => 72,
                'macro' => ''
              }
            },
            {
              'text' => ' for reference on the titlepage.
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'args' => [
            {
              'text' => ' @insertcopying
',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'c',
          'extra' => {
            'misc_args' => [
              ' @insertcopying
'
            ]
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'text' => 'cp'
                }
              ],
              'info' => {
                'spaces_after_argument' => '
'
              },
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'printindex',
          'extra' => {
            'misc_args' => [
              'cp'
            ]
          },
          'info' => {
            'spaces_before_argument' => ' '
          },
          'source_info' => {
            'file_name' => 'index_special_region_no_insertcopying.texi',
            'line_nr' => 76,
            'macro' => ''
          }
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'text' => 'fn'
                }
              ],
              'info' => {
                'spaces_after_argument' => '
'
              },
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'printindex',
          'extra' => {
            'misc_args' => [
              'fn'
            ]
          },
          'info' => {
            'spaces_before_argument' => ' '
          },
          'source_info' => {
            'file_name' => 'index_special_region_no_insertcopying.texi',
            'line_nr' => 77,
            'macro' => ''
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'args' => [
            {
              'text' => '
',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'contents',
          'source_info' => {
            'file_name' => 'index_special_region_no_insertcopying.texi',
            'line_nr' => 79,
            'macro' => ''
          }
        }
      ],
      'extra' => {},
      'info' => {
        'spaces_before_argument' => ' '
      },
      'source_info' => {
        'file_name' => 'index_special_region_no_insertcopying.texi',
        'line_nr' => 60,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'text' => '
',
          'type' => 'misc_arg'
        }
      ],
      'cmdname' => 'bye'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'extra'}{'index_entry'}{'entry_content'} = $result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[1];
$result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'extra'}{'index_entry'}{'entry_region'} = $result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'args'}[0]{'extra'}{'region'} = $result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'extra'}{'node_content'}[0] = $result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[5]{'contents'}[2]{'args'}[0]{'contents'}[0]{'args'}[0]{'extra'}{'region'} = $result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[5]{'contents'}[2]{'args'}[0]{'contents'}[0]{'extra'}{'node_content'}[0] = $result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[5]{'contents'}[2]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[5]{'contents'}[2]{'args'}[0]{'contents'}[4]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[5]{'contents'}[2]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'};
$result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[5]{'contents'}[2]{'args'}[0]{'contents'}[4]{'extra'}{'index_entry'}{'entry_content'} = $result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[5]{'contents'}[2]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'};
$result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[5]{'contents'}[2]{'args'}[0]{'contents'}[4]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[5]{'contents'}[2]{'args'}[0]{'contents'}[4];
$result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[5]{'contents'}[2]{'args'}[0]{'contents'}[4]{'extra'}{'index_entry'}{'entry_region'} = $result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'contents'}[1]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'contents'}[1]{'extra'}{'index_entry'}{'entry_content'} = $result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'contents'}[1]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'contents'}[1];
$result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'contents'}[1]{'extra'}{'index_entry'}{'entry_region'} = $result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[0]{'contents'}[1]{'contents'}[2];
$result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'contents'}[2]{'args'}[0]{'extra'}{'region'} = $result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[0]{'contents'}[1]{'contents'}[2];
$result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'contents'}[2]{'extra'}{'node_content'}[0] = $result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'contents'}[5]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0]{'extra'}{'region'} = $result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[0]{'contents'}[1]{'contents'}[2];
$result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'contents'}[5]{'contents'}[1]{'args'}[0]{'contents'}[0]{'extra'}{'node_content'}[0] = $result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'contents'}[5]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'contents'}[5]{'contents'}[1]{'args'}[0]{'contents'}[4]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'contents'}[5]{'contents'}[1]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'};
$result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'contents'}[5]{'contents'}[1]{'args'}[0]{'contents'}[4]{'extra'}{'index_entry'}{'entry_content'} = $result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'contents'}[5]{'contents'}[1]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'};
$result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'contents'}[5]{'contents'}[1]{'args'}[0]{'contents'}[4]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'contents'}[5]{'contents'}[1]{'args'}[0]{'contents'}[4];
$result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'contents'}[5]{'contents'}[1]{'args'}[0]{'contents'}[4]{'extra'}{'index_entry'}{'entry_region'} = $result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[0]{'contents'}[1]{'contents'}[2];
$result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[3]{'contents'}[5]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[3]{'contents'}[5]{'args'}[0]{'contents'};
$result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[3]{'contents'}[5]{'extra'}{'index_entry'}{'entry_content'} = $result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[3]{'contents'}[5]{'args'}[0]{'contents'};
$result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[3]{'contents'}[5]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[3]{'contents'}[5];
$result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[3]{'contents'}[5]{'extra'}{'index_entry'}{'entry_node'} = $result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[1];
$result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[3]{'contents'}[8]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[3]{'contents'}[8]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[3]{'contents'}[8]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[3]{'contents'}[8]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[3]{'contents'}[8]{'contents'}[1]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[3]{'contents'}[8]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[3]{'contents'}[8]{'contents'}[2]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[3]{'contents'}[8]{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[3]{'contents'}[8]{'contents'}[2]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[3]{'contents'}[8]{'contents'}[2]{'args'}[0]{'contents'}[2];
$result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[3]{'contents'}[10]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[3]{'contents'}[10]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'};
$result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[3]{'contents'}[10]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'entry_content'} = $result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[3]{'contents'}[10]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'};
$result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[3]{'contents'}[10]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[3]{'contents'}[10]{'contents'}[1]{'contents'}[0]{'contents'}[0];
$result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[3]{'contents'}[10]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'entry_node'} = $result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[1];
$result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[3]{'contents'}[10]{'extra'}{'command_as_argument'} = $result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[3]{'contents'}[10]{'args'}[0];
$result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[3]{'contents'}[12]{'contents'}[0]{'extra'}{'menu_entry_description'} = $result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[3]{'contents'}[12]{'contents'}[0]{'args'}[3];
$result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[3]{'contents'}[12]{'contents'}[0]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[3]{'contents'}[12]{'contents'}[0]{'args'}[1]{'contents'}[0];
$result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[4]{'extra'}{'node_content'}[0] = $result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[4]{'args'}[0]{'contents'}[0];
$result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[4]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[4]{'args'}[0]{'contents'}[0];
$result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[5]{'contents'}[3]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[5]{'contents'}[3]{'args'}[0]{'contents'};
$result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[5]{'contents'}[3]{'extra'}{'index_entry'}{'entry_content'} = $result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[5]{'contents'}[3]{'args'}[0]{'contents'};
$result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[5]{'contents'}[3]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[5]{'contents'}[3];
$result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[5]{'contents'}[3]{'extra'}{'index_entry'}{'entry_node'} = $result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[4];
$result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[5]{'contents'}[5]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[5]{'contents'}[5]{'args'}[0]{'contents'};
$result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[5]{'contents'}[5]{'extra'}{'index_entry'}{'entry_content'} = $result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[5]{'contents'}[5]{'args'}[0]{'contents'};
$result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[5]{'contents'}[5]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[5]{'contents'}[5];
$result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[5]{'contents'}[5]{'extra'}{'index_entry'}{'entry_node'} = $result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[4];
$result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[5]{'contents'}[7]{'contents'}[0]{'extra'}{'label'} = $result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[2];
$result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[5]{'contents'}[7]{'contents'}[0]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[5]{'contents'}[7]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[5]{'contents'}[7]{'contents'}[2]{'extra'}{'label'} = $result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[5]{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[5]{'contents'}[7]{'contents'}[2]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[5]{'contents'}[7]{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[5]{'contents'}[9]{'contents'}[0]{'extra'}{'label'} = $result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'contents'}[2];
$result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[5]{'contents'}[9]{'contents'}[0]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[5]{'contents'}[9]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[5]{'contents'}[9]{'contents'}[2]{'extra'}{'label'} = $result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'contents'}[5]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[5]{'contents'}[9]{'contents'}[2]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[5]{'contents'}[9]{'contents'}[2]{'args'}[0]{'contents'}[0];

$result_texis{'index_special_region_no_insertcopying_titlepage_no_nodes'} = '\\input texinfo @c -*-texinfo-*-

@copying 

@cindex Copying this document
@anchor{Copying information}

This is a test manual, trivially and explicitly in the public
domain@footnote{@anchor{Public domain reference} The public
domain is something you should allready know

@cindex Public domain
}.

@printindex cp

@end copying

@titlepage

@cindex Titlepage index
@anchor{Titlepage anchor}

This is the titlepage@footnote{@anchor{Titlepage footnote anchor}
This is a fine document.

@cindex Titlepage footnote
}

@insertcopying
@end titlepage

@node Top
@top Top
@chapter Chapter

@c @insertcopying

This test demonstrates @@anchor and indices in @@copying
and titlepage, and various wrong index entries.

@findex findex entry

@cindex
@deffn{truc} { }
@deffnx{truc}
@deffnx{} {}
@end deffn

@ftable
@item
@item fun
@end ftable

@menu
* Copying and indices::
@end menu

@node Copying and indices
@appendix Copying and indices

In the appendix, we print the indices and references.

@findex another fun

@cindex Copying appendix

@ref{Copying information} for the copying information.
@ref{Public domain reference} for reference on the licence.

@ref{Titlepage anchor} for the titlepage.
@ref{Titlepage footnote anchor} for reference on the titlepage.

@c @insertcopying

@printindex cp
@printindex fn

@contents
@bye
';


$result_texts{'index_special_region_no_insertcopying_titlepage_no_nodes'} = '

Top
***
1 Chapter
*********


This test demonstrates @anchor and indices in @copying
and titlepage, and various wrong index entries.


truc: 
truc: 
: 


fun

* Copying and indices::

Appendix A Copying and indices
******************************

In the appendix, we print the indices and references.



Copying information for the copying information.
Public domain reference for reference on the licence.

Titlepage anchor for the titlepage.
Titlepage footnote anchor for reference on the titlepage.



';

$result_sectioning{'index_special_region_no_insertcopying_titlepage_no_nodes'} = {
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
            'info' => {},
            'structure' => {}
          }
        },
        'info' => {},
        'structure' => {
          'section_childs' => [
            {
              'cmdname' => 'chapter',
              'extra' => {},
              'info' => {},
              'structure' => {
                'section_level' => 1,
                'section_number' => 1,
                'section_up' => {},
                'toplevel_prev' => {},
                'toplevel_up' => {}
              }
            },
            {
              'cmdname' => 'appendix',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'isindex' => 1,
                    'normalized' => 'Copying-and-indices'
                  },
                  'info' => {},
                  'structure' => {}
                }
              },
              'info' => {},
              'structure' => {
                'section_level' => 1,
                'section_number' => 'A',
                'section_prev' => {},
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
$result_sectioning{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'structure'}{'section_childs'}[0];
$result_sectioning{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_prev'} = $result_sectioning{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'structure'}{'section_childs'}[0];
$result_sectioning{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_up'} = $result_sectioning{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'structure'}{'section_childs'}[0];
$result_sectioning{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[1]{'structure'}{'section_prev'} = $result_sectioning{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0];
$result_sectioning{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[1]{'structure'}{'section_up'} = $result_sectioning{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'structure'}{'section_childs'}[0];
$result_sectioning{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[1]{'structure'}{'toplevel_prev'} = $result_sectioning{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0];
$result_sectioning{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[1]{'structure'}{'toplevel_up'} = $result_sectioning{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'structure'}{'section_childs'}[0];
$result_sectioning{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'index_special_region_no_insertcopying_titlepage_no_nodes'};

$result_nodes{'index_special_region_no_insertcopying_titlepage_no_nodes'} = {
  'cmdname' => 'node',
  'extra' => {
    'associated_section' => {
      'cmdname' => 'top',
      'extra' => {},
      'info' => {},
      'structure' => {}
    },
    'menus' => [
      {
        'cmdname' => 'menu'
      }
    ],
    'normalized' => 'Top'
  },
  'info' => {},
  'structure' => {
    'menu_child' => {
      'cmdname' => 'node',
      'extra' => {
        'associated_section' => {
          'cmdname' => 'appendix',
          'extra' => {},
          'info' => {},
          'structure' => {
            'section_number' => 'A'
          }
        },
        'isindex' => 1,
        'normalized' => 'Copying-and-indices'
      },
      'info' => {},
      'structure' => {
        'node_prev' => {},
        'node_up' => {}
      }
    },
    'node_next' => {}
  }
};
$result_nodes{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'structure'}{'menu_child'}{'structure'}{'node_prev'} = $result_nodes{'index_special_region_no_insertcopying_titlepage_no_nodes'};
$result_nodes{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'structure'}{'menu_child'}{'structure'}{'node_up'} = $result_nodes{'index_special_region_no_insertcopying_titlepage_no_nodes'};
$result_nodes{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'structure'}{'node_next'} = $result_nodes{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'structure'}{'menu_child'};

$result_menus{'index_special_region_no_insertcopying_titlepage_no_nodes'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  },
  'info' => {},
  'structure' => {
    'menu_child' => {
      'cmdname' => 'node',
      'extra' => {
        'isindex' => 1,
        'normalized' => 'Copying-and-indices'
      },
      'info' => {},
      'structure' => {
        'menu_up' => {},
        'menu_up_hash' => {
          'Top' => 1
        }
      }
    }
  }
};
$result_menus{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'structure'}{'menu_child'}{'structure'}{'menu_up'} = $result_menus{'index_special_region_no_insertcopying_titlepage_no_nodes'};

$result_errors{'index_special_region_no_insertcopying_titlepage_no_nodes'} = [
  {
    'error_line' => 'warning: @cindex missing argument
',
    'file_name' => 'index_special_region_no_insertcopying.texi',
    'line_nr' => 44,
    'macro' => '',
    'text' => '@cindex missing argument',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: missing name for @deffn
',
    'file_name' => 'index_special_region_no_insertcopying.texi',
    'line_nr' => 45,
    'macro' => '',
    'text' => 'missing name for @deffn',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: missing name for @deffnx
',
    'file_name' => 'index_special_region_no_insertcopying.texi',
    'line_nr' => 46,
    'macro' => '',
    'text' => 'missing name for @deffnx',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: missing name for @deffnx
',
    'file_name' => 'index_special_region_no_insertcopying.texi',
    'line_nr' => 47,
    'macro' => '',
    'text' => 'missing name for @deffnx',
    'type' => 'warning'
  },
  {
    'error_line' => 'missing @ftable argument
',
    'file_name' => 'index_special_region_no_insertcopying.texi',
    'line_nr' => 50,
    'macro' => '',
    'text' => 'missing @ftable argument',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: @item missing argument
',
    'file_name' => 'index_special_region_no_insertcopying.texi',
    'line_nr' => 51,
    'macro' => '',
    'text' => '@item missing argument',
    'type' => 'warning'
  }
];


$result_floats{'index_special_region_no_insertcopying_titlepage_no_nodes'} = {};


$result_indices_sort_strings{'index_special_region_no_insertcopying_titlepage_no_nodes'} = {
  'cp' => [
    'Copying appendix',
    'Copying this document',
    'Public domain',
    'Titlepage footnote',
    'Titlepage index'
  ],
  'fn' => [
    'another fun',
    'findex entry',
    'fun'
  ]
};


1;
