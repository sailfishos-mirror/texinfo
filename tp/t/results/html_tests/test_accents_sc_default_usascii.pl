use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'test_accents_sc_default_usascii'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'text' => '\\input texinfo
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
        },
        {
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'US-ASCII'
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
              'cmdname' => 'documentencoding',
              'extra' => {
                'input_encoding_name' => 'us-ascii',
                'text_arg' => 'US-ASCII'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                'line_nr' => 3
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
      'args' => [
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
      'cmdname' => 'node',
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
        'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
        'line_nr' => 5
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'text' => 'top section'
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
      'cmdname' => 'top',
      'contents' => [
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
        'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
        'line_nr' => 6
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'text' => 'node chap'
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
      'cmdname' => 'node',
      'extra' => {
        'is_target' => 1,
        'normalized' => 'node-chap'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
        'line_nr' => 8
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'text' => 'chapter'
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
      'cmdname' => 'chapter',
      'contents' => [
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'text' => '``in double q\'\'. `in simple q\'.
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
              'cmdname' => '\'',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'e'
                    }
                  ],
                  'type' => 'following_arg'
                }
              ],
              'source_info' => {
                'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                'line_nr' => 13
              }
            },
            {
              'text' => ', --- '
            },
            {
              'cmdname' => 'dfn',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'def'
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                'line_nr' => 13
              }
            },
            {
              'text' => ' -- '
            },
            {
              'cmdname' => 'code',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'in code'
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                'line_nr' => 13
              }
            },
            {
              'text' => '. '
            },
            {
              'cmdname' => 'samp',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'in samp'
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                'line_nr' => 13
              }
            },
            {
              'text' => ' a'
            },
            {
              'cmdname' => '\'',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'e'
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                'line_nr' => 13
              }
            },
            {
              'text' => '. '
            },
            {
              'cmdname' => 'comma',
              'contents' => [
                {
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                'line_nr' => 13
              }
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => 'exclamdown',
              'contents' => [
                {
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                'line_nr' => 13
              }
            },
            {
              'text' => '. '
            },
            {
              'cmdname' => 'dots',
              'contents' => [
                {
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                'line_nr' => 13
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
              'cmdname' => 'geq',
              'contents' => [
                {
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                'line_nr' => 15
              }
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => 'enddots',
              'contents' => [
                {
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                'line_nr' => 15
              }
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => 'AA',
              'contents' => [
                {
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                'line_nr' => 15
              }
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => '\'',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'e'
                    }
                  ],
                  'type' => 'following_arg'
                }
              ],
              'source_info' => {
                'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                'line_nr' => 15
              }
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => 'dotaccent',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'A'
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                'line_nr' => 15
              }
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => 'l',
              'contents' => [
                {
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                'line_nr' => 15
              }
            },
            {
              'text' => '. '
            },
            {
              'cmdname' => 'copyright',
              'contents' => [
                {
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                'line_nr' => 15
              }
            },
            {
              'text' => '. '
            },
            {
              'cmdname' => 'error',
              'contents' => [
                {
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                'line_nr' => 15
              }
            },
            {
              'text' => '.
'
            },
            {
              'cmdname' => 'quotedblleft',
              'contents' => [
                {
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                'line_nr' => 16
              }
            },
            {
              'text' => ' in quotes '
            },
            {
              'cmdname' => 'quotedblright',
              'contents' => [
                {
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                'line_nr' => 16
              }
            },
            {
              'text' => '. '
            },
            {
              'cmdname' => 'expansion',
              'contents' => [
                {
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                'line_nr' => 16
              }
            },
            {
              'text' => '
'
            },
            {
              'cmdname' => 'minus',
              'contents' => [
                {
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                'line_nr' => 17
              }
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => 'registeredsymbol',
              'contents' => [
                {
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                'line_nr' => 17
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
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'cmdname' => 'u',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => '--a'
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                'line_nr' => 20
              }
            },
            {
              'text' => '
'
            },
            {
              'cmdname' => '^',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => '--a'
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                'line_nr' => 21
              }
            },
            {
              'text' => '
'
            },
            {
              'cmdname' => 'aa',
              'contents' => [
                {
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                'line_nr' => 22
              }
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => 'AA',
              'contents' => [
                {
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                'line_nr' => 22
              }
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => '^',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'e'
                    }
                  ],
                  'type' => 'following_arg'
                }
              ],
              'source_info' => {
                'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                'line_nr' => 22
              }
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => '^',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'E'
                    }
                  ],
                  'type' => 'following_arg'
                }
              ],
              'source_info' => {
                'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                'line_nr' => 22
              }
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => '~',
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => 'dotless',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'i'
                            }
                          ],
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                        'line_nr' => 22
                      }
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                'line_nr' => 22
              }
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => 'dotless',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'i'
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                'line_nr' => 22
              }
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => 'udotaccent',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'r'
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                'line_nr' => 22
              }
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => 'v',
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => '\'',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'r'
                            }
                          ],
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                        'line_nr' => 22
                      }
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                'line_nr' => 22
              }
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => '=',
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => ',',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'cmdname' => '~',
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
                                'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                                'line_nr' => 22
                              }
                            }
                          ],
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                        'line_nr' => 22
                      }
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                'line_nr' => 22
              }
            },
            {
              'text' => '.
'
            },
            {
              'cmdname' => 'equiv',
              'contents' => [
                {
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                'line_nr' => 23
              }
            },
            {
              'text' => '
'
            },
            {
              'cmdname' => 'sc',
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => 'aa',
                      'contents' => [
                        {
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                        'line_nr' => 24
                      }
                    },
                    {
                      'text' => ' '
                    },
                    {
                      'cmdname' => 'AA',
                      'contents' => [
                        {
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                        'line_nr' => 24
                      }
                    },
                    {
                      'text' => ' '
                    },
                    {
                      'cmdname' => '^',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'e'
                            }
                          ],
                          'type' => 'following_arg'
                        }
                      ],
                      'source_info' => {
                        'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                        'line_nr' => 24
                      }
                    },
                    {
                      'text' => " \x{e9} "
                    },
                    {
                      'cmdname' => '^',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'E'
                            }
                          ],
                          'type' => 'following_arg'
                        }
                      ],
                      'source_info' => {
                        'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                        'line_nr' => 24
                      }
                    },
                    {
                      'text' => ' '
                    },
                    {
                      'cmdname' => '~',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'cmdname' => 'dotless',
                              'contents' => [
                                {
                                  'contents' => [
                                    {
                                      'text' => 'i'
                                    }
                                  ],
                                  'type' => 'brace_container'
                                }
                              ],
                              'source_info' => {
                                'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                                'line_nr' => 24
                              }
                            }
                          ],
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                        'line_nr' => 24
                      }
                    },
                    {
                      'text' => ' '
                    },
                    {
                      'cmdname' => 'dotless',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'i'
                            }
                          ],
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                        'line_nr' => 24
                      }
                    },
                    {
                      'text' => ' '
                    },
                    {
                      'cmdname' => 'udotaccent',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'r'
                            }
                          ],
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                        'line_nr' => 24
                      }
                    },
                    {
                      'text' => ' '
                    },
                    {
                      'cmdname' => 'v',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'cmdname' => '\'',
                              'contents' => [
                                {
                                  'contents' => [
                                    {
                                      'text' => 'r'
                                    }
                                  ],
                                  'type' => 'brace_container'
                                }
                              ],
                              'source_info' => {
                                'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                                'line_nr' => 24
                              }
                            }
                          ],
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                        'line_nr' => 24
                      }
                    },
                    {
                      'text' => ' '
                    },
                    {
                      'cmdname' => '=',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'cmdname' => ',',
                              'contents' => [
                                {
                                  'contents' => [
                                    {
                                      'cmdname' => '~',
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
                                        'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                                        'line_nr' => 24
                                      }
                                    }
                                  ],
                                  'type' => 'brace_container'
                                }
                              ],
                              'source_info' => {
                                'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                                'line_nr' => 24
                              }
                            }
                          ],
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                        'line_nr' => 24
                      }
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
                'line_nr' => 24
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
      'extra' => {
        'section_number' => '1'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'file_name' => 'punctuation_small_case_accents_us_ascii.texi',
        'line_nr' => 9
      }
    }
  ],
  'type' => 'document_root'
};

$result_texis{'test_accents_sc_default_usascii'} = '\\input texinfo

@documentencoding US-ASCII

@node top
@top top section

@node node chap
@chapter chapter

``in double q\'\'. `in simple q\'.

@\'e, --- @dfn{def} -- @code{in code}. @samp{in samp} a@\'{e}. @comma{} @exclamdown{}. @dots{}

@geq{} @enddots{} @AA{} @\'e @dotaccent{A} @l{}. @copyright{}. @error{}.
@quotedblleft{} in quotes @quotedblright{}. @expansion{}
@minus{} @registeredsymbol{}


@u{--a}
@^{--a}
@aa{} @AA{} @^e @^E @~{@dotless{i}} @dotless{i} @udotaccent{r} @v{@\'{r}} @={@,{@~{n}}}.
@equiv{}
@sc{@aa{} @AA{} @^e é @^E @~{@dotless{i}} @dotless{i} @udotaccent{r} @v{@\'{r}} @={@,{@~{n}}}}.

';


$result_texts{'test_accents_sc_default_usascii'} = '
top section
***********

1 chapter
*********

"in double q". `in simple q\'.

e\', -- def - in code. in samp ae\'. , !. ...

>= ... AA e\' A. /l. (C). error-->.
" in quotes ". ==>
- (R)


-a(
-a^
aa AA e^ E^ i~ i .r r\'< n~,=.
==
AA AA E^ É E^ I~ I .R R\'< N~,=.

';

$result_sectioning{'test_accents_sc_default_usascii'} = {
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
                    'normalized' => 'node-chap'
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
$result_sectioning{'test_accents_sc_default_usascii'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'test_accents_sc_default_usascii'}{'extra'}{'section_childs'}[0];
$result_sectioning{'test_accents_sc_default_usascii'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'test_accents_sc_default_usascii'}{'extra'}{'section_childs'}[0];
$result_sectioning{'test_accents_sc_default_usascii'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'test_accents_sc_default_usascii'}{'extra'}{'section_childs'}[0];
$result_sectioning{'test_accents_sc_default_usascii'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'test_accents_sc_default_usascii'};

$result_nodes{'test_accents_sc_default_usascii'} = [
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
            'normalized' => 'node-chap'
          }
        }
      },
      'normalized' => 'Top'
    }
  },
  {}
];
$result_nodes{'test_accents_sc_default_usascii'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'test_accents_sc_default_usascii'}[0];
$result_nodes{'test_accents_sc_default_usascii'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'test_accents_sc_default_usascii'}[0];
$result_nodes{'test_accents_sc_default_usascii'}[1] = $result_nodes{'test_accents_sc_default_usascii'}[0]{'extra'}{'node_directions'}{'next'};

$result_menus{'test_accents_sc_default_usascii'} = [
  {
    'extra' => {
      'normalized' => 'Top'
    }
  },
  {
    'extra' => {
      'normalized' => 'node-chap'
    }
  }
];

$result_errors{'test_accents_sc_default_usascii'} = [];


$result_floats{'test_accents_sc_default_usascii'} = {};



$result_converted{'html_text'}->{'test_accents_sc_default_usascii'} = '
<div class="top-level-extent" id="Top">
<h1 class="top" id="top-section"><span>top section<a class="copiable-link" href="#top-section"> &para;</a></span></h1>

<ul class="mini-toc">
<li><a href="#node-chap" accesskey="1">chapter</a></li>
</ul>
<hr>
<div class="chapter-level-extent" id="node-chap">
<h2 class="chapter" id="chapter"><span>1 chapter<a class="copiable-link" href="#chapter"> &para;</a></span></h2>

<p>&ldquo;in double q&rdquo;. &lsquo;in simple q&rsquo;.
</p>
<p>&eacute;, &mdash; <em class="dfn">def</em> &ndash; <code class="code">in code</code>. &lsquo;<samp class="samp">in samp</samp>&rsquo; a&eacute;. , &iexcl;. &hellip;
</p>
<p>&ge; <small class="enddots">...</small> &Aring; &eacute; &#550; &#322;. &copy;. error&rarr;.
&ldquo; in quotes &rdquo;. &rarr;
&minus; &reg;
</p>

<p>&ndash;a&#774;
&ndash;a&#770;
&aring; &Aring; &ecirc; &Ecirc; &#297; &inodot; &#7771; &#341;&#780; &ntilde;&#807;&#772;.
&equiv;
<small class="sc">&Aring; &Aring; &Ecirc; É &Ecirc; &#296; I &#7770; &#340;&#780; &Ntilde;&#807;&#772;</small>.
</p>
</div>
</div>
';

1;
