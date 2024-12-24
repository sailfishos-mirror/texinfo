use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'api_doc_with_linemacro'} = {
  'contents' => [
    {
      'contents' => [
        {
          'cmdname' => 'linemacro',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => ' param {param, type}
',
                  'type' => 'macro_line'
                }
              ],
              'type' => 'argument'
            },
            {
              'text' => '@defline Parameter @var{\\param\\} @code{ : \\type\\}
',
              'type' => 'raw'
            },
            {
              'cmdname' => 'end',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'linemacro'
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
                'text_arg' => 'linemacro'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 3
              }
            }
          ],
          'extra' => {
            'macro_name' => 'param',
            'misc_args' => [
              'param',
              'type'
            ]
          },
          'source_info' => {
            'line_nr' => 1
          }
        },
        {
          'cmdname' => 'linemacro',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => ' returns {param, type}
',
                  'type' => 'macro_line'
                }
              ],
              'type' => 'argument'
            },
            {
              'text' => '@defline {Return Value} @var{\\param\\} @code{ : \\type\\}
',
              'type' => 'raw'
            },
            {
              'cmdname' => 'end',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'linemacro'
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
                'text_arg' => 'linemacro'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 6
              }
            }
          ],
          'extra' => {
            'macro_name' => 'returns',
            'misc_args' => [
              'param',
              'type'
            ]
          },
          'source_info' => {
            'line_nr' => 4
          }
        },
        {
          'cmdname' => 'linemacro',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => ' raises {exception}
',
                  'type' => 'macro_line'
                }
              ],
              'type' => 'argument'
            },
            {
              'text' => '@defline {Exception} \\exception\\
',
              'type' => 'raw'
            },
            {
              'cmdname' => 'end',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'linemacro'
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
                'text_arg' => 'linemacro'
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
          ],
          'extra' => {
            'macro_name' => 'raises',
            'misc_args' => [
              'exception'
            ]
          },
          'source_info' => {
            'line_nr' => 7
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'set',
          'contents' => [
            {
              'text' => 'txidefnamenospace',
              'type' => 'rawline_arg'
            },
            {
              'text' => '',
              'type' => 'rawline_arg'
            }
          ],
          'info' => {
            'arg_line' => ' txidefnamenospace
'
          }
        },
        {
          'cmdname' => 'clear',
          'contents' => [
            {
              'text' => 'txicodevaristt',
              'type' => 'rawline_arg'
            }
          ],
          'info' => {
            'arg_line' => ' txicodevaristt
'
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'defblock',
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
              'type' => 'argument'
            },
            {
              'cmdname' => 'defline',
              'contents' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'Function'
                            }
                          ],
                          'type' => 'def_line_arg'
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
                          'contents' => [
                            {
                              'text' => 'fft.fft'
                            }
                          ],
                          'type' => 'def_line_arg'
                        }
                      ],
                      'type' => 'def_name'
                    },
                    {
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'text' => '(',
                      'type' => 'delimiter'
                    },
                    {
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'a'
                            }
                          ],
                          'type' => 'def_line_arg'
                        }
                      ],
                      'type' => 'def_arg'
                    },
                    {
                      'text' => ',',
                      'type' => 'delimiter'
                    },
                    {
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'n='
                            }
                          ],
                          'type' => 'def_line_arg'
                        }
                      ],
                      'type' => 'def_arg'
                    },
                    {
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'cmdname' => 'code',
                              'contents' => [
                                {
                                  'contents' => [
                                    {
                                      'text' => 'None'
                                    }
                                  ],
                                  'type' => 'brace_container'
                                }
                              ],
                              'source_info' => {
                                'line_nr' => 15
                              }
                            }
                          ],
                          'type' => 'def_line_arg'
                        }
                      ],
                      'type' => 'def_arg'
                    },
                    {
                      'text' => ',',
                      'type' => 'delimiter'
                    },
                    {
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'axis='
                            }
                          ],
                          'type' => 'def_line_arg'
                        }
                      ],
                      'type' => 'def_arg'
                    },
                    {
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'cmdname' => 'code',
                              'contents' => [
                                {
                                  'contents' => [
                                    {
                                      'text' => '-1'
                                    }
                                  ],
                                  'type' => 'brace_container'
                                }
                              ],
                              'source_info' => {
                                'line_nr' => 15
                              }
                            }
                          ],
                          'type' => 'def_line_arg'
                        }
                      ],
                      'type' => 'def_arg'
                    },
                    {
                      'text' => ',',
                      'type' => 'delimiter'
                    },
                    {
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'norm='
                            }
                          ],
                          'type' => 'def_line_arg'
                        }
                      ],
                      'type' => 'def_arg'
                    },
                    {
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'cmdname' => 'code',
                              'contents' => [
                                {
                                  'contents' => [
                                    {
                                      'text' => 'None'
                                    }
                                  ],
                                  'type' => 'brace_container'
                                }
                              ],
                              'source_info' => {
                                'line_nr' => 15
                              }
                            }
                          ],
                          'type' => 'def_line_arg'
                        }
                      ],
                      'type' => 'def_arg'
                    },
                    {
                      'text' => ')',
                      'type' => 'delimiter'
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
                'def_command' => 'defline',
                'def_index_element' => {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'fft.fft'
                        }
                      ],
                      'type' => 'def_line_arg'
                    }
                  ],
                  'type' => 'def_name'
                },
                'omit_def_name_space' => 1,
                'original_def_cmdname' => 'defline'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 15
              }
            },
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'Compute the one-dimensional discrete Fourier Transform.
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
                  'cmdname' => 'defblock',
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
                      'source_marks' => [
                        {
                          'counter' => 1,
                          'element' => {
                            'contents' => [
                              {
                                'contents' => [
                                  {
                                    'text' => 'a'
                                  }
                                ],
                                'type' => 'line_arg'
                              },
                              {
                                'contents' => [
                                  {
                                    'text' => 'array_like'
                                  }
                                ],
                                'info' => {
                                  'spaces_before_argument' => {
                                    'text' => ' '
                                  }
                                },
                                'type' => 'line_arg'
                              }
                            ],
                            'info' => {
                              'command_name' => 'param',
                              'spaces_before_argument' => {
                                'text' => ' '
                              }
                            },
                            'type' => 'linemacro_call'
                          },
                          'sourcemark_type' => 'linemacro_expansion',
                          'status' => 'start'
                        }
                      ],
                      'type' => 'argument'
                    },
                    {
                      'cmdname' => 'defline',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'contents' => [
                                {
                                  'contents' => [
                                    {
                                      'text' => 'Parameter'
                                    }
                                  ],
                                  'type' => 'def_line_arg'
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
                                  'contents' => [
                                    {
                                      'cmdname' => 'var',
                                      'contents' => [
                                        {
                                          'contents' => [
                                            {
                                              'text' => 'a'
                                            }
                                          ],
                                          'type' => 'brace_container'
                                        }
                                      ],
                                      'source_info' => {
                                        'line_nr' => 19,
                                        'macro' => 'param'
                                      }
                                    }
                                  ],
                                  'type' => 'def_line_arg'
                                }
                              ],
                              'type' => 'def_name'
                            },
                            {
                              'text' => ' ',
                              'type' => 'spaces'
                            },
                            {
                              'contents' => [
                                {
                                  'contents' => [
                                    {
                                      'cmdname' => 'code',
                                      'contents' => [
                                        {
                                          'contents' => [
                                            {
                                              'text' => ' : array_like'
                                            }
                                          ],
                                          'type' => 'brace_container'
                                        }
                                      ],
                                      'source_info' => {
                                        'line_nr' => 19,
                                        'macro' => 'param'
                                      },
                                      'source_marks' => [
                                        {
                                          'counter' => 1,
                                          'sourcemark_type' => 'linemacro_expansion',
                                          'status' => 'end'
                                        }
                                      ]
                                    }
                                  ],
                                  'type' => 'def_line_arg'
                                }
                              ],
                              'type' => 'def_arg'
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
                        'def_command' => 'defline',
                        'def_index_element' => {
                          'contents' => [
                            {
                              'contents' => [
                                {
                                  'cmdname' => 'var',
                                  'contents' => [
                                    {
                                      'contents' => [
                                        {
                                          'text' => 'a'
                                        }
                                      ],
                                      'type' => 'brace_container'
                                    }
                                  ]
                                }
                              ],
                              'type' => 'def_line_arg'
                            }
                          ],
                          'type' => 'def_name'
                        },
                        'omit_def_name_space' => 1,
                        'original_def_cmdname' => 'defline'
                      },
                      'info' => {
                        'spaces_before_argument' => {
                          'text' => ' '
                        }
                      },
                      'source_info' => {
                        'line_nr' => 19,
                        'macro' => 'param'
                      }
                    },
                    {
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'Input array, can be complex.
'
                            }
                          ],
                          'type' => 'paragraph'
                        },
                        {
                          'source_marks' => [
                            {
                              'counter' => 2,
                              'element' => {
                                'contents' => [
                                  {
                                    'contents' => [
                                      {
                                        'text' => 'n'
                                      }
                                    ],
                                    'type' => 'line_arg'
                                  },
                                  {
                                    'contents' => [
                                      {
                                        'text' => 'int, optional'
                                      }
                                    ],
                                    'info' => {
                                      'spaces_before_argument' => {
                                        'text' => ' '
                                      }
                                    },
                                    'type' => 'line_arg'
                                  }
                                ],
                                'info' => {
                                  'command_name' => 'param',
                                  'spaces_before_argument' => {
                                    'text' => ' '
                                  }
                                },
                                'type' => 'linemacro_call'
                              },
                              'position' => 1,
                              'sourcemark_type' => 'linemacro_expansion',
                              'status' => 'start'
                            }
                          ],
                          'text' => '
',
                          'type' => 'empty_line'
                        }
                      ],
                      'type' => 'def_item'
                    },
                    {
                      'cmdname' => 'defline',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'contents' => [
                                {
                                  'contents' => [
                                    {
                                      'text' => 'Parameter'
                                    }
                                  ],
                                  'type' => 'def_line_arg'
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
                                  'contents' => [
                                    {
                                      'cmdname' => 'var',
                                      'contents' => [
                                        {
                                          'contents' => [
                                            {
                                              'text' => 'n'
                                            }
                                          ],
                                          'type' => 'brace_container'
                                        }
                                      ],
                                      'source_info' => {
                                        'line_nr' => 22,
                                        'macro' => 'param'
                                      }
                                    }
                                  ],
                                  'type' => 'def_line_arg'
                                }
                              ],
                              'type' => 'def_name'
                            },
                            {
                              'text' => ' ',
                              'type' => 'spaces'
                            },
                            {
                              'contents' => [
                                {
                                  'contents' => [
                                    {
                                      'cmdname' => 'code',
                                      'contents' => [
                                        {
                                          'contents' => [
                                            {
                                              'text' => ' : int, optional'
                                            }
                                          ],
                                          'type' => 'brace_container'
                                        }
                                      ],
                                      'source_info' => {
                                        'line_nr' => 22,
                                        'macro' => 'param'
                                      },
                                      'source_marks' => [
                                        {
                                          'counter' => 2,
                                          'sourcemark_type' => 'linemacro_expansion',
                                          'status' => 'end'
                                        }
                                      ]
                                    }
                                  ],
                                  'type' => 'def_line_arg'
                                }
                              ],
                              'type' => 'def_arg'
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
                        'def_command' => 'defline',
                        'def_index_element' => {
                          'contents' => [
                            {
                              'contents' => [
                                {
                                  'cmdname' => 'var',
                                  'contents' => [
                                    {
                                      'contents' => [
                                        {
                                          'text' => 'n'
                                        }
                                      ],
                                      'type' => 'brace_container'
                                    }
                                  ]
                                }
                              ],
                              'type' => 'def_line_arg'
                            }
                          ],
                          'type' => 'def_name'
                        },
                        'omit_def_name_space' => 1,
                        'original_def_cmdname' => 'defline'
                      },
                      'info' => {
                        'spaces_before_argument' => {
                          'text' => ' '
                        }
                      },
                      'source_info' => {
                        'line_nr' => 22,
                        'macro' => 'param'
                      }
                    },
                    {
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'Length of the transformed axis of the output.
'
                            },
                            {
                              'text' => 'If '
                            },
                            {
                              'cmdname' => 'var',
                              'contents' => [
                                {
                                  'contents' => [
                                    {
                                      'text' => 'n'
                                    }
                                  ],
                                  'type' => 'brace_container'
                                }
                              ],
                              'source_info' => {
                                'line_nr' => 24
                              }
                            },
                            {
                              'text' => ' is smaller than the length of the input, the input is cropped.
'
                            }
                          ],
                          'type' => 'paragraph'
                        },
                        {
                          'source_marks' => [
                            {
                              'counter' => 3,
                              'element' => {
                                'contents' => [
                                  {
                                    'contents' => [
                                      {
                                        'text' => 'axis'
                                      }
                                    ],
                                    'type' => 'line_arg'
                                  },
                                  {
                                    'contents' => [
                                      {
                                        'text' => 'int, optional'
                                      }
                                    ],
                                    'info' => {
                                      'spaces_before_argument' => {
                                        'text' => ' '
                                      }
                                    },
                                    'type' => 'line_arg'
                                  }
                                ],
                                'info' => {
                                  'command_name' => 'param',
                                  'spaces_before_argument' => {
                                    'text' => ' '
                                  }
                                },
                                'type' => 'linemacro_call'
                              },
                              'position' => 1,
                              'sourcemark_type' => 'linemacro_expansion',
                              'status' => 'start'
                            }
                          ],
                          'text' => '
',
                          'type' => 'empty_line'
                        }
                      ],
                      'type' => 'def_item'
                    },
                    {
                      'cmdname' => 'defline',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'contents' => [
                                {
                                  'contents' => [
                                    {
                                      'text' => 'Parameter'
                                    }
                                  ],
                                  'type' => 'def_line_arg'
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
                                  'contents' => [
                                    {
                                      'cmdname' => 'var',
                                      'contents' => [
                                        {
                                          'contents' => [
                                            {
                                              'text' => 'axis'
                                            }
                                          ],
                                          'type' => 'brace_container'
                                        }
                                      ],
                                      'source_info' => {
                                        'line_nr' => 26,
                                        'macro' => 'param'
                                      }
                                    }
                                  ],
                                  'type' => 'def_line_arg'
                                }
                              ],
                              'type' => 'def_name'
                            },
                            {
                              'text' => ' ',
                              'type' => 'spaces'
                            },
                            {
                              'contents' => [
                                {
                                  'contents' => [
                                    {
                                      'cmdname' => 'code',
                                      'contents' => [
                                        {
                                          'contents' => [
                                            {
                                              'text' => ' : int, optional'
                                            }
                                          ],
                                          'type' => 'brace_container'
                                        }
                                      ],
                                      'source_info' => {
                                        'line_nr' => 26,
                                        'macro' => 'param'
                                      },
                                      'source_marks' => [
                                        {
                                          'counter' => 3,
                                          'sourcemark_type' => 'linemacro_expansion',
                                          'status' => 'end'
                                        }
                                      ]
                                    }
                                  ],
                                  'type' => 'def_line_arg'
                                }
                              ],
                              'type' => 'def_arg'
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
                        'def_command' => 'defline',
                        'def_index_element' => {
                          'contents' => [
                            {
                              'contents' => [
                                {
                                  'cmdname' => 'var',
                                  'contents' => [
                                    {
                                      'contents' => [
                                        {
                                          'text' => 'axis'
                                        }
                                      ],
                                      'type' => 'brace_container'
                                    }
                                  ]
                                }
                              ],
                              'type' => 'def_line_arg'
                            }
                          ],
                          'type' => 'def_name'
                        },
                        'omit_def_name_space' => 1,
                        'original_def_cmdname' => 'defline'
                      },
                      'info' => {
                        'spaces_before_argument' => {
                          'text' => ' '
                        }
                      },
                      'source_info' => {
                        'line_nr' => 26,
                        'macro' => 'param'
                      }
                    },
                    {
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'Axis over which to compute the FFT.
'
                            }
                          ],
                          'type' => 'paragraph'
                        },
                        {
                          'source_marks' => [
                            {
                              'counter' => 4,
                              'element' => {
                                'contents' => [
                                  {
                                    'contents' => [
                                      {
                                        'text' => 'out'
                                      }
                                    ],
                                    'type' => 'line_arg'
                                  },
                                  {
                                    'contents' => [
                                      {
                                        'text' => 'complex ndarray'
                                      }
                                    ],
                                    'info' => {
                                      'spaces_before_argument' => {
                                        'text' => ' '
                                      }
                                    },
                                    'type' => 'line_arg'
                                  }
                                ],
                                'info' => {
                                  'command_name' => 'returns',
                                  'spaces_before_argument' => {
                                    'text' => ' '
                                  }
                                },
                                'type' => 'linemacro_call'
                              },
                              'position' => 1,
                              'sourcemark_type' => 'linemacro_expansion',
                              'status' => 'start'
                            }
                          ],
                          'text' => '
',
                          'type' => 'empty_line'
                        }
                      ],
                      'type' => 'def_item'
                    },
                    {
                      'cmdname' => 'defline',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'contents' => [
                                {
                                  'contents' => [
                                    {
                                      'text' => 'Return Value'
                                    }
                                  ],
                                  'source_info' => {
                                    'line_nr' => 29,
                                    'macro' => 'returns'
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
                                  'contents' => [
                                    {
                                      'cmdname' => 'var',
                                      'contents' => [
                                        {
                                          'contents' => [
                                            {
                                              'text' => 'out'
                                            }
                                          ],
                                          'type' => 'brace_container'
                                        }
                                      ],
                                      'source_info' => {
                                        'line_nr' => 29,
                                        'macro' => 'returns'
                                      }
                                    }
                                  ],
                                  'type' => 'def_line_arg'
                                }
                              ],
                              'type' => 'def_name'
                            },
                            {
                              'text' => ' ',
                              'type' => 'spaces'
                            },
                            {
                              'contents' => [
                                {
                                  'contents' => [
                                    {
                                      'cmdname' => 'code',
                                      'contents' => [
                                        {
                                          'contents' => [
                                            {
                                              'text' => ' : complex ndarray'
                                            }
                                          ],
                                          'type' => 'brace_container'
                                        }
                                      ],
                                      'source_info' => {
                                        'line_nr' => 29,
                                        'macro' => 'returns'
                                      },
                                      'source_marks' => [
                                        {
                                          'counter' => 4,
                                          'sourcemark_type' => 'linemacro_expansion',
                                          'status' => 'end'
                                        }
                                      ]
                                    }
                                  ],
                                  'type' => 'def_line_arg'
                                }
                              ],
                              'type' => 'def_arg'
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
                        'def_command' => 'defline',
                        'def_index_element' => {
                          'contents' => [
                            {
                              'contents' => [
                                {
                                  'cmdname' => 'var',
                                  'contents' => [
                                    {
                                      'contents' => [
                                        {
                                          'text' => 'out'
                                        }
                                      ],
                                      'type' => 'brace_container'
                                    }
                                  ]
                                }
                              ],
                              'type' => 'def_line_arg'
                            }
                          ],
                          'type' => 'def_name'
                        },
                        'omit_def_name_space' => 1,
                        'original_def_cmdname' => 'defline'
                      },
                      'info' => {
                        'spaces_before_argument' => {
                          'text' => ' '
                        }
                      },
                      'source_info' => {
                        'line_nr' => 29,
                        'macro' => 'returns'
                      }
                    },
                    {
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'The truncated or zero-padded input.
'
                            }
                          ],
                          'type' => 'paragraph'
                        },
                        {
                          'source_marks' => [
                            {
                              'counter' => 5,
                              'element' => {
                                'contents' => [
                                  {
                                    'contents' => [
                                      {
                                        'text' => 'IndexError'
                                      }
                                    ],
                                    'type' => 'line_arg'
                                  }
                                ],
                                'info' => {
                                  'command_name' => 'raises',
                                  'spaces_before_argument' => {
                                    'text' => ' '
                                  }
                                },
                                'type' => 'linemacro_call'
                              },
                              'position' => 1,
                              'sourcemark_type' => 'linemacro_expansion',
                              'status' => 'start'
                            }
                          ],
                          'text' => '
',
                          'type' => 'empty_line'
                        }
                      ],
                      'type' => 'def_item'
                    },
                    {
                      'cmdname' => 'defline',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'contents' => [
                                {
                                  'contents' => [
                                    {
                                      'text' => 'Exception'
                                    }
                                  ],
                                  'source_info' => {
                                    'line_nr' => 32,
                                    'macro' => 'raises'
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
                                  'contents' => [
                                    {
                                      'source_marks' => [
                                        {
                                          'counter' => 5,
                                          'position' => 10,
                                          'sourcemark_type' => 'linemacro_expansion',
                                          'status' => 'end'
                                        }
                                      ],
                                      'text' => 'IndexError'
                                    }
                                  ],
                                  'type' => 'def_line_arg'
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
                        'def_command' => 'defline',
                        'def_index_element' => {
                          'contents' => [
                            {
                              'contents' => [
                                {
                                  'text' => 'IndexError'
                                }
                              ],
                              'type' => 'def_line_arg'
                            }
                          ],
                          'type' => 'def_name'
                        },
                        'omit_def_name_space' => 1,
                        'original_def_cmdname' => 'defline'
                      },
                      'info' => {
                        'spaces_before_argument' => {
                          'text' => ' '
                        }
                      },
                      'source_info' => {
                        'line_nr' => 32,
                        'macro' => 'raises'
                      }
                    },
                    {
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'If '
                            },
                            {
                              'cmdname' => 'var',
                              'contents' => [
                                {
                                  'contents' => [
                                    {
                                      'text' => 'axis'
                                    }
                                  ],
                                  'type' => 'brace_container'
                                }
                              ],
                              'source_info' => {
                                'line_nr' => 33
                              }
                            },
                            {
                              'text' => ' is not a valid axis of '
                            },
                            {
                              'cmdname' => 'var',
                              'contents' => [
                                {
                                  'contents' => [
                                    {
                                      'text' => 'a'
                                    }
                                  ],
                                  'type' => 'brace_container'
                                }
                              ],
                              'source_info' => {
                                'line_nr' => 33
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
                        }
                      ],
                      'type' => 'def_item'
                    },
                    {
                      'cmdname' => 'end',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'defblock'
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
                        'text_arg' => 'defblock'
                      },
                      'info' => {
                        'spaces_before_argument' => {
                          'text' => ' '
                        }
                      },
                      'source_info' => {
                        'line_nr' => 35
                      }
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 18
                  }
                },
                {
                  'text' => '
',
                  'type' => 'empty_line'
                }
              ],
              'type' => 'def_item'
            },
            {
              'cmdname' => 'end',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'defblock'
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
                'text_arg' => 'defblock'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 37
              }
            }
          ],
          'source_info' => {
            'line_nr' => 14
          }
        }
      ],
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};

$result_texis{'api_doc_with_linemacro'} = '@linemacro param {param, type}
@defline Parameter @var{\\param\\} @code{ : \\type\\}
@end linemacro
@linemacro returns {param, type}
@defline {Return Value} @var{\\param\\} @code{ : \\type\\}
@end linemacro
@linemacro raises {exception}
@defline {Exception} \\exception\\
@end linemacro

@set txidefnamenospace
@clear txicodevaristt

@defblock
@defline Function fft.fft (a, n=@code{None}, axis=@code{-1}, norm=@code{None})
Compute the one-dimensional discrete Fourier Transform.

@defblock
@defline Parameter @var{a} @code{ : array_like}
Input array, can be complex.

@defline Parameter @var{n} @code{ : int, optional}
Length of the transformed axis of the output.
If @var{n} is smaller than the length of the input, the input is cropped.

@defline Parameter @var{axis} @code{ : int, optional}
Axis over which to compute the FFT.

@defline {Return Value} @var{out} @code{ : complex ndarray}
The truncated or zero-padded input.

@defline {Exception} IndexError
If @var{axis} is not a valid axis of @var{a}.

@end defblock

@end defblock
';


$result_texts{'api_doc_with_linemacro'} = '

Function: fft.fft (a, n=None, axis=-1, norm=None)
Compute the one-dimensional discrete Fourier Transform.

Parameter: a  : array_like
Input array, can be complex.

Parameter: n  : int, optional
Length of the transformed axis of the output.
If n is smaller than the length of the input, the input is cropped.

Parameter: axis  : int, optional
Axis over which to compute the FFT.

Return Value: out  : complex ndarray
The truncated or zero-padded input.

Exception: IndexError
If axis is not a valid axis of a.


';

$result_errors{'api_doc_with_linemacro'} = [];


$result_floats{'api_doc_with_linemacro'} = {};


1;
