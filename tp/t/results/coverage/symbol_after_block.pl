use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'symbol_after_block'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'extra' => {
                'spaces_after_argument' => '
'
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'html',
          'contents' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'In html
'
                }
              ],
              'parent' => {},
              'type' => 'rawpreformatted'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'html. On the line.'
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
                'text_arg' => 'html. On the line.'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 3,
                'macro' => ''
              }
            }
          ],
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
              'extra' => {
                'spaces_after_argument' => '
'
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'html',
          'contents' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'In html
'
                }
              ],
              'parent' => {},
              'type' => 'rawpreformatted'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'html'
                    },
                    {
                      'cmdname' => '@',
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => ' On the line.'
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
                'text_arg' => 'html@ On the line.'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 7,
                'macro' => ''
              }
            }
          ],
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
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'Verbatim:
'
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
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
              'extra' => {
                'spaces_after_argument' => '
'
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'verbatim',
          'contents' => [
            {
              'parent' => {},
              'text' => 'In verbatim
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'verbatim;'
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
                'text_arg' => 'verbatim;'
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
              'extra' => {
                'spaces_after_argument' => '
'
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'verbatim',
          'contents' => [
            {
              'parent' => {},
              'text' => 'In verbatim
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'verbatim'
                    },
                    {
                      'cmdname' => '@',
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
              'cmdname' => 'end',
              'extra' => {
                'spaces_before_argument' => ' ',
                'text_arg' => 'verbatim@'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 17,
                'macro' => ''
              }
            }
          ],
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
          'contents' => [
            {
              'parent' => {},
              'text' => 'Table:
'
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
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
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 21,
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
          'cmdname' => 'table',
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
                              'text' => 'a'
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
                  'parent' => {},
                  'type' => 'table_term'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'l--ine
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
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'table+'
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
                'text_arg' => 'table+'
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
            'command_as_argument' => {},
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
              'contents' => [
                {
                  'cmdname' => 'emph',
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 26,
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
          'cmdname' => 'table',
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
                              'text' => 'a'
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
                  'parent' => {},
                  'type' => 'table_term'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'l--ine
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
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'table'
                    },
                    {
                      'cmdname' => '@',
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
              'cmdname' => 'end',
              'extra' => {
                'spaces_before_argument' => ' ',
                'text_arg' => 'table@'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 29,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'command_as_argument' => {},
            'spaces_before_argument' => ' '
          },
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
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'Itemize:
'
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
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
                  'cmdname' => 'bullet',
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 33,
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
          'cmdname' => 'itemize',
          'contents' => [
            {
              'cmdname' => 'item',
              'contents' => [
                {
                  'parent' => {},
                  'text' => ' ',
                  'type' => 'ignorable_spaces_after_command'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'e--mph item
'
                    }
                  ],
                  'parent' => {},
                  'type' => 'paragraph'
                }
              ],
              'extra' => {
                'item_number' => 1
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 34,
                'macro' => ''
              }
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'itemize\'\''
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
                'text_arg' => 'itemize\'\''
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 35,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'command_as_argument' => {},
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 33,
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
                  'cmdname' => 'bullet',
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 37,
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
          'cmdname' => 'itemize',
          'contents' => [
            {
              'cmdname' => 'item',
              'contents' => [
                {
                  'parent' => {},
                  'text' => ' ',
                  'type' => 'ignorable_spaces_after_command'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'e--mph item
'
                    }
                  ],
                  'parent' => {},
                  'type' => 'paragraph'
                }
              ],
              'extra' => {
                'item_number' => 1
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 38,
                'macro' => ''
              }
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'itemize'
                    },
                    {
                      'cmdname' => '@',
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
              'cmdname' => 'end',
              'extra' => {
                'spaces_before_argument' => ' ',
                'text_arg' => 'itemize@'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 39,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'command_as_argument' => {},
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 37,
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
          'contents' => [
            {
              'parent' => {},
              'text' => 'Multitable:
'
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
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
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => '6 7'
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
                  'cmdname' => 'columnfractions',
                  'extra' => {
                    'misc_args' => [
                      '6',
                      '7'
                    ],
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 43,
                    'macro' => ''
                  }
                }
              ],
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'multitable',
          'contents' => [
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => 'headitem',
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => ' ',
                          'type' => 'ignorable_spaces_after_command'
                        },
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'mu--ltitable headitem '
                            }
                          ],
                          'parent' => {},
                          'type' => 'paragraph'
                        }
                      ],
                      'extra' => {
                        'cell_number' => 1
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 44,
                        'macro' => ''
                      }
                    },
                    {
                      'cmdname' => 'tab',
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => ' ',
                          'type' => 'ignorable_spaces_after_command'
                        },
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'another tab
'
                            }
                          ],
                          'parent' => {},
                          'type' => 'paragraph'
                        }
                      ],
                      'extra' => {
                        'cell_number' => 2
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 44,
                        'macro' => ''
                      }
                    }
                  ],
                  'extra' => {
                    'row_number' => 1
                  },
                  'parent' => {},
                  'type' => 'row'
                }
              ],
              'parent' => {},
              'type' => 'multitable_head'
            },
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => 'item',
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => ' ',
                          'type' => 'ignorable_spaces_after_command'
                        },
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'mu--ltitable item '
                            }
                          ],
                          'parent' => {},
                          'type' => 'paragraph'
                        }
                      ],
                      'extra' => {
                        'cell_number' => 1
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 45,
                        'macro' => ''
                      }
                    },
                    {
                      'cmdname' => 'tab',
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => ' ',
                          'type' => 'ignorable_spaces_after_command'
                        },
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'multitable tab
'
                            }
                          ],
                          'parent' => {},
                          'type' => 'paragraph'
                        }
                      ],
                      'extra' => {
                        'cell_number' => 2
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 45,
                        'macro' => ''
                      }
                    }
                  ],
                  'extra' => {
                    'row_number' => 2
                  },
                  'parent' => {},
                  'type' => 'row'
                }
              ],
              'parent' => {},
              'type' => 'multitable_body'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'multitable^'
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
                'text_arg' => 'multitable^'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 46,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'columnfractions' => {},
            'max_columns' => 2,
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 43,
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
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => '6 7'
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
                  'cmdname' => 'columnfractions',
                  'extra' => {
                    'misc_args' => [
                      '6',
                      '7'
                    ],
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 48,
                    'macro' => ''
                  }
                }
              ],
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'multitable',
          'contents' => [
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => 'headitem',
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => ' ',
                          'type' => 'ignorable_spaces_after_command'
                        },
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'mu--ltitable headitem '
                            }
                          ],
                          'parent' => {},
                          'type' => 'paragraph'
                        }
                      ],
                      'extra' => {
                        'cell_number' => 1
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 49,
                        'macro' => ''
                      }
                    },
                    {
                      'cmdname' => 'tab',
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => ' ',
                          'type' => 'ignorable_spaces_after_command'
                        },
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'another tab
'
                            }
                          ],
                          'parent' => {},
                          'type' => 'paragraph'
                        }
                      ],
                      'extra' => {
                        'cell_number' => 2
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 49,
                        'macro' => ''
                      }
                    }
                  ],
                  'extra' => {
                    'row_number' => 1
                  },
                  'parent' => {},
                  'type' => 'row'
                }
              ],
              'parent' => {},
              'type' => 'multitable_head'
            },
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => 'item',
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => ' ',
                          'type' => 'ignorable_spaces_after_command'
                        },
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'mu--ltitable item '
                            }
                          ],
                          'parent' => {},
                          'type' => 'paragraph'
                        }
                      ],
                      'extra' => {
                        'cell_number' => 1
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 50,
                        'macro' => ''
                      }
                    },
                    {
                      'cmdname' => 'tab',
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => ' ',
                          'type' => 'ignorable_spaces_after_command'
                        },
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'multitable tab
'
                            }
                          ],
                          'parent' => {},
                          'type' => 'paragraph'
                        }
                      ],
                      'extra' => {
                        'cell_number' => 2
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 50,
                        'macro' => ''
                      }
                    }
                  ],
                  'extra' => {
                    'row_number' => 2
                  },
                  'parent' => {},
                  'type' => 'row'
                }
              ],
              'parent' => {},
              'type' => 'multitable_body'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'multitable'
                    },
                    {
                      'cmdname' => '{',
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
              'cmdname' => 'end',
              'extra' => {
                'spaces_before_argument' => ' ',
                'text_arg' => 'multitable{'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 51,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'columnfractions' => {},
            'max_columns' => 2,
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 48,
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
          'contents' => [
            {
              'parent' => {},
              'text' => 'Flushleft:
'
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
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
              'extra' => {
                'spaces_after_argument' => '
'
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'flushleft',
          'contents' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'flushleft
'
                }
              ],
              'parent' => {},
              'type' => 'paragraph'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'flushleft!'
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
                'text_arg' => 'flushleft!'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 57,
                'macro' => ''
              }
            }
          ],
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 55,
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
              'extra' => {
                'spaces_after_argument' => '
'
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'flushleft',
          'contents' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'flushleft
'
                }
              ],
              'parent' => {},
              'type' => 'paragraph'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'flushleft'
                    },
                    {
                      'cmdname' => '@',
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
              'cmdname' => 'end',
              'extra' => {
                'spaces_before_argument' => ' ',
                'text_arg' => 'flushleft@'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 61,
                'macro' => ''
              }
            }
          ],
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 59,
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
          'contents' => [
            {
              'parent' => {},
              'text' => 'Copying:
'
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
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
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'Copying
'
                }
              ],
              'parent' => {},
              'type' => 'paragraph'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'copying*'
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
                'text_arg' => 'copying*'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 67,
                'macro' => ''
              }
            }
          ],
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 65,
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
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'Copying
'
                }
              ],
              'parent' => {},
              'type' => 'paragraph'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'copying'
                    },
                    {
                      'cmdname' => '@',
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
              'cmdname' => 'end',
              'extra' => {
                'spaces_before_argument' => ' ',
                'text_arg' => 'copying@'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 71,
                'macro' => ''
              }
            }
          ],
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 69,
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
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[2];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[2];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[2];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[4];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[6];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[6];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[6]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[6]{'contents'}[1]{'args'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[6]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[6]{'contents'}[1];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[6]{'contents'}[1]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[6];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[6]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[7]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[8]{'args'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[8];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[8];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[8]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[8]{'contents'}[1]{'args'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[8]{'contents'}[1]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[8]{'contents'}[1]{'args'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[8]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[8]{'contents'}[1];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[8]{'contents'}[1]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[8];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[8]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[9]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[10];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[10]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[11]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[12]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[12]{'args'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[12]{'args'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[12];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'contents'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[12]{'contents'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'contents'}[1];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[12]{'contents'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[12];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[12]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[12]{'contents'}[1]{'args'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[12]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[12]{'contents'}[1];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[12]{'contents'}[1]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[12];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[12]{'extra'}{'command_as_argument'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[12]{'args'}[0]{'contents'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[12]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[13]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[14]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[14]{'args'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[14]{'args'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[14];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'contents'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[14]{'contents'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'contents'}[1];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[14]{'contents'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[14];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[14]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[14]{'contents'}[1]{'args'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[14]{'contents'}[1]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[14]{'contents'}[1]{'args'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[14]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[14]{'contents'}[1];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[14]{'contents'}[1]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[14];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[14]{'extra'}{'command_as_argument'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[14]{'args'}[0]{'contents'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[14]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[15]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[16];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[16]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[17]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[18]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[18]{'args'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[18]{'args'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[18];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[18]{'contents'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'contents'}[1];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[18]{'contents'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[18];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[18]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[18]{'contents'}[1]{'args'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[18]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[18]{'contents'}[1];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[18]{'contents'}[1]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[18];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[18]{'extra'}{'command_as_argument'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[18]{'args'}[0]{'contents'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[18]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[19]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[20]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[20]{'args'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[20]{'args'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[20];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[20]{'contents'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'contents'}[1];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[20]{'contents'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[20];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[20]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[20]{'contents'}[1]{'args'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[20]{'contents'}[1]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[20]{'contents'}[1]{'args'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[20]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[20]{'contents'}[1];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[20]{'contents'}[1]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[20];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[20]{'extra'}{'command_as_argument'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[20]{'args'}[0]{'contents'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[20]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[21]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[22]{'contents'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[22];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[22]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[23]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[24]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[24]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[24]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[24]{'args'}[0]{'contents'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[24]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[24]{'args'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[24]{'args'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[24];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[24]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[24]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[24]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[24]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[24]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[24]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[24]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[24]{'contents'}[0]{'contents'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[24]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[24]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[24]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[24]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[24]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[24]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[24]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[24]{'contents'}[0]{'contents'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[24]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[24]{'contents'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[24]{'contents'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[24];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[24]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[24]{'contents'}[1]{'contents'}[0]{'contents'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[24]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[24]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[24]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[24]{'contents'}[1]{'contents'}[0]{'contents'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[24]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[24]{'contents'}[1]{'contents'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[24]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[24]{'contents'}[1]{'contents'}[0]{'contents'}[1];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[24]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[24]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[24]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[24]{'contents'}[1]{'contents'}[0]{'contents'}[1];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[24]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[24]{'contents'}[1]{'contents'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[24]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[24]{'contents'}[1];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[24]{'contents'}[1]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[24];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[24]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[24]{'contents'}[2]{'args'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[24]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[24]{'contents'}[2];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[24]{'contents'}[2]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[24];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[24]{'extra'}{'columnfractions'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[24]{'args'}[0]{'contents'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[24]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[25]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[26]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[26]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[26]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[26]{'args'}[0]{'contents'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[26]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[26]{'args'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[26]{'args'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[26];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[26]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[26]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[26]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[26]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[26]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[26]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[26]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[26]{'contents'}[0]{'contents'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[26]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[26]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[26]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[26]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[26]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[26]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[26]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[26]{'contents'}[0]{'contents'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[26]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[26]{'contents'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[26]{'contents'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[26];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[26]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[26]{'contents'}[1]{'contents'}[0]{'contents'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[26]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[26]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[26]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[26]{'contents'}[1]{'contents'}[0]{'contents'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[26]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[26]{'contents'}[1]{'contents'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[26]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[26]{'contents'}[1]{'contents'}[0]{'contents'}[1];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[26]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[26]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[26]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[26]{'contents'}[1]{'contents'}[0]{'contents'}[1];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[26]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[26]{'contents'}[1]{'contents'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[26]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[26]{'contents'}[1];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[26]{'contents'}[1]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[26];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[26]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[26]{'contents'}[2]{'args'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[26]{'contents'}[2]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[26]{'contents'}[2]{'args'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[26]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[26]{'contents'}[2];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[26]{'contents'}[2]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[26];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[26]{'extra'}{'columnfractions'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[26]{'args'}[0]{'contents'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[26]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[27]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[28]{'contents'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[28];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[28]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[29]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[30]{'args'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[30];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[30]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[30]{'contents'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[30]{'contents'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[30];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[30]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[30]{'contents'}[1]{'args'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[30]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[30]{'contents'}[1];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[30]{'contents'}[1]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[30];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[30]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[31]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[32]{'args'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[32];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[32]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[32]{'contents'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[32]{'contents'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[32];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[32]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[32]{'contents'}[1]{'args'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[32]{'contents'}[1]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[32]{'contents'}[1]{'args'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[32]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[32]{'contents'}[1];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[32]{'contents'}[1]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[32];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[32]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[33]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[34]{'contents'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[34];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[34]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[35]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[36]{'args'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[36];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[36]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[36]{'contents'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[36]{'contents'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[36];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[36]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[36]{'contents'}[1]{'args'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[36]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[36]{'contents'}[1];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[36]{'contents'}[1]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[36];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[36]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[37]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[38]{'args'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[38];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[38]{'contents'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[38];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[38]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[38]{'contents'}[1]{'args'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[38]{'contents'}[1]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[38]{'contents'}[1]{'args'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[38]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[38]{'contents'}[1];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[38]{'contents'}[1]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[38];
$result_trees{'symbol_after_block'}{'contents'}[0]{'contents'}[38]{'parent'} = $result_trees{'symbol_after_block'}{'contents'}[0];
$result_trees{'symbol_after_block'}{'contents'}[0]{'parent'} = $result_trees{'symbol_after_block'};

$result_texis{'symbol_after_block'} = '@html
In html
@end html. On the line.

@html
In html
@end html@@ On the line.

Verbatim:

@verbatim
In verbatim
@end verbatim;

@verbatim
In verbatim
@end verbatim@@

Table:

@table @emph
@item a
l--ine
@end table+

@table @emph
@item a
l--ine
@end table@@

Itemize:

@itemize @bullet
@item e--mph item
@end itemize\'\'

@itemize @bullet
@item e--mph item
@end itemize@@

Multitable:

@multitable @columnfractions 6 7
@headitem mu--ltitable headitem @tab another tab
@item mu--ltitable item @tab multitable tab
@end multitable^

@multitable @columnfractions 6 7
@headitem mu--ltitable headitem @tab another tab
@item mu--ltitable item @tab multitable tab
@end multitable@{

Flushleft:

@flushleft
flushleft
@end flushleft!

@flushleft
flushleft
@end flushleft@@

Copying:

@copying
Copying
@end copying*

@copying
Copying
@end copying@@
';


$result_texts{'symbol_after_block'} = '

Verbatim:

In verbatim

In verbatim

Table:

a
l-ine

a
l-ine

Itemize:

e-mph item

e-mph item

Multitable:

mu-ltitable headitem another tab
mu-ltitable item multitable tab

mu-ltitable headitem another tab
mu-ltitable item multitable tab

Flushleft:

flushleft

flushleft

Copying:


';

$result_errors{'symbol_after_block'} = [
  {
    'error_line' => 'bad argument to @end: html. On the line.
',
    'file_name' => '',
    'line_nr' => 3,
    'macro' => '',
    'text' => 'bad argument to @end: html. On the line.',
    'type' => 'error'
  },
  {
    'error_line' => 'bad argument to @end: html@@ On the line.
',
    'file_name' => '',
    'line_nr' => 7,
    'macro' => '',
    'text' => 'bad argument to @end: html@@ On the line.',
    'type' => 'error'
  },
  {
    'error_line' => 'bad argument to @end: verbatim;
',
    'file_name' => '',
    'line_nr' => 13,
    'macro' => '',
    'text' => 'bad argument to @end: verbatim;',
    'type' => 'error'
  },
  {
    'error_line' => 'bad argument to @end: verbatim@@
',
    'file_name' => '',
    'line_nr' => 17,
    'macro' => '',
    'text' => 'bad argument to @end: verbatim@@',
    'type' => 'error'
  },
  {
    'error_line' => 'bad argument to @end: table+
',
    'file_name' => '',
    'line_nr' => 24,
    'macro' => '',
    'text' => 'bad argument to @end: table+',
    'type' => 'error'
  },
  {
    'error_line' => 'bad argument to @end: table@@
',
    'file_name' => '',
    'line_nr' => 29,
    'macro' => '',
    'text' => 'bad argument to @end: table@@',
    'type' => 'error'
  },
  {
    'error_line' => 'bad argument to @end: itemize\'\'
',
    'file_name' => '',
    'line_nr' => 35,
    'macro' => '',
    'text' => 'bad argument to @end: itemize\'\'',
    'type' => 'error'
  },
  {
    'error_line' => 'bad argument to @end: itemize@@
',
    'file_name' => '',
    'line_nr' => 39,
    'macro' => '',
    'text' => 'bad argument to @end: itemize@@',
    'type' => 'error'
  },
  {
    'error_line' => 'bad argument to @end: multitable^
',
    'file_name' => '',
    'line_nr' => 46,
    'macro' => '',
    'text' => 'bad argument to @end: multitable^',
    'type' => 'error'
  },
  {
    'error_line' => 'bad argument to @end: multitable@{
',
    'file_name' => '',
    'line_nr' => 51,
    'macro' => '',
    'text' => 'bad argument to @end: multitable@{',
    'type' => 'error'
  },
  {
    'error_line' => 'bad argument to @end: flushleft!
',
    'file_name' => '',
    'line_nr' => 57,
    'macro' => '',
    'text' => 'bad argument to @end: flushleft!',
    'type' => 'error'
  },
  {
    'error_line' => 'bad argument to @end: flushleft@@
',
    'file_name' => '',
    'line_nr' => 61,
    'macro' => '',
    'text' => 'bad argument to @end: flushleft@@',
    'type' => 'error'
  },
  {
    'error_line' => 'bad argument to @end: copying*
',
    'file_name' => '',
    'line_nr' => 67,
    'macro' => '',
    'text' => 'bad argument to @end: copying*',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: multiple @copying
',
    'file_name' => '',
    'line_nr' => 69,
    'macro' => '',
    'text' => 'multiple @copying',
    'type' => 'warning'
  },
  {
    'error_line' => 'bad argument to @end: copying@@
',
    'file_name' => '',
    'line_nr' => 71,
    'macro' => '',
    'text' => 'bad argument to @end: copying@@',
    'type' => 'error'
  }
];


$result_floats{'symbol_after_block'} = {};


1;
