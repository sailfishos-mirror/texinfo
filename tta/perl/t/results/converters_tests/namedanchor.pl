use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'namedanchor'} = {
  'contents' => [
    {
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
              'contents' => [
                {
                  'text' => 'top'
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
          'cmdname' => 'namedanchor',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'in Top'
                }
              ],
              'type' => 'brace_arg'
            },
            {
              'contents' => [
                {
                  'cmdname' => 'emph',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'n in Top'
                        }
                      ],
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 4
                  }
                }
              ],
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'type' => 'brace_arg'
            }
          ],
          'extra' => {
            'is_target' => 1,
            'normalized' => 'in-Top'
          },
          'source_info' => {
            'line_nr' => 4
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
        }
      ],
      'extra' => {},
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
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
                  'text' => 'chap'
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
        'normalized' => 'chap'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 6
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
                  'text' => 'chapter '
                },
                {
                  'cmdname' => 'namedanchor',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'Not here!'
                        }
                      ],
                      'type' => 'brace_arg'
                    },
                    {
                      'contents' => [
                        {
                          'text' => 'There'
                        }
                      ],
                      'info' => {
                        'spaces_before_argument' => {
                          'text' => ' '
                        }
                      },
                      'type' => 'brace_arg'
                    }
                  ],
                  'extra' => {
                    'is_target' => 1,
                    'normalized' => 'Not-here_0021'
                  },
                  'source_info' => {
                    'line_nr' => 7
                  }
                },
                {
                  'text' => ' ',
                  'type' => 'spaces_after_close_brace'
                },
                {
                  'text' => 'after'
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
          'cmdname' => 'namedanchor',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'in chap no name'
                }
              ],
              'type' => 'brace_arg'
            }
          ],
          'extra' => {
            'is_target' => 1,
            'normalized' => 'in-chap-no-name'
          },
          'source_info' => {
            'line_nr' => 9
          }
        },
        {
          'text' => '
',
          'type' => 'spaces_after_close_brace'
        },
        {
          'cmdname' => 'namedanchor',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'in chap empty name'
                }
              ],
              'type' => 'brace_arg'
            },
            {
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'type' => 'brace_arg'
            }
          ],
          'extra' => {
            'is_target' => 1,
            'normalized' => 'in-chap-empty-name'
          },
          'source_info' => {
            'line_nr' => 10
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
              'text' => 'Empty namedanchor
'
            },
            {
              'cmdname' => 'namedanchor',
              'contents' => [
                {
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'line_nr' => 13
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
          'cmdname' => 'namedanchor',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'normal'
                }
              ],
              'type' => 'brace_arg'
            },
            {
              'contents' => [
                {
                  'text' => 'here we are'
                }
              ],
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'type' => 'brace_arg'
            }
          ],
          'extra' => {
            'is_target' => 1,
            'normalized' => 'normal'
          },
          'source_info' => {
            'line_nr' => 15
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
        'line_nr' => 7
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
                  'text' => 'secc1'
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
        'normalized' => 'secc1'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 17
      }
    },
    {
      'cmdname' => 'section',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'secc1'
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
          'cmdname' => 'xrefautomaticsectiontitle',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'off'
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
              'off'
            ]
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
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'cmdname' => 'xref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'in chap no name'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'in-chap-no-name'
                  },
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'line_nr' => 22
              }
            },
            {
              'text' => '
'
            },
            {
              'cmdname' => 'xref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'in chap no name'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'in-chap-no-name'
                  },
                  'type' => 'brace_arg'
                },
                {
                  'contents' => [
                    {
                      'text' => 't'
                    }
                  ],
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'line_nr' => 23
              }
            },
            {
              'text' => '
'
            },
            {
              'cmdname' => 'xref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'in chap no name'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'in-chap-no-name'
                  },
                  'type' => 'brace_arg'
                },
                {
                  'contents' => [
                    {
                      'text' => 't'
                    }
                  ],
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'type' => 'brace_arg'
                },
                {
                  'contents' => [
                    {
                      'text' => 'o'
                    }
                  ],
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'line_nr' => 24
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
          'contents' => [
            {
              'cmdname' => 'xref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'normal'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'normal'
                  },
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'line_nr' => 26
              }
            },
            {
              'text' => '
'
            },
            {
              'cmdname' => 'xref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'normal'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'normal'
                  },
                  'type' => 'brace_arg'
                },
                {
                  'contents' => [
                    {
                      'text' => 'nt'
                    }
                  ],
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'line_nr' => 27
              }
            },
            {
              'text' => '
'
            },
            {
              'cmdname' => 'xref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'normal'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'normal'
                  },
                  'type' => 'brace_arg'
                },
                {
                  'contents' => [
                    {
                      'text' => 'nt'
                    }
                  ],
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'type' => 'brace_arg'
                },
                {
                  'contents' => [
                    {
                      'text' => 'no'
                    }
                  ],
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'line_nr' => 28
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
          'cmdname' => 'xrefautomaticsectiontitle',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'on'
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
              'on'
            ]
          },
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 30
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
              'cmdname' => 'xref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'in chap empty name'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'in-chap-empty-name'
                  },
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'line_nr' => 32
              }
            },
            {
              'text' => '
'
            },
            {
              'cmdname' => 'xref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'in chap empty name'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'in-chap-empty-name'
                  },
                  'type' => 'brace_arg'
                },
                {
                  'contents' => [
                    {
                      'text' => 'xat on t'
                    }
                  ],
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'line_nr' => 33
              }
            },
            {
              'text' => '
'
            },
            {
              'cmdname' => 'xref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'in chap empty name'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'in-chap-empty-name'
                  },
                  'type' => 'brace_arg'
                },
                {
                  'contents' => [
                    {
                      'text' => 'xat on t'
                    }
                  ],
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'type' => 'brace_arg'
                },
                {
                  'contents' => [
                    {
                      'text' => 'xat on o'
                    }
                  ],
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'line_nr' => 34
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
          'contents' => [
            {
              'cmdname' => 'xref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'normal'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'normal'
                  },
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'line_nr' => 36
              }
            },
            {
              'text' => '
'
            },
            {
              'cmdname' => 'xref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'normal'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'normal'
                  },
                  'type' => 'brace_arg'
                },
                {
                  'contents' => [
                    {
                      'text' => 'xat on nt'
                    }
                  ],
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'line_nr' => 37
              }
            },
            {
              'text' => '
'
            },
            {
              'cmdname' => 'xref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'normal'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'normal'
                  },
                  'type' => 'brace_arg'
                },
                {
                  'contents' => [
                    {
                      'text' => 'xat on nt'
                    }
                  ],
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'type' => 'brace_arg'
                },
                {
                  'contents' => [
                    {
                      'text' => 'xat on no'
                    }
                  ],
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'line_nr' => 38
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
          'contents' => [
            {
              'cmdname' => 'xref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'in Top'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'in-Top'
                  },
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'line_nr' => 40
              }
            },
            {
              'text' => '
'
            },
            {
              'cmdname' => 'xref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'Not here!'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'Not-here_0021'
                  },
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'line_nr' => 41
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
        }
      ],
      'extra' => {
        'section_number' => '1.1'
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
    {
      'cmdname' => 'node',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'chap1'
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
        'normalized' => 'chap1'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 43
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
                  'text' => 'chap1'
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
                      'text' => 'secc2'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'secc2'
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
                'line_nr' => 47
              },
              'type' => 'menu_entry'
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
                      'text' => 'in Top'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'in-Top'
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
                'line_nr' => 48
              },
              'type' => 'menu_entry'
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
                      'text' => 'Not here!'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'Not-here_0021'
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
                'line_nr' => 49
              },
              'type' => 'menu_entry'
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
                      'text' => 'in chap no name'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'in-chap-no-name'
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
                'line_nr' => 50
              },
              'type' => 'menu_entry'
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
                      'text' => 'normal'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'normal'
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
                'line_nr' => 51
              },
              'type' => 'menu_entry'
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
                      'text' => 'in chap empty name'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'in-chap-empty-name'
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
                'line_nr' => 52
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
                'line_nr' => 53
              }
            }
          ],
          'source_info' => {
            'line_nr' => 46
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
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
        'line_nr' => 44
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
                  'text' => 'secc2'
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
        'normalized' => 'secc2'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 55
      }
    },
    {
      'cmdname' => 'section',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'Secc2'
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
        'section_number' => '2.1'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 56
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'namedanchor'}{'contents'}[6]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'namedanchor'}{'contents'}[6]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'namedanchor'}{'contents'}[6]{'contents'}[4]{'contents'}[2]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'namedanchor'}{'contents'}[6]{'contents'}[4]{'contents'}[2]{'contents'}[0]{'contents'}[0];
$result_trees{'namedanchor'}{'contents'}[6]{'contents'}[4]{'contents'}[4]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'namedanchor'}{'contents'}[6]{'contents'}[4]{'contents'}[4]{'contents'}[0]{'contents'}[0];
$result_trees{'namedanchor'}{'contents'}[6]{'contents'}[6]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'namedanchor'}{'contents'}[6]{'contents'}[6]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'namedanchor'}{'contents'}[6]{'contents'}[6]{'contents'}[2]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'namedanchor'}{'contents'}[6]{'contents'}[6]{'contents'}[2]{'contents'}[0]{'contents'}[0];
$result_trees{'namedanchor'}{'contents'}[6]{'contents'}[6]{'contents'}[4]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'namedanchor'}{'contents'}[6]{'contents'}[6]{'contents'}[4]{'contents'}[0]{'contents'}[0];
$result_trees{'namedanchor'}{'contents'}[6]{'contents'}[10]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'namedanchor'}{'contents'}[6]{'contents'}[10]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'namedanchor'}{'contents'}[6]{'contents'}[10]{'contents'}[2]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'namedanchor'}{'contents'}[6]{'contents'}[10]{'contents'}[2]{'contents'}[0]{'contents'}[0];
$result_trees{'namedanchor'}{'contents'}[6]{'contents'}[10]{'contents'}[4]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'namedanchor'}{'contents'}[6]{'contents'}[10]{'contents'}[4]{'contents'}[0]{'contents'}[0];
$result_trees{'namedanchor'}{'contents'}[6]{'contents'}[12]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'namedanchor'}{'contents'}[6]{'contents'}[12]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'namedanchor'}{'contents'}[6]{'contents'}[12]{'contents'}[2]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'namedanchor'}{'contents'}[6]{'contents'}[12]{'contents'}[2]{'contents'}[0]{'contents'}[0];
$result_trees{'namedanchor'}{'contents'}[6]{'contents'}[12]{'contents'}[4]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'namedanchor'}{'contents'}[6]{'contents'}[12]{'contents'}[4]{'contents'}[0]{'contents'}[0];
$result_trees{'namedanchor'}{'contents'}[6]{'contents'}[14]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'namedanchor'}{'contents'}[6]{'contents'}[14]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'namedanchor'}{'contents'}[6]{'contents'}[14]{'contents'}[2]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'namedanchor'}{'contents'}[6]{'contents'}[14]{'contents'}[2]{'contents'}[0]{'contents'}[0];
$result_trees{'namedanchor'}{'contents'}[8]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'namedanchor'}{'contents'}[8]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'namedanchor'}{'contents'}[8]{'contents'}[2]{'contents'}[2]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'namedanchor'}{'contents'}[8]{'contents'}[2]{'contents'}[2]{'contents'}[1]{'contents'}[0];
$result_trees{'namedanchor'}{'contents'}[8]{'contents'}[2]{'contents'}[3]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'namedanchor'}{'contents'}[8]{'contents'}[2]{'contents'}[3]{'contents'}[1]{'contents'}[0];
$result_trees{'namedanchor'}{'contents'}[8]{'contents'}[2]{'contents'}[4]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'namedanchor'}{'contents'}[8]{'contents'}[2]{'contents'}[4]{'contents'}[1]{'contents'}[0];
$result_trees{'namedanchor'}{'contents'}[8]{'contents'}[2]{'contents'}[5]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'namedanchor'}{'contents'}[8]{'contents'}[2]{'contents'}[5]{'contents'}[1]{'contents'}[0];
$result_trees{'namedanchor'}{'contents'}[8]{'contents'}[2]{'contents'}[6]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'namedanchor'}{'contents'}[8]{'contents'}[2]{'contents'}[6]{'contents'}[1]{'contents'}[0];

$result_texis{'namedanchor'} = '@node Top
@top top

@namedanchor{in Top, @emph{n in Top}}

@node chap
@chapter chapter @namedanchor{Not here!, There} after

@namedanchor{in chap no name}
@namedanchor{in chap empty name, }

Empty namedanchor
@namedanchor{ }.

@namedanchor{normal, here we are}

@node secc1
@section secc1

@xrefautomaticsectiontitle off

@xref{in chap no name}
@xref{in chap no name, t}
@xref{in chap no name, t, o}

@xref{normal}
@xref{normal, nt}
@xref{normal, nt, no}

@xrefautomaticsectiontitle on

@xref{in chap empty name}
@xref{in chap empty name, xat on t}
@xref{in chap empty name, xat on t, xat on o}

@xref{normal}
@xref{normal, xat on nt}
@xref{normal, xat on nt, xat on no}

@xref{in Top}
@xref{Not here!}

@node chap1
@chapter chap1

@menu
* secc2::
* in Top::
* Not here!::
* in chap no name::
* normal::
* in chap empty name::
@end menu

@node secc2
@section Secc2
';


$result_texts{'namedanchor'} = 'top
***


1 chapter after
***************


Empty namedanchor
.


1.1 secc1
=========


in chap no name
in chap no name
in chap no name

normal
normal
normal


in chap empty name
in chap empty name
in chap empty name

normal
normal
normal

in Top
Not here!

2 chap1
*******

* secc2::
* in Top::
* Not here!::
* in chap no name::
* normal::
* in chap empty name::

2.1 Secc2
=========
';

$result_sectioning{'namedanchor'} = {
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
                    'normalized' => 'chap'
                  }
                },
                'section_childs' => [
                  {
                    'cmdname' => 'section',
                    'extra' => {
                      'associated_node' => {
                        'cmdname' => 'node',
                        'extra' => {
                          'normalized' => 'secc1'
                        }
                      },
                      'section_directions' => {
                        'up' => {}
                      },
                      'section_level' => 2,
                      'section_number' => '1.1'
                    }
                  }
                ],
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
                    'normalized' => 'chap1'
                  }
                },
                'section_childs' => [
                  {
                    'cmdname' => 'section',
                    'extra' => {
                      'associated_node' => {
                        'cmdname' => 'node',
                        'extra' => {
                          'normalized' => 'secc2'
                        }
                      },
                      'section_directions' => {
                        'up' => {}
                      },
                      'section_level' => 2,
                      'section_number' => '2.1'
                    }
                  }
                ],
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
$result_sectioning{'namedanchor'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'namedanchor'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'namedanchor'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'namedanchor'}{'extra'}{'section_childs'}[0];
$result_sectioning{'namedanchor'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'namedanchor'}{'extra'}{'section_childs'}[0];
$result_sectioning{'namedanchor'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'namedanchor'}{'extra'}{'section_childs'}[0];
$result_sectioning{'namedanchor'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'namedanchor'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1];
$result_sectioning{'namedanchor'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'namedanchor'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'namedanchor'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'namedanchor'}{'extra'}{'section_childs'}[0];
$result_sectioning{'namedanchor'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'namedanchor'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'namedanchor'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'namedanchor'}{'extra'}{'section_childs'}[0];
$result_sectioning{'namedanchor'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'namedanchor'};

$result_nodes{'namedanchor'} = [
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
                  'node_directions' => {
                    'prev' => {},
                    'up' => {}
                  },
                  'normalized' => 'chap1'
                }
              },
              'prev' => {},
              'up' => {}
            },
            'normalized' => 'chap'
          }
        }
      },
      'normalized' => 'Top'
    }
  },
  {},
  {
    'cmdname' => 'node',
    'extra' => {
      'associated_section' => {
        'cmdname' => 'section',
        'extra' => {
          'section_number' => '1.1'
        }
      },
      'node_directions' => {
        'up' => {}
      },
      'normalized' => 'secc1'
    }
  },
  {},
  {
    'cmdname' => 'node',
    'extra' => {
      'associated_section' => {
        'cmdname' => 'section',
        'extra' => {
          'section_number' => '2.1'
        }
      },
      'node_directions' => {
        'next' => {
          'cmdname' => 'namedanchor',
          'extra' => {
            'normalized' => 'in-Top'
          }
        },
        'up' => {}
      },
      'normalized' => 'secc2'
    }
  }
];
$result_nodes{'namedanchor'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'namedanchor'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'namedanchor'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'namedanchor'}[0];
$result_nodes{'namedanchor'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'namedanchor'}[0];
$result_nodes{'namedanchor'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'namedanchor'}[0];
$result_nodes{'namedanchor'}[1] = $result_nodes{'namedanchor'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'namedanchor'}[2]{'extra'}{'node_directions'}{'up'} = $result_nodes{'namedanchor'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'namedanchor'}[3] = $result_nodes{'namedanchor'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'namedanchor'}[4]{'extra'}{'node_directions'}{'up'} = $result_nodes{'namedanchor'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};

$result_menus{'namedanchor'} = [
  {
    'extra' => {
      'normalized' => 'Top'
    }
  },
  {
    'extra' => {
      'normalized' => 'chap'
    }
  },
  {
    'extra' => {
      'normalized' => 'secc1'
    }
  },
  {
    'extra' => {
      'menus' => [
        {}
      ],
      'normalized' => 'chap1'
    }
  },
  {
    'extra' => {
      'menu_directions' => {
        'next' => {
          'extra' => {
            'menu_directions' => {
              'next' => {
                'extra' => {
                  'menu_directions' => {
                    'next' => {
                      'extra' => {
                        'menu_directions' => {
                          'next' => {
                            'extra' => {
                              'menu_directions' => {
                                'next' => {
                                  'extra' => {
                                    'menu_directions' => {
                                      'prev' => {},
                                      'up' => {}
                                    },
                                    'normalized' => 'in-chap-empty-name'
                                  }
                                },
                                'prev' => {},
                                'up' => {}
                              },
                              'normalized' => 'normal'
                            }
                          },
                          'prev' => {},
                          'up' => {}
                        },
                        'normalized' => 'in-chap-no-name'
                      }
                    },
                    'prev' => {},
                    'up' => {}
                  },
                  'normalized' => 'Not-here_0021'
                }
              },
              'prev' => {},
              'up' => {}
            },
            'normalized' => 'in-Top'
          }
        },
        'up' => {}
      },
      'normalized' => 'secc2'
    }
  }
];
$result_menus{'namedanchor'}[4]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'namedanchor'}[4]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'namedanchor'}[4]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'namedanchor'}[3];
$result_menus{'namedanchor'}[4]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'namedanchor'}[4]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'namedanchor'}[4]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'namedanchor'}[3];
$result_menus{'namedanchor'}[4]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'namedanchor'}[4]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'namedanchor'}[4]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'namedanchor'}[3];
$result_menus{'namedanchor'}[4]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'namedanchor'}[4]{'extra'}{'menu_directions'}{'next'};
$result_menus{'namedanchor'}[4]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'namedanchor'}[3];
$result_menus{'namedanchor'}[4]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'namedanchor'}[4];
$result_menus{'namedanchor'}[4]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'namedanchor'}[3];
$result_menus{'namedanchor'}[4]{'extra'}{'menu_directions'}{'up'} = $result_menus{'namedanchor'}[3];

$result_errors{'namedanchor'} = [
  {
    'error_line' => 'warning: @namedanchor should not appear on @chapter line
',
    'line_nr' => 7,
    'text' => '@namedanchor should not appear on @chapter line',
    'type' => 'warning'
  },
  {
    'error_line' => 'empty argument in @namedanchor
',
    'line_nr' => 13,
    'text' => 'empty argument in @namedanchor',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: node `in Top\' is next for `secc2\' in menu but not in sectioning
',
    'line_nr' => 55,
    'text' => 'node `in Top\' is next for `secc2\' in menu but not in sectioning',
    'type' => 'warning'
  }
];


$result_floats{'namedanchor'} = {};



$result_converted{'plaintext'}->{'namedanchor'} = 'top
***

1 chapter after
***************

Empty namedanchor .

1.1 secc1
=========

See in chap no name See t: in chap no name See t: in chap no name

   See normal See nt: normal See nt: normal

   See in chap empty name See xat on t: in chap empty name See xat on t:
in chap empty name

   See normal See xat on nt: normal See xat on nt: normal

   See in Top See Not here!

2 chap1
*******

2.1 Secc2
=========

';


$result_converted{'html_text'}->{'namedanchor'} = '<div class="top-level-extent" id="Top">
<h1 class="top" id="top"><span>top<a class="copiable-link" href="#top"> &para;</a></span></h1>

<a class="namedanchor" id="in-Top"></a>
<ul class="mini-toc">
<li><a href="#chap" accesskey="1">chapter <a class="namedanchor" id="Not-here_0021"></a>after</a></li>
<li><a href="#chap1" accesskey="2">chap1</a></li>
</ul>
<hr>
<div class="chapter-level-extent" id="chap">
<h2 class="chapter" id="chapter-after"><span>1 chapter after<a class="copiable-link" href="#chapter-after"> &para;</a></span></h2>

<a class="namedanchor" id="in-chap-no-name"></a><a class="namedanchor" id="in-chap-empty-name"></a>
<p>Empty namedanchor
.
</p>
<a class="namedanchor" id="normal"></a>
<ul class="mini-toc">
<li><a href="#secc1" accesskey="1">secc1</a></li>
</ul>
<hr>
<div class="section-level-extent" id="secc1">
<h3 class="section" id="secc1-1"><span>1.1 secc1<a class="copiable-link" href="#secc1-1"> &para;</a></span></h3>


<p>See <a class="xref" href="#in-chap-no-name">in chap no name</a>
See <a class="xref" href="#in-chap-no-name">t</a>
See <a class="xref" href="#in-chap-no-name">o</a>
</p>
<p>See <a class="xref" href="#normal">normal</a>
See <a class="xref" href="#normal">nt</a>
See <a class="xref" href="#normal">no</a>
</p>

<p>See <a class="xref" href="#in-chap-empty-name">in chap empty name</a>
See <a class="xref" href="#in-chap-empty-name">xat on t</a>
See <a class="xref" href="#in-chap-empty-name">xat on o</a>
</p>
<p>See <a class="xref" href="#normal">here we are</a>
See <a class="xref" href="#normal">xat on nt</a>
See <a class="xref" href="#normal">xat on no</a>
</p>
<p>See <a class="xref" href="#in-Top"><em class="emph">n in Top</em></a>
See <a class="xref" href="#Not-here_0021">There</a>
</p>
<hr>
</div>
</div>
<div class="chapter-level-extent" id="chap1">
<h2 class="chapter" id="chap1-1"><span>2 chap1<a class="copiable-link" href="#chap1-1"> &para;</a></span></h2>


<ul class="mini-toc">
<li><a href="#secc2" accesskey="1">Secc2</a></li>
</ul>
<hr>
<div class="section-level-extent" id="secc2">
<h3 class="section" id="Secc2"><span>2.1 Secc2<a class="copiable-link" href="#Secc2"> &para;</a></span></h3>
</div>
</div>
</div>
';


$result_converted{'xml'}->{'namedanchor'} = '<node identifier="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">chap</nodenext></node>
<top spaces=" "><sectiontitle>top</sectiontitle>

<namedanchor><anchoridentifier identifier="in-Top">in Top</anchoridentifier><anchorname spaces=" "><emph>n in Top</emph></anchorname></namedanchor>

</top>
<node identifier="chap" spaces=" "><nodename>chap</nodename><nodenext automatic="on">chap1</nodenext><nodeprev automatic="on">Top</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>chapter <namedanchor><anchoridentifier identifier="Not-here_0021">Not here!</anchoridentifier><anchorname spaces=" ">There</anchorname></namedanchor> after</sectiontitle>

<namedanchor><anchoridentifier identifier="in-chap-no-name">in chap no name</anchoridentifier></namedanchor>
<namedanchor><anchoridentifier identifier="in-chap-empty-name">in chap empty name</anchoridentifier><anchorname spaces=" "></anchorname></namedanchor>

<para>Empty namedanchor
<namedanchor><anchoridentifier identifier="" spaces=" "></anchoridentifier></namedanchor>.
</para>
<namedanchor><anchoridentifier identifier="normal">normal</anchoridentifier><anchorname spaces=" ">here we are</anchorname></namedanchor>

<node identifier="secc1" spaces=" "><nodename>secc1</nodename><nodeup automatic="on">chap</nodeup></node>
<section spaces=" "><sectiontitle>secc1</sectiontitle>

<xrefautomaticsectiontitle spaces=" " value="off" line="off"></xrefautomaticsectiontitle>

<para><xref label="in-chap-no-name"><xrefnodename>in chap no name</xrefnodename></xref>
<xref label="in-chap-no-name"><xrefnodename>in chap no name</xrefnodename><xrefinfoname spaces=" ">t</xrefinfoname></xref>
<xref label="in-chap-no-name"><xrefnodename>in chap no name</xrefnodename><xrefinfoname spaces=" ">t</xrefinfoname><xrefprinteddesc spaces=" ">o</xrefprinteddesc></xref>
</para>
<para><xref label="normal"><xrefnodename>normal</xrefnodename></xref>
<xref label="normal"><xrefnodename>normal</xrefnodename><xrefinfoname spaces=" ">nt</xrefinfoname></xref>
<xref label="normal"><xrefnodename>normal</xrefnodename><xrefinfoname spaces=" ">nt</xrefinfoname><xrefprinteddesc spaces=" ">no</xrefprinteddesc></xref>
</para>
<xrefautomaticsectiontitle spaces=" " value="on" line="on"></xrefautomaticsectiontitle>

<para><xref label="in-chap-empty-name"><xrefnodename>in chap empty name</xrefnodename></xref>
<xref label="in-chap-empty-name"><xrefnodename>in chap empty name</xrefnodename><xrefinfoname spaces=" ">xat on t</xrefinfoname></xref>
<xref label="in-chap-empty-name"><xrefnodename>in chap empty name</xrefnodename><xrefinfoname spaces=" ">xat on t</xrefinfoname><xrefprinteddesc spaces=" ">xat on o</xrefprinteddesc></xref>
</para>
<para><xref label="normal"><xrefnodename>normal</xrefnodename></xref>
<xref label="normal"><xrefnodename>normal</xrefnodename><xrefinfoname spaces=" ">xat on nt</xrefinfoname></xref>
<xref label="normal"><xrefnodename>normal</xrefnodename><xrefinfoname spaces=" ">xat on nt</xrefinfoname><xrefprinteddesc spaces=" ">xat on no</xrefprinteddesc></xref>
</para>
<para><xref label="in-Top"><xrefnodename>in Top</xrefnodename></xref>
<xref label="Not-here_0021"><xrefnodename>Not here!</xrefnodename></xref>
</para>
</section>
</chapter>
<node identifier="chap1" spaces=" "><nodename>chap1</nodename><nodeprev automatic="on">chap</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>chap1</sectiontitle>

<menu endspaces=" ">
<menuentry><menuleadingtext>* </menuleadingtext><menunode>secc2</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry><menuentry><menuleadingtext>* </menuleadingtext><menunode>in Top</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry><menuentry><menuleadingtext>* </menuleadingtext><menunode>Not here!</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry><menuentry><menuleadingtext>* </menuleadingtext><menunode>in chap no name</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry><menuentry><menuleadingtext>* </menuleadingtext><menunode>normal</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry><menuentry><menuleadingtext>* </menuleadingtext><menunode>in chap empty name</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry></menu>

<node identifier="secc2" spaces=" "><nodename>secc2</nodename><nodenext automatic="on">in Top</nodenext><nodeup automatic="on">chap1</nodeup></node>
<section spaces=" "><sectiontitle>Secc2</sectiontitle>
</section>
</chapter>
';


$result_converted{'docbook'}->{'namedanchor'} = '<chapter label="1" id="chap">
<title>chapter <anchor id="Not-here_0021"/>after</title>

<anchor id="in-chap-no-name"/><anchor id="in-chap-empty-name"/>
<para>Empty namedanchor
.
</para>
<anchor id="normal"/>
<sect1 label="1.1" id="secc1">
<title>secc1</title>


<para>See <link linkend="in-chap-no-name">in chap no name</link>
See <link linkend="in-chap-no-name">t</link>
See <link linkend="in-chap-no-name">o</link>
</para>
<para>See <link linkend="normal">normal</link>
See <link linkend="normal">nt</link>
See <link linkend="normal">no</link>
</para>

<para>See <link linkend="in-chap-empty-name">in chap empty name</link>
See <link linkend="in-chap-empty-name">xat on t</link>
See <link linkend="in-chap-empty-name">xat on o</link>
</para>
<para>See <link linkend="normal">normal</link>
See <link linkend="normal">xat on nt</link>
See <link linkend="normal">xat on no</link>
</para>
<para>See <link linkend="in-Top">in Top</link>
See <link linkend="Not-here_0021">Not here!</link>
</para>
</sect1>
</chapter>
<chapter label="2" id="chap1">
<title>chap1</title>


<sect1 label="2.1" id="secc2">
<title>Secc2</title>
</sect1>
</chapter>
';


$result_converted{'latex_text'}->{'namedanchor'} = '\\label{anchor:Top}%
\\label{anchor:in-Top}%
\\chapter{{chapter \\label{anchor:Not-here_0021}%
after}}
\\label{anchor:chap}%

\\label{anchor:in-chap-no-name}%
\\label{anchor:in-chap-empty-name}%

Empty namedanchor
\\label{anchor:}%
.

\\label{anchor:normal}%

\\section{{secc1}}
\\label{anchor:secc1}%


See \\hyperref[anchor:in-chap-no-name]{[in chap no name], page~\\pageref*{anchor:in-chap-no-name}}
See \\hyperref[anchor:in-chap-no-name]{[in chap no name], page~\\pageref*{anchor:in-chap-no-name}}
See \\hyperref[anchor:in-chap-no-name]{[o], page~\\pageref*{anchor:in-chap-no-name}}

See \\hyperref[anchor:normal]{[normal], page~\\pageref*{anchor:normal}}
See \\hyperref[anchor:normal]{[normal], page~\\pageref*{anchor:normal}}
See \\hyperref[anchor:normal]{[no], page~\\pageref*{anchor:normal}}


See \\hyperref[anchor:in-chap-empty-name]{[chapter \\label{anchor:Not-here_0021}%
after], page~\\pageref*{anchor:in-chap-empty-name}}
See \\hyperref[anchor:in-chap-empty-name]{[chapter \\label{anchor:Not-here_0021}%
after], page~\\pageref*{anchor:in-chap-empty-name}}
See \\hyperref[anchor:in-chap-empty-name]{[xat on o], page~\\pageref*{anchor:in-chap-empty-name}}

See \\hyperref[anchor:normal]{[here we are], page~\\pageref*{anchor:normal}}
See \\hyperref[anchor:normal]{[here we are], page~\\pageref*{anchor:normal}}
See \\hyperref[anchor:normal]{[xat on no], page~\\pageref*{anchor:normal}}

See \\hyperref[anchor:in-Top]{[\\emph{n in Top}], page~\\pageref*{anchor:in-Top}}
See \\hyperref[anchor:Not-here_0021]{[There], page~\\pageref*{anchor:Not-here_0021}}

\\chapter{{chap1}}
\\label{anchor:chap1}%


\\section{{Secc2}}
\\label{anchor:secc2}%
';

1;
