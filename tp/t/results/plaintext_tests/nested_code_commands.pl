use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'nested_code_commands'} = {
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
                      'text' => 'aA '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'fg'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'kbd',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 1,
                        'macro' => ''
                      }
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
                'line_nr' => 1,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '.
'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'cc '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'gg'
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
                        'line_nr' => 2,
                        'macro' => ''
                      }
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
                'line_nr' => 2,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '.
'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'in command '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'fg'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'kbd',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 3,
                        'macro' => ''
                      }
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'command',
              'contents' => [],
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
'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'in code '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'in command'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'command',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 4,
                        'macro' => ''
                      }
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
                'line_nr' => 4,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '
'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'in samp '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'in code'
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
                        'line_nr' => 5,
                        'macro' => ''
                      }
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'samp',
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
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'in code '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'in samp'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'samp',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 6,
                        'macro' => ''
                      }
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
                'line_nr' => 6,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '
'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'in var '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'in code'
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
                        'line_nr' => 7,
                        'macro' => ''
                      }
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'var',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 7,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '
'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'in code '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'in var'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 8,
                        'macro' => ''
                      }
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
                'line_nr' => 8,
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
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'in code'
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
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'aA '
                        },
                        {
                          'args' => [
                            {
                              'contents' => [
                                {
                                  'parent' => {},
                                  'text' => 'fg'
                                }
                              ],
                              'parent' => {},
                              'type' => 'brace_command_arg'
                            }
                          ],
                          'cmdname' => 'kbd',
                          'contents' => [],
                          'parent' => {},
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 12,
                            'macro' => ''
                          }
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
                    'line_nr' => 12,
                    'macro' => ''
                  }
                },
                {
                  'parent' => {},
                  'text' => '
'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'hh'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'kbd',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 13,
                    'macro' => ''
                  }
                },
                {
                  'parent' => {},
                  'text' => '
'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'in command '
                        },
                        {
                          'args' => [
                            {
                              'contents' => [
                                {
                                  'parent' => {},
                                  'text' => 'fg'
                                }
                              ],
                              'parent' => {},
                              'type' => 'brace_command_arg'
                            }
                          ],
                          'cmdname' => 'kbd',
                          'contents' => [],
                          'parent' => {},
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 14,
                            'macro' => ''
                          }
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'command',
                  'contents' => [],
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
'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'in code '
                        },
                        {
                          'args' => [
                            {
                              'contents' => [
                                {
                                  'parent' => {},
                                  'text' => 'in command'
                                }
                              ],
                              'parent' => {},
                              'type' => 'brace_command_arg'
                            }
                          ],
                          'cmdname' => 'command',
                          'contents' => [],
                          'parent' => {},
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 15,
                            'macro' => ''
                          }
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
                    'line_nr' => 15,
                    'macro' => ''
                  }
                },
                {
                  'parent' => {},
                  'text' => '
'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'in samp '
                        },
                        {
                          'args' => [
                            {
                              'contents' => [
                                {
                                  'parent' => {},
                                  'text' => 'in code'
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
                            'line_nr' => 16,
                            'macro' => ''
                          }
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'samp',
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
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'in code '
                        },
                        {
                          'args' => [
                            {
                              'contents' => [
                                {
                                  'parent' => {},
                                  'text' => 'in samp'
                                }
                              ],
                              'parent' => {},
                              'type' => 'brace_command_arg'
                            }
                          ],
                          'cmdname' => 'samp',
                          'contents' => [],
                          'parent' => {},
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 17,
                            'macro' => ''
                          }
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
                    'line_nr' => 17,
                    'macro' => ''
                  }
                },
                {
                  'parent' => {},
                  'text' => '
'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'in var '
                        },
                        {
                          'args' => [
                            {
                              'contents' => [
                                {
                                  'parent' => {},
                                  'text' => 'in code'
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
                            'line_nr' => 18,
                            'macro' => ''
                          }
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'var',
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
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'in code '
                        },
                        {
                          'args' => [
                            {
                              'contents' => [
                                {
                                  'parent' => {},
                                  'text' => 'in var'
                                }
                              ],
                              'parent' => {},
                              'type' => 'brace_command_arg'
                            }
                          ],
                          'cmdname' => 'var',
                          'contents' => [],
                          'parent' => {},
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 19,
                            'macro' => ''
                          }
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
                    'line_nr' => 19,
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
                'line_nr' => 20,
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
              'contents' => [],
              'extra' => {
                'spaces_after_argument' => '
'
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'display',
          'contents' => [
            {
              'contents' => [
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'in disp'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'kbd',
                  'contents' => [],
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
'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'aA '
                        },
                        {
                          'args' => [
                            {
                              'contents' => [
                                {
                                  'parent' => {},
                                  'text' => 'fg'
                                }
                              ],
                              'parent' => {},
                              'type' => 'brace_command_arg'
                            }
                          ],
                          'cmdname' => 'kbd',
                          'contents' => [],
                          'parent' => {},
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 24,
                            'macro' => ''
                          }
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
                    'line_nr' => 24,
                    'macro' => ''
                  }
                },
                {
                  'parent' => {},
                  'text' => '
'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'in command '
                        },
                        {
                          'args' => [
                            {
                              'contents' => [
                                {
                                  'parent' => {},
                                  'text' => 'fg'
                                }
                              ],
                              'parent' => {},
                              'type' => 'brace_command_arg'
                            }
                          ],
                          'cmdname' => 'kbd',
                          'contents' => [],
                          'parent' => {},
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 25,
                            'macro' => ''
                          }
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'command',
                  'contents' => [],
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
'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'in code '
                        },
                        {
                          'args' => [
                            {
                              'contents' => [
                                {
                                  'parent' => {},
                                  'text' => 'in command'
                                }
                              ],
                              'parent' => {},
                              'type' => 'brace_command_arg'
                            }
                          ],
                          'cmdname' => 'command',
                          'contents' => [],
                          'parent' => {},
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 26,
                            'macro' => ''
                          }
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
                    'line_nr' => 26,
                    'macro' => ''
                  }
                },
                {
                  'parent' => {},
                  'text' => '
'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'in samp '
                        },
                        {
                          'args' => [
                            {
                              'contents' => [
                                {
                                  'parent' => {},
                                  'text' => 'in code'
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
                            'line_nr' => 27,
                            'macro' => ''
                          }
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'samp',
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
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'in code '
                        },
                        {
                          'args' => [
                            {
                              'contents' => [
                                {
                                  'parent' => {},
                                  'text' => 'in samp'
                                }
                              ],
                              'parent' => {},
                              'type' => 'brace_command_arg'
                            }
                          ],
                          'cmdname' => 'samp',
                          'contents' => [],
                          'parent' => {},
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 28,
                            'macro' => ''
                          }
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
                    'line_nr' => 28,
                    'macro' => ''
                  }
                },
                {
                  'parent' => {},
                  'text' => '
'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'in var '
                        },
                        {
                          'args' => [
                            {
                              'contents' => [
                                {
                                  'parent' => {},
                                  'text' => 'in code'
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
                            'line_nr' => 29,
                            'macro' => ''
                          }
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'var',
                  'contents' => [],
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
'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'in code '
                        },
                        {
                          'args' => [
                            {
                              'contents' => [
                                {
                                  'parent' => {},
                                  'text' => 'in var'
                                }
                              ],
                              'parent' => {},
                              'type' => 'brace_command_arg'
                            }
                          ],
                          'cmdname' => 'var',
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
                  'cmdname' => 'code',
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
                  'text' => '
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
                      'text' => 'display'
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
                'text_arg' => 'display'
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
            'end_command' => {}
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
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[1];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[0]{'contents'}[1];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[4];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'args'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'args'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'args'}[0]{'contents'}[1];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'args'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[6];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[7]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[8]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[8]{'args'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[8]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[8]{'args'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[8]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[8]{'args'}[0]{'contents'}[1];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[8]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[8]{'args'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[8]{'args'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[8];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[8]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[9]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[10]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[10]{'args'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[10]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[10]{'args'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[10]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[10]{'args'}[0]{'contents'}[1];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[10]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[10]{'args'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[10]{'args'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[10];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[10]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[11]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[12]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[12]{'args'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[12]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[12]{'args'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[12]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[12]{'args'}[0]{'contents'}[1];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[12]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[12]{'args'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[12]{'args'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[12];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[12]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[13]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[14]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[14]{'args'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[14]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[14]{'args'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[14]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[14]{'args'}[0]{'contents'}[1];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[14]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[14]{'args'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[14]{'args'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[14];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[14]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[15]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[1];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[2];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[4];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[6]{'args'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[6]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[6]{'args'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[6]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[6]{'args'}[0]{'contents'}[1];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[6]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[6]{'args'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[6];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[6]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[7]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[8]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[8]{'args'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[8]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[8]{'args'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[8]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[8]{'args'}[0]{'contents'}[1];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[8]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[8]{'args'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[8]{'args'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[8];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[8]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[9]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[10]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[10]{'args'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[10]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[10]{'args'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[10]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[10]{'args'}[0]{'contents'}[1];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[10]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[10]{'args'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[10]{'args'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[10];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[10]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[11]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[12]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[12]{'args'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[12]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[12]{'args'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[12]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[12]{'args'}[0]{'contents'}[1];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[12]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[12]{'args'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[12]{'args'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[12];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[12]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[13]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[14]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[14]{'args'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[14]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[14]{'args'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[14]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[14]{'args'}[0]{'contents'}[1];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[14]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[14]{'args'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[14]{'args'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[14];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[14]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[15]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[16]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[16]{'args'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[16]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[16]{'args'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[16]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[16]{'args'}[0]{'contents'}[1];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[16]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[16]{'args'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[16]{'args'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[16];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[16]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[17]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'extra'}{'end_command'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[1];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[2];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[4]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[4]{'args'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[4]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[4]{'args'}[0]{'contents'}[1];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[4]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[4];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[6]{'args'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[6]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[6]{'args'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[6]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[6]{'args'}[0]{'contents'}[1];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[6]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[6]{'args'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[6];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[6]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[7]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[8]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[8]{'args'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[8]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[8]{'args'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[8]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[8]{'args'}[0]{'contents'}[1];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[8]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[8]{'args'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[8]{'args'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[8];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[8]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[9]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[10]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[10]{'args'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[10]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[10]{'args'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[10]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[10]{'args'}[0]{'contents'}[1];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[10]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[10]{'args'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[10]{'args'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[10];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[10]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[11]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[12]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[12]{'args'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[12]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[12]{'args'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[12]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[12]{'args'}[0]{'contents'}[1];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[12]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[12]{'args'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[12]{'args'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[12];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[12]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[13]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[14]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[14]{'args'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[14]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[14]{'args'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[14]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[14]{'args'}[0]{'contents'}[1];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[14]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[14]{'args'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[14]{'args'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[14];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[14]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[15]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'args'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[1];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'extra'}{'end_command'} = $result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'contents'}[1];
$result_trees{'nested_code_commands'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'nested_code_commands'}{'contents'}[0];
$result_trees{'nested_code_commands'}{'contents'}[0]{'parent'} = $result_trees{'nested_code_commands'};

$result_texis{'nested_code_commands'} = '@code{aA @kbd{fg}}.
@code{cc @code{gg}}.
@command{in command @kbd{fg}}
@code{in code @command{in command}}
@samp{in samp @code{in code}}
@code{in code @samp{in samp}}
@var{in var @code{in code}}
@code{in code @var{in var}}

@example
@code{in code}
@code{aA @kbd{fg}}
@kbd{hh}
@command{in command @kbd{fg}}
@code{in code @command{in command}}
@samp{in samp @code{in code}}
@code{in code @samp{in samp}}
@var{in var @code{in code}}
@code{in code @var{in var}}
@end example

@display
@kbd{in disp}
@code{aA @kbd{fg}}
@command{in command @kbd{fg}}
@code{in code @command{in command}}
@samp{in samp @code{in code}}
@code{in code @samp{in samp}}
@var{in var @code{in code}}
@code{in code @var{in var}}
@end display
';


$result_texts{'nested_code_commands'} = 'aA fg.
cc gg.
in command fg
in code in command
in samp in code
in code in samp
in var in code
in code in var

in code
aA fg
hh
in command fg
in code in command
in samp in code
in code in samp
in var in code
in code in var

in disp
aA fg
in command fg
in code in command
in samp in code
in code in samp
in var in code
in code in var
';

$result_errors{'nested_code_commands'} = [];


$result_floats{'nested_code_commands'} = {};



$result_converted{'plaintext'}->{'nested_code_commands'} = '‘aA fg’.  ‘cc gg’.  ‘in command fg’ ‘in code in command’ ‘in samp ‘in
code’’ ‘in code ‘in samp’’ IN VAR ‘IN CODE’ ‘in code IN VAR’

     in code
     aA fg
     hh
     in command fg
     in code in command
     ‘in samp in code’
     in code ‘in samp’
     IN VAR IN CODE
     in code IN VAR

     ‘in disp’
     ‘aA fg’
     ‘in command fg’
     ‘in code in command’
     ‘in samp ‘in code’’
     ‘in code ‘in samp’’
     IN VAR ‘IN CODE’
     ‘in code IN VAR’
';

1;
