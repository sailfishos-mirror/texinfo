use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'sorted_subentries'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [],
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
          'extra' => {
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
        'normalized' => 'Top',
        'spaces_before_argument' => ' '
      },
      'source_info' => {
        'file_name' => '',
        'line_nr' => 1,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'extra' => {
            'spaces_after_argument' => '
'
          },
          'type' => 'line_arg'
        }
      ],
      'cmdname' => 'top',
      'contents' => [
        {
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'extra' => {},
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
              'text' => 'chapter one'
            }
          ],
          'extra' => {
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
            'normalized' => 'chapter-one'
          }
        ],
        'normalized' => 'chapter-one',
        'spaces_before_argument' => ' '
      },
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
              'text' => 'one'
            }
          ],
          'extra' => {
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
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'text' => 'hhh'
                }
              ],
              'extra' => {
                'spaces_after_argument' => ' '
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
              'entry_number' => 1,
              'in_code' => 0,
              'index_at_command' => 'cindex',
              'index_ignore_chars' => {},
              'index_name' => 'cp',
              'index_type_command' => 'cindex'
            },
            'spaces_before_argument' => ' ',
            'subentry' => {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'jjj'
                    }
                  ],
                  'extra' => {
                    'spaces_after_argument' => ' '
                  },
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'subentry',
              'extra' => {
                'level' => 1,
                'spaces_before_argument' => ' ',
                'subentry' => {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'text' => 'lll'
                        }
                      ],
                      'extra' => {
                        'spaces_after_argument' => '
'
                      },
                      'type' => 'line_arg'
                    }
                  ],
                  'cmdname' => 'subentry',
                  'extra' => {
                    'level' => 2,
                    'spaces_before_argument' => ' '
                  },
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 8,
                    'macro' => ''
                  }
                }
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 8,
                'macro' => ''
              }
            }
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 8,
            'macro' => ''
          },
          'type' => 'index_entry_command'
        },
        {},
        {},
        {
          'args' => [
            {
              'contents' => [
                {
                  'text' => 'hhh'
                }
              ],
              'extra' => {
                'spaces_after_argument' => ' '
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
              'entry_number' => 2,
              'in_code' => 0,
              'index_at_command' => 'cindex',
              'index_ignore_chars' => {},
              'index_name' => 'cp',
              'index_type_command' => 'cindex'
            },
            'spaces_before_argument' => ' ',
            'subentry' => {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'jjj'
                    }
                  ],
                  'extra' => {
                    'spaces_after_argument' => '
'
                  },
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'subentry',
              'extra' => {
                'level' => 1,
                'spaces_before_argument' => ' '
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 9,
                'macro' => ''
              }
            }
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 9,
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
                  'text' => 'hhh jjj'
                }
              ],
              'extra' => {
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
              'entry_number' => 3,
              'in_code' => 0,
              'index_at_command' => 'cindex',
              'index_ignore_chars' => {},
              'index_name' => 'cp',
              'index_type_command' => 'cindex'
            },
            'spaces_before_argument' => ' '
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 10,
            'macro' => ''
          },
          'type' => 'index_entry_command'
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'text' => 'hhh'
                }
              ],
              'extra' => {
                'spaces_after_argument' => ' '
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
              'entry_number' => 4,
              'in_code' => 0,
              'index_at_command' => 'cindex',
              'index_ignore_chars' => {},
              'index_name' => 'cp',
              'index_type_command' => 'cindex'
            },
            'spaces_before_argument' => ' ',
            'subentry' => {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'k'
                    }
                  ],
                  'extra' => {
                    'spaces_after_argument' => '
'
                  },
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'subentry',
              'extra' => {
                'level' => 1,
                'spaces_before_argument' => ' '
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 11,
                'macro' => ''
              }
            }
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 11,
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
                  'text' => 'hhh'
                }
              ],
              'extra' => {
                'spaces_after_argument' => ' '
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
            },
            'spaces_before_argument' => ' ',
            'subentry' => {
              'args' => [
                {
                  'extra' => {
                    'spaces_after_argument' => ' 
'
                  },
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'subentry',
              'extra' => {
                'level' => 1,
                'missing_argument' => 1
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 12,
                'macro' => ''
              }
            }
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 12,
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
                  'text' => 'hhh'
                }
              ],
              'extra' => {
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
              'entry_number' => 6,
              'in_code' => 0,
              'index_at_command' => 'cindex',
              'index_ignore_chars' => {},
              'index_name' => 'cp',
              'index_type_command' => 'cindex'
            },
            'spaces_before_argument' => ' '
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 13,
            'macro' => ''
          },
          'type' => 'index_entry_command'
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'text' => 'hhh'
                }
              ],
              'extra' => {
                'spaces_after_argument' => ' '
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
              'entry_number' => 7,
              'in_code' => 0,
              'index_at_command' => 'cindex',
              'index_ignore_chars' => {},
              'index_name' => 'cp',
              'index_type_command' => 'cindex'
            },
            'spaces_before_argument' => ' ',
            'subentry' => {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'jjj'
                    }
                  ],
                  'extra' => {
                    'spaces_after_argument' => ' '
                  },
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'subentry',
              'extra' => {
                'level' => 1,
                'spaces_before_argument' => ' ',
                'subentry' => {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'text' => 'lll'
                        }
                      ],
                      'extra' => {
                        'spaces_after_argument' => ' '
                      },
                      'type' => 'line_arg'
                    }
                  ],
                  'cmdname' => 'subentry',
                  'extra' => {
                    'level' => 2,
                    'spaces_before_argument' => ' ',
                    'subentry' => {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'text' => 'ppp'
                            }
                          ],
                          'extra' => {
                            'spaces_after_argument' => '
'
                          },
                          'type' => 'line_arg'
                        }
                      ],
                      'cmdname' => 'subentry',
                      'extra' => {
                        'level' => 3,
                        'spaces_before_argument' => ' '
                      },
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 14,
                        'macro' => ''
                      }
                    }
                  },
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 14,
                    'macro' => ''
                  }
                }
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 14,
                'macro' => ''
              }
            }
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 14,
            'macro' => ''
          },
          'type' => 'index_entry_command'
        },
        {},
        {},
        {},
        {
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'extra' => {
        'spaces_before_argument' => ' '
      },
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
              'text' => 'chapter second'
            }
          ],
          'extra' => {
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
            'normalized' => 'chapter-second'
          }
        ],
        'normalized' => 'chapter-second',
        'spaces_before_argument' => ' '
      },
      'source_info' => {
        'file_name' => '',
        'line_nr' => 16,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'text' => 'second'
            }
          ],
          'extra' => {
            'spaces_after_argument' => '
'
          },
          'type' => 'line_arg'
        }
      ],
      'cmdname' => 'chapter',
      'contents' => [
        {
          'args' => [
            {
              'contents' => [
                {
                  'text' => 'hhh'
                }
              ],
              'extra' => {
                'spaces_after_argument' => ' '
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
              'entry_number' => 8,
              'in_code' => 0,
              'index_at_command' => 'cindex',
              'index_ignore_chars' => {},
              'index_name' => 'cp',
              'index_type_command' => 'cindex'
            },
            'spaces_before_argument' => ' ',
            'subentry' => {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'jjj'
                    }
                  ],
                  'extra' => {
                    'spaces_after_argument' => ' '
                  },
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'subentry',
              'extra' => {
                'level' => 1,
                'spaces_before_argument' => ' ',
                'subentry' => {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'text' => 'lll'
                        }
                      ],
                      'extra' => {
                        'spaces_after_argument' => '
'
                      },
                      'type' => 'line_arg'
                    }
                  ],
                  'cmdname' => 'subentry',
                  'extra' => {
                    'level' => 2,
                    'spaces_before_argument' => ' '
                  },
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 18,
                    'macro' => ''
                  }
                }
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 18,
                'macro' => ''
              }
            }
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 18,
            'macro' => ''
          },
          'type' => 'index_entry_command'
        },
        {},
        {},
        {
          'args' => [
            {
              'contents' => [
                {
                  'text' => 'hhh'
                }
              ],
              'extra' => {
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
              'entry_number' => 9,
              'in_code' => 0,
              'index_at_command' => 'cindex',
              'index_ignore_chars' => {},
              'index_name' => 'cp',
              'index_type_command' => 'cindex'
            },
            'spaces_before_argument' => ' '
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 19,
            'macro' => ''
          },
          'type' => 'index_entry_command'
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
                          'text' => 'hhh'
                        }
                      ],
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'samp',
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 20,
                    'macro' => ''
                  }
                }
              ],
              'extra' => {
                'spaces_after_argument' => ' '
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
              'entry_number' => 10,
              'in_code' => 0,
              'index_at_command' => 'cindex',
              'index_ignore_chars' => {},
              'index_name' => 'cp',
              'index_type_command' => 'cindex'
            },
            'spaces_before_argument' => ' ',
            'subentry' => {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'jjj'
                    }
                  ],
                  'extra' => {
                    'spaces_after_argument' => '
'
                  },
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'subentry',
              'extra' => {
                'level' => 1,
                'spaces_before_argument' => ' '
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 20,
                'macro' => ''
              }
            }
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 20,
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
                  'args' => [
                    {
                      'contents' => [
                        {
                          'text' => 'hhh'
                        }
                      ],
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'kbd',
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 21,
                    'macro' => ''
                  }
                }
              ],
              'extra' => {
                'spaces_after_argument' => ' '
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
              'entry_number' => 11,
              'in_code' => 0,
              'index_at_command' => 'cindex',
              'index_ignore_chars' => {},
              'index_name' => 'cp',
              'index_type_command' => 'cindex'
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
                              'text' => 'jjj'
                            }
                          ],
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'sc',
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 21,
                        'macro' => ''
                      }
                    }
                  ],
                  'extra' => {
                    'spaces_after_argument' => ' '
                  },
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'subentry',
              'extra' => {
                'level' => 1,
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
                                  'text' => 'jjj'
                                }
                              ],
                              'type' => 'brace_command_arg'
                            },
                            {
                              'contents' => [
                                {
                                  'text' => 'mymail'
                                }
                              ],
                              'type' => 'brace_command_arg'
                            }
                          ],
                          'cmdname' => 'email',
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 21,
                            'macro' => ''
                          }
                        }
                      ],
                      'extra' => {
                        'spaces_after_argument' => '
'
                      },
                      'type' => 'line_arg'
                    }
                  ],
                  'cmdname' => 'subentry',
                  'extra' => {
                    'level' => 2,
                    'spaces_before_argument' => ' '
                  },
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 21,
                    'macro' => ''
                  }
                }
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 21,
                'macro' => ''
              }
            }
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 21,
            'macro' => ''
          },
          'type' => 'index_entry_command'
        },
        {},
        {},
        {
          'args' => [
            {
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'cindex',
          'extra' => {
            'missing_argument' => 1,
            'spaces_before_argument' => ' ',
            'subentry' => {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'aa'
                    }
                  ],
                  'extra' => {
                    'spaces_after_argument' => '
'
                  },
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'subentry',
              'extra' => {
                'level' => 1,
                'spaces_before_argument' => ' '
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 22,
                'macro' => ''
              }
            }
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 22,
            'macro' => ''
          }
        },
        {},
        {
          'args' => [
            {
              'contents' => [
                {
                  'text' => 'hhh'
                }
              ],
              'extra' => {
                'spaces_after_argument' => ' '
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
              'entry_number' => 12,
              'in_code' => 0,
              'index_at_command' => 'cindex',
              'index_ignore_chars' => {},
              'index_name' => 'cp',
              'index_type_command' => 'cindex'
            },
            'spaces_before_argument' => ' ',
            'subentry' => {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'jjj'
                    }
                  ],
                  'extra' => {
                    'spaces_after_argument' => ' '
                  },
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'subentry',
              'extra' => {
                'level' => 1,
                'spaces_before_argument' => ' ',
                'subentry' => {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'text' => 'lll'
                        },
                        {
                          'text' => ' ',
                          'type' => 'spaces_at_end'
                        },
                        {
                          'args' => [
                            {
                              'contents' => [
                                {
                                  'text' => 'A'
                                }
                              ],
                              'type' => 'brace_command_arg'
                            }
                          ],
                          'cmdname' => 'sortas',
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 23,
                            'macro' => ''
                          }
                        }
                      ],
                      'extra' => {
                        'spaces_after_argument' => '
'
                      },
                      'type' => 'line_arg'
                    }
                  ],
                  'cmdname' => 'subentry',
                  'extra' => {
                    'level' => 2,
                    'sortas' => 'A',
                    'spaces_before_argument' => ' '
                  },
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 23,
                    'macro' => ''
                  }
                }
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 23,
                'macro' => ''
              }
            }
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 23,
            'macro' => ''
          },
          'type' => 'index_entry_command'
        },
        {},
        {},
        {
          'args' => [
            {
              'contents' => [
                {
                  'text' => 'hhh'
                }
              ],
              'extra' => {
                'spaces_after_argument' => ' '
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
              'entry_number' => 13,
              'in_code' => 0,
              'index_at_command' => 'cindex',
              'index_ignore_chars' => {},
              'index_name' => 'cp',
              'index_type_command' => 'cindex'
            },
            'spaces_before_argument' => ' ',
            'subentry' => {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'k'
                    }
                  ],
                  'extra' => {
                    'spaces_after_argument' => ' '
                  },
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'subentry',
              'extra' => {
                'level' => 1,
                'spaces_before_argument' => ' ',
                'subentry' => {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'text' => 'nnn'
                        }
                      ],
                      'extra' => {
                        'spaces_after_argument' => '
'
                      },
                      'type' => 'line_arg'
                    }
                  ],
                  'cmdname' => 'subentry',
                  'extra' => {
                    'level' => 2,
                    'spaces_before_argument' => ' '
                  },
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 24,
                    'macro' => ''
                  }
                }
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 24,
                'macro' => ''
              }
            }
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 24,
            'macro' => ''
          },
          'type' => 'index_entry_command'
        },
        {},
        {},
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
              'extra' => {
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
            ],
            'spaces_before_argument' => ' '
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 26,
            'macro' => ''
          }
        }
      ],
      'extra' => {
        'spaces_before_argument' => ' '
      },
      'source_info' => {
        'file_name' => '',
        'line_nr' => 17,
        'macro' => ''
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'sorted_subentries'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'sorted_subentries'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'sorted_subentries'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'sorted_subentries'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'sorted_subentries'}{'contents'}[3]{'extra'}{'node_content'}[0] = $result_trees{'sorted_subentries'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'sorted_subentries'}{'contents'}[3]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'sorted_subentries'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[2]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[2]{'args'}[0]{'contents'};
$result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[2]{'extra'}{'index_entry'}{'entry_content'} = $result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[2]{'args'}[0]{'contents'};
$result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[2]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[2];
$result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[2]{'extra'}{'index_entry'}{'entry_node'} = $result_trees{'sorted_subentries'}{'contents'}[3];
$result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[3] = $result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[2]{'extra'}{'subentry'};
$result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[4] = $result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[2]{'extra'}{'subentry'}{'extra'}{'subentry'};
$result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[5]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[5]{'args'}[0]{'contents'};
$result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[5]{'extra'}{'index_entry'}{'entry_content'} = $result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[5]{'args'}[0]{'contents'};
$result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[5]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[5];
$result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[5]{'extra'}{'index_entry'}{'entry_node'} = $result_trees{'sorted_subentries'}{'contents'}[3];
$result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[6] = $result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[5]{'extra'}{'subentry'};
$result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[7]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[7]{'args'}[0]{'contents'};
$result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[7]{'extra'}{'index_entry'}{'entry_content'} = $result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[7]{'args'}[0]{'contents'};
$result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[7]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[7];
$result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[7]{'extra'}{'index_entry'}{'entry_node'} = $result_trees{'sorted_subentries'}{'contents'}[3];
$result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[8]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[8]{'args'}[0]{'contents'};
$result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[8]{'extra'}{'index_entry'}{'entry_content'} = $result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[8]{'args'}[0]{'contents'};
$result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[8]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[8];
$result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[8]{'extra'}{'index_entry'}{'entry_node'} = $result_trees{'sorted_subentries'}{'contents'}[3];
$result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[9] = $result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[8]{'extra'}{'subentry'};
$result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[10]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[10]{'args'}[0]{'contents'};
$result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[10]{'extra'}{'index_entry'}{'entry_content'} = $result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[10]{'args'}[0]{'contents'};
$result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[10]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[10];
$result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[10]{'extra'}{'index_entry'}{'entry_node'} = $result_trees{'sorted_subentries'}{'contents'}[3];
$result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[11] = $result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[10]{'extra'}{'subentry'};
$result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[12]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[12]{'args'}[0]{'contents'};
$result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[12]{'extra'}{'index_entry'}{'entry_content'} = $result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[12]{'args'}[0]{'contents'};
$result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[12]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[12];
$result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[12]{'extra'}{'index_entry'}{'entry_node'} = $result_trees{'sorted_subentries'}{'contents'}[3];
$result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[13]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[13]{'args'}[0]{'contents'};
$result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[13]{'extra'}{'index_entry'}{'entry_content'} = $result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[13]{'args'}[0]{'contents'};
$result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[13]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[13];
$result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[13]{'extra'}{'index_entry'}{'entry_node'} = $result_trees{'sorted_subentries'}{'contents'}[3];
$result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[14] = $result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[13]{'extra'}{'subentry'};
$result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[15] = $result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[13]{'extra'}{'subentry'}{'extra'}{'subentry'};
$result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[16] = $result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[13]{'extra'}{'subentry'}{'extra'}{'subentry'}{'extra'}{'subentry'};
$result_trees{'sorted_subentries'}{'contents'}[5]{'extra'}{'node_content'}[0] = $result_trees{'sorted_subentries'}{'contents'}[5]{'args'}[0]{'contents'}[0];
$result_trees{'sorted_subentries'}{'contents'}[5]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'sorted_subentries'}{'contents'}[5]{'args'}[0]{'contents'}[0];
$result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'};
$result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[0]{'extra'}{'index_entry'}{'entry_content'} = $result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'};
$result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[0]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[0];
$result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[0]{'extra'}{'index_entry'}{'entry_node'} = $result_trees{'sorted_subentries'}{'contents'}[5];
$result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[1] = $result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[0]{'extra'}{'subentry'};
$result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[2] = $result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[0]{'extra'}{'subentry'}{'extra'}{'subentry'};
$result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[3]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[3]{'args'}[0]{'contents'};
$result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[3]{'extra'}{'index_entry'}{'entry_content'} = $result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[3]{'args'}[0]{'contents'};
$result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[3]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[3];
$result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[3]{'extra'}{'index_entry'}{'entry_node'} = $result_trees{'sorted_subentries'}{'contents'}[5];
$result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[4]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[4]{'args'}[0]{'contents'};
$result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[4]{'extra'}{'index_entry'}{'entry_content'} = $result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[4]{'args'}[0]{'contents'};
$result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[4]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[4];
$result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[4]{'extra'}{'index_entry'}{'entry_node'} = $result_trees{'sorted_subentries'}{'contents'}[5];
$result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[5] = $result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[4]{'extra'}{'subentry'};
$result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[6]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[6]{'args'}[0]{'contents'};
$result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[6]{'extra'}{'index_entry'}{'entry_content'} = $result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[6]{'args'}[0]{'contents'};
$result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[6]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[6];
$result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[6]{'extra'}{'index_entry'}{'entry_node'} = $result_trees{'sorted_subentries'}{'contents'}[5];
$result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[7] = $result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[6]{'extra'}{'subentry'};
$result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[8] = $result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[6]{'extra'}{'subentry'}{'extra'}{'subentry'};
$result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[10] = $result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[9]{'extra'}{'subentry'};
$result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[11]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[11]{'args'}[0]{'contents'};
$result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[11]{'extra'}{'index_entry'}{'entry_content'} = $result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[11]{'args'}[0]{'contents'};
$result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[11]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[11];
$result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[11]{'extra'}{'index_entry'}{'entry_node'} = $result_trees{'sorted_subentries'}{'contents'}[5];
$result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[12] = $result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[11]{'extra'}{'subentry'};
$result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[13] = $result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[11]{'extra'}{'subentry'}{'extra'}{'subentry'};
$result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[14]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[14]{'args'}[0]{'contents'};
$result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[14]{'extra'}{'index_entry'}{'entry_content'} = $result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[14]{'args'}[0]{'contents'};
$result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[14]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[14];
$result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[14]{'extra'}{'index_entry'}{'entry_node'} = $result_trees{'sorted_subentries'}{'contents'}[5];
$result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[15] = $result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[14]{'extra'}{'subentry'};
$result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[16] = $result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[14]{'extra'}{'subentry'}{'extra'}{'subentry'};

$result_texis{'sorted_subentries'} = '@node Top
@top

@node chapter one
@chapter one


@cindex hhh @subentry jjj @subentry lll
@cindex hhh @subentry jjj
@cindex hhh jjj
@cindex hhh @subentry k
@cindex hhh @subentry 
@cindex hhh 
@cindex hhh @subentry jjj @subentry lll @subentry ppp

@node chapter second
@chapter second
@cindex hhh @subentry jjj @subentry lll
@cindex hhh 
@cindex @samp{hhh} @subentry jjj
@cindex @kbd{hhh} @subentry @sc{jjj} @subentry @email{jjj,mymail}
@cindex @subentry aa
@cindex hhh @subentry jjj @subentry lll @sortas{A}
@cindex hhh @subentry k @subentry nnn

@printindex cp
';


$result_texts{'sorted_subentries'} = '
1 one
*****



2 second
********

';

$result_sectioning{'sorted_subentries'} = {
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
                    'normalized' => 'chapter-one'
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
            },
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'isindex' => 1,
                    'normalized' => 'chapter-second'
                  },
                  'structure' => {}
                }
              },
              'structure' => {
                'section_level' => 1,
                'section_number' => 2,
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
$result_sectioning{'sorted_subentries'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'sorted_subentries'}{'structure'}{'section_childs'}[0];
$result_sectioning{'sorted_subentries'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_prev'} = $result_sectioning{'sorted_subentries'}{'structure'}{'section_childs'}[0];
$result_sectioning{'sorted_subentries'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_up'} = $result_sectioning{'sorted_subentries'}{'structure'}{'section_childs'}[0];
$result_sectioning{'sorted_subentries'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[1]{'structure'}{'section_prev'} = $result_sectioning{'sorted_subentries'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0];
$result_sectioning{'sorted_subentries'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[1]{'structure'}{'section_up'} = $result_sectioning{'sorted_subentries'}{'structure'}{'section_childs'}[0];
$result_sectioning{'sorted_subentries'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[1]{'structure'}{'toplevel_prev'} = $result_sectioning{'sorted_subentries'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0];
$result_sectioning{'sorted_subentries'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[1]{'structure'}{'toplevel_up'} = $result_sectioning{'sorted_subentries'}{'structure'}{'section_childs'}[0];
$result_sectioning{'sorted_subentries'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'sorted_subentries'};

$result_nodes{'sorted_subentries'} = {
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
        'normalized' => 'chapter-one'
      },
      'structure' => {
        'node_next' => {
          'cmdname' => 'node',
          'extra' => {
            'associated_section' => {
              'cmdname' => 'chapter',
              'extra' => {},
              'structure' => {
                'section_number' => 2
              }
            },
            'isindex' => 1,
            'normalized' => 'chapter-second'
          },
          'structure' => {
            'node_prev' => {},
            'node_up' => {}
          }
        },
        'node_prev' => {},
        'node_up' => {}
      }
    }
  }
};
$result_nodes{'sorted_subentries'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_prev'} = $result_nodes{'sorted_subentries'}{'structure'}{'node_next'};
$result_nodes{'sorted_subentries'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_up'} = $result_nodes{'sorted_subentries'};
$result_nodes{'sorted_subentries'}{'structure'}{'node_next'}{'structure'}{'node_prev'} = $result_nodes{'sorted_subentries'};
$result_nodes{'sorted_subentries'}{'structure'}{'node_next'}{'structure'}{'node_up'} = $result_nodes{'sorted_subentries'};

$result_menus{'sorted_subentries'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  },
  'structure' => {}
};

$result_errors{'sorted_subentries'} = [
  {
    'error_line' => 'warning: @subentry missing argument
',
    'file_name' => '',
    'line_nr' => 12,
    'macro' => '',
    'text' => '@subentry missing argument',
    'type' => 'warning'
  },
  {
    'error_line' => 'no more than two levels of index subentry are allowed
',
    'file_name' => '',
    'line_nr' => 14,
    'macro' => '',
    'text' => 'no more than two levels of index subentry are allowed',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: @cindex missing argument
',
    'file_name' => '',
    'line_nr' => 22,
    'macro' => '',
    'text' => '@cindex missing argument',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: empty index sub entry 1 key in @cindex
',
    'file_name' => '',
    'line_nr' => 12,
    'macro' => '',
    'text' => 'empty index sub entry 1 key in @cindex',
    'type' => 'warning'
  }
];


$result_floats{'sorted_subentries'} = {};


$result_indices_sort_strings{'sorted_subentries'} = {
  'cp' => [
    'hhh',
    'hhh',
    'hhh, ',
    'hhh, jjj',
    'hhh, jjj',
    'hhh, jjj, A',
    'hhh, jjj, lll',
    'hhh, jjj, lll',
    'hhh, jjj, lll, ppp',
    'hhh, JJJ, mymail',
    'hhh, k',
    'hhh, k, nnn',
    'hhh jjj'
  ]
};



$result_converted{'info'}->{'sorted_subentries'} = 'This is , produced from .


File: ,  Node: Top,  Next: chapter one,  Up: (dir)

* Menu:

* chapter one::
* chapter second::


File: ,  Node: chapter one,  Next: chapter second,  Prev: Top,  Up: Top

1 one
*****


File: ,  Node: chapter second,  Prev: chapter one,  Up: Top

2 second
********

 [index ]
* Menu:

* hhh:                                   chapter one.           (line 6)
* hhh <1>:                               chapter second.        (line 6)
* hhh, :                                 chapter one.           (line 6)
* hhh, jjj:                              chapter one.           (line 6)
* hhh, jjj <1>:                          chapter second.        (line 6)
* hhh, jjj, lll:                         chapter second.        (line 6)
* hhh, jjj, lll <1>:                     chapter one.           (line 6)
* hhh, jjj, lll <2>:                     chapter second.        (line 6)
* hhh, jjj, lll, ppp:                    chapter one.           (line 6)
* hhh, JJJ, mymail <jjj>:                chapter second.        (line 6)
* hhh, k:                                chapter one.           (line 6)
* hhh, k, nnn:                           chapter second.        (line 6)
* hhh jjj:                               chapter one.           (line 6)



Tag Table:
Node: Top27
Node: chapter one126
Node: chapter second214

End Tag Table


Local Variables:
coding: utf-8
End:
';

$result_converted_errors{'info'}->{'sorted_subentries'} = [
  {
    'error_line' => 'warning: empty index sub entry 1 key in @cindex
',
    'file_name' => '',
    'line_nr' => 12,
    'macro' => '',
    'text' => 'empty index sub entry 1 key in @cindex',
    'type' => 'warning'
  }
];



$result_converted{'plaintext'}->{'sorted_subentries'} = '1 one
*****

2 second
********

* Menu:

* hhh:                                   chapter one.           (line 3)
* hhh <1>:                               chapter second.        (line 6)
* hhh, :                                 chapter one.           (line 3)
* hhh, jjj:                              chapter one.           (line 3)
* hhh, jjj <1>:                          chapter second.        (line 6)
* hhh, jjj, lll:                         chapter second.        (line 6)
* hhh, jjj, lll <1>:                     chapter one.           (line 3)
* hhh, jjj, lll <2>:                     chapter second.        (line 6)
* hhh, jjj, lll, ppp:                    chapter one.           (line 3)
* hhh, JJJ, mymail <jjj>:                chapter second.        (line 6)
* hhh, k:                                chapter one.           (line 3)
* hhh, k, nnn:                           chapter second.        (line 6)
* hhh jjj:                               chapter one.           (line 3)

';

$result_converted_errors{'plaintext'}->{'sorted_subentries'} = [
  {
    'error_line' => 'warning: empty index sub entry 1 key in @cindex
',
    'file_name' => '',
    'line_nr' => 12,
    'macro' => '',
    'text' => 'empty index sub entry 1 key in @cindex',
    'type' => 'warning'
  }
];



$result_converted{'html_text'}->{'sorted_subentries'} = '<div class="top-level-extent" id="Top">
<div class="nav-panel">
<p>
 &nbsp; [<a href="#chapter-second" title="Index" rel="index">Index</a>]</p>
</div>
<a class="top" id="SEC_Top"></a>
<ul class="mini-toc">
<li><a href="#chapter-one" accesskey="1">one</a></li>
<li><a href="#chapter-second" accesskey="2">second</a></li>
</ul>
<hr>
<div class="chapter-level-extent" id="chapter-one">
<div class="nav-panel">
<p>
 &nbsp; [<a href="#chapter-second" title="Index" rel="index">Index</a>]</p>
</div>
<h2 class="chapter" id="one">1 one</h2>


<a class="index-entry-id" id="index-hhh"></a>
<a class="index-entry-id" id="index-hhh-1"></a>
<a class="index-entry-id" id="index-hhh-jjj"></a>
<a class="index-entry-id" id="index-hhh-2"></a>
<a class="index-entry-id" id="index-hhh-3"></a>
<a class="index-entry-id" id="index-hhh-4"></a>
<a class="index-entry-id" id="index-hhh-5"></a>

<hr>
</div>
<div class="chapter-level-extent" id="chapter-second">
<div class="nav-panel">
<p>
 &nbsp; [<a href="#chapter-second" title="Index" rel="index">Index</a>]</p>
</div>
<h2 class="chapter" id="second">2 second</h2>
<a class="index-entry-id" id="index-hhh-6"></a>
<a class="index-entry-id" id="index-hhh-7"></a>
<a class="index-entry-id" id="index-hhh-8"></a>
<a class="index-entry-id" id="index-hhh-9"></a>
<a class="index-entry-id" id="index-hhh-10"></a>
<a class="index-entry-id" id="index-hhh-11"></a>

<div class="printindex cp-printindex">
<table class="cp-entries-printindex" border="0">
<tr><td></td><th class="entries-header-printindex">Index Entry</th><td>&nbsp;</td><th class="sections-header-printindex"> Section</th></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="t_i_cp_letter-H">H</th><td></td><td></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-hhh-4">hhh</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#chapter-one">chapter one</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-hhh-7">hhh</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#chapter-second">chapter second</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-hhh-3">hhh, </a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#chapter-one">chapter one</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-hhh-1">hhh, jjj</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#chapter-one">chapter one</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-hhh-8">&lsquo;<samp class="samp">hhh</samp>&rsquo;, jjj</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#chapter-second">chapter second</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-hhh-10">hhh, jjj, lll</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#chapter-second">chapter second</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-hhh">hhh, jjj, lll</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#chapter-one">chapter one</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-hhh-6">hhh, jjj, lll</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#chapter-second">chapter second</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-hhh-5">hhh, jjj, lll, ppp</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#chapter-one">chapter one</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-hhh-9"><kbd class="kbd">hhh</kbd>, <small class="sc">JJJ</small>, <a class="email" href="mailto:jjj">mymail</a></a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#chapter-second">chapter second</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-hhh-2">hhh, k</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#chapter-one">chapter one</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-hhh-11">hhh, k, nnn</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#chapter-second">chapter second</a></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-hhh-jjj">hhh jjj</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#chapter-one">chapter one</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
</table>
</div>
</div>
</div>
';

$result_converted_errors{'html_text'}->{'sorted_subentries'} = [
  {
    'error_line' => 'warning: empty index sub entry 1 key in @cindex
',
    'file_name' => '',
    'line_nr' => 12,
    'macro' => '',
    'text' => 'empty index sub entry 1 key in @cindex',
    'type' => 'warning'
  }
];



$result_converted{'xml'}->{'sorted_subentries'} = '<node name="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">chapter one</nodenext></node>
<top><sectiontitle></sectiontitle>

</top>
<node name="chapter-one" spaces=" "><nodename>chapter one</nodename><nodenext automatic="on">chapter second</nodenext><nodeprev automatic="on">Top</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>one</sectiontitle>


<cindex index="cp" spaces=" "><indexterm index="cp" number="1">hhh</indexterm></cindex> <subentry spaces=" ">jjj </subentry><subentry spaces=" ">lll</subentry>
<cindex index="cp" spaces=" "><indexterm index="cp" number="2">hhh</indexterm></cindex> <subentry spaces=" ">jjj</subentry>
<cindex index="cp" spaces=" "><indexterm index="cp" number="3">hhh jjj</indexterm></cindex>
<cindex index="cp" spaces=" "><indexterm index="cp" number="4">hhh</indexterm></cindex> <subentry spaces=" ">k</subentry>
<cindex index="cp" spaces=" "><indexterm index="cp" number="5">hhh</indexterm></cindex> <subentry> </subentry>
<cindex index="cp" spaces=" "><indexterm index="cp" number="6">hhh</indexterm></cindex> 
<cindex index="cp" spaces=" "><indexterm index="cp" number="7">hhh</indexterm></cindex> <subentry spaces=" ">jjj </subentry><subentry spaces=" ">lll </subentry><subentry spaces=" ">ppp</subentry>

</chapter>
<node name="chapter-second" spaces=" "><nodename>chapter second</nodename><nodeprev automatic="on">chapter one</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>second</sectiontitle>
<cindex index="cp" spaces=" "><indexterm index="cp" number="8">hhh</indexterm></cindex> <subentry spaces=" ">jjj </subentry><subentry spaces=" ">lll</subentry>
<cindex index="cp" spaces=" "><indexterm index="cp" number="9">hhh</indexterm></cindex> 
<cindex index="cp" spaces=" "><indexterm index="cp" number="10"><samp>hhh</samp></indexterm></cindex> <subentry spaces=" ">jjj</subentry>
<cindex index="cp" spaces=" "><indexterm index="cp" number="11"><kbd>hhh</kbd></indexterm></cindex> <subentry spaces=" "><sc>jjj</sc> </subentry><subentry spaces=" "><email><emailaddress>jjj</emailaddress><emailname>mymail</emailname></email></subentry>
<cindex spaces=" "></cindex><subentry spaces=" ">aa</subentry>
<cindex index="cp" spaces=" "><indexterm index="cp" number="12">hhh</indexterm></cindex> <subentry spaces=" ">jjj </subentry><subentry spaces=" ">lll <sortas>A</sortas></subentry>
<cindex index="cp" spaces=" "><indexterm index="cp" number="13">hhh</indexterm></cindex> <subentry spaces=" ">k </subentry><subentry spaces=" ">nnn</subentry>

<printindex spaces=" " value="cp" line="cp"></printindex>
</chapter>
';

1;
