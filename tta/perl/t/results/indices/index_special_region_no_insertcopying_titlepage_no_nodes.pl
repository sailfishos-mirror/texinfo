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
              'cmdname' => 'copying',
              'contents' => [
                {
                  'contents' => [
                    {
                      'info' => {
                        'spaces_after_argument' => {
                          'text' => ' 
'
                        }
                      },
                      'type' => 'block_line_arg'
                    }
                  ],
                  'type' => 'arguments_line'
                },
                {
                  'text' => '
',
                  'type' => 'empty_line'
                },
                {
                  'cmdname' => 'cindex',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'Copying this document'
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
                  'extra' => {
                    'element_region' => 'copying',
                    'index_entry' => [
                      'cp',
                      1
                    ]
                  },
                  'info' => {
                    'command_name' => 'cindex',
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'source_info' => {
                    'file_name' => 'index_special_region_no_insertcopying.texi',
                    'line_nr' => 5
                  },
                  'type' => 'index_entry_command'
                },
                {
                  'cmdname' => 'anchor',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'Copying information'
                        }
                      ],
                      'extra' => {
                        'element_region' => 'copying'
                      },
                      'type' => 'brace_arg'
                    }
                  ],
                  'extra' => {
                    'is_target' => 1,
                    'normalized' => 'Copying-information'
                  },
                  'source_info' => {
                    'file_name' => 'index_special_region_no_insertcopying.texi',
                    'line_nr' => 6
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
                      'cmdname' => 'footnote',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'cmdname' => 'anchor',
                              'contents' => [
                                {
                                  'contents' => [
                                    {
                                      'text' => 'Public domain reference'
                                    }
                                  ],
                                  'extra' => {
                                    'element_region' => 'copying'
                                  },
                                  'type' => 'brace_arg'
                                }
                              ],
                              'extra' => {
                                'is_target' => 1,
                                'normalized' => 'Public-domain-reference'
                              },
                              'source_info' => {
                                'file_name' => 'index_special_region_no_insertcopying.texi',
                                'line_nr' => 9
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
                              'cmdname' => 'cindex',
                              'contents' => [
                                {
                                  'contents' => [
                                    {
                                      'text' => 'Public domain'
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
                              'extra' => {
                                'element_region' => 'copying',
                                'index_entry' => [
                                  'cp',
                                  2
                                ]
                              },
                              'info' => {
                                'command_name' => 'cindex',
                                'spaces_before_argument' => {
                                  'text' => ' '
                                }
                              },
                              'source_info' => {
                                'file_name' => 'index_special_region_no_insertcopying.texi',
                                'line_nr' => 12
                              },
                              'type' => 'index_entry_command'
                            }
                          ],
                          'type' => 'brace_command_context'
                        }
                      ],
                      'extra' => {},
                      'source_info' => {
                        'file_name' => 'index_special_region_no_insertcopying.texi',
                        'line_nr' => 9
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
                  'cmdname' => 'printindex',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'cp'
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
                  'extra' => {
                    'misc_args' => [
                      'cp'
                    ]
                  },
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'source_info' => {
                    'file_name' => 'index_special_region_no_insertcopying.texi',
                    'line_nr' => 15
                  }
                },
                {
                  'text' => '
',
                  'type' => 'empty_line'
                },
                {
                  'cmdname' => 'printindex',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'cp'
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
                  'extra' => {
                    'misc_args' => [
                      'cp'
                    ]
                  },
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'source_info' => {
                    'file_name' => 'index_special_region_no_insertcopying.texi',
                    'line_nr' => 17
                  }
                },
                {
                  'cmdname' => 'printindex',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'fn'
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
                  'extra' => {
                    'misc_args' => [
                      'fn'
                    ]
                  },
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'source_info' => {
                    'file_name' => 'index_special_region_no_insertcopying.texi',
                    'line_nr' => 18
                  }
                },
                {
                  'text' => '
',
                  'type' => 'empty_line'
                },
                {
                  'cmdname' => 'end',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'copying'
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
                  'extra' => {
                    'text_arg' => 'copying'
                  },
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'source_info' => {
                    'file_name' => 'index_special_region_no_insertcopying.texi',
                    'line_nr' => 20
                  }
                }
              ],
              'source_info' => {
                'file_name' => 'index_special_region_no_insertcopying.texi',
                'line_nr' => 3
              }
            },
            {
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'cmdname' => 'titlepage',
              'contents' => [
                {
                  'contents' => [
                    {
                      'info' => {
                        'spaces_after_argument' => {
                          'text' => '
'
                        }
                      },
                      'type' => 'block_line_arg'
                    }
                  ],
                  'type' => 'arguments_line'
                },
                {
                  'text' => '
',
                  'type' => 'empty_line'
                },
                {
                  'cmdname' => 'cindex',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'Titlepage index'
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
                  'extra' => {
                    'element_region' => 'titlepage',
                    'index_entry' => [
                      'cp',
                      3
                    ]
                  },
                  'info' => {
                    'command_name' => 'cindex',
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'source_info' => {
                    'file_name' => 'index_special_region_no_insertcopying.texi',
                    'line_nr' => 24
                  },
                  'type' => 'index_entry_command'
                },
                {
                  'cmdname' => 'anchor',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'Titlepage anchor'
                        }
                      ],
                      'extra' => {
                        'element_region' => 'titlepage'
                      },
                      'type' => 'brace_arg'
                    }
                  ],
                  'extra' => {
                    'is_target' => 1,
                    'normalized' => 'Titlepage-anchor'
                  },
                  'source_info' => {
                    'file_name' => 'index_special_region_no_insertcopying.texi',
                    'line_nr' => 25
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
                      'cmdname' => 'footnote',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'cmdname' => 'anchor',
                              'contents' => [
                                {
                                  'contents' => [
                                    {
                                      'text' => 'Titlepage footnote anchor'
                                    }
                                  ],
                                  'extra' => {
                                    'element_region' => 'titlepage'
                                  },
                                  'type' => 'brace_arg'
                                }
                              ],
                              'extra' => {
                                'is_target' => 1,
                                'normalized' => 'Titlepage-footnote-anchor'
                              },
                              'source_info' => {
                                'file_name' => 'index_special_region_no_insertcopying.texi',
                                'line_nr' => 27
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
                              'cmdname' => 'cindex',
                              'contents' => [
                                {
                                  'contents' => [
                                    {
                                      'text' => 'Titlepage footnote'
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
                              'extra' => {
                                'element_region' => 'titlepage',
                                'index_entry' => [
                                  'cp',
                                  4
                                ]
                              },
                              'info' => {
                                'command_name' => 'cindex',
                                'spaces_before_argument' => {
                                  'text' => ' '
                                }
                              },
                              'source_info' => {
                                'file_name' => 'index_special_region_no_insertcopying.texi',
                                'line_nr' => 30
                              },
                              'type' => 'index_entry_command'
                            }
                          ],
                          'type' => 'brace_command_context'
                        }
                      ],
                      'extra' => {},
                      'source_info' => {
                        'file_name' => 'index_special_region_no_insertcopying.texi',
                        'line_nr' => 27
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
                  'cmdname' => 'insertcopying',
                  'contents' => [
                    {
                      'text' => '
',
                      'type' => 'rawline_arg'
                    }
                  ],
                  'extra' => {},
                  'source_info' => {
                    'file_name' => 'index_special_region_no_insertcopying.texi',
                    'line_nr' => 33
                  }
                },
                {
                  'cmdname' => 'end',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'titlepage'
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
                  'extra' => {
                    'text_arg' => 'titlepage'
                  },
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'source_info' => {
                    'file_name' => 'index_special_region_no_insertcopying.texi',
                    'line_nr' => 34
                  }
                }
              ],
              'source_info' => {
                'file_name' => 'index_special_region_no_insertcopying.texi',
                'line_nr' => 22
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
      'cmdname' => 'node',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'Top'
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
          'type' => 'arguments_line'
        }
      ],
      'extra' => {
        'is_target' => 1,
        'normalized' => 'Top'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'file_name' => 'index_special_region_no_insertcopying.texi',
        'line_nr' => 36
      }
    },
    {
      'cmdname' => 'top',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'Top'
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
          'type' => 'arguments_line'
        }
      ],
      'extra' => {},
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'file_name' => 'index_special_region_no_insertcopying.texi',
        'line_nr' => 37
      }
    },
    {
      'cmdname' => 'chapter',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'Chapter'
                }
              ],
              'info' => {
                'comment_at_end' => {
                  'cmdname' => 'c',
                  'contents' => [
                    {
                      'text' => ' note this chapter is not associated to a node
',
                      'type' => 'rawline_arg'
                    }
                  ]
                },
                'spaces_after_argument' => {
                  'text' => '  '
                }
              },
              'type' => 'line_arg'
            }
          ],
          'type' => 'arguments_line'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'c',
          'contents' => [
            {
              'text' => ' @insertcopying
',
              'type' => 'rawline_arg'
            }
          ]
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
          'cmdname' => 'findex',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'findex entry'
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
          'extra' => {
            'element_node' => {},
            'index_entry' => [
              'fn',
              1
            ]
          },
          'info' => {
            'command_name' => 'findex',
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'file_name' => 'index_special_region_no_insertcopying.texi',
            'line_nr' => 45
          },
          'type' => 'index_entry_command'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'cindex',
          'contents' => [
            {
              'info' => {
                'spaces_after_argument' => {
                  'text' => '
'
                }
              },
              'type' => 'line_arg'
            }
          ],
          'info' => {
            'command_name' => 'cindex'
          },
          'source_info' => {
            'file_name' => 'index_special_region_no_insertcopying.texi',
            'line_nr' => 47
          },
          'type' => 'index_entry_command'
        },
        {
          'cmdname' => 'deffn',
          'contents' => [
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'truc'
                            }
                          ],
                          'source_info' => {
                            'file_name' => 'index_special_region_no_insertcopying.texi',
                            'line_nr' => 48
                          },
                          'type' => 'bracketed_arg'
                        }
                      ],
                      'type' => 'def_category'
                    },
                    {
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'contents' => [
                        {
                          'info' => {
                            'spaces_before_argument' => {
                              'text' => ' '
                            }
                          },
                          'source_info' => {
                            'file_name' => 'index_special_region_no_insertcopying.texi',
                            'line_nr' => 48
                          },
                          'type' => 'bracketed_arg'
                        }
                      ],
                      'type' => 'def_name'
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
              'extra' => {
                'def_command' => 'deffn',
                'original_def_cmdname' => 'deffn'
              },
              'source_info' => {
                'file_name' => 'index_special_region_no_insertcopying.texi',
                'line_nr' => 48
              },
              'type' => 'def_line'
            },
            {
              'cmdname' => 'deffnx',
              'contents' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'truc'
                            }
                          ],
                          'source_info' => {
                            'file_name' => 'index_special_region_no_insertcopying.texi',
                            'line_nr' => 49
                          },
                          'type' => 'bracketed_arg'
                        }
                      ],
                      'type' => 'def_category'
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
              'extra' => {
                'def_command' => 'deffn',
                'original_def_cmdname' => 'deffnx'
              },
              'source_info' => {
                'file_name' => 'index_special_region_no_insertcopying.texi',
                'line_nr' => 49
              }
            },
            {
              'cmdname' => 'deffnx',
              'contents' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'source_info' => {
                            'file_name' => 'index_special_region_no_insertcopying.texi',
                            'line_nr' => 50
                          },
                          'type' => 'bracketed_arg'
                        }
                      ],
                      'type' => 'def_category'
                    },
                    {
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'contents' => [
                        {
                          'source_info' => {
                            'file_name' => 'index_special_region_no_insertcopying.texi',
                            'line_nr' => 50
                          },
                          'type' => 'bracketed_arg'
                        }
                      ],
                      'type' => 'def_name'
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
              'extra' => {
                'def_command' => 'deffn',
                'original_def_cmdname' => 'deffnx'
              },
              'source_info' => {
                'file_name' => 'index_special_region_no_insertcopying.texi',
                'line_nr' => 50
              }
            },
            {
              'cmdname' => 'end',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'deffn'
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
              'extra' => {
                'text_arg' => 'deffn'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'file_name' => 'index_special_region_no_insertcopying.texi',
                'line_nr' => 51
              }
            }
          ],
          'source_info' => {
            'file_name' => 'index_special_region_no_insertcopying.texi',
            'line_nr' => 48
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'ftable',
          'contents' => [
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => 'asis',
                      'info' => {
                        'inserted' => 1
                      }
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
              'type' => 'arguments_line'
            },
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => 'item',
                      'contents' => [
                        {
                          'info' => {
                            'spaces_after_argument' => {
                              'text' => '
'
                            }
                          },
                          'type' => 'line_arg'
                        }
                      ],
                      'source_info' => {
                        'file_name' => 'index_special_region_no_insertcopying.texi',
                        'line_nr' => 54
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
                      'cmdname' => 'item',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'fun'
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
                      'extra' => {
                        'element_node' => {},
                        'index_entry' => [
                          'fn',
                          2
                        ]
                      },
                      'info' => {
                        'spaces_before_argument' => {
                          'text' => ' '
                        }
                      },
                      'source_info' => {
                        'file_name' => 'index_special_region_no_insertcopying.texi',
                        'line_nr' => 55
                      }
                    }
                  ],
                  'type' => 'table_term'
                }
              ],
              'type' => 'table_entry'
            },
            {
              'cmdname' => 'end',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'ftable'
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
              'extra' => {
                'text_arg' => 'ftable'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'file_name' => 'index_special_region_no_insertcopying.texi',
                'line_nr' => 56
              }
            }
          ],
          'extra' => {
            'command_as_argument' => {}
          },
          'source_info' => {
            'file_name' => 'index_special_region_no_insertcopying.texi',
            'line_nr' => 53
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'menu',
          'contents' => [
            {
              'contents' => [
                {
                  'info' => {
                    'spaces_after_argument' => {
                      'text' => '
'
                    }
                  },
                  'type' => 'block_line_arg'
                }
              ],
              'type' => 'arguments_line'
            },
            {
              'contents' => [
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
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'Copying-and-indices'
                  },
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
              'source_info' => {
                'file_name' => 'index_special_region_no_insertcopying.texi',
                'line_nr' => 59
              },
              'type' => 'menu_entry'
            },
            {
              'cmdname' => 'end',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'menu'
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
              'extra' => {
                'text_arg' => 'menu'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'file_name' => 'index_special_region_no_insertcopying.texi',
                'line_nr' => 60
              }
            }
          ],
          'source_info' => {
            'file_name' => 'index_special_region_no_insertcopying.texi',
            'line_nr' => 58
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'extra' => {
        'section_number' => '1'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'file_name' => 'index_special_region_no_insertcopying.texi',
        'line_nr' => 38
      }
    },
    {
      'cmdname' => 'node',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'Copying and indices'
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
          'type' => 'arguments_line'
        }
      ],
      'extra' => {
        'is_target' => 1,
        'normalized' => 'Copying-and-indices'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'file_name' => 'index_special_region_no_insertcopying.texi',
        'line_nr' => 62
      }
    },
    {
      'cmdname' => 'appendix',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'Copying and indices'
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
          'type' => 'arguments_line'
        },
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
          'cmdname' => 'findex',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'another fun'
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
          'extra' => {
            'element_node' => {},
            'index_entry' => [
              'fn',
              3
            ]
          },
          'info' => {
            'command_name' => 'findex',
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'file_name' => 'index_special_region_no_insertcopying.texi',
            'line_nr' => 67
          },
          'type' => 'index_entry_command'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'cindex',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'Copying appendix'
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
          'extra' => {
            'element_node' => {},
            'index_entry' => [
              'cp',
              5
            ]
          },
          'info' => {
            'command_name' => 'cindex',
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'file_name' => 'index_special_region_no_insertcopying.texi',
            'line_nr' => 69
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
              'cmdname' => 'ref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'Copying information'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'Copying-information'
                  },
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'file_name' => 'index_special_region_no_insertcopying.texi',
                'line_nr' => 71
              }
            },
            {
              'text' => ' for the copying information.
'
            },
            {
              'cmdname' => 'ref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'Public domain reference'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'Public-domain-reference'
                  },
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'file_name' => 'index_special_region_no_insertcopying.texi',
                'line_nr' => 72
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
              'cmdname' => 'ref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'Titlepage anchor'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'Titlepage-anchor'
                  },
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'file_name' => 'index_special_region_no_insertcopying.texi',
                'line_nr' => 74
              }
            },
            {
              'text' => ' for the titlepage.
'
            },
            {
              'cmdname' => 'ref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'Titlepage footnote anchor'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'Titlepage-footnote-anchor'
                  },
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'file_name' => 'index_special_region_no_insertcopying.texi',
                'line_nr' => 75
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
          'cmdname' => 'c',
          'contents' => [
            {
              'text' => ' @insertcopying
',
              'type' => 'rawline_arg'
            }
          ]
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'contents',
          'contents' => [
            {
              'text' => '
',
              'type' => 'rawline_arg'
            }
          ],
          'extra' => {},
          'source_info' => {
            'file_name' => 'index_special_region_no_insertcopying.texi',
            'line_nr' => 79
          }
        }
      ],
      'extra' => {
        'section_number' => 'A'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'file_name' => 'index_special_region_no_insertcopying.texi',
        'line_nr' => 63
      }
    },
    {
      'cmdname' => 'bye',
      'contents' => [
        {
          'text' => '
',
          'type' => 'rawline_arg'
        }
      ]
    }
  ],
  'type' => 'document_root'
};
$result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[3]{'contents'}[6]{'extra'}{'element_node'} = $result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[1];
$result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[3]{'contents'}[11]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'extra'}{'element_node'} = $result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[1];
$result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[3]{'contents'}[11]{'extra'}{'command_as_argument'} = $result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[3]{'contents'}[11]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[3]{'contents'}[13]{'contents'}[1]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[3]{'contents'}[13]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[5]{'contents'}[4]{'extra'}{'element_node'} = $result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[4];
$result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[5]{'contents'}[6]{'extra'}{'element_node'} = $result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[4];
$result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[5]{'contents'}[8]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[5]{'contents'}[8]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[5]{'contents'}[8]{'contents'}[2]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[5]{'contents'}[8]{'contents'}[2]{'contents'}[0]{'contents'}[0];
$result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[5]{'contents'}[10]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[5]{'contents'}[10]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[5]{'contents'}[10]{'contents'}[2]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'contents'}[5]{'contents'}[10]{'contents'}[2]{'contents'}[0]{'contents'}[0];

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

@printindex cp
@printindex fn

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
@chapter Chapter  @c note this chapter is not associated to a node

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
  'extra' => {
    'section_childs' => [
      {
        'cmdname' => 'top',
        'extra' => {
          'associated_node' => {
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'Top'
            }
          },
          'section_childs' => [
            {
              'cmdname' => 'chapter',
              'extra' => {
                'section_directions' => {
                  'up' => {}
                },
                'section_level' => 1,
                'section_number' => '1',
                'toplevel_directions' => {
                  'prev' => {},
                  'up' => {}
                }
              }
            },
            {
              'cmdname' => 'appendix',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => 'Copying-and-indices'
                  }
                },
                'section_directions' => {
                  'prev' => {},
                  'up' => {}
                },
                'section_level' => 1,
                'section_number' => 'A',
                'toplevel_directions' => {
                  'prev' => {},
                  'up' => {}
                }
              }
            }
          ],
          'section_level' => 0,
          'sectioning_root' => {},
          'toplevel_directions' => {}
        }
      }
    ],
    'section_level' => -1
  }
};
$result_sectioning{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'extra'}{'section_childs'}[0];
$result_sectioning{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'extra'}{'section_childs'}[0];
$result_sectioning{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'extra'}{'section_childs'}[0];
$result_sectioning{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'extra'}{'section_childs'}[0];
$result_sectioning{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'extra'}{'section_childs'}[0];
$result_sectioning{'index_special_region_no_insertcopying_titlepage_no_nodes'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'index_special_region_no_insertcopying_titlepage_no_nodes'};

$result_nodes{'index_special_region_no_insertcopying_titlepage_no_nodes'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'associated_section' => {
        'cmdname' => 'top',
        'extra' => {}
      },
      'node_directions' => {
        'next' => {
          'cmdname' => 'node',
          'extra' => {
            'associated_section' => {
              'cmdname' => 'appendix',
              'extra' => {
                'section_number' => 'A'
              }
            },
            'node_directions' => {
              'prev' => {},
              'up' => {}
            },
            'normalized' => 'Copying-and-indices'
          }
        }
      },
      'normalized' => 'Top'
    }
  },
  {}
];
$result_nodes{'index_special_region_no_insertcopying_titlepage_no_nodes'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'index_special_region_no_insertcopying_titlepage_no_nodes'}[0];
$result_nodes{'index_special_region_no_insertcopying_titlepage_no_nodes'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'index_special_region_no_insertcopying_titlepage_no_nodes'}[0];
$result_nodes{'index_special_region_no_insertcopying_titlepage_no_nodes'}[1] = $result_nodes{'index_special_region_no_insertcopying_titlepage_no_nodes'}[0]{'extra'}{'node_directions'}{'next'};

$result_menus{'index_special_region_no_insertcopying_titlepage_no_nodes'} = [
  {
    'extra' => {
      'menus' => [
        {}
      ],
      'normalized' => 'Top'
    }
  },
  {
    'extra' => {
      'menu_directions' => {
        'up' => {}
      },
      'normalized' => 'Copying-and-indices'
    }
  }
];
$result_menus{'index_special_region_no_insertcopying_titlepage_no_nodes'}[1]{'extra'}{'menu_directions'}{'up'} = $result_menus{'index_special_region_no_insertcopying_titlepage_no_nodes'}[0];

$result_errors{'index_special_region_no_insertcopying_titlepage_no_nodes'} = [
  {
    'error_line' => 'warning: @cindex missing argument
',
    'file_name' => 'index_special_region_no_insertcopying.texi',
    'line_nr' => 47,
    'text' => '@cindex missing argument',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: missing name for @deffn
',
    'file_name' => 'index_special_region_no_insertcopying.texi',
    'line_nr' => 48,
    'text' => 'missing name for @deffn',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: missing name for @deffnx
',
    'file_name' => 'index_special_region_no_insertcopying.texi',
    'line_nr' => 49,
    'text' => 'missing name for @deffnx',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: missing name for @deffnx
',
    'file_name' => 'index_special_region_no_insertcopying.texi',
    'line_nr' => 50,
    'text' => 'missing name for @deffnx',
    'type' => 'warning'
  },
  {
    'error_line' => 'missing @ftable argument
',
    'file_name' => 'index_special_region_no_insertcopying.texi',
    'line_nr' => 53,
    'text' => 'missing @ftable argument',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: @item missing argument
',
    'file_name' => 'index_special_region_no_insertcopying.texi',
    'line_nr' => 54,
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
