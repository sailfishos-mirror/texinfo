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
        'line_nr' => 1
      }
    },
    {
      'cmdname' => 'top',
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
              'type' => 'line_arg'
            }
          ],
          'type' => 'arguments_line'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'extra' => {},
      'source_info' => {
        'line_nr' => 2
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
                  'text' => 'chapter one'
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
        'normalized' => 'chapter-one'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 4
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
                  'text' => 'one'
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
          'cmdname' => 'cindex',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'aa'
                }
              ],
              'info' => {
                'spaces_after_argument' => {
                  'text' => ' '
                }
              },
              'type' => 'line_arg'
            }
          ],
          'extra' => {
            'element_node' => {},
            'index_entry' => [
              'cp',
              1
            ],
            'subentry' => {
              'cmdname' => 'subentry',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'bb'
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
                'subentry_level' => 1,
                'subentry_parent' => {}
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 7
              }
            }
          },
          'info' => {
            'command_name' => 'cindex',
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 7
          },
          'type' => 'index_entry_command'
        },
        {},
        {
          'cmdname' => 'cindex',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'ab'
                }
              ],
              'info' => {
                'spaces_after_argument' => {
                  'text' => ' '
                }
              },
              'type' => 'line_arg'
            }
          ],
          'extra' => {
            'element_node' => {},
            'index_entry' => [
              'cp',
              2
            ],
            'subentry' => {
              'cmdname' => 'subentry',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'cc'
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
                'subentry_level' => 1,
                'subentry_parent' => {}
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 8
              }
            }
          },
          'info' => {
            'command_name' => 'cindex',
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 8
          },
          'type' => 'index_entry_command'
        },
        {},
        {
          'cmdname' => 'cindex',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'aa'
                }
              ],
              'info' => {
                'spaces_after_argument' => {
                  'text' => ' '
                }
              },
              'type' => 'line_arg'
            }
          ],
          'extra' => {
            'element_node' => {},
            'index_entry' => [
              'cp',
              3
            ],
            'subentry' => {
              'cmdname' => 'subentry',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'dd'
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
                'subentry_level' => 1,
                'subentry_parent' => {}
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 9
              }
            }
          },
          'info' => {
            'command_name' => 'cindex',
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 9
          },
          'type' => 'index_entry_command'
        },
        {},
        {
          'cmdname' => 'cindex',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'bb'
                }
              ],
              'info' => {
                'spaces_after_argument' => {
                  'text' => ' '
                }
              },
              'type' => 'line_arg'
            }
          ],
          'extra' => {
            'element_node' => {},
            'index_entry' => [
              'cp',
              4
            ],
            'subentry' => {
              'cmdname' => 'subentry',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'cc'
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
                'subentry_level' => 1,
                'subentry_parent' => {}
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 10
              }
            }
          },
          'info' => {
            'command_name' => 'cindex',
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 10
          },
          'type' => 'index_entry_command'
        },
        {},
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
                  'text' => 'hhh'
                }
              ],
              'info' => {
                'spaces_after_argument' => {
                  'text' => ' '
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
            ],
            'subentry' => {
              'cmdname' => 'subentry',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'jjj'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => {
                      'text' => ' '
                    }
                  },
                  'type' => 'line_arg'
                }
              ],
              'extra' => {
                'subentry' => {
                  'cmdname' => 'subentry',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'lll'
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
                    'subentry_level' => 2,
                    'subentry_parent' => {}
                  },
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'source_info' => {
                    'line_nr' => 12
                  }
                },
                'subentry_level' => 1,
                'subentry_parent' => {}
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 12
              }
            }
          },
          'info' => {
            'command_name' => 'cindex',
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 12
          },
          'type' => 'index_entry_command'
        },
        {},
        {},
        {
          'cmdname' => 'cindex',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'hhh'
                }
              ],
              'info' => {
                'spaces_after_argument' => {
                  'text' => ' '
                }
              },
              'type' => 'line_arg'
            }
          ],
          'extra' => {
            'element_node' => {},
            'index_entry' => [
              'cp',
              6
            ],
            'subentry' => {
              'cmdname' => 'subentry',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'jjj'
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
                'subentry_level' => 1,
                'subentry_parent' => {}
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 13
              }
            }
          },
          'info' => {
            'command_name' => 'cindex',
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 13
          },
          'type' => 'index_entry_command'
        },
        {},
        {
          'cmdname' => 'cindex',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'hhh jjj'
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
              7
            ]
          },
          'info' => {
            'command_name' => 'cindex',
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 14
          },
          'type' => 'index_entry_command'
        },
        {
          'cmdname' => 'cindex',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'hhh'
                }
              ],
              'info' => {
                'spaces_after_argument' => {
                  'text' => ' '
                }
              },
              'type' => 'line_arg'
            }
          ],
          'extra' => {
            'element_node' => {},
            'index_entry' => [
              'cp',
              8
            ],
            'subentry' => {
              'cmdname' => 'subentry',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'k'
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
                'subentry_level' => 1,
                'subentry_parent' => {}
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 15
              }
            }
          },
          'info' => {
            'command_name' => 'cindex',
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 15
          },
          'type' => 'index_entry_command'
        },
        {},
        {
          'cmdname' => 'cindex',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'hhh'
                }
              ],
              'info' => {
                'spaces_after_argument' => {
                  'text' => ' '
                }
              },
              'type' => 'line_arg'
            }
          ],
          'extra' => {
            'element_node' => {},
            'index_entry' => [
              'cp',
              9
            ],
            'subentry' => {
              'cmdname' => 'subentry',
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
              'extra' => {
                'subentry_level' => 1,
                'subentry_parent' => {}
              },
              'source_info' => {
                'line_nr' => 16
              }
            }
          },
          'info' => {
            'command_name' => 'cindex',
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 16
          },
          'type' => 'index_entry_command'
        },
        {},
        {
          'cmdname' => 'cindex',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'hhh'
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
              10
            ]
          },
          'info' => {
            'command_name' => 'cindex',
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 17
          },
          'type' => 'index_entry_command'
        },
        {
          'cmdname' => 'cindex',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'hhh'
                }
              ],
              'info' => {
                'spaces_after_argument' => {
                  'text' => ' '
                }
              },
              'type' => 'line_arg'
            }
          ],
          'extra' => {
            'element_node' => {},
            'index_entry' => [
              'cp',
              11
            ],
            'subentry' => {
              'cmdname' => 'subentry',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'jjj'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => {
                      'text' => ' '
                    }
                  },
                  'type' => 'line_arg'
                }
              ],
              'extra' => {
                'subentry' => {
                  'cmdname' => 'subentry',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'lll'
                        }
                      ],
                      'info' => {
                        'spaces_after_argument' => {
                          'text' => ' '
                        }
                      },
                      'type' => 'line_arg'
                    }
                  ],
                  'extra' => {
                    'subentry' => {
                      'cmdname' => 'subentry',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'ppp'
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
                        'subentry_level' => 3,
                        'subentry_parent' => {}
                      },
                      'info' => {
                        'spaces_before_argument' => {
                          'text' => ' '
                        }
                      },
                      'source_info' => {
                        'line_nr' => 18
                      }
                    },
                    'subentry_level' => 2,
                    'subentry_parent' => {}
                  },
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'source_info' => {
                    'line_nr' => 18
                  }
                },
                'subentry_level' => 1,
                'subentry_parent' => {}
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 18
              }
            }
          },
          'info' => {
            'command_name' => 'cindex',
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 18
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
        'section_number' => '1'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 5
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
                  'text' => 'chapter second'
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
        'isindex' => 1,
        'normalized' => 'chapter-second'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 20
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
                  'text' => 'second'
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
          'cmdname' => 'cindex',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'hhh'
                }
              ],
              'info' => {
                'spaces_after_argument' => {
                  'text' => ' '
                }
              },
              'type' => 'line_arg'
            }
          ],
          'extra' => {
            'element_node' => {},
            'index_entry' => [
              'cp',
              12
            ],
            'subentry' => {
              'cmdname' => 'subentry',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'jjj'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => {
                      'text' => ' '
                    }
                  },
                  'type' => 'line_arg'
                }
              ],
              'extra' => {
                'subentry' => {
                  'cmdname' => 'subentry',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'lll'
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
                    'subentry_level' => 2,
                    'subentry_parent' => {}
                  },
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'source_info' => {
                    'line_nr' => 22
                  }
                },
                'subentry_level' => 1,
                'subentry_parent' => {}
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 22
              }
            }
          },
          'info' => {
            'command_name' => 'cindex',
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 22
          },
          'type' => 'index_entry_command'
        },
        {},
        {},
        {
          'cmdname' => 'cindex',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'hhh'
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
              13
            ]
          },
          'info' => {
            'command_name' => 'cindex',
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 23
          },
          'type' => 'index_entry_command'
        },
        {
          'cmdname' => 'cindex',
          'contents' => [
            {
              'contents' => [
                {
                  'cmdname' => 'samp',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'hhh'
                        }
                      ],
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 24
                  }
                }
              ],
              'info' => {
                'spaces_after_argument' => {
                  'text' => ' '
                }
              },
              'type' => 'line_arg'
            }
          ],
          'extra' => {
            'element_node' => {},
            'index_entry' => [
              'cp',
              14
            ],
            'subentry' => {
              'cmdname' => 'subentry',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'jjj'
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
                'subentry_level' => 1,
                'subentry_parent' => {}
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 24
              }
            }
          },
          'info' => {
            'command_name' => 'cindex',
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 24
          },
          'type' => 'index_entry_command'
        },
        {},
        {
          'cmdname' => 'cindex',
          'contents' => [
            {
              'contents' => [
                {
                  'cmdname' => 'kbd',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'hhh'
                        }
                      ],
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 25
                  }
                }
              ],
              'info' => {
                'spaces_after_argument' => {
                  'text' => ' '
                }
              },
              'type' => 'line_arg'
            }
          ],
          'extra' => {
            'element_node' => {},
            'index_entry' => [
              'cp',
              15
            ],
            'subentry' => {
              'cmdname' => 'subentry',
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => 'sc',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'jjj'
                            }
                          ],
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 25
                      }
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => {
                      'text' => ' '
                    }
                  },
                  'type' => 'line_arg'
                }
              ],
              'extra' => {
                'subentry' => {
                  'cmdname' => 'subentry',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'cmdname' => 'email',
                          'contents' => [
                            {
                              'contents' => [
                                {
                                  'text' => 'jjj'
                                }
                              ],
                              'type' => 'brace_arg'
                            },
                            {
                              'contents' => [
                                {
                                  'text' => 'mymail'
                                }
                              ],
                              'type' => 'brace_arg'
                            }
                          ],
                          'source_info' => {
                            'line_nr' => 25
                          }
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
                    'subentry_level' => 2,
                    'subentry_parent' => {}
                  },
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'source_info' => {
                    'line_nr' => 25
                  }
                },
                'subentry_level' => 1,
                'subentry_parent' => {}
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 25
              }
            }
          },
          'info' => {
            'command_name' => 'cindex',
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 25
          },
          'type' => 'index_entry_command'
        },
        {},
        {},
        {
          'cmdname' => 'cindex',
          'contents' => [
            {
              'type' => 'line_arg'
            }
          ],
          'extra' => {
            'subentry' => {
              'cmdname' => 'subentry',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'aa'
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
                'subentry_level' => 1,
                'subentry_parent' => {}
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 26
              }
            }
          },
          'info' => {
            'command_name' => 'cindex',
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 26
          },
          'type' => 'index_entry_command'
        },
        {},
        {
          'cmdname' => 'cindex',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'hhh'
                }
              ],
              'info' => {
                'spaces_after_argument' => {
                  'text' => ' '
                }
              },
              'type' => 'line_arg'
            }
          ],
          'extra' => {
            'element_node' => {},
            'index_entry' => [
              'cp',
              16
            ],
            'subentry' => {
              'cmdname' => 'subentry',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'jjj'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => {
                      'text' => ' '
                    }
                  },
                  'type' => 'line_arg'
                }
              ],
              'extra' => {
                'subentry' => {
                  'cmdname' => 'subentry',
                  'contents' => [
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
                          'cmdname' => 'sortas',
                          'contents' => [
                            {
                              'contents' => [
                                {
                                  'text' => 'A'
                                }
                              ],
                              'type' => 'brace_arg'
                            }
                          ],
                          'source_info' => {
                            'line_nr' => 27
                          }
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
                    'sortas' => 'A',
                    'subentry_level' => 2,
                    'subentry_parent' => {}
                  },
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'source_info' => {
                    'line_nr' => 27
                  }
                },
                'subentry_level' => 1,
                'subentry_parent' => {}
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 27
              }
            }
          },
          'info' => {
            'command_name' => 'cindex',
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 27
          },
          'type' => 'index_entry_command'
        },
        {},
        {},
        {
          'cmdname' => 'cindex',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'hhh'
                }
              ],
              'info' => {
                'spaces_after_argument' => {
                  'text' => ' '
                }
              },
              'type' => 'line_arg'
            }
          ],
          'extra' => {
            'element_node' => {},
            'index_entry' => [
              'cp',
              17
            ],
            'subentry' => {
              'cmdname' => 'subentry',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'k'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => {
                      'text' => ' '
                    }
                  },
                  'type' => 'line_arg'
                }
              ],
              'extra' => {
                'subentry' => {
                  'cmdname' => 'subentry',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'nnn'
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
                    'subentry_level' => 2,
                    'subentry_parent' => {}
                  },
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'source_info' => {
                    'line_nr' => 28
                  }
                },
                'subentry_level' => 1,
                'subentry_parent' => {}
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 28
              }
            }
          },
          'info' => {
            'command_name' => 'cindex',
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 28
          },
          'type' => 'index_entry_command'
        },
        {},
        {},
        {
          'cmdname' => 'cindex',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'hhh'
                }
              ],
              'info' => {
                'spaces_after_argument' => {
                  'text' => ' '
                }
              },
              'type' => 'line_arg'
            }
          ],
          'extra' => {
            'element_node' => {},
            'index_entry' => [
              'cp',
              18
            ],
            'subentry' => {
              'cmdname' => 'subentry',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'l'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => {
                      'text' => ' '
                    }
                  },
                  'type' => 'line_arg'
                }
              ],
              'extra' => {
                'subentry' => {
                  'cmdname' => 'subentry',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'third'
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
                    'subentry_level' => 2,
                    'subentry_parent' => {}
                  },
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'source_info' => {
                    'line_nr' => 29
                  }
                },
                'subentry_level' => 1,
                'subentry_parent' => {}
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 29
              }
            }
          },
          'info' => {
            'command_name' => 'cindex',
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 29
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
            'line_nr' => 31
          }
        }
      ],
      'extra' => {
        'section_number' => '2'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 21
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[2]{'extra'}{'element_node'} = $result_trees{'sorted_subentries'}{'contents'}[3];
$result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[2]{'extra'}{'subentry'}{'extra'}{'subentry_parent'} = $result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[2];
$result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[3] = $result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[2]{'extra'}{'subentry'};
$result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[4]{'extra'}{'element_node'} = $result_trees{'sorted_subentries'}{'contents'}[3];
$result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[4]{'extra'}{'subentry'}{'extra'}{'subentry_parent'} = $result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[4];
$result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[5] = $result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[4]{'extra'}{'subentry'};
$result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[6]{'extra'}{'element_node'} = $result_trees{'sorted_subentries'}{'contents'}[3];
$result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[6]{'extra'}{'subentry'}{'extra'}{'subentry_parent'} = $result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[6];
$result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[7] = $result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[6]{'extra'}{'subentry'};
$result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[8]{'extra'}{'element_node'} = $result_trees{'sorted_subentries'}{'contents'}[3];
$result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[8]{'extra'}{'subentry'}{'extra'}{'subentry_parent'} = $result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[8];
$result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[9] = $result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[8]{'extra'}{'subentry'};
$result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[11]{'extra'}{'element_node'} = $result_trees{'sorted_subentries'}{'contents'}[3];
$result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[11]{'extra'}{'subentry'}{'extra'}{'subentry'}{'extra'}{'subentry_parent'} = $result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[11]{'extra'}{'subentry'};
$result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[11]{'extra'}{'subentry'}{'extra'}{'subentry_parent'} = $result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[11];
$result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[12] = $result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[11]{'extra'}{'subentry'};
$result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[13] = $result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[11]{'extra'}{'subentry'}{'extra'}{'subentry'};
$result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[14]{'extra'}{'element_node'} = $result_trees{'sorted_subentries'}{'contents'}[3];
$result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[14]{'extra'}{'subentry'}{'extra'}{'subentry_parent'} = $result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[14];
$result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[15] = $result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[14]{'extra'}{'subentry'};
$result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[16]{'extra'}{'element_node'} = $result_trees{'sorted_subentries'}{'contents'}[3];
$result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[17]{'extra'}{'element_node'} = $result_trees{'sorted_subentries'}{'contents'}[3];
$result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[17]{'extra'}{'subentry'}{'extra'}{'subentry_parent'} = $result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[17];
$result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[18] = $result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[17]{'extra'}{'subentry'};
$result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[19]{'extra'}{'element_node'} = $result_trees{'sorted_subentries'}{'contents'}[3];
$result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[19]{'extra'}{'subentry'}{'extra'}{'subentry_parent'} = $result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[19];
$result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[20] = $result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[19]{'extra'}{'subentry'};
$result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[21]{'extra'}{'element_node'} = $result_trees{'sorted_subentries'}{'contents'}[3];
$result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[22]{'extra'}{'element_node'} = $result_trees{'sorted_subentries'}{'contents'}[3];
$result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[22]{'extra'}{'subentry'}{'extra'}{'subentry'}{'extra'}{'subentry'}{'extra'}{'subentry_parent'} = $result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[22]{'extra'}{'subentry'}{'extra'}{'subentry'};
$result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[22]{'extra'}{'subentry'}{'extra'}{'subentry'}{'extra'}{'subentry_parent'} = $result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[22]{'extra'}{'subentry'};
$result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[22]{'extra'}{'subentry'}{'extra'}{'subentry_parent'} = $result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[22];
$result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[23] = $result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[22]{'extra'}{'subentry'};
$result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[24] = $result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[22]{'extra'}{'subentry'}{'extra'}{'subentry'};
$result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[25] = $result_trees{'sorted_subentries'}{'contents'}[4]{'contents'}[22]{'extra'}{'subentry'}{'extra'}{'subentry'}{'extra'}{'subentry'};
$result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[1]{'extra'}{'element_node'} = $result_trees{'sorted_subentries'}{'contents'}[5];
$result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[1]{'extra'}{'subentry'}{'extra'}{'subentry'}{'extra'}{'subentry_parent'} = $result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[1]{'extra'}{'subentry'};
$result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[1]{'extra'}{'subentry'}{'extra'}{'subentry_parent'} = $result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[1];
$result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[2] = $result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[1]{'extra'}{'subentry'};
$result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[3] = $result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[1]{'extra'}{'subentry'}{'extra'}{'subentry'};
$result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[4]{'extra'}{'element_node'} = $result_trees{'sorted_subentries'}{'contents'}[5];
$result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[5]{'extra'}{'element_node'} = $result_trees{'sorted_subentries'}{'contents'}[5];
$result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[5]{'extra'}{'subentry'}{'extra'}{'subentry_parent'} = $result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[5];
$result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[6] = $result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[5]{'extra'}{'subentry'};
$result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[7]{'extra'}{'element_node'} = $result_trees{'sorted_subentries'}{'contents'}[5];
$result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[7]{'extra'}{'subentry'}{'extra'}{'subentry'}{'extra'}{'subentry_parent'} = $result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[7]{'extra'}{'subentry'};
$result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[7]{'extra'}{'subentry'}{'extra'}{'subentry_parent'} = $result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[7];
$result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[8] = $result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[7]{'extra'}{'subentry'};
$result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[9] = $result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[7]{'extra'}{'subentry'}{'extra'}{'subentry'};
$result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[10]{'extra'}{'subentry'}{'extra'}{'subentry_parent'} = $result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[10];
$result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[11] = $result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[10]{'extra'}{'subentry'};
$result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[12]{'extra'}{'element_node'} = $result_trees{'sorted_subentries'}{'contents'}[5];
$result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[12]{'extra'}{'subentry'}{'extra'}{'subentry'}{'extra'}{'subentry_parent'} = $result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[12]{'extra'}{'subentry'};
$result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[12]{'extra'}{'subentry'}{'extra'}{'subentry_parent'} = $result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[12];
$result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[13] = $result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[12]{'extra'}{'subentry'};
$result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[14] = $result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[12]{'extra'}{'subentry'}{'extra'}{'subentry'};
$result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[15]{'extra'}{'element_node'} = $result_trees{'sorted_subentries'}{'contents'}[5];
$result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[15]{'extra'}{'subentry'}{'extra'}{'subentry'}{'extra'}{'subentry_parent'} = $result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[15]{'extra'}{'subentry'};
$result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[15]{'extra'}{'subentry'}{'extra'}{'subentry_parent'} = $result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[15];
$result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[16] = $result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[15]{'extra'}{'subentry'};
$result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[17] = $result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[15]{'extra'}{'subentry'}{'extra'}{'subentry'};
$result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[18]{'extra'}{'element_node'} = $result_trees{'sorted_subentries'}{'contents'}[5];
$result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[18]{'extra'}{'subentry'}{'extra'}{'subentry'}{'extra'}{'subentry_parent'} = $result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[18]{'extra'}{'subentry'};
$result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[18]{'extra'}{'subentry'}{'extra'}{'subentry_parent'} = $result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[18];
$result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[19] = $result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[18]{'extra'}{'subentry'};
$result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[20] = $result_trees{'sorted_subentries'}{'contents'}[6]{'contents'}[18]{'extra'}{'subentry'}{'extra'}{'subentry'};

$result_texis{'sorted_subentries'} = '@node Top
@top

@node chapter one
@chapter one

@cindex aa @subentry bb
@cindex ab @subentry cc
@cindex aa @subentry dd
@cindex bb @subentry cc

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
@cindex hhh @subentry l @subentry third

@printindex cp
';


$result_texts{'sorted_subentries'} = '
1 one
*****



2 second
********

';

$result_sectioning{'sorted_subentries'} = {
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
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => 'chapter-one'
                  }
                },
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
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'isindex' => 1,
                    'normalized' => 'chapter-second'
                  }
                },
                'section_directions' => {
                  'prev' => {},
                  'up' => {}
                },
                'section_level' => 1,
                'section_number' => '2',
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
$result_sectioning{'sorted_subentries'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'sorted_subentries'}{'extra'}{'section_childs'}[0];
$result_sectioning{'sorted_subentries'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'sorted_subentries'}{'extra'}{'section_childs'}[0];
$result_sectioning{'sorted_subentries'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'sorted_subentries'}{'extra'}{'section_childs'}[0];
$result_sectioning{'sorted_subentries'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'sorted_subentries'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'sorted_subentries'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'sorted_subentries'}{'extra'}{'section_childs'}[0];
$result_sectioning{'sorted_subentries'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'sorted_subentries'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'sorted_subentries'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'sorted_subentries'}{'extra'}{'section_childs'}[0];
$result_sectioning{'sorted_subentries'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'sorted_subentries'};

$result_nodes{'sorted_subentries'} = [
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
              'cmdname' => 'chapter',
              'extra' => {
                'section_number' => '1'
              }
            },
            'node_directions' => {
              'next' => {
                'cmdname' => 'node',
                'extra' => {
                  'associated_section' => {
                    'cmdname' => 'chapter',
                    'extra' => {
                      'section_number' => '2'
                    }
                  },
                  'isindex' => 1,
                  'node_directions' => {
                    'prev' => {},
                    'up' => {}
                  },
                  'normalized' => 'chapter-second'
                }
              },
              'prev' => {},
              'up' => {}
            },
            'normalized' => 'chapter-one'
          }
        }
      },
      'normalized' => 'Top'
    }
  },
  {},
  {}
];
$result_nodes{'sorted_subentries'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'sorted_subentries'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'sorted_subentries'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'sorted_subentries'}[0];
$result_nodes{'sorted_subentries'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'sorted_subentries'}[0];
$result_nodes{'sorted_subentries'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'sorted_subentries'}[0];
$result_nodes{'sorted_subentries'}[1] = $result_nodes{'sorted_subentries'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'sorted_subentries'}[2] = $result_nodes{'sorted_subentries'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};

$result_menus{'sorted_subentries'} = [
  {
    'extra' => {
      'normalized' => 'Top'
    }
  },
  {
    'extra' => {
      'normalized' => 'chapter-one'
    }
  },
  {
    'extra' => {
      'normalized' => 'chapter-second'
    }
  }
];

$result_errors{'sorted_subentries'} = [
  {
    'error_line' => 'warning: @subentry missing argument
',
    'line_nr' => 16,
    'text' => '@subentry missing argument',
    'type' => 'warning'
  },
  {
    'error_line' => 'no more than two levels of index subentry are allowed
',
    'line_nr' => 18,
    'text' => 'no more than two levels of index subentry are allowed',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: @cindex missing argument
',
    'line_nr' => 26,
    'text' => '@cindex missing argument',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: empty index sub entry 1 key in @cindex
',
    'line_nr' => 16,
    'text' => 'empty index sub entry 1 key in @cindex',
    'type' => 'warning'
  }
];


$result_floats{'sorted_subentries'} = {};


$result_indices_sort_strings{'sorted_subentries'} = {
  'cp' => [
    'aa, bb',
    'aa, dd',
    'ab, cc',
    'bb, cc',
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
    'hhh, l, third',
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

* aa, bb:                                chapter one.           (line 5)
* aa, dd:                                chapter one.           (line 5)
* ab, cc:                                chapter one.           (line 5)
* bb, cc:                                chapter one.           (line 5)
* hhh:                                   chapter one.           (line 5)
* hhh <1>:                               chapter second.        (line 6)
* hhh, :                                 chapter one.           (line 5)
* hhh, jjj:                              chapter one.           (line 5)
* hhh, jjj <1>:                          chapter second.        (line 6)
* hhh, jjj, lll:                         chapter second.        (line 6)
* hhh, jjj, lll <1>:                     chapter one.           (line 5)
* hhh, jjj, lll <2>:                     chapter second.        (line 6)
* hhh, jjj, lll, ppp:                    chapter one.           (line 5)
* hhh, JJJ, mymail <jjj>:                chapter second.        (line 6)
* hhh, k:                                chapter one.           (line 5)
* hhh, k, nnn:                           chapter second.        (line 6)
* hhh, l, third:                         chapter second.        (line 6)
* hhh jjj:                               chapter one.           (line 5)


Tag Table:
Node: Top27
Node: chapter one126
Node: chapter second214

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'plaintext'}->{'sorted_subentries'} = '1 one
*****

2 second
********

* Menu:

* aa, bb:                                chapter one.           (line 2)
* aa, dd:                                chapter one.           (line 2)
* ab, cc:                                chapter one.           (line 2)
* bb, cc:                                chapter one.           (line 2)
* hhh:                                   chapter one.           (line 2)
* hhh <1>:                               chapter second.        (line 6)
* hhh, :                                 chapter one.           (line 2)
* hhh, jjj:                              chapter one.           (line 2)
* hhh, jjj <1>:                          chapter second.        (line 6)
* hhh, jjj, lll:                         chapter second.        (line 6)
* hhh, jjj, lll <1>:                     chapter one.           (line 2)
* hhh, jjj, lll <2>:                     chapter second.        (line 6)
* hhh, jjj, lll, ppp:                    chapter one.           (line 2)
* hhh, JJJ, mymail <jjj>:                chapter second.        (line 6)
* hhh, k:                                chapter one.           (line 2)
* hhh, k, nnn:                           chapter second.        (line 6)
* hhh, l, third:                         chapter second.        (line 6)
* hhh jjj:                               chapter one.           (line 2)

';


$result_converted{'html_text'}->{'sorted_subentries'} = '<div class="top-level-extent" id="Top">
<div class="nav-panel">
<p>
[<a href="#chapter-second" title="Index" rel="index">Index</a>]</p>
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
[<a href="#chapter-second" title="Index" rel="index">Index</a>]</p>
</div>
<h2 class="chapter" id="one"><span>1 one<a class="copiable-link" href="#one"> &para;</a></span></h2>

<a class="index-entry-id" id="index-aa-bb"></a>
<a class="index-entry-id" id="index-ab-cc"></a>
<a class="index-entry-id" id="index-aa-dd"></a>
<a class="index-entry-id" id="index-bb-cc"></a>

<a class="index-entry-id" id="index-hhh-jjj-lll"></a>
<a class="index-entry-id" id="index-hhh-jjj"></a>
<a class="index-entry-id" id="index-hhh-jjj-1"></a>
<a class="index-entry-id" id="index-hhh-k"></a>
<a class="index-entry-id" id="index-hhh-"></a>
<a class="index-entry-id" id="index-hhh"></a>
<a class="index-entry-id" id="index-hhh-jjj-lll-ppp"></a>

<hr>
</div>
<div class="chapter-level-extent" id="chapter-second">
<div class="nav-panel">
<p>
[<a href="#chapter-second" title="Index" rel="index">Index</a>]</p>
</div>
<h2 class="chapter" id="second"><span>2 second<a class="copiable-link" href="#second"> &para;</a></span></h2>
<a class="index-entry-id" id="index-hhh-jjj-lll-1"></a>
<a class="index-entry-id" id="index-hhh-1"></a>
<a class="index-entry-id" id="index-hhh-jjj-2"></a>
<a class="index-entry-id" id="index-hhh-jjj-jjj"></a>
<a class="index-entry-id" id="index-hhh-jjj-lll-2"></a>
<a class="index-entry-id" id="index-hhh-k-nnn"></a>
<a class="index-entry-id" id="index-hhh-l-third"></a>

<div class="printindex cp-printindex">
<table class="index-letters-header-printindex cp-letters-header-printindex"><tr><th>Jump to: &nbsp; </th><td><a class="summary-letter-printindex" href="#chapter-second_cp_letter-A"><b>A</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#chapter-second_cp_letter-B"><b>B</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#chapter-second_cp_letter-H"><b>H</b></a>
 &nbsp; 
</td></tr></table>
<table class="index-entries-printindex cp-entries-printindex">
<tr><th class="index-letter-header-printindex cp-letter-header-printindex" colspan="2" id="chapter-second_cp_letter-A">A</th></tr>
<tr><td class="printindex-index-entry">aa</td><td></td></tr>
<tr><td class="printindex-index-entry index-entry-level-1"><a href="#index-aa-bb">bb</a></td><td class="printindex-index-section"><a href="#chapter-one">chapter one</a></td></tr>
<tr><td class="printindex-index-entry index-entry-level-1"><a href="#index-aa-dd">dd</a></td><td class="printindex-index-section"><a href="#chapter-one">chapter one</a></td></tr>
<tr><td class="printindex-index-entry">ab</td><td></td></tr>
<tr><td class="printindex-index-entry index-entry-level-1"><a href="#index-ab-cc">cc</a></td><td class="printindex-index-section"><a href="#chapter-one">chapter one</a></td></tr>
<tr><th class="index-letter-header-printindex cp-letter-header-printindex" colspan="2" id="chapter-second_cp_letter-B">B</th></tr>
<tr><td class="printindex-index-entry">bb</td><td></td></tr>
<tr><td class="printindex-index-entry index-entry-level-1"><a href="#index-bb-cc">cc</a></td><td class="printindex-index-section"><a href="#chapter-one">chapter one</a></td></tr>
<tr><th class="index-letter-header-printindex cp-letter-header-printindex" colspan="2" id="chapter-second_cp_letter-H">H</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-hhh">hhh</a></td><td class="printindex-index-section"><a href="#chapter-one">chapter one</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-hhh-1">hhh</a></td><td class="printindex-index-section"><a href="#chapter-second">chapter second</a></td></tr>
<tr><td class="printindex-index-entry index-entry-level-1"><a href="#index-hhh-"></a></td><td class="printindex-index-section"><a href="#chapter-one">chapter one</a></td></tr>
<tr><td class="printindex-index-entry index-entry-level-1"><a href="#index-hhh-jjj">jjj</a></td><td class="printindex-index-section"><a href="#chapter-one">chapter one</a></td></tr>
<tr><td class="printindex-index-entry index-entry-level-1"><a href="#index-hhh-jjj-2">jjj</a></td><td class="printindex-index-section"><a href="#chapter-second">chapter second</a></td></tr>
<tr><td class="printindex-index-entry index-entry-level-2"><a href="#index-hhh-jjj-lll-2">lll</a></td><td class="printindex-index-section"><a href="#chapter-second">chapter second</a></td></tr>
<tr><td class="printindex-index-entry index-entry-level-2"><a href="#index-hhh-jjj-lll">lll</a></td><td class="printindex-index-section"><a href="#chapter-one">chapter one</a></td></tr>
<tr><td class="printindex-index-entry index-entry-level-2"><a href="#index-hhh-jjj-lll-1">lll</a></td><td class="printindex-index-section"><a href="#chapter-second">chapter second</a></td></tr>
<tr><td class="printindex-index-entry index-entry-level-2"><a href="#index-hhh-jjj-lll-ppp">lll, ppp</a></td><td class="printindex-index-section"><a href="#chapter-one">chapter one</a></td></tr>
<tr><td class="printindex-index-entry index-entry-level-2"><a href="#index-hhh-jjj-jjj"><a class="email" href="mailto:jjj">mymail</a></a></td><td class="printindex-index-section"><a href="#chapter-second">chapter second</a></td></tr>
<tr><td class="printindex-index-entry index-entry-level-1"><a href="#index-hhh-k">k</a></td><td class="printindex-index-section"><a href="#chapter-one">chapter one</a></td></tr>
<tr><td class="printindex-index-entry index-entry-level-2"><a href="#index-hhh-k-nnn">nnn</a></td><td class="printindex-index-section"><a href="#chapter-second">chapter second</a></td></tr>
<tr><td class="printindex-index-entry index-entry-level-1">l</td><td></td></tr>
<tr><td class="printindex-index-entry index-entry-level-2"><a href="#index-hhh-l-third">third</a></td><td class="printindex-index-section"><a href="#chapter-second">chapter second</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-hhh-jjj-1">hhh jjj</a></td><td class="printindex-index-section"><a href="#chapter-one">chapter one</a></td></tr>
</table>
<table class="index-letters-footer-printindex cp-letters-footer-printindex"><tr><th>Jump to: &nbsp; </th><td><a class="summary-letter-printindex" href="#chapter-second_cp_letter-A"><b>A</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#chapter-second_cp_letter-B"><b>B</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#chapter-second_cp_letter-H"><b>H</b></a>
 &nbsp; 
</td></tr></table>
</div>
</div>
</div>
';


$result_converted{'xml'}->{'sorted_subentries'} = '<node identifier="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">chapter one</nodenext></node>
<top><sectiontitle></sectiontitle>

</top>
<node identifier="chapter-one" spaces=" "><nodename>chapter one</nodename><nodenext automatic="on">chapter second</nodenext><nodeprev automatic="on">Top</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>one</sectiontitle>

<cindex index="cp" spaces=" "><indexterm index="cp" number="1">aa</indexterm></cindex> <subentry spaces=" ">bb</subentry>
<cindex index="cp" spaces=" "><indexterm index="cp" number="2">ab</indexterm></cindex> <subentry spaces=" ">cc</subentry>
<cindex index="cp" spaces=" "><indexterm index="cp" number="3">aa</indexterm></cindex> <subentry spaces=" ">dd</subentry>
<cindex index="cp" spaces=" "><indexterm index="cp" number="4">bb</indexterm></cindex> <subentry spaces=" ">cc</subentry>

<cindex index="cp" spaces=" "><indexterm index="cp" number="5">hhh</indexterm></cindex> <subentry spaces=" ">jjj </subentry><subentry spaces=" ">lll</subentry>
<cindex index="cp" spaces=" "><indexterm index="cp" number="6">hhh</indexterm></cindex> <subentry spaces=" ">jjj</subentry>
<cindex index="cp" spaces=" "><indexterm index="cp" number="7">hhh jjj</indexterm></cindex>
<cindex index="cp" spaces=" "><indexterm index="cp" number="8">hhh</indexterm></cindex> <subentry spaces=" ">k</subentry>
<cindex index="cp" spaces=" "><indexterm index="cp" number="9">hhh</indexterm></cindex> <subentry> </subentry>
<cindex index="cp" spaces=" "><indexterm index="cp" number="10">hhh</indexterm></cindex> 
<cindex index="cp" spaces=" "><indexterm index="cp" number="11">hhh</indexterm></cindex> <subentry spaces=" ">jjj </subentry><subentry spaces=" ">lll </subentry><subentry spaces=" ">ppp</subentry>

</chapter>
<node identifier="chapter-second" spaces=" "><nodename>chapter second</nodename><nodeprev automatic="on">chapter one</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>second</sectiontitle>
<cindex index="cp" spaces=" "><indexterm index="cp" number="12">hhh</indexterm></cindex> <subentry spaces=" ">jjj </subentry><subentry spaces=" ">lll</subentry>
<cindex index="cp" spaces=" "><indexterm index="cp" number="13">hhh</indexterm></cindex> 
<cindex index="cp" spaces=" "><indexterm index="cp" number="14"><samp>hhh</samp></indexterm></cindex> <subentry spaces=" ">jjj</subentry>
<cindex index="cp" spaces=" "><indexterm index="cp" number="15"><kbd>hhh</kbd></indexterm></cindex> <subentry spaces=" "><sc>jjj</sc> </subentry><subentry spaces=" "><email><emailaddress>jjj</emailaddress><emailname>mymail</emailname></email></subentry>
<cindex spaces=" "></cindex><subentry spaces=" ">aa</subentry>
<cindex index="cp" spaces=" "><indexterm index="cp" number="16">hhh</indexterm></cindex> <subentry spaces=" ">jjj </subentry><subentry spaces=" ">lll <sortas>A</sortas></subentry>
<cindex index="cp" spaces=" "><indexterm index="cp" number="17">hhh</indexterm></cindex> <subentry spaces=" ">k </subentry><subentry spaces=" ">nnn</subentry>
<cindex index="cp" spaces=" "><indexterm index="cp" number="18">hhh</indexterm></cindex> <subentry spaces=" ">l </subentry><subentry spaces=" ">third</subentry>

<printindex spaces=" " value="cp" line="cp"></printindex>
</chapter>
';

1;
