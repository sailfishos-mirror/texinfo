use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'itemize_and_empty_lines'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'youhou'
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
                      'text' => 'first item
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
                'line_nr' => 2,
                'macro' => ''
              }
            },
            {
              'cmdname' => 'item',
              'contents' => [
                {
                  'parent' => {},
                  'text' => '
',
                  'type' => 'ignorable_spaces_after_command'
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
                  'cmdname' => 'example',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'In example
'
                        },
                        {
                          'parent' => {},
                          'text' => '
',
                          'type' => 'empty_line'
                        },
                        {
                          'parent' => {},
                          'text' => 'end example.
'
                        }
                      ],
                      'parent' => {},
                      'type' => 'preformatted'
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'example'
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
                        'text_arg' => 'example'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 8,
                        'macro' => ''
                      }
                    }
                  ],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 4,
                    'macro' => ''
                  }
                }
              ],
              'extra' => {
                'item_number' => 2
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 3,
                'macro' => ''
              }
            },
            {
              'cmdname' => 'item',
              'contents' => [
                {
                  'parent' => {},
                  'text' => '
',
                  'type' => 'ignorable_spaces_after_command'
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
                      'text' => 'empty line.
'
                    }
                  ],
                  'parent' => {},
                  'type' => 'paragraph'
                }
              ],
              'extra' => {
                'item_number' => 3
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 9,
                'macro' => ''
              }
            },
            {
              'cmdname' => 'item',
              'contents' => [
                {
                  'parent' => {},
                  'text' => '
',
                  'type' => 'ignorable_spaces_after_command'
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
                  'cmdname' => 'example',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'In second example
'
                        }
                      ],
                      'parent' => {},
                      'type' => 'preformatted'
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'example'
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
                        'text_arg' => 'example'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 16,
                        'macro' => ''
                      }
                    }
                  ],
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
                      'contents' => [],
                      'extra' => {
                        'spaces_after_argument' => '
'
                      },
                      'parent' => {},
                      'type' => 'block_line_arg'
                    }
                  ],
                  'cmdname' => 'quotation',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'Quotation
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
                              'text' => 'quotation'
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
                        'text_arg' => 'quotation'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 19,
                        'macro' => ''
                      }
                    }
                  ],
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
                }
              ],
              'extra' => {
                'item_number' => 4
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 12,
                'macro' => ''
              }
            },
            {
              'cmdname' => 'item',
              'contents' => [
                {
                  'parent' => {},
                  'text' => '
',
                  'type' => 'ignorable_spaces_after_command'
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
                  'cmdname' => 'quotation',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'quotation after a blank line
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
                              'text' => 'quotation'
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
                        'text_arg' => 'quotation'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 25,
                        'macro' => ''
                      }
                    }
                  ],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 23,
                    'macro' => ''
                  }
                }
              ],
              'extra' => {
                'item_number' => 5
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 21,
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
                'line_nr' => 26,
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
              'contents' => [
                {
                  'cmdname' => 'bullet',
                  'contents' => [],
                  'parent' => {},
                  'type' => 'command_as_argument_inserted'
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
                      'text' => 'first item
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
                'line_nr' => 29,
                'macro' => ''
              }
            },
            {
              'cmdname' => 'item',
              'contents' => [
                {
                  'parent' => {},
                  'text' => '
',
                  'type' => 'ignorable_spaces_after_command'
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
                  'cmdname' => 'example',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'In example
'
                        },
                        {
                          'parent' => {},
                          'text' => '
',
                          'type' => 'empty_line'
                        },
                        {
                          'parent' => {},
                          'text' => 'end example.
'
                        }
                      ],
                      'parent' => {},
                      'type' => 'preformatted'
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'example'
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
                        'text_arg' => 'example'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 35,
                        'macro' => ''
                      }
                    }
                  ],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 31,
                    'macro' => ''
                  }
                }
              ],
              'extra' => {
                'item_number' => 2
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 30,
                'macro' => ''
              }
            },
            {
              'cmdname' => 'item',
              'contents' => [
                {
                  'parent' => {},
                  'text' => '
',
                  'type' => 'ignorable_spaces_after_command'
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
                      'text' => 'empty line.
'
                    }
                  ],
                  'parent' => {},
                  'type' => 'paragraph'
                }
              ],
              'extra' => {
                'item_number' => 3
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 36,
                'macro' => ''
              }
            },
            {
              'cmdname' => 'item',
              'contents' => [
                {
                  'parent' => {},
                  'text' => '
',
                  'type' => 'ignorable_spaces_after_command'
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
                  'cmdname' => 'example',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'In second example
'
                        }
                      ],
                      'parent' => {},
                      'type' => 'preformatted'
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'example'
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
                        'text_arg' => 'example'
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
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 41,
                    'macro' => ''
                  }
                }
              ],
              'extra' => {
                'item_number' => 4
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 39,
                'macro' => ''
              }
            },
            {
              'cmdname' => 'item',
              'contents' => [
                {
                  'parent' => {},
                  'text' => '
',
                  'type' => 'ignorable_spaces_after_command'
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
                  'cmdname' => 'quotation',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'Quotation
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
                              'text' => 'quotation'
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
                        'text_arg' => 'quotation'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 47,
                        'macro' => ''
                      }
                    }
                  ],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 45,
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
              'extra' => {
                'item_number' => 5
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 44,
                'macro' => ''
              }
            },
            {
              'cmdname' => 'item',
              'contents' => [
                {
                  'parent' => {},
                  'text' => '
',
                  'type' => 'ignorable_spaces_after_command'
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
                  'cmdname' => 'quotation',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'quotation after a blank line
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
                              'text' => 'quotation'
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
                        'text_arg' => 'quotation'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 53,
                        'macro' => ''
                      }
                    }
                  ],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 51,
                    'macro' => ''
                  }
                }
              ],
              'extra' => {
                'item_number' => 6
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 49,
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
                'line_nr' => 54,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'command_as_argument' => {}
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 28,
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
              'text' => 'An itemize
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
                  'cmdname' => 'minus',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 57,
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
                      'text' => 'truc 
'
                    },
                    {
                      'parent' => {},
                      'text' => 'line
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
                'line_nr' => 58,
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
            'line_nr' => 57,
            'macro' => ''
          }
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'After itemize
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
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'A nested itemize
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
                  'cmdname' => 'minus',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 65,
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
                      'text' => 'truc 
'
                    },
                    {
                      'parent' => {},
                      'text' => 'line
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
                          'cmdname' => 'bullet',
                          'contents' => [],
                          'parent' => {},
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 68,
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
                              'text' => 'in nested itemize
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
                        'line_nr' => 69,
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
                        'line_nr' => 70,
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
                    'line_nr' => 68,
                    'macro' => ''
                  }
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'After inside nested itemize.
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
                'line_nr' => 66,
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
            'command_as_argument' => {},
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 65,
            'macro' => ''
          }
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'After nested itemize
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
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 75,
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
                      'text' => 'the version number of Texinfo and the program(s) or manual(s) involved.
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
                'line_nr' => 76,
                'macro' => ''
              }
            },
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
                      'text' => 'hardware and operating system names and versions.
'
                    }
                  ],
                  'parent' => {},
                  'type' => 'paragraph'
                }
              ],
              'extra' => {
                'item_number' => 2
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 77,
                'macro' => ''
              }
            },
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
                      'text' => 'something aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaa
'
                    },
                    {
                      'parent' => {},
                      'text' => 'b b bbbbbbbbbbbbbbbbbbbbbbb.
'
                    }
                  ],
                  'parent' => {},
                  'type' => 'paragraph'
                }
              ],
              'extra' => {
                'item_number' => 3
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 78,
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
            'command_as_argument' => {},
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 75,
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
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[1];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[3];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[3];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[2];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[2]{'contents'}[0];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[2];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[2]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[2]{'contents'}[1];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[2];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[2]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[3];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[3];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[3]{'contents'}[0];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[3];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[3]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[3]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[3]{'contents'}[1];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[3];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[3]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[3];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[4]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[3];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[4];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[4];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[2];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[2]{'contents'}[0];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[2];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[2]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[2]{'contents'}[1];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[2];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[2]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[4];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'args'}[0];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[5];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[1];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[2];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[2];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[2];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[3];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[3];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[3]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[3]{'contents'}[2];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[3]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[3]{'contents'}[2]{'contents'}[0];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[3]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[3]{'contents'}[2];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[3]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[3]{'contents'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[3]{'contents'}[2]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[3]{'contents'}[2]{'contents'}[1];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[3]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[3]{'contents'}[2];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[3]{'contents'}[2]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[3];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[3]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[4];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[4]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[4]{'contents'}[1];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[4]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[4]{'contents'}[1]{'contents'}[0];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[4]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[4]{'contents'}[1];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[4]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[4]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[4]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[4]{'contents'}[1]{'contents'}[1];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[4]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[4]{'contents'}[1];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[4];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[4]{'contents'}[2]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[4];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[4]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[5]{'contents'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[5];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[5]{'contents'}[1]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[5];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[5]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[5]{'contents'}[2];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[5]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[5]{'contents'}[2]{'contents'}[0];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[5]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[5]{'contents'}[2];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[5]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[5]{'contents'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[5]{'contents'}[2]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[5]{'contents'}[2]{'contents'}[1];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[5]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[5]{'contents'}[2];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[5]{'contents'}[2]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[5];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[5]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[6]{'args'}[0];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[6];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[6]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'extra'}{'command_as_argument'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[4];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[5]{'args'}[0];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[5];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[5]{'contents'}[0];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[5]{'contents'}[0];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[5];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[5]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[5]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[5]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[5]{'contents'}[1];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[5]{'contents'}[1]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[5];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[5]{'extra'}{'command_as_argument'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[5]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[6];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[6]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[7]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[8]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[9]{'contents'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[9];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[9]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[10]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[10]{'args'}[0];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[10]{'args'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[10];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[10]{'contents'}[0];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[10]{'contents'}[0];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'contents'}[2];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'contents'}[2];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'contents'}[2];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'contents'}[2]{'extra'}{'command_as_argument'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[10]{'contents'}[0];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'contents'}[3];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[10]{'contents'}[0];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[10];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[10]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[10]{'contents'}[1]{'args'}[0];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[10]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[10]{'contents'}[1];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[10]{'contents'}[1]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[10];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[10]{'extra'}{'command_as_argument'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[10]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[10]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[11]{'contents'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[11];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[11]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[12]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[13]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[13]{'args'}[0];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[13]{'args'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[13];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[13]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[13]{'contents'}[0];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[13]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[13]{'contents'}[0]{'contents'}[1];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[13]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[13]{'contents'}[0];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[13]{'contents'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[13];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[13]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[13]{'contents'}[1];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[13]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[13]{'contents'}[1]{'contents'}[1];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[13]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[13]{'contents'}[1];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[13]{'contents'}[1]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[13];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[13]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[13]{'contents'}[2];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[13]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[13]{'contents'}[2]{'contents'}[1];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[13]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[13]{'contents'}[2]{'contents'}[1];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[13]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[13]{'contents'}[2];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[13]{'contents'}[2]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[13];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[13]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[13]{'contents'}[3]{'args'}[0];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[13]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[13]{'contents'}[3];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[13]{'contents'}[3]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[13];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[13]{'extra'}{'command_as_argument'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[13]{'args'}[0]{'contents'}[0];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'contents'}[13]{'parent'} = $result_trees{'itemize_and_empty_lines'}{'contents'}[0];
$result_trees{'itemize_and_empty_lines'}{'contents'}[0]{'parent'} = $result_trees{'itemize_and_empty_lines'};

$result_texis{'itemize_and_empty_lines'} = '@itemize youhou
@item first item
@item
@example
In example

end example.
@end example
@item

empty line.
@item

@example
In second example
@end example
@quotation
Quotation
@end quotation

@item

@quotation
quotation after a blank line
@end quotation
@end itemize

@itemize
@item first item
@item
@example
In example

end example.
@end example
@item

empty line.
@item

@example
In second example
@end example
@item
@quotation
Quotation
@end quotation

@item

@quotation
quotation after a blank line
@end quotation
@end itemize

An itemize
@itemize @minus
@item truc 
line
@end itemize
After itemize


A nested itemize
@itemize @minus
@item truc 
line
@itemize @bullet
@item in nested itemize
@end itemize
After inside nested itemize.
@end itemize
After nested itemize

@itemize @bullet
@item the version number of Texinfo and the program(s) or manual(s) involved.
@item hardware and operating system names and versions.
@item something aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaa
b b bbbbbbbbbbbbbbbbbbbbbbb.
@end itemize
';


$result_texts{'itemize_and_empty_lines'} = 'first item
In example

end example.

empty line.

In second example
Quotation


quotation after a blank line

first item
In example

end example.

empty line.

In second example
Quotation


quotation after a blank line

An itemize
truc 
line
After itemize


A nested itemize
truc 
line
in nested itemize
After inside nested itemize.
After nested itemize

the version number of Texinfo and the program(s) or manual(s) involved.
hardware and operating system names and versions.
something aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaa
b b bbbbbbbbbbbbbbbbbbbbbbb.
';

$result_errors{'itemize_and_empty_lines'} = [];


$result_floats{'itemize_and_empty_lines'} = {};



$result_converted{'plaintext'}->{'itemize_and_empty_lines'} = '   youhou first item
   youhou In example

          end example.
   youhou 
     empty line.
   youhou 
          In second example
          Quotation

   youhou 
          quotation after a blank line

   • first item
   •      In example

          end example.
   • 
     empty line.
   • 
          In second example
   •      Quotation

   • 
          quotation after a blank line

   An itemize
   − truc line
   After itemize

   A nested itemize
   − truc line
        • in nested itemize
     After inside nested itemize.
   After nested itemize

   • the version number of Texinfo and the program(s) or manual(s)
     involved.
   • hardware and operating system names and versions.
   • something aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaa b b
     bbbbbbbbbbbbbbbbbbbbbbb.
';


$result_converted{'html_text'}->{'itemize_and_empty_lines'} = '<ul class="itemize" style="list-style-type: \'youhou\'">
<li>first item
</li><li><div class="example">
<pre class="example-preformatted">In example

end example.
</pre></div>
</li><li>
empty line.
</li><li>
<div class="example">
<pre class="example-preformatted">In second example
</pre></div>
<blockquote class="quotation">
<p>Quotation
</p></blockquote>

</li><li>
<blockquote class="quotation">
<p>quotation after a blank line
</p></blockquote>
</li></ul>

<ul class="itemize mark-bullet">
<li>first item
</li><li><div class="example">
<pre class="example-preformatted">In example

end example.
</pre></div>
</li><li>
empty line.
</li><li>
<div class="example">
<pre class="example-preformatted">In second example
</pre></div>
</li><li><blockquote class="quotation">
<p>Quotation
</p></blockquote>

</li><li>
<blockquote class="quotation">
<p>quotation after a blank line
</p></blockquote>
</li></ul>

<p>An itemize
</p><ul class="itemize mark-minus">
<li>truc 
line
</li></ul>
<p>After itemize
</p>

<p>A nested itemize
</p><ul class="itemize mark-minus">
<li>truc 
line
<ul class="itemize mark-bullet">
<li>in nested itemize
</li></ul>
<p>After inside nested itemize.
</p></li></ul>
<p>After nested itemize
</p>
<ul class="itemize mark-bullet">
<li>the version number of Texinfo and the program(s) or manual(s) involved.
</li><li>hardware and operating system names and versions.
</li><li>something aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaa
b b bbbbbbbbbbbbbbbbbbbbbbb.
</li></ul>
';

1;
