use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'float_copying'} = {
  'contents' => [
    {
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
            }
          ],
          'type' => 'preamble_before_setfilename'
        },
        {
          'contents' => [
            {
              'cmdname' => 'setfilename',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'float_copying.info'
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
                'text_arg' => 'float_copying.info'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'file_name' => 'float_copying.texi',
                'line_nr' => 3
              }
            },
            {
              'text' => '
',
              'type' => 'empty_line'
            },
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
                  'cmdname' => 'float',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'Copyright notice'
                            }
                          ],
                          'type' => 'block_line_arg'
                        },
                        {
                          'contents' => [
                            {
                              'text' => 'public domain'
                            }
                          ],
                          'info' => {
                            'spaces_after_argument' => {
                              'text' => '
'
                            },
                            'spaces_before_argument' => {
                              'text' => ' '
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
                      'contents' => [
                        {
                          'text' => 'Public domain is not really a licence, as it means than 
'
                        },
                        {
                          'text' => 'the author abandon his copyright.
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
                      'cmdname' => 'caption',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'contents' => [
                                {
                                  'text' => 'The Public Domain notice'
                                },
                                {
                                  'cmdname' => 'footnote',
                                  'contents' => [
                                    {
                                      'contents' => [
                                        {
                                          'contents' => [
                                            {
                                              'text' => 'The caption copying footnote
'
                                            },
                                            {
                                              'cmdname' => 'anchor',
                                              'contents' => [
                                                {
                                                  'contents' => [
                                                    {
                                                      'text' => 'caption copying footnote anchor'
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
                                                'normalized' => 'caption-copying-footnote-anchor'
                                              },
                                              'source_info' => {
                                                'file_name' => 'float_copying.texi',
                                                'line_nr' => 14
                                              }
                                            },
                                            {
                                              'text' => '
',
                                              'type' => 'spaces_after_close_brace'
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
                                                  'text' => 'indexed caption copying footnote'
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
                                            'file_name' => 'float_copying.texi',
                                            'line_nr' => 16
                                          },
                                          'type' => 'index_entry_command'
                                        },
                                        {
                                          'cmdname' => 'findex',
                                          'contents' => [
                                            {
                                              'contents' => [
                                                {
                                                  'text' => 'public domain function'
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
                                            'file_name' => 'float_copying.texi',
                                            'line_nr' => 17
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
                                              'text' => 'see '
                                            },
                                            {
                                              'cmdname' => 'ref',
                                              'contents' => [
                                                {
                                                  'contents' => [
                                                    {
                                                      'text' => 'Copying and floats'
                                                    }
                                                  ],
                                                  'extra' => {
                                                    'node_content' => {
                                                      'contents' => [
                                                        {}
                                                      ]
                                                    },
                                                    'normalized' => 'Copying-and-floats'
                                                  },
                                                  'type' => 'brace_arg'
                                                }
                                              ],
                                              'source_info' => {
                                                'file_name' => 'float_copying.texi',
                                                'line_nr' => 19
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
                                      'type' => 'brace_command_context'
                                    }
                                  ],
                                  'extra' => {},
                                  'info' => {
                                    'spaces_before_argument' => {
                                      'text' => '
'
                                    }
                                  },
                                  'source_info' => {
                                    'file_name' => 'float_copying.texi',
                                    'line_nr' => 12
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
                              'cmdname' => 'anchor',
                              'contents' => [
                                {
                                  'contents' => [
                                    {
                                      'text' => 'public domain anchor'
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
                                'normalized' => 'public-domain-anchor'
                              },
                              'source_info' => {
                                'file_name' => 'float_copying.texi',
                                'line_nr' => 23
                              }
                            },
                            {
                              'text' => '
',
                              'type' => 'spaces_after_close_brace'
                            },
                            {
                              'cmdname' => 'cindex',
                              'contents' => [
                                {
                                  'contents' => [
                                    {
                                      'text' => 'indexed caption'
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
                                'file_name' => 'float_copying.texi',
                                'line_nr' => 24
                              },
                              'type' => 'index_entry_command'
                            },
                            {
                              'cmdname' => 'findex',
                              'contents' => [
                                {
                                  'contents' => [
                                    {
                                      'text' => 'indexed caption function'
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
                                  'fn',
                                  2
                                ]
                              },
                              'info' => {
                                'command_name' => 'findex',
                                'spaces_before_argument' => {
                                  'text' => ' '
                                }
                              },
                              'source_info' => {
                                'file_name' => 'float_copying.texi',
                                'line_nr' => 25
                              },
                              'type' => 'index_entry_command'
                            }
                          ],
                          'type' => 'brace_command_context'
                        }
                      ],
                      'extra' => {
                        'float' => {}
                      },
                      'source_info' => {
                        'file_name' => 'float_copying.texi',
                        'line_nr' => 12
                      }
                    },
                    {
                      'text' => '
',
                      'type' => 'spaces_after_close_brace'
                    },
                    {
                      'cmdname' => 'end',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'float'
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
                        'text_arg' => 'float'
                      },
                      'info' => {
                        'spaces_before_argument' => {
                          'text' => ' '
                        }
                      },
                      'source_info' => {
                        'file_name' => 'float_copying.texi',
                        'line_nr' => 27
                      }
                    }
                  ],
                  'extra' => {
                    'caption' => {},
                    'float_type' => 'Copyright notice',
                    'is_target' => 1,
                    'normalized' => 'public-domain'
                  },
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'source_info' => {
                    'file_name' => 'float_copying.texi',
                    'line_nr' => 7
                  }
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
                    'file_name' => 'float_copying.texi',
                    'line_nr' => 28
                  }
                }
              ],
              'source_info' => {
                'file_name' => 'float_copying.texi',
                'line_nr' => 5
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
        'file_name' => 'float_copying.texi',
        'line_nr' => 30
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
          'extra' => {
            'element_node' => {},
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
            'file_name' => 'float_copying.texi',
            'line_nr' => 33
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
              'text' => 'See the caption '
            },
            {
              'cmdname' => 'ref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'public domain anchor'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'public-domain-anchor'
                  },
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'file_name' => 'float_copying.texi',
                'line_nr' => 35
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
          'contents' => [
            {
              'text' => 'See the float '
            },
            {
              'cmdname' => 'ref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'public domain'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'public-domain'
                  },
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'file_name' => 'float_copying.texi',
                'line_nr' => 37
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
            'file_name' => 'float_copying.texi',
            'line_nr' => 39
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
                      'text' => 'Copying and floats'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'Copying-and-floats'
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
                'file_name' => 'float_copying.texi',
                'line_nr' => 42
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
                'file_name' => 'float_copying.texi',
                'line_nr' => 43
              }
            }
          ],
          'source_info' => {
            'file_name' => 'float_copying.texi',
            'line_nr' => 41
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
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'file_name' => 'float_copying.texi',
        'line_nr' => 31
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
                  'text' => 'Copying and floats'
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
        'normalized' => 'Copying-and-floats'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'file_name' => 'float_copying.texi',
        'line_nr' => 45
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
                  'text' => 'Copying and floats'
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
              'text' => 'In the appendix, we print the references and the copying once more
'
            },
            {
              'text' => 'and the list of coyright notices (listoffloats).
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
              'text' => 'See the caption '
            },
            {
              'cmdname' => 'ref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'public domain anchor'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'public-domain-anchor'
                  },
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'file_name' => 'float_copying.texi',
                'line_nr' => 51
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
          'contents' => [
            {
              'text' => 'See the float '
            },
            {
              'cmdname' => 'ref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'public domain'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'public-domain'
                  },
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'file_name' => 'float_copying.texi',
                'line_nr' => 53
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
          'cmdname' => 'cindex',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'listofloats'
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
            'file_name' => 'float_copying.texi',
            'line_nr' => 55
          },
          'type' => 'index_entry_command'
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
            'file_name' => 'float_copying.texi',
            'line_nr' => 57
          }
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
            'file_name' => 'float_copying.texi',
            'line_nr' => 58
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'subheading',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'listoffloats'
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
          'extra' => {},
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'file_name' => 'float_copying.texi',
            'line_nr' => 60
          }
        },
        {
          'cmdname' => 'listoffloats',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'Copyright notice'
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
            'float_type' => 'Copyright notice'
          },
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'file_name' => 'float_copying.texi',
            'line_nr' => 61
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'subheading',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'printindex'
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
          'extra' => {},
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'file_name' => 'float_copying.texi',
            'line_nr' => 63
          }
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
            'file_name' => 'float_copying.texi',
            'line_nr' => 64
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
            'file_name' => 'float_copying.texi',
            'line_nr' => 65
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
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
        'file_name' => 'float_copying.texi',
        'line_nr' => 46
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
$result_trees{'float_copying'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'contents'}[2]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[5]{'contents'}[1]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'float_copying'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'contents'}[2]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[5]{'contents'}[1]{'contents'}[0]{'contents'}[0];
$result_trees{'float_copying'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'contents'}[2]{'contents'}[4]{'extra'}{'float'} = $result_trees{'float_copying'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'contents'}[2];
$result_trees{'float_copying'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'contents'}[2]{'extra'}{'caption'} = $result_trees{'float_copying'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'contents'}[2]{'contents'}[4];
$result_trees{'float_copying'}{'contents'}[2]{'contents'}[2]{'extra'}{'element_node'} = $result_trees{'float_copying'}{'contents'}[1];
$result_trees{'float_copying'}{'contents'}[2]{'contents'}[4]{'contents'}[1]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'float_copying'}{'contents'}[2]{'contents'}[4]{'contents'}[1]{'contents'}[0]{'contents'}[0];
$result_trees{'float_copying'}{'contents'}[2]{'contents'}[6]{'contents'}[1]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'float_copying'}{'contents'}[2]{'contents'}[6]{'contents'}[1]{'contents'}[0]{'contents'}[0];
$result_trees{'float_copying'}{'contents'}[2]{'contents'}[10]{'contents'}[1]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'float_copying'}{'contents'}[2]{'contents'}[10]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'float_copying'}{'contents'}[4]{'contents'}[4]{'contents'}[1]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'float_copying'}{'contents'}[4]{'contents'}[4]{'contents'}[1]{'contents'}[0]{'contents'}[0];
$result_trees{'float_copying'}{'contents'}[4]{'contents'}[6]{'contents'}[1]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'float_copying'}{'contents'}[4]{'contents'}[6]{'contents'}[1]{'contents'}[0]{'contents'}[0];
$result_trees{'float_copying'}{'contents'}[4]{'contents'}[8]{'extra'}{'element_node'} = $result_trees{'float_copying'}{'contents'}[3];

$result_texis{'float_copying'} = '\\input texinfo @c -*-texinfo-*-

@setfilename float_copying.info

@copying 

@float Copyright notice, public domain

Public domain is not really a licence, as it means than 
the author abandon his copyright.

@caption{The Public Domain notice@footnote{
The caption copying footnote
@anchor{caption copying footnote anchor}

@cindex indexed caption copying footnote
@findex public domain function

see @ref{Copying and floats}.

}

@anchor{public domain anchor}
@cindex indexed caption
@findex indexed caption function
}
@end float
@end copying

@node Top
@top Top

@cindex Top

See the caption @ref{public domain anchor}.

See the float @ref{public domain}.

@insertcopying

@menu
* Copying and floats::
@end menu

@node Copying and floats
@appendix Copying and floats

In the appendix, we print the references and the copying once more
and the list of coyright notices (listoffloats).

See the caption @ref{public domain anchor}.

See the float @ref{public domain}.

@cindex listofloats

@insertcopying
@insertcopying

@subheading listoffloats
@listoffloats Copyright notice

@subheading printindex
@printindex cp
@printindex fn

@bye
';


$result_texts{'float_copying'} = '

Top
***


See the caption public domain anchor.

See the float public domain.


* Copying and floats::

Appendix A Copying and floats
*****************************

In the appendix, we print the references and the copying once more
and the list of coyright notices (listoffloats).

See the caption public domain anchor.

See the float public domain.



listoffloats
------------

printindex
----------

';

$result_sectioning{'float_copying'} = {
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
              'cmdname' => 'appendix',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'isindex' => 1,
                    'normalized' => 'Copying-and-floats'
                  }
                },
                'section_directions' => {
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
$result_sectioning{'float_copying'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'float_copying'}{'extra'}{'section_childs'}[0];
$result_sectioning{'float_copying'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'float_copying'}{'extra'}{'section_childs'}[0];
$result_sectioning{'float_copying'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'float_copying'}{'extra'}{'section_childs'}[0];
$result_sectioning{'float_copying'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'float_copying'};

$result_nodes{'float_copying'} = [
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
            'isindex' => 1,
            'node_directions' => {
              'prev' => {},
              'up' => {}
            },
            'normalized' => 'Copying-and-floats'
          }
        }
      },
      'normalized' => 'Top'
    }
  },
  {}
];
$result_nodes{'float_copying'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'float_copying'}[0];
$result_nodes{'float_copying'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'float_copying'}[0];
$result_nodes{'float_copying'}[1] = $result_nodes{'float_copying'}[0]{'extra'}{'node_directions'}{'next'};

$result_menus{'float_copying'} = [
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
      'normalized' => 'Copying-and-floats'
    }
  }
];
$result_menus{'float_copying'}[1]{'extra'}{'menu_directions'}{'up'} = $result_menus{'float_copying'}[0];

$result_errors{'float_copying'} = [];


$result_floats{'float_copying'} = {
  'Copyright notice' => [
    {
      'cmdname' => 'float',
      'extra' => {
        'caption' => {
          'cmdname' => 'caption',
          'extra' => {
            'float' => {}
          }
        },
        'float_number' => '1',
        'float_type' => 'Copyright notice',
        'normalized' => 'public-domain'
      }
    }
  ]
};
$result_floats{'float_copying'}{'Copyright notice'}[0]{'extra'}{'caption'}{'extra'}{'float'} = $result_floats{'float_copying'}{'Copyright notice'}[0];


$result_indices_sort_strings{'float_copying'} = {
  'cp' => [
    'indexed caption',
    'indexed caption copying footnote',
    'listofloats',
    'Top'
  ],
  'fn' => [
    'indexed caption function',
    'public domain function'
  ]
};


1;
