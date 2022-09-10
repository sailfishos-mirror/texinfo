use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'itemize_arguments'} = {
  'contents' => [
    {
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
                  'parent' => {},
                  'text' => '---'
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
                  'type' => 'empty_line_after_command'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'item ---
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
                'line_nr' => 3,
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
                'text_arg' => 'itemize'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 4,
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
            'line_nr' => 2,
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
                  'text' => 'a\'\'b\'c'
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
                  'type' => 'empty_line_after_command'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'item a\'\'b\'c
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
                      'text' => 'itemize'
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
                'text_arg' => 'itemize'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 8,
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
            'line_nr' => 6,
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
                          'text' => 'a\'\'b\'c'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'code',
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
                  'type' => 'empty_line_after_command'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'item code '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'a\'\'b\'c'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'code',
                      'contents' => [],
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
                      'text' => 'itemize'
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
                'text_arg' => 'itemize'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 12,
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
            'line_nr' => 10,
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
                  'text' => 'a``b`c'
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
                  'type' => 'empty_line_after_command'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'item a``b`c
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
                'line_nr' => 15,
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
                'text_arg' => 'itemize'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 16,
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
            'line_nr' => 14,
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
                  'text' => 'a\'"'
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
                  'type' => 'empty_line_after_command'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'item a\'"
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
                'line_nr' => 19,
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
                'text_arg' => 'itemize'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 20,
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
            'line_nr' => 18,
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
                  'text' => 'b\\<&'
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
                  'type' => 'empty_line_after_command'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'item b\\<&
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
                'line_nr' => 23,
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
                'text_arg' => 'itemize'
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
            'spaces_before_argument' => ' '
          },
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
',
          'type' => 'empty_line'
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'cmdname' => 'today',
                  'contents' => [],
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
          'cmdname' => 'itemize',
          'contents' => [
            {
              'cmdname' => 'item',
              'contents' => [
                {
                  'parent' => {},
                  'text' => ' ',
                  'type' => 'empty_line_after_command'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'item today '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'today',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 27,
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
              'extra' => {
                'item_number' => 1
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 27,
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
                'text_arg' => 'itemize'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 28,
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
          'args' => [
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
                  'cmdname' => 'aa',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 30,
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
                          'args' => [
                            {
                              'contents' => [],
                              'parent' => {},
                              'type' => 'brace_command_arg'
                            }
                          ],
                          'cmdname' => 'aa',
                          'contents' => [],
                          'parent' => {},
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 30,
                            'macro' => ''
                          }
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'sc',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 30,
                    'macro' => ''
                  }
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
                  'type' => 'empty_line_after_command'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'item aa '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'aa',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 31,
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
                              'args' => [
                                {
                                  'contents' => [],
                                  'parent' => {},
                                  'type' => 'brace_command_arg'
                                }
                              ],
                              'cmdname' => 'aa',
                              'contents' => [],
                              'parent' => {},
                              'source_info' => {
                                'file_name' => '',
                                'line_nr' => 31,
                                'macro' => ''
                              }
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'sc',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 31,
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
              'extra' => {
                'item_number' => 1
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 31,
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
                'text_arg' => 'itemize'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 32,
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
            'line_nr' => 30,
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
                      'contents' => [],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'tie',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 34,
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
                  'type' => 'empty_line_after_command'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'item tie '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'tie',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 35,
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
              'extra' => {
                'item_number' => 1
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 35,
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
                'text_arg' => 'itemize'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 36,
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
            'line_nr' => 34,
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
                      'contents' => [],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'tie',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 38,
                    'macro' => ''
                  }
                },
                {
                  'parent' => {},
                  'text' => ' a'
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
                  'type' => 'empty_line_after_command'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'item tie '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'tie',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 39,
                        'macro' => ''
                      }
                    },
                    {
                      'parent' => {},
                      'text' => ' a
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
                'line_nr' => 39,
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
                'text_arg' => 'itemize'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 40,
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
            'line_nr' => 38,
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
                  'cmdname' => 'atchar',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 42,
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
                  'type' => 'empty_line_after_command'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'item atchar
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
                'line_nr' => 43,
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
                'text_arg' => 'itemize'
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
            'command_as_argument' => {},
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 42,
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
                      'contents' => [],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'atchar',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 46,
                    'macro' => ''
                  }
                },
                {
                  'parent' => {},
                  'text' => ' a'
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
                  'type' => 'empty_line_after_command'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'item atchar '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'atchar',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 47,
                        'macro' => ''
                      }
                    },
                    {
                      'parent' => {},
                      'text' => ' a
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
                'line_nr' => 47,
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
                'text_arg' => 'itemize'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 48,
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
            'line_nr' => 46,
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
                  'cmdname' => '*',
                  'parent' => {}
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
                  'type' => 'empty_line_after_command'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'item * '
                    },
                    {
                      'cmdname' => '*',
                      'parent' => {}
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
              'extra' => {
                'item_number' => 1
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 51,
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
                'text_arg' => 'itemize'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 52,
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
            'line_nr' => 50,
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
                  'cmdname' => '{',
                  'parent' => {}
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
                  'type' => 'empty_line_after_command'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'item '
                    },
                    {
                      'cmdname' => '{',
                      'parent' => {}
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
              'extra' => {
                'item_number' => 1
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 55,
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
                'text_arg' => 'itemize'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 56,
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
            'line_nr' => 54,
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
                      'contents' => [],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'registeredsymbol',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 58,
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
                  'type' => 'empty_line_after_command'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'item registeredsymbol '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'registeredsymbol',
                      'contents' => [],
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
                'line_nr' => 59,
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
                'text_arg' => 'itemize'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 60,
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
            'line_nr' => 58,
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
                      'contents' => [],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'registeredsymbol',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 62,
                    'macro' => ''
                  }
                },
                {
                  'parent' => {},
                  'text' => ' a'
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
                  'type' => 'empty_line_after_command'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'item registeredsymbol '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'registeredsymbol',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 63,
                        'macro' => ''
                      }
                    },
                    {
                      'parent' => {},
                      'text' => ' a
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
                'line_nr' => 63,
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
                'text_arg' => 'itemize'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 64,
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
            'line_nr' => 62,
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
                      'contents' => [],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'enddots',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 66,
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
                  'type' => 'empty_line_after_command'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'item dots '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'enddots',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 67,
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
              'extra' => {
                'item_number' => 1
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 67,
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
                'text_arg' => 'itemize'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 68,
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
            'line_nr' => 66,
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
                      'contents' => [],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'enddots',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 70,
                    'macro' => ''
                  }
                },
                {
                  'parent' => {},
                  'text' => ' a'
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
                  'type' => 'empty_line_after_command'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'item dots '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'enddots',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 71,
                        'macro' => ''
                      }
                    },
                    {
                      'parent' => {},
                      'text' => ' a
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
                'line_nr' => 71,
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
                'text_arg' => 'itemize'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 72,
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
            'line_nr' => 70,
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
                  'cmdname' => '^',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 74,
                    'macro' => ''
                  }
                },
                {
                  'parent' => {},
                  'text' => 'e '
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
                                  'text' => 'e'
                                }
                              ],
                              'parent' => {},
                              'type' => 'following_arg'
                            }
                          ],
                          'cmdname' => '^',
                          'contents' => [],
                          'parent' => {},
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 74,
                            'macro' => ''
                          }
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'sc',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 74,
                    'macro' => ''
                  }
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
                  'type' => 'empty_line_after_command'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'item e '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'e'
                            }
                          ],
                          'parent' => {},
                          'type' => 'following_arg'
                        }
                      ],
                      'cmdname' => '^',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 75,
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
                              'args' => [
                                {
                                  'contents' => [
                                    {
                                      'parent' => {},
                                      'text' => 'e'
                                    }
                                  ],
                                  'parent' => {},
                                  'type' => 'following_arg'
                                }
                              ],
                              'cmdname' => '^',
                              'contents' => [],
                              'parent' => {},
                              'source_info' => {
                                'file_name' => '',
                                'line_nr' => 75,
                                'macro' => ''
                              }
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'sc',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 75,
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
              'extra' => {
                'item_number' => 1
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 75,
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
                'text_arg' => 'itemize'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 76,
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
            'line_nr' => 74,
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
                  'cmdname' => '^',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 78,
                    'macro' => ''
                  }
                },
                {
                  'parent' => {},
                  'text' => 'E '
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
                                  'text' => 'E'
                                }
                              ],
                              'parent' => {},
                              'type' => 'following_arg'
                            }
                          ],
                          'cmdname' => '^',
                          'contents' => [],
                          'parent' => {},
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 78,
                            'macro' => ''
                          }
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'sc',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 78,
                    'macro' => ''
                  }
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
                  'type' => 'empty_line_after_command'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'item E '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'E'
                            }
                          ],
                          'parent' => {},
                          'type' => 'following_arg'
                        }
                      ],
                      'cmdname' => '^',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 79,
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
                              'args' => [
                                {
                                  'contents' => [
                                    {
                                      'parent' => {},
                                      'text' => 'E'
                                    }
                                  ],
                                  'parent' => {},
                                  'type' => 'following_arg'
                                }
                              ],
                              'cmdname' => '^',
                              'contents' => [],
                              'parent' => {},
                              'source_info' => {
                                'file_name' => '',
                                'line_nr' => 79,
                                'macro' => ''
                              }
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'sc',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 79,
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
              'extra' => {
                'item_number' => 1
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 79,
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
                'text_arg' => 'itemize'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 80,
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
            'line_nr' => 78,
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
                          'args' => [
                            {
                              'contents' => [
                                {
                                  'parent' => {},
                                  'text' => 'i'
                                }
                              ],
                              'parent' => {},
                              'type' => 'brace_command_arg'
                            }
                          ],
                          'cmdname' => 'dotless',
                          'contents' => [],
                          'parent' => {},
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 82,
                            'macro' => ''
                          }
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => '~',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 82,
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
                          'text' => 'i'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'dotless',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 82,
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
                          'args' => [
                            {
                              'contents' => [
                                {
                                  'args' => [
                                    {
                                      'contents' => [
                                        {
                                          'parent' => {},
                                          'text' => 'i'
                                        }
                                      ],
                                      'parent' => {},
                                      'type' => 'brace_command_arg'
                                    }
                                  ],
                                  'cmdname' => 'dotless',
                                  'contents' => [],
                                  'parent' => {},
                                  'source_info' => {
                                    'file_name' => '',
                                    'line_nr' => 82,
                                    'macro' => ''
                                  }
                                }
                              ],
                              'parent' => {},
                              'type' => 'brace_command_arg'
                            }
                          ],
                          'cmdname' => '~',
                          'contents' => [],
                          'parent' => {},
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 82,
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
                                  'text' => 'i'
                                }
                              ],
                              'parent' => {},
                              'type' => 'brace_command_arg'
                            }
                          ],
                          'cmdname' => 'dotless',
                          'contents' => [],
                          'parent' => {},
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 82,
                            'macro' => ''
                          }
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'sc',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 82,
                    'macro' => ''
                  }
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
                  'type' => 'empty_line_after_command'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'item dotless '
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
                                      'text' => 'i'
                                    }
                                  ],
                                  'parent' => {},
                                  'type' => 'brace_command_arg'
                                }
                              ],
                              'cmdname' => 'dotless',
                              'contents' => [],
                              'parent' => {},
                              'source_info' => {
                                'file_name' => '',
                                'line_nr' => 83,
                                'macro' => ''
                              }
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => '~',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 83,
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
                              'text' => 'i'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'dotless',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 83,
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
                              'args' => [
                                {
                                  'contents' => [
                                    {
                                      'args' => [
                                        {
                                          'contents' => [
                                            {
                                              'parent' => {},
                                              'text' => 'i'
                                            }
                                          ],
                                          'parent' => {},
                                          'type' => 'brace_command_arg'
                                        }
                                      ],
                                      'cmdname' => 'dotless',
                                      'contents' => [],
                                      'parent' => {},
                                      'source_info' => {
                                        'file_name' => '',
                                        'line_nr' => 83,
                                        'macro' => ''
                                      }
                                    }
                                  ],
                                  'parent' => {},
                                  'type' => 'brace_command_arg'
                                }
                              ],
                              'cmdname' => '~',
                              'contents' => [],
                              'parent' => {},
                              'source_info' => {
                                'file_name' => '',
                                'line_nr' => 83,
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
                                      'text' => 'i'
                                    }
                                  ],
                                  'parent' => {},
                                  'type' => 'brace_command_arg'
                                }
                              ],
                              'cmdname' => 'dotless',
                              'contents' => [],
                              'parent' => {},
                              'source_info' => {
                                'file_name' => '',
                                'line_nr' => 83,
                                'macro' => ''
                              }
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'sc',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 83,
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
              'extra' => {
                'item_number' => 1
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 83,
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
                'text_arg' => 'itemize'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 84,
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
            'line_nr' => 82,
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
                          'text' => 'r'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'udotaccent',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 86,
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
                          'args' => [
                            {
                              'contents' => [
                                {
                                  'parent' => {},
                                  'text' => 'r'
                                }
                              ],
                              'parent' => {},
                              'type' => 'brace_command_arg'
                            }
                          ],
                          'cmdname' => '\'',
                          'contents' => [],
                          'parent' => {},
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 86,
                            'macro' => ''
                          }
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'v',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 86,
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
                          'args' => [
                            {
                              'contents' => [
                                {
                                  'parent' => {},
                                  'text' => 'r'
                                }
                              ],
                              'parent' => {},
                              'type' => 'brace_command_arg'
                            }
                          ],
                          'cmdname' => 'udotaccent',
                          'contents' => [],
                          'parent' => {},
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 86,
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
                                  'args' => [
                                    {
                                      'contents' => [
                                        {
                                          'parent' => {},
                                          'text' => 'r'
                                        }
                                      ],
                                      'parent' => {},
                                      'type' => 'brace_command_arg'
                                    }
                                  ],
                                  'cmdname' => '\'',
                                  'contents' => [],
                                  'parent' => {},
                                  'source_info' => {
                                    'file_name' => '',
                                    'line_nr' => 86,
                                    'macro' => ''
                                  }
                                }
                              ],
                              'parent' => {},
                              'type' => 'brace_command_arg'
                            }
                          ],
                          'cmdname' => 'v',
                          'contents' => [],
                          'parent' => {},
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 86,
                            'macro' => ''
                          }
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'sc',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 86,
                    'macro' => ''
                  }
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
                  'type' => 'empty_line_after_command'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'item complex a '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'r'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'udotaccent',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 87,
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
                              'args' => [
                                {
                                  'contents' => [
                                    {
                                      'parent' => {},
                                      'text' => 'r'
                                    }
                                  ],
                                  'parent' => {},
                                  'type' => 'brace_command_arg'
                                }
                              ],
                              'cmdname' => '\'',
                              'contents' => [],
                              'parent' => {},
                              'source_info' => {
                                'file_name' => '',
                                'line_nr' => 87,
                                'macro' => ''
                              }
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'v',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 87,
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
                              'args' => [
                                {
                                  'contents' => [
                                    {
                                      'parent' => {},
                                      'text' => 'r'
                                    }
                                  ],
                                  'parent' => {},
                                  'type' => 'brace_command_arg'
                                }
                              ],
                              'cmdname' => 'udotaccent',
                              'contents' => [],
                              'parent' => {},
                              'source_info' => {
                                'file_name' => '',
                                'line_nr' => 87,
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
                                      'args' => [
                                        {
                                          'contents' => [
                                            {
                                              'parent' => {},
                                              'text' => 'r'
                                            }
                                          ],
                                          'parent' => {},
                                          'type' => 'brace_command_arg'
                                        }
                                      ],
                                      'cmdname' => '\'',
                                      'contents' => [],
                                      'parent' => {},
                                      'source_info' => {
                                        'file_name' => '',
                                        'line_nr' => 87,
                                        'macro' => ''
                                      }
                                    }
                                  ],
                                  'parent' => {},
                                  'type' => 'brace_command_arg'
                                }
                              ],
                              'cmdname' => 'v',
                              'contents' => [],
                              'parent' => {},
                              'source_info' => {
                                'file_name' => '',
                                'line_nr' => 87,
                                'macro' => ''
                              }
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'sc',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 87,
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
              'extra' => {
                'item_number' => 1
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 87,
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
                'text_arg' => 'itemize'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 88,
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
            'line_nr' => 86,
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
                          'args' => [
                            {
                              'contents' => [
                                {
                                  'args' => [
                                    {
                                      'contents' => [
                                        {
                                          'parent' => {},
                                          'text' => 'n'
                                        }
                                      ],
                                      'parent' => {},
                                      'type' => 'brace_command_arg'
                                    }
                                  ],
                                  'cmdname' => '~',
                                  'contents' => [],
                                  'parent' => {},
                                  'source_info' => {
                                    'file_name' => '',
                                    'line_nr' => 90,
                                    'macro' => ''
                                  }
                                }
                              ],
                              'parent' => {},
                              'type' => 'brace_command_arg'
                            }
                          ],
                          'cmdname' => ',',
                          'contents' => [],
                          'parent' => {},
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 90,
                            'macro' => ''
                          }
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => '=',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 90,
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
                          'text' => ' '
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
                                          'args' => [
                                            {
                                              'contents' => [
                                                {
                                                  'parent' => {},
                                                  'text' => 'n'
                                                }
                                              ],
                                              'parent' => {},
                                              'type' => 'brace_command_arg'
                                            }
                                          ],
                                          'cmdname' => '~',
                                          'contents' => [],
                                          'parent' => {},
                                          'source_info' => {
                                            'file_name' => '',
                                            'line_nr' => 90,
                                            'macro' => ''
                                          }
                                        }
                                      ],
                                      'parent' => {},
                                      'type' => 'brace_command_arg'
                                    }
                                  ],
                                  'cmdname' => ',',
                                  'contents' => [],
                                  'parent' => {},
                                  'source_info' => {
                                    'file_name' => '',
                                    'line_nr' => 90,
                                    'macro' => ''
                                  }
                                }
                              ],
                              'parent' => {},
                              'type' => 'brace_command_arg'
                            }
                          ],
                          'cmdname' => '=',
                          'contents' => [],
                          'parent' => {},
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 90,
                            'macro' => ''
                          }
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'sc',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 90,
                    'macro' => ''
                  }
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
                  'type' => 'empty_line_after_command'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'item complex n '
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
                                      'args' => [
                                        {
                                          'contents' => [
                                            {
                                              'parent' => {},
                                              'text' => 'n'
                                            }
                                          ],
                                          'parent' => {},
                                          'type' => 'brace_command_arg'
                                        }
                                      ],
                                      'cmdname' => '~',
                                      'contents' => [],
                                      'parent' => {},
                                      'source_info' => {
                                        'file_name' => '',
                                        'line_nr' => 91,
                                        'macro' => ''
                                      }
                                    }
                                  ],
                                  'parent' => {},
                                  'type' => 'brace_command_arg'
                                }
                              ],
                              'cmdname' => ',',
                              'contents' => [],
                              'parent' => {},
                              'source_info' => {
                                'file_name' => '',
                                'line_nr' => 91,
                                'macro' => ''
                              }
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => '=',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 91,
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
                              'text' => ' '
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
                                              'args' => [
                                                {
                                                  'contents' => [
                                                    {
                                                      'parent' => {},
                                                      'text' => 'n'
                                                    }
                                                  ],
                                                  'parent' => {},
                                                  'type' => 'brace_command_arg'
                                                }
                                              ],
                                              'cmdname' => '~',
                                              'contents' => [],
                                              'parent' => {},
                                              'source_info' => {
                                                'file_name' => '',
                                                'line_nr' => 91,
                                                'macro' => ''
                                              }
                                            }
                                          ],
                                          'parent' => {},
                                          'type' => 'brace_command_arg'
                                        }
                                      ],
                                      'cmdname' => ',',
                                      'contents' => [],
                                      'parent' => {},
                                      'source_info' => {
                                        'file_name' => '',
                                        'line_nr' => 91,
                                        'macro' => ''
                                      }
                                    }
                                  ],
                                  'parent' => {},
                                  'type' => 'brace_command_arg'
                                }
                              ],
                              'cmdname' => '=',
                              'contents' => [],
                              'parent' => {},
                              'source_info' => {
                                'file_name' => '',
                                'line_nr' => 91,
                                'macro' => ''
                              }
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'sc',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 91,
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
              'extra' => {
                'item_number' => 1
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 91,
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
                'text_arg' => 'itemize'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 92,
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
            'line_nr' => 90,
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
                  'cmdname' => 'asis',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 94,
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
                  'type' => 'empty_line_after_command'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'item asis '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'asis',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 95,
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
              'extra' => {
                'item_number' => 1
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 95,
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
                'text_arg' => 'itemize'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 96,
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
            'line_nr' => 94,
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
                      'contents' => [],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'click',
                  'contents' => [],
                  'extra' => {
                    'clickstyle' => 'arrow'
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 98,
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
                  'type' => 'empty_line_after_command'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'item click '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'click',
                      'contents' => [],
                      'extra' => {
                        'clickstyle' => 'arrow'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 99,
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
              'extra' => {
                'item_number' => 1
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 99,
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
                'text_arg' => 'itemize'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 100,
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
            'line_nr' => 98,
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
                      'contents' => [],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'click',
                  'contents' => [],
                  'extra' => {
                    'clickstyle' => 'arrow'
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 102,
                    'macro' => ''
                  }
                },
                {
                  'parent' => {},
                  'text' => ' a'
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
                  'type' => 'empty_line_after_command'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'item click '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'click',
                      'contents' => [],
                      'extra' => {
                        'clickstyle' => 'arrow'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 103,
                        'macro' => ''
                      }
                    },
                    {
                      'parent' => {},
                      'text' => ' a
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
                'line_nr' => 103,
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
                'text_arg' => 'itemize'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 104,
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
            'line_nr' => 102,
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
              'text' => '@result',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'clickstyle',
          'extra' => {
            'arg_line' => ' @result
',
            'misc_args' => [
              '@result'
            ]
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 106,
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
                      'contents' => [],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'click',
                  'contents' => [],
                  'extra' => {
                    'clickstyle' => 'result'
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 108,
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
                  'type' => 'empty_line_after_command'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'item result click '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'click',
                      'contents' => [],
                      'extra' => {
                        'clickstyle' => 'result'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 109,
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
              'extra' => {
                'item_number' => 1
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 109,
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
                'text_arg' => 'itemize'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 110,
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
            'line_nr' => 108,
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
                      'contents' => [],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'click',
                  'contents' => [],
                  'extra' => {
                    'clickstyle' => 'result'
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 112,
                    'macro' => ''
                  }
                },
                {
                  'parent' => {},
                  'text' => ' a'
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
                  'type' => 'empty_line_after_command'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'item result click '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'click',
                      'contents' => [],
                      'extra' => {
                        'clickstyle' => 'result'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 113,
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
              'extra' => {
                'item_number' => 1
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 113,
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
                'text_arg' => 'itemize'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 114,
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
            'line_nr' => 112,
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
                    'line_nr' => 116,
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
                  'type' => 'empty_line_after_command'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'item error '
                    },
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
                        'line_nr' => 117,
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
              'extra' => {
                'item_number' => 1
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 117,
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
                'text_arg' => 'itemize'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 118,
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
            'line_nr' => 116,
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
                    'line_nr' => 120,
                    'macro' => ''
                  }
                },
                {
                  'parent' => {},
                  'text' => ' a'
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
                  'type' => 'empty_line_after_command'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'item error '
                    },
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
                        'line_nr' => 121,
                        'macro' => ''
                      }
                    },
                    {
                      'parent' => {},
                      'text' => ' a
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
                'line_nr' => 121,
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
                'text_arg' => 'itemize'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 122,
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
            'line_nr' => 120,
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
            'line_nr' => 124,
            'macro' => ''
          }
        },
        {
          'args' => [
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
                    'line_nr' => 125,
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
                  'type' => 'empty_line_after_command'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'item fr error '
                    },
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
                        'line_nr' => 126,
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
              'extra' => {
                'item_number' => 1
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 126,
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
                'text_arg' => 'itemize'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 127,
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
            'line_nr' => 125,
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
                    'line_nr' => 129,
                    'macro' => ''
                  }
                },
                {
                  'parent' => {},
                  'text' => ' a'
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
                  'type' => 'empty_line_after_command'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'item fr error '
                    },
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
                        'line_nr' => 130,
                        'macro' => ''
                      }
                    },
                    {
                      'parent' => {},
                      'text' => ' a
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
                'line_nr' => 130,
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
                'text_arg' => 'itemize'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 131,
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
            'line_nr' => 129,
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
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[3]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[3];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[3]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[3]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[3];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[3]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[3];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[5]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[5]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[5]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[5]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[5]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[5];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[5]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[5]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[5];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[5]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[5]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[5]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[5]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[5]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[5];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[6]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[7]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[7]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[7]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[7];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[7]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[7]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[7];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[7]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[7]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[7]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[7]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[7]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[7];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[7]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[8]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[9]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[9]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[9]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[9];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[9]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[9]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[9]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[9]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[9]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[9]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[9]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[9];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[9]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[9]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[9]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[9]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[9]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[9];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[9]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[10]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[11]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[11]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[11]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[11];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[11]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[11]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[11]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[11]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[11]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[11]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[11]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[11];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[11]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[11]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[11]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[11]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[11]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[11];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[11]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[12]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[13]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[13]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[13]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[13];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[13]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[13]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[13]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[13]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[13]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[13]{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[13]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[13]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[13]{'contents'}[0]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[13]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[13]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[13]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[13]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[13];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[13]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[13]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[13]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[13]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[13]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[13];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[13]{'extra'}{'command_as_argument'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[13]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[13]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[14]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[15]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[15]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[15]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[15]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[15]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[15]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[15]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[15]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[15]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[15]{'args'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[15]{'args'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[15]{'args'}[0]{'contents'}[2];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[15]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[15]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[15]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[15];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[15]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[15]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[15]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[15]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[15]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[15]{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[15]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[15]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[15]{'contents'}[0]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[15]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[15]{'contents'}[0]{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[15]{'contents'}[0]{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[15]{'contents'}[0]{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[15]{'contents'}[0]{'contents'}[1]{'contents'}[3]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[15]{'contents'}[0]{'contents'}[1]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[15]{'contents'}[0]{'contents'}[1]{'contents'}[3];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[15]{'contents'}[0]{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[15]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[15]{'contents'}[0]{'contents'}[1]{'contents'}[4]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[15]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[15]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[15]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[15]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[15];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[15]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[15]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[15]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[15]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[15]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[15];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[15]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[16]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[17]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[17]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[17]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[17]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[17]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[17];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[17]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[17]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[17]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[17]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[17]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[17]{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[17]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[17]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[17]{'contents'}[0]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[17]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[17]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[17]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[17]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[17];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[17]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[17]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[17]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[17]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[17]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[17];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[17]{'extra'}{'command_as_argument'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[17]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[17]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[18]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[19]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[19]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[19]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[19]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[19]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[19]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[19]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[19];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[19]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[19]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[19]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[19]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[19]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[19]{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[19]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[19]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[19]{'contents'}[0]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[19]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[19]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[19]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[19]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[19];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[19]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[19]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[19]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[19]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[19]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[19];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[19]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[20]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[21]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[21]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[21]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[21];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[21]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[21]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[21]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[21]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[21]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[21]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[21]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[21];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[21]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[21]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[21]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[21]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[21]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[21];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[21]{'extra'}{'command_as_argument'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[21]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[21]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[22]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[23]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[23]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[23]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[23]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[23]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[23]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[23]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[23];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[23]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[23]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[23]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[23]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[23]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[23]{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[23]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[23]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[23]{'contents'}[0]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[23]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[23]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[23]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[23]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[23];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[23]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[23]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[23]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[23]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[23]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[23];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[23]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[24]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[25]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[25]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[25]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[25];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[25]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[25]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[25]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[25]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[25]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[25]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[25]{'contents'}[0]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[25]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[25]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[25]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[25]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[25];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[25]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[25]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[25]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[25]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[25]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[25];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[25]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[26]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[27]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[27]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[27]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[27];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[27]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[27]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[27]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[27]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[27]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[27]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[27]{'contents'}[0]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[27]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[27]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[27]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[27]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[27];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[27]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[27]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[27]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[27]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[27]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[27];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[27]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[28]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[29]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[29]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[29]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[29]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[29]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[29];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[29]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[29]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[29]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[29]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[29]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[29]{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[29]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[29]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[29]{'contents'}[0]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[29]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[29]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[29]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[29]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[29];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[29]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[29]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[29]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[29]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[29]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[29];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[29]{'extra'}{'command_as_argument'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[29]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[29]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[30]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[31]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[31]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[31]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[31]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[31]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[31]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[31]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[31];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[31]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[31]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[31]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[31]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[31]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[31]{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[31]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[31]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[31]{'contents'}[0]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[31]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[31]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[31]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[31]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[31];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[31]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[31]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[31]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[31]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[31]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[31];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[31]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[32]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[33]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[33]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[33]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[33]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[33]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[33];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[33]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[33]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[33]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[33]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[33]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[33]{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[33]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[33]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[33]{'contents'}[0]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[33]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[33]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[33]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[33]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[33];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[33]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[33]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[33]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[33]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[33]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[33];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[33]{'extra'}{'command_as_argument'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[33]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[33]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[34]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[35]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[35]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[35]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[35]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[35]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[35]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[35]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[35];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[35]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[35]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[35]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[35]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[35]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[35]{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[35]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[35]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[35]{'contents'}[0]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[35]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[35]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[35]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[35]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[35];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[35]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[35]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[35]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[35]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[35]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[35];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[35]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[36]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[37]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[37]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[37]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[37]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[37]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[37]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[37]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[37]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[37]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[37]{'args'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[37]{'args'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[37]{'args'}[0]{'contents'}[2];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[37]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[37]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[37]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[37];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[37]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[37]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[37]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[37]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[37]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[37]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[37]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[37]{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[37]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[37]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[37]{'contents'}[0]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[37]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[37]{'contents'}[0]{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[37]{'contents'}[0]{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[37]{'contents'}[0]{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[37]{'contents'}[0]{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[37]{'contents'}[0]{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[37]{'contents'}[0]{'contents'}[1]{'contents'}[3]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[37]{'contents'}[0]{'contents'}[1]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[37]{'contents'}[0]{'contents'}[1]{'contents'}[3];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[37]{'contents'}[0]{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[37]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[37]{'contents'}[0]{'contents'}[1]{'contents'}[4]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[37]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[37]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[37]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[37]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[37];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[37]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[37]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[37]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[37]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[37]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[37];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[37]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[38]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[39]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[39]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[39]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[39]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[39]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[39]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[39]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[39]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[39]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[39]{'args'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[39]{'args'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[39]{'args'}[0]{'contents'}[2];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[39]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[39]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[39]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[39];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[39]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[39]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[39]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[39]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[39]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[39]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[39]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[39]{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[39]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[39]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[39]{'contents'}[0]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[39]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[39]{'contents'}[0]{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[39]{'contents'}[0]{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[39]{'contents'}[0]{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[39]{'contents'}[0]{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[39]{'contents'}[0]{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[39]{'contents'}[0]{'contents'}[1]{'contents'}[3]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[39]{'contents'}[0]{'contents'}[1]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[39]{'contents'}[0]{'contents'}[1]{'contents'}[3];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[39]{'contents'}[0]{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[39]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[39]{'contents'}[0]{'contents'}[1]{'contents'}[4]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[39]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[39]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[39]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[39]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[39];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[39]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[39]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[39]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[39]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[39]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[39];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[39]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[40]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'args'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'args'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'args'}[0]{'contents'}[2];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'args'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'args'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[2];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'args'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'args'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'args'}[0]{'contents'}[4];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'contents'}[0]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'contents'}[0]{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'contents'}[0]{'contents'}[1]{'contents'}[3]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'contents'}[0]{'contents'}[1]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'contents'}[0]{'contents'}[1]{'contents'}[3];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'contents'}[0]{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'contents'}[0]{'contents'}[1]{'contents'}[4]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'contents'}[0]{'contents'}[1]{'contents'}[5]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'contents'}[0]{'contents'}[1]{'contents'}[5]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'contents'}[0]{'contents'}[1]{'contents'}[5]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'contents'}[0]{'contents'}[1]{'contents'}[5]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'contents'}[0]{'contents'}[1]{'contents'}[5]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'contents'}[0]{'contents'}[1]{'contents'}[5]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'contents'}[0]{'contents'}[1]{'contents'}[5]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'contents'}[0]{'contents'}[1]{'contents'}[5]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'contents'}[0]{'contents'}[1]{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'contents'}[0]{'contents'}[1]{'contents'}[5]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'contents'}[0]{'contents'}[1]{'contents'}[5]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'contents'}[0]{'contents'}[1]{'contents'}[5]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'contents'}[0]{'contents'}[1]{'contents'}[5]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'contents'}[0]{'contents'}[1]{'contents'}[5]{'args'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'contents'}[0]{'contents'}[1]{'contents'}[5]{'args'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'contents'}[0]{'contents'}[1]{'contents'}[5]{'args'}[0]{'contents'}[2];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'contents'}[0]{'contents'}[1]{'contents'}[5]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'contents'}[0]{'contents'}[1]{'contents'}[5]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'contents'}[0]{'contents'}[1]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'contents'}[0]{'contents'}[1]{'contents'}[5];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'contents'}[0]{'contents'}[1]{'contents'}[5]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'contents'}[0]{'contents'}[1]{'contents'}[6]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[41]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[42]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'args'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'args'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'args'}[0]{'contents'}[2];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'args'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'args'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[2];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'args'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'args'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'args'}[0]{'contents'}[4];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'contents'}[0]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'contents'}[0]{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'contents'}[0]{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'contents'}[0]{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'contents'}[0]{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'contents'}[0]{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'contents'}[0]{'contents'}[1]{'contents'}[3]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'contents'}[0]{'contents'}[1]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'contents'}[0]{'contents'}[1]{'contents'}[3];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'contents'}[0]{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'contents'}[0]{'contents'}[1]{'contents'}[4]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'contents'}[0]{'contents'}[1]{'contents'}[5]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'contents'}[0]{'contents'}[1]{'contents'}[5]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'contents'}[0]{'contents'}[1]{'contents'}[5]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'contents'}[0]{'contents'}[1]{'contents'}[5]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'contents'}[0]{'contents'}[1]{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'contents'}[0]{'contents'}[1]{'contents'}[5]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'contents'}[0]{'contents'}[1]{'contents'}[5]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'contents'}[0]{'contents'}[1]{'contents'}[5]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'contents'}[0]{'contents'}[1]{'contents'}[5]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'contents'}[0]{'contents'}[1]{'contents'}[5]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'contents'}[0]{'contents'}[1]{'contents'}[5]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'contents'}[0]{'contents'}[1]{'contents'}[5]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'contents'}[0]{'contents'}[1]{'contents'}[5]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'contents'}[0]{'contents'}[1]{'contents'}[5]{'args'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'contents'}[0]{'contents'}[1]{'contents'}[5]{'args'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'contents'}[0]{'contents'}[1]{'contents'}[5]{'args'}[0]{'contents'}[2];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'contents'}[0]{'contents'}[1]{'contents'}[5]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'contents'}[0]{'contents'}[1]{'contents'}[5]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'contents'}[0]{'contents'}[1]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'contents'}[0]{'contents'}[1]{'contents'}[5];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'contents'}[0]{'contents'}[1]{'contents'}[5]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'contents'}[0]{'contents'}[1]{'contents'}[6]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[43]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[44]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45]{'args'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45]{'args'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45]{'args'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45]{'args'}[0]{'contents'}[2];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45]{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45]{'contents'}[0]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45]{'contents'}[0]{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45]{'contents'}[0]{'contents'}[1]{'contents'}[3]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45]{'contents'}[0]{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45]{'contents'}[0]{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45]{'contents'}[0]{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45]{'contents'}[0]{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45]{'contents'}[0]{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45]{'contents'}[0]{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45]{'contents'}[0]{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45]{'contents'}[0]{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45]{'contents'}[0]{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45]{'contents'}[0]{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45]{'contents'}[0]{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45]{'contents'}[0]{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45]{'contents'}[0]{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45]{'contents'}[0]{'contents'}[1]{'contents'}[3]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45]{'contents'}[0]{'contents'}[1]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45]{'contents'}[0]{'contents'}[1]{'contents'}[3];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45]{'contents'}[0]{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45]{'contents'}[0]{'contents'}[1]{'contents'}[4]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[45]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[46]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[47]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[47]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[47]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[47];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[47]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[47]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[47]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[47]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[47]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[47]{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[47]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[47]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[47]{'contents'}[0]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[47]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[47]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[47]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[47]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[47];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[47]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[47]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[47]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[47]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[47]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[47];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[47]{'extra'}{'command_as_argument'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[47]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[47]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[48]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[49]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[49]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[49]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[49]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[49]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[49];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[49]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[49]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[49]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[49]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[49]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[49]{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[49]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[49]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[49]{'contents'}[0]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[49]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[49]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[49]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[49]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[49];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[49]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[49]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[49]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[49]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[49]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[49];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[49]{'extra'}{'command_as_argument'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[49]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[49]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[50]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[51]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[51]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[51]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[51]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[51]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[51]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[51]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[51];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[51]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[51]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[51]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[51]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[51]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[51]{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[51]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[51]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[51]{'contents'}[0]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[51]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[51]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[51]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[51]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[51];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[51]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[51]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[51]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[51]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[51]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[51];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[51]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[52]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[53]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[53];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[53]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[54]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[55]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[55]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[55]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[55]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[55]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[55];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[55]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[55]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[55]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[55]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[55]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[55]{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[55]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[55]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[55]{'contents'}[0]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[55]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[55]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[55]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[55]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[55];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[55]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[55]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[55]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[55]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[55]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[55];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[55]{'extra'}{'command_as_argument'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[55]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[55]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[56]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[57]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[57]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[57]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[57]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[57]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[57]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[57]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[57];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[57]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[57]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[57]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[57]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[57]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[57]{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[57]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[57]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[57]{'contents'}[0]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[57]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[57]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[57]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[57]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[57];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[57]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[57]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[57]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[57]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[57]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[57];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[57]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[58]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[59]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[59]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[59]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[59]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[59]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[59];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[59]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[59]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[59]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[59]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[59]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[59]{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[59]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[59]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[59]{'contents'}[0]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[59]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[59]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[59]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[59]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[59];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[59]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[59]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[59]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[59]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[59]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[59];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[59]{'extra'}{'command_as_argument'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[59]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[59]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[60]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[61]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[61]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[61]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[61]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[61]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[61]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[61]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[61];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[61]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[61]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[61]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[61]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[61]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[61]{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[61]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[61]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[61]{'contents'}[0]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[61]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[61]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[61]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[61]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[61];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[61]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[61]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[61]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[61]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[61]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[61];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[61]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[62]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[63]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[63]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[63]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[63];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[63]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[64]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[64]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[64]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[64]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[64]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[64];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[64]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[64]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[64]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[64]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[64]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[64]{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[64]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[64]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[64]{'contents'}[0]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[64]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[64]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[64]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[64]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[64];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[64]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[64]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[64]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[64]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[64]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[64];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[64]{'extra'}{'command_as_argument'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[64]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[64]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[65]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[66]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[66]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[66]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[66]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[66]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[66]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[66]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[66];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[66]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[66]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[66]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[66]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[66]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[66]{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[66]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[66]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[66]{'contents'}[0]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[66]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[66]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[66]{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[66]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[66];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[66]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[66]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[66]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[66]{'contents'}[1];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[66]{'contents'}[1]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[66];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[66]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'contents'}[67]{'parent'} = $result_trees{'itemize_arguments'}{'contents'}[0];
$result_trees{'itemize_arguments'}{'contents'}[0]{'parent'} = $result_trees{'itemize_arguments'};

$result_texis{'itemize_arguments'} = '
@itemize ---
@item item ---
@end itemize

@itemize a\'\'b\'c
@item item a\'\'b\'c
@end itemize

@itemize @code{a\'\'b\'c}
@item item code @code{a\'\'b\'c}
@end itemize

@itemize a``b`c
@item item a``b`c
@end itemize

@itemize a\'"
@item item a\'"
@end itemize

@itemize b\\<&
@item item b\\<&
@end itemize

@itemize @today
@item item today @today{}
@end itemize

@itemize @aa{} @sc{@aa{}}
@item item aa @aa{} @sc{@aa{}}
@end itemize

@itemize @tie{}
@item item tie @tie{}
@end itemize

@itemize @tie{} a
@item item tie @tie{} a
@end itemize

@itemize @atchar
@item item atchar
@end itemize

@itemize @atchar{} a
@item item atchar @atchar{} a
@end itemize

@itemize @*
@item item * @*
@end itemize

@itemize @{
@item item @{
@end itemize

@itemize @registeredsymbol{}
@item item registeredsymbol @registeredsymbol{}
@end itemize

@itemize @registeredsymbol{} a
@item item registeredsymbol @registeredsymbol{} a
@end itemize

@itemize @enddots{}
@item item dots @enddots{}
@end itemize

@itemize @enddots{} a
@item item dots @enddots{} a
@end itemize

@itemize @^e @sc{@^e}
@item item e @^e @sc{@^e}
@end itemize

@itemize @^E @sc{@^E}
@item item E @^E @sc{@^E}
@end itemize

@itemize @~{@dotless{i}} @dotless{i} @sc{@~{@dotless{i}} @dotless{i}}
@item item dotless @~{@dotless{i}} @dotless{i} @sc{@~{@dotless{i}} @dotless{i}}
@end itemize

@itemize @udotaccent{r} @v{@\'{r}} @sc{@udotaccent{r} @v{@\'{r}}}
@item item complex a @udotaccent{r} @v{@\'{r}} @sc{@udotaccent{r} @v{@\'{r}}}
@end itemize

@itemize @={@,{@~{n}}} @sc{ @={@,{@~{n}}}}
@item item complex n @={@,{@~{n}}} @sc{ @={@,{@~{n}}}}
@end itemize

@itemize @asis
@item item asis @asis{}
@end itemize

@itemize @click{}
@item item click @click{}
@end itemize

@itemize @click{} a
@item item click @click{} a
@end itemize

@clickstyle @result

@itemize @click{}
@item item result click @click{}
@end itemize

@itemize @click{} a
@item item result click @click{}
@end itemize

@itemize @error{}
@item item error @error{}
@end itemize

@itemize @error{} a
@item item error @error{} a
@end itemize

@documentlanguage fr
@itemize @error{}
@item item fr error @error{}
@end itemize

@itemize @error{} a
@item item fr error @error{} a
@end itemize

';


$result_texts{'itemize_arguments'} = '
item --

item a"b\'c

item code a\'\'b\'c

item a"b`c

item a\'"

item b\\<&

item today a sunny day

item aa aa AA

item tie  

item tie   a

item atchar

item atchar @ a

item * 


item {

item registeredsymbol (R)

item registeredsymbol (R) a

item dots ...

item dots ... a

item e e^ E^

item E E^ E^

item dotless i~ i I~ I

item complex a .r r\'< .R R\'<

item complex n n~,=  N~,=

item asis 

item click ->

item click -> a


item result click =>

item result click =>

item error error-->

item error error--> a

item fr error error-->

item fr error error--> a

';

$result_errors{'itemize_arguments'} = [];


$result_floats{'itemize_arguments'} = {};


$result_converted_errors{'file_html'}->{'itemize_arguments'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'file_name' => 'itemize_arguments.texi',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];


1;
