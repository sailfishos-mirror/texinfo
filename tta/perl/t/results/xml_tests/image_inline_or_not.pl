use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'image_inline_or_not'} = {
  'contents' => [
    {
      'contents' => [
        {
          'cmdname' => 'image',
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
          'extra' => {
            'input_encoding_name' => 'utf-8'
          },
          'source_info' => {
            'line_nr' => 1
          }
        },
        {
          'text' => '
'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'text' => 'Para '
            },
            {
              'cmdname' => 'image',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'hh'
                    }
                  ],
                  'type' => 'brace_arg'
                }
              ],
              'extra' => {
                'input_encoding_name' => 'utf-8'
              },
              'source_info' => {
                'line_nr' => 3
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
        'line_nr' => 5
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
          'cmdname' => 'image',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'B'
                }
              ],
              'type' => 'brace_arg'
            }
          ],
          'extra' => {
            'input_encoding_name' => 'utf-8'
          },
          'source_info' => {
            'line_nr' => 8
          }
        },
        {
          'text' => '
'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'text' => 'Para '
            },
            {
              'cmdname' => 'image',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'jj'
                    }
                  ],
                  'type' => 'brace_arg'
                }
              ],
              'extra' => {
                'input_encoding_name' => 'utf-8'
              },
              'source_info' => {
                'line_nr' => 10
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
          'cmdname' => 'example',
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
                  'text' => '
',
                  'type' => 'empty_line'
                },
                {
                  'cmdname' => 'image',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'in_example'
                        }
                      ],
                      'type' => 'brace_arg'
                    }
                  ],
                  'extra' => {
                    'input_encoding_name' => 'utf-8'
                  },
                  'source_info' => {
                    'line_nr' => 14
                  }
                },
                {
                  'text' => '
'
                },
                {
                  'text' => '
',
                  'type' => 'empty_line'
                },
                {
                  'text' => 'T
'
                },
                {
                  'cmdname' => 'image',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'in example after text'
                        }
                      ],
                      'type' => 'brace_arg'
                    }
                  ],
                  'extra' => {
                    'input_encoding_name' => 'utf-8'
                  },
                  'source_info' => {
                    'line_nr' => 17
                  }
                },
                {
                  'text' => '
'
                }
              ],
              'type' => 'preformatted'
            },
            {
              'cmdname' => 'end',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'example'
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
                'text_arg' => 'example'
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
          ],
          'source_info' => {
            'line_nr' => 12
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'quotation',
          'contents' => [
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => 'image',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'in_quotation_arg'
                            }
                          ],
                          'type' => 'brace_arg'
                        }
                      ],
                      'extra' => {
                        'input_encoding_name' => 'utf-8'
                      },
                      'source_info' => {
                        'line_nr' => 20
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
              'cmdname' => 'image',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'in_quotation_content'
                    }
                  ],
                  'type' => 'brace_arg'
                }
              ],
              'extra' => {
                'input_encoding_name' => 'utf-8'
              },
              'source_info' => {
                'line_nr' => 21
              }
            },
            {
              'text' => '
'
            },
            {
              'cmdname' => 'end',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'quotation'
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
                'text_arg' => 'quotation'
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
          ],
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
          'cmdname' => 'table',
          'contents' => [
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => 'asis',
                      'source_info' => {
                        'line_nr' => 24
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
                          'contents' => [
                            {
                              'cmdname' => 'image',
                              'contents' => [
                                {
                                  'contents' => [
                                    {
                                      'text' => 'in_table_item'
                                    }
                                  ],
                                  'type' => 'brace_arg'
                                }
                              ],
                              'extra' => {
                                'input_encoding_name' => 'utf-8'
                              },
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
                      'info' => {
                        'spaces_before_argument' => {
                          'text' => ' '
                        }
                      },
                      'source_info' => {
                        'line_nr' => 25
                      }
                    }
                  ],
                  'type' => 'table_term'
                },
                {
                  'contents' => [
                    {
                      'text' => '
',
                      'type' => 'empty_line'
                    },
                    {
                      'cmdname' => 'image',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'in_table_def'
                            }
                          ],
                          'type' => 'brace_arg'
                        }
                      ],
                      'extra' => {
                        'input_encoding_name' => 'utf-8'
                      },
                      'source_info' => {
                        'line_nr' => 27
                      }
                    },
                    {
                      'text' => '
'
                    },
                    {
                      'text' => '
',
                      'type' => 'empty_line'
                    },
                    {
                      'contents' => [
                        {
                          'text' => 'AA '
                        },
                        {
                          'cmdname' => 'image',
                          'contents' => [
                            {
                              'contents' => [
                                {
                                  'text' => 'in_table_def_para'
                                }
                              ],
                              'type' => 'brace_arg'
                            }
                          ],
                          'extra' => {
                            'input_encoding_name' => 'utf-8'
                          },
                          'source_info' => {
                            'line_nr' => 29
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
                      'cmdname' => 'image',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'in_table_def_after'
                            }
                          ],
                          'type' => 'brace_arg'
                        }
                      ],
                      'extra' => {
                        'input_encoding_name' => 'utf-8'
                      },
                      'source_info' => {
                        'line_nr' => 31
                      }
                    },
                    {
                      'text' => '
'
                    }
                  ],
                  'type' => 'table_definition'
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
                      'text' => 'table'
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
                'text_arg' => 'table'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 32
              }
            }
          ],
          'extra' => {
            'command_as_argument' => {}
          },
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 24
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
                      'cmdname' => 'image',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'node_image'
                            }
                          ],
                          'type' => 'brace_arg'
                        }
                      ],
                      'extra' => {
                        'input_encoding_name' => 'utf-8'
                      },
                      'source_info' => {
                        'line_nr' => 35
                      }
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'node_005fimage'
                  },
                  'type' => 'menu_entry_node'
                },
                {
                  'text' => ':: ',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'cmdname' => 'image',
                          'contents' => [
                            {
                              'contents' => [
                                {
                                  'text' => 'image_in_description'
                                }
                              ],
                              'type' => 'brace_arg'
                            }
                          ],
                          'extra' => {
                            'input_encoding_name' => 'utf-8'
                          },
                          'source_info' => {
                            'line_nr' => 35
                          }
                        },
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
                'line_nr' => 35
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
                      'cmdname' => 'image',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'in_menu_entry_name'
                            }
                          ],
                          'type' => 'brace_arg'
                        }
                      ],
                      'extra' => {
                        'input_encoding_name' => 'utf-8'
                      },
                      'source_info' => {
                        'line_nr' => 36
                      }
                    }
                  ],
                  'type' => 'menu_entry_name'
                },
                {
                  'text' => ': ',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'text' => '('
                    },
                    {
                      'text' => 'somewhere'
                    },
                    {
                      'text' => ')'
                    },
                    {
                      'cmdname' => 'image',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'extnode'
                            }
                          ],
                          'type' => 'brace_arg'
                        }
                      ],
                      'extra' => {
                        'input_encoding_name' => 'utf-8'
                      },
                      'source_info' => {
                        'line_nr' => 36
                      }
                    }
                  ],
                  'extra' => {
                    'manual_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'extnode'
                  },
                  'type' => 'menu_entry_node'
                },
                {
                  'text' => '.',
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
                'line_nr' => 36
              },
              'type' => 'menu_entry'
            },
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => '
',
                      'type' => 'after_menu_description_line'
                    },
                    {
                      'cmdname' => 'image',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'in_menu_comment'
                            }
                          ],
                          'type' => 'brace_arg'
                        }
                      ],
                      'extra' => {
                        'input_encoding_name' => 'utf-8'
                      },
                      'source_info' => {
                        'line_nr' => 38
                      }
                    },
                    {
                      'text' => '
'
                    }
                  ],
                  'type' => 'preformatted'
                }
              ],
              'type' => 'menu_comment'
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
                'line_nr' => 39
              }
            }
          ],
          'source_info' => {
            'line_nr' => 34
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
        'line_nr' => 6
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
                  'cmdname' => 'image',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'node_image'
                        }
                      ],
                      'type' => 'brace_arg'
                    }
                  ],
                  'extra' => {
                    'input_encoding_name' => 'utf-8'
                  },
                  'source_info' => {
                    'line_nr' => 41
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
          'type' => 'arguments_line'
        }
      ],
      'extra' => {
        'is_target' => 1,
        'normalized' => 'node_005fimage'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 41
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
                  'cmdname' => 'image',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'in_chapter_arg'
                        }
                      ],
                      'type' => 'brace_arg'
                    }
                  ],
                  'extra' => {
                    'input_encoding_name' => 'utf-8'
                  },
                  'source_info' => {
                    'line_nr' => 42
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
          'type' => 'arguments_line'
        },
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
          'contents' => [
            {
              'text' => 'T'
            },
            {
              'cmdname' => 'footnote',
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => 'image',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'in_footnote'
                            }
                          ],
                          'type' => 'brace_arg'
                        }
                      ],
                      'extra' => {
                        'input_encoding_name' => 'utf-8'
                      },
                      'source_info' => {
                        'line_nr' => 46
                      }
                    },
                    {
                      'text' => '
'
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
                'line_nr' => 45
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
              'text' => 'U'
            },
            {
              'cmdname' => 'footnote',
              'contents' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'Some t
'
                        },
                        {
                          'cmdname' => 'image',
                          'contents' => [
                            {
                              'contents' => [
                                {
                                  'text' => 'in text in_footnote'
                                }
                              ],
                              'type' => 'brace_arg'
                            }
                          ],
                          'extra' => {
                            'input_encoding_name' => 'utf-8'
                          },
                          'source_info' => {
                            'line_nr' => 51
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
                'line_nr' => 49
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
          'cmdname' => 'float',
          'contents' => [
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'F'
                    }
                  ],
                  'type' => 'block_line_arg'
                },
                {
                  'contents' => [
                    {
                      'text' => 'g'
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
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'cmdname' => 'image',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'in_float'
                    }
                  ],
                  'type' => 'brace_arg'
                }
              ],
              'extra' => {
                'input_encoding_name' => 'utf-8'
              },
              'source_info' => {
                'line_nr' => 57
              }
            },
            {
              'text' => '
'
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
                      'cmdname' => 'image',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'in_caption'
                            }
                          ],
                          'type' => 'brace_arg'
                        }
                      ],
                      'extra' => {
                        'input_encoding_name' => 'utf-8'
                      },
                      'source_info' => {
                        'line_nr' => 59
                      }
                    },
                    {
                      'contents' => [
                        {
                          'text' => ' PAra '
                        },
                        {
                          'cmdname' => 'image',
                          'contents' => [
                            {
                              'contents' => [
                                {
                                  'text' => 'in_caption_para'
                                }
                              ],
                              'type' => 'brace_arg'
                            }
                          ],
                          'extra' => {
                            'input_encoding_name' => 'utf-8'
                          },
                          'source_info' => {
                            'line_nr' => 59
                          }
                        }
                      ],
                      'type' => 'paragraph'
                    }
                  ],
                  'type' => 'brace_command_context'
                }
              ],
              'extra' => {
                'float' => {}
              },
              'source_info' => {
                'line_nr' => 59
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
                'line_nr' => 60
              }
            }
          ],
          'extra' => {
            'caption' => {},
            'float_section' => {},
            'float_type' => 'F',
            'is_target' => 1,
            'normalized' => 'g'
          },
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 55
          }
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
        'line_nr' => 42
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'image_inline_or_not'}{'contents'}[2]{'contents'}[11]{'extra'}{'command_as_argument'} = $result_trees{'image_inline_or_not'}{'contents'}[2]{'contents'}[11]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'image_inline_or_not'}{'contents'}[2]{'contents'}[13]{'contents'}[1]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'image_inline_or_not'}{'contents'}[2]{'contents'}[13]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'image_inline_or_not'}{'contents'}[2]{'contents'}[13]{'contents'}[2]{'contents'}[3]{'extra'}{'manual_content'}{'contents'}[0] = $result_trees{'image_inline_or_not'}{'contents'}[2]{'contents'}[13]{'contents'}[2]{'contents'}[3]{'contents'}[1];
$result_trees{'image_inline_or_not'}{'contents'}[2]{'contents'}[13]{'contents'}[2]{'contents'}[3]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'image_inline_or_not'}{'contents'}[2]{'contents'}[13]{'contents'}[2]{'contents'}[3]{'contents'}[3];
$result_trees{'image_inline_or_not'}{'contents'}[4]{'contents'}[7]{'contents'}[5]{'extra'}{'float'} = $result_trees{'image_inline_or_not'}{'contents'}[4]{'contents'}[7];
$result_trees{'image_inline_or_not'}{'contents'}[4]{'contents'}[7]{'extra'}{'caption'} = $result_trees{'image_inline_or_not'}{'contents'}[4]{'contents'}[7]{'contents'}[5];
$result_trees{'image_inline_or_not'}{'contents'}[4]{'contents'}[7]{'extra'}{'float_section'} = $result_trees{'image_inline_or_not'}{'contents'}[4];

$result_texis{'image_inline_or_not'} = '@image{A}

Para @image{hh}.

@node Top
@top top

@image{B}

Para @image{jj}.

@example

@image{in_example}

T
@image{in example after text}
@end example

@quotation @image{in_quotation_arg}
@image{in_quotation_content}
@end quotation

@table @asis
@item @image{in_table_item}

@image{in_table_def}

AA @image{in_table_def_para}

@image{in_table_def_after}
@end table

@menu
* @image{node_image}:: @image{image_in_description}
* @image{in_menu_entry_name}: (somewhere)@image{extnode}.

@image{in_menu_comment}
@end menu

@node @image{node_image}
@chapter @image{in_chapter_arg}


T@footnote{
@image{in_footnote}
}

U@footnote{
Some t
@image{in text in_footnote}

}

@float F,g

@image{in_float}

@caption{@image{in_caption} PAra @image{in_caption_para}}
@end float
';


$result_texts{'image_inline_or_not'} = 'A

Para hh.

top
***

B

Para jj.


in_example

T
in example after text

in_quotation_arg
in_quotation_content

in_table_item

in_table_def

AA in_table_def_para

in_table_def_after

* node_image:: image_in_description
* in_menu_entry_name: (somewhere)extnode.

in_menu_comment

1 in_chapter_arg
****************


T

U

F, g

in_float

';

$result_sectioning{'image_inline_or_not'} = {
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
                    'normalized' => 'node_005fimage'
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
$result_sectioning{'image_inline_or_not'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'image_inline_or_not'}{'extra'}{'section_childs'}[0];
$result_sectioning{'image_inline_or_not'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'image_inline_or_not'}{'extra'}{'section_childs'}[0];
$result_sectioning{'image_inline_or_not'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'image_inline_or_not'}{'extra'}{'section_childs'}[0];
$result_sectioning{'image_inline_or_not'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'image_inline_or_not'};

$result_nodes{'image_inline_or_not'} = [
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
              'prev' => {},
              'up' => {}
            },
            'normalized' => 'node_005fimage'
          }
        }
      },
      'normalized' => 'Top'
    }
  },
  {}
];
$result_nodes{'image_inline_or_not'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'image_inline_or_not'}[0];
$result_nodes{'image_inline_or_not'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'image_inline_or_not'}[0];
$result_nodes{'image_inline_or_not'}[1] = $result_nodes{'image_inline_or_not'}[0]{'extra'}{'node_directions'}{'next'};

$result_menus{'image_inline_or_not'} = [
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
        'next' => {
          'extra' => {
            'manual_content' => {},
            'normalized' => 'extnode'
          },
          'type' => 'menu_entry_node'
        },
        'up' => {}
      },
      'normalized' => 'node_005fimage'
    }
  }
];
$result_menus{'image_inline_or_not'}[1]{'extra'}{'menu_directions'}{'up'} = $result_menus{'image_inline_or_not'}[0];

$result_errors{'image_inline_or_not'} = [];


$result_floats{'image_inline_or_not'} = {
  'F' => [
    {
      'cmdname' => 'float',
      'extra' => {
        'caption' => {
          'cmdname' => 'caption',
          'extra' => {
            'float' => {}
          }
        },
        'float_number' => '1.1',
        'float_section' => {
          'cmdname' => 'chapter',
          'extra' => {
            'section_number' => '1'
          }
        },
        'float_type' => 'F',
        'normalized' => 'g'
      }
    }
  ]
};
$result_floats{'image_inline_or_not'}{'F'}[0]{'extra'}{'caption'}{'extra'}{'float'} = $result_floats{'image_inline_or_not'}{'F'}[0];



$result_converted{'xml'}->{'image_inline_or_not'} = '<image><imagefile>A</imagefile></image>

<para>Para <image where="inline"><imagefile>hh</imagefile></image>.
</para>
<node identifier="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on"><image where="inline"><imagefile>node_image</imagefile></image></nodenext></node>
<top spaces=" "><sectiontitle>top</sectiontitle>

<image><imagefile>B</imagefile></image>

<para>Para <image where="inline"><imagefile>jj</imagefile></image>.
</para>
<example endspaces=" ">
<pre xml:space="preserve">
<image where="inline"><imagefile>in_example</imagefile></image>

T
<image where="inline"><imagefile>in example after text</imagefile></image>
</pre></example>

<quotation spaces=" " endspaces=" "><quotationtype><image where="inline"><imagefile>in_quotation_arg</imagefile></image></quotationtype>
<image><imagefile>in_quotation_content</imagefile></image>
</quotation>

<table commandarg="asis" spaces=" " endspaces=" ">
<tableentry><tableterm><item spaces=" "><itemformat command="asis"><image where="inline"><imagefile>in_table_item</imagefile></image></itemformat></item>
</tableterm><tableitem>
<image><imagefile>in_table_def</imagefile></image>

<para>AA <image where="inline"><imagefile>in_table_def_para</imagefile></image>
</para>
<image><imagefile>in_table_def_after</imagefile></image>
</tableitem></tableentry></table>

<menu endspaces=" ">
<menuentry><menuleadingtext>* </menuleadingtext><menunode><image where="inline"><imagefile>node_image</imagefile></image></menunode><menuseparator>:: </menuseparator><menudescription><pre xml:space="preserve"><image where="inline"><imagefile>image_in_description</imagefile></image>
</pre></menudescription></menuentry><menuentry><menuleadingtext>* </menuleadingtext><menutitle><image where="inline"><imagefile>in_menu_entry_name</imagefile></image></menutitle><menuseparator>: </menuseparator><menunode>(somewhere)<image where="inline"><imagefile>extnode</imagefile></image></menunode><menuseparator>.</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry><menucomment><pre xml:space="preserve">
<image where="inline"><imagefile>in_menu_comment</imagefile></image>
</pre></menucomment></menu>

</top>
<node identifier="node_005fimage" spaces=" "><nodename><image where="inline"><imagefile>node_image</imagefile></image></nodename><nodeprev automatic="on">Top</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle><image where="inline"><imagefile>in_chapter_arg</imagefile></image></sectiontitle>


<para>T<footnote spaces="\\n"><image><imagefile>in_footnote</imagefile></image>
</footnote>
</para>
<para>U<footnote spaces="\\n"><para>Some t
<image where="inline"><imagefile>in text in_footnote</imagefile></image>
</para>
</footnote>
</para>
<float identifier="g" type="F" number="1.1" spaces=" " endspaces=" "><floattype>F</floattype><floatname>g</floatname>

<image><imagefile>in_float</imagefile></image>

<caption><image><imagefile>in_caption</imagefile></image><para> PAra <image where="inline"><imagefile>in_caption_para</imagefile></image></para></caption>
</float>
</chapter>
';

1;
