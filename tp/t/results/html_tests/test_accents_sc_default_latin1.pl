use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'test_accents_sc_default_latin1'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'ISO-8859-1'
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
          'cmdname' => 'documentencoding',
          'extra' => {
            'input_encoding_name' => 'iso-8859-1',
            'input_perl_encoding' => 'iso-8859-1',
            'spaces_before_argument' => ' ',
            'text_arg' => 'ISO-8859-1'
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 1,
            'macro' => ''
          },
          'parent' => {}
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
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => '--a'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'u',
              'contents' => [],
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 3,
                'macro' => ''
              },
              'parent' => {}
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
                      'text' => '--a'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => '^',
              'contents' => [],
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 4,
                'macro' => ''
              },
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '
'
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
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 5,
                'macro' => ''
              },
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => ' '
            },
            {
              'args' => [
                {
                  'contents' => [],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'AA',
              'contents' => [],
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 5,
                'macro' => ''
              },
              'parent' => {}
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
                      'text' => 'e'
                    }
                  ],
                  'parent' => {},
                  'type' => 'following_arg'
                }
              ],
              'cmdname' => '^',
              'contents' => [],
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 5,
                'macro' => ''
              },
              'parent' => {}
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
                      'text' => 'E'
                    }
                  ],
                  'parent' => {},
                  'type' => 'following_arg'
                }
              ],
              'cmdname' => '^',
              'contents' => [],
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 5,
                'macro' => ''
              },
              'parent' => {}
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
                              'text' => 'i'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'dotless',
                      'contents' => [],
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 5,
                        'macro' => ''
                      },
                      'parent' => {}
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => '~',
              'contents' => [],
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 5,
                'macro' => ''
              },
              'parent' => {}
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
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 5,
                'macro' => ''
              },
              'parent' => {}
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
                      'text' => 'r'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'udotaccent',
              'contents' => [],
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 5,
                'macro' => ''
              },
              'parent' => {}
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
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 5,
                        'macro' => ''
                      },
                      'parent' => {}
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'v',
              'contents' => [],
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 5,
                'macro' => ''
              },
              'parent' => {}
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
                                      'text' => 'n'
                                    }
                                  ],
                                  'parent' => {},
                                  'type' => 'brace_command_arg'
                                }
                              ],
                              'cmdname' => '~',
                              'contents' => [],
                              'line_nr' => {
                                'file_name' => '',
                                'line_nr' => 5,
                                'macro' => ''
                              },
                              'parent' => {}
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => ',',
                      'contents' => [],
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 5,
                        'macro' => ''
                      },
                      'parent' => {}
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => '=',
              'contents' => [],
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 5,
                'macro' => ''
              },
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '.
'
            },
            {
              'args' => [
                {
                  'contents' => [],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'equiv',
              'contents' => [],
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 6,
                'macro' => ''
              },
              'parent' => {}
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
                      'args' => [
                        {
                          'contents' => [],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'aa',
                      'contents' => [],
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 7,
                        'macro' => ''
                      },
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => ' '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'AA',
                      'contents' => [],
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 7,
                        'macro' => ''
                      },
                      'parent' => {}
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
                              'text' => 'e'
                            }
                          ],
                          'parent' => {},
                          'type' => 'following_arg'
                        }
                      ],
                      'cmdname' => '^',
                      'contents' => [],
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 7,
                        'macro' => ''
                      },
                      'parent' => {}
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
                              'text' => 'E'
                            }
                          ],
                          'parent' => {},
                          'type' => 'following_arg'
                        }
                      ],
                      'cmdname' => '^',
                      'contents' => [],
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 7,
                        'macro' => ''
                      },
                      'parent' => {}
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
                                      'text' => 'i'
                                    }
                                  ],
                                  'parent' => {},
                                  'type' => 'brace_command_arg'
                                }
                              ],
                              'cmdname' => 'dotless',
                              'contents' => [],
                              'line_nr' => {
                                'file_name' => '',
                                'line_nr' => 7,
                                'macro' => ''
                              },
                              'parent' => {}
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => '~',
                      'contents' => [],
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 7,
                        'macro' => ''
                      },
                      'parent' => {}
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
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 7,
                        'macro' => ''
                      },
                      'parent' => {}
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
                              'text' => 'r'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'udotaccent',
                      'contents' => [],
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 7,
                        'macro' => ''
                      },
                      'parent' => {}
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
                              'line_nr' => {
                                'file_name' => '',
                                'line_nr' => 7,
                                'macro' => ''
                              },
                              'parent' => {}
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'v',
                      'contents' => [],
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 7,
                        'macro' => ''
                      },
                      'parent' => {}
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
                                              'text' => 'n'
                                            }
                                          ],
                                          'parent' => {},
                                          'type' => 'brace_command_arg'
                                        }
                                      ],
                                      'cmdname' => '~',
                                      'contents' => [],
                                      'line_nr' => {
                                        'file_name' => '',
                                        'line_nr' => 7,
                                        'macro' => ''
                                      },
                                      'parent' => {}
                                    }
                                  ],
                                  'parent' => {},
                                  'type' => 'brace_command_arg'
                                }
                              ],
                              'cmdname' => ',',
                              'contents' => [],
                              'line_nr' => {
                                'file_name' => '',
                                'line_nr' => 7,
                                'macro' => ''
                              },
                              'parent' => {}
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => '=',
                      'contents' => [],
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 7,
                        'macro' => ''
                      },
                      'parent' => {}
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'sc',
              'contents' => [],
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 7,
                'macro' => ''
              },
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '.
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
          'contents' => [
            {
              'parent' => {},
              'text' => '--- -- \'` \'\' ``
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
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'exclamdown',
              'contents' => [],
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 11,
                'macro' => ''
              },
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => ' '
            },
            {
              'args' => [
                {
                  'contents' => [],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'comma',
              'contents' => [],
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 11,
                'macro' => ''
              },
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => ' '
            },
            {
              'args' => [
                {
                  'contents' => [],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'copyright',
              'contents' => [],
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 11,
                'macro' => ''
              },
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => ' '
            },
            {
              'args' => [
                {
                  'contents' => [],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'dots',
              'contents' => [],
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 11,
                'macro' => ''
              },
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => ' '
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
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 11,
                'macro' => ''
              },
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => ' '
            },
            {
              'args' => [
                {
                  'contents' => [],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'quotedblleft',
              'contents' => [],
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 11,
                'macro' => ''
              },
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => ' '
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
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 11,
                'macro' => ''
              },
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => ' '
            },
            {
              'args' => [
                {
                  'contents' => [],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'expansion',
              'contents' => [],
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 11,
                'macro' => ''
              },
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '
'
            },
            {
              'args' => [
                {
                  'contents' => [],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'minus',
              'contents' => [],
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 12,
                'macro' => ''
              },
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => ' '
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
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 12,
                'macro' => ''
              },
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
      'parent' => {},
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[0];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'args'}[0];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[2];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[3]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[4];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[4]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[5]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[6];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[6]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[7]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[8]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[8]{'args'}[0];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[8]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[8];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[8]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[9]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[10]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[10]{'args'}[0];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[10]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[10];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[10]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[11]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[12]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[12]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[12]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[12]{'args'}[0]{'contents'}[0];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[12]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[12]{'args'}[0];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[12]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[12];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[12]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[13]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[14]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[14]{'args'}[0];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[14]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[14];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[14]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[15]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[16]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[16]{'args'}[0];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[16]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[16];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[16]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[17]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[18]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[18]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[18]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[18]{'args'}[0]{'contents'}[0];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[18]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[18]{'args'}[0];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[18]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[18];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[18]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[19]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[20]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[20]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[20]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[20]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[20]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[20]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[20]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[20]{'args'}[0]{'contents'}[0];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[20]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[20]{'args'}[0];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[20]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[20];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[20]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[21]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[22]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[22];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[22]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[23]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[24]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[24]{'args'}[0]{'contents'}[0];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[24]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[24]{'args'}[0];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[24]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[24]{'args'}[0];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[24]{'args'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[24]{'args'}[0]{'contents'}[2];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[24]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[24]{'args'}[0];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[24]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[24]{'args'}[0];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[24]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[24]{'args'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[24]{'args'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[24]{'args'}[0]{'contents'}[4];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[24]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[24]{'args'}[0];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[24]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[24]{'args'}[0];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[24]{'args'}[0]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[24]{'args'}[0]{'contents'}[6]{'args'}[0];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[24]{'args'}[0]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[24]{'args'}[0]{'contents'}[6];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[24]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[24]{'args'}[0];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[24]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[24]{'args'}[0];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[24]{'args'}[0]{'contents'}[8]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[24]{'args'}[0]{'contents'}[8]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[24]{'args'}[0]{'contents'}[8]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[24]{'args'}[0]{'contents'}[8]{'args'}[0]{'contents'}[0];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[24]{'args'}[0]{'contents'}[8]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[24]{'args'}[0]{'contents'}[8]{'args'}[0];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[24]{'args'}[0]{'contents'}[8]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[24]{'args'}[0]{'contents'}[8];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[24]{'args'}[0]{'contents'}[8]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[24]{'args'}[0];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[24]{'args'}[0]{'contents'}[9]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[24]{'args'}[0];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[24]{'args'}[0]{'contents'}[10]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[24]{'args'}[0]{'contents'}[10]{'args'}[0];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[24]{'args'}[0]{'contents'}[10]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[24]{'args'}[0]{'contents'}[10];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[24]{'args'}[0]{'contents'}[10]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[24]{'args'}[0];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[24]{'args'}[0]{'contents'}[11]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[24]{'args'}[0];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[24]{'args'}[0]{'contents'}[12]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[24]{'args'}[0]{'contents'}[12]{'args'}[0];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[24]{'args'}[0]{'contents'}[12]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[24]{'args'}[0]{'contents'}[12];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[24]{'args'}[0]{'contents'}[12]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[24]{'args'}[0];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[24]{'args'}[0]{'contents'}[13]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[24]{'args'}[0];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[24]{'args'}[0]{'contents'}[14]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[24]{'args'}[0]{'contents'}[14]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[24]{'args'}[0]{'contents'}[14]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[24]{'args'}[0]{'contents'}[14]{'args'}[0]{'contents'}[0];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[24]{'args'}[0]{'contents'}[14]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[24]{'args'}[0]{'contents'}[14]{'args'}[0];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[24]{'args'}[0]{'contents'}[14]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[24]{'args'}[0]{'contents'}[14];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[24]{'args'}[0]{'contents'}[14]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[24]{'args'}[0];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[24]{'args'}[0]{'contents'}[15]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[24]{'args'}[0];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[24]{'args'}[0]{'contents'}[16]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[24]{'args'}[0]{'contents'}[16]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[24]{'args'}[0]{'contents'}[16]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[24]{'args'}[0]{'contents'}[16]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[24]{'args'}[0]{'contents'}[16]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[24]{'args'}[0]{'contents'}[16]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[24]{'args'}[0]{'contents'}[16]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[24]{'args'}[0]{'contents'}[16]{'args'}[0]{'contents'}[0];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[24]{'args'}[0]{'contents'}[16]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[24]{'args'}[0]{'contents'}[16]{'args'}[0];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[24]{'args'}[0]{'contents'}[16]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[24]{'args'}[0]{'contents'}[16];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[24]{'args'}[0]{'contents'}[16]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[24]{'args'}[0];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[24]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[24];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[24]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'contents'}[25]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[4];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[6]{'contents'}[0];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[6];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[6]{'contents'}[1]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[6];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[6]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[6]{'contents'}[2];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[6]{'contents'}[2]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[6];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[6]{'contents'}[3]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[6];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[6]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[6]{'contents'}[4];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[6]{'contents'}[4]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[6];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[6]{'contents'}[5]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[6];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[6]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[6]{'contents'}[6];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[6]{'contents'}[6]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[6];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[6]{'contents'}[7]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[6];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[6]{'contents'}[8]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[6]{'contents'}[8];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[6]{'contents'}[8]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[6];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[6]{'contents'}[9]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[6];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[6]{'contents'}[10]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[6]{'contents'}[10];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[6]{'contents'}[10]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[6];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[6]{'contents'}[11]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[6];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[6]{'contents'}[12]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[6]{'contents'}[12];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[6]{'contents'}[12]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[6];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[6]{'contents'}[13]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[6];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[6]{'contents'}[14]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[6]{'contents'}[14];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[6]{'contents'}[14]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[6];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[6]{'contents'}[15]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[6];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[6]{'contents'}[16]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[6]{'contents'}[16];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[6]{'contents'}[16]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[6];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[6]{'contents'}[17]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[6];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[6]{'contents'}[18]{'args'}[0]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[6]{'contents'}[18];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[6]{'contents'}[18]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[6];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[6]{'contents'}[19]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[6];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'contents'}[6]{'parent'} = $result_trees{'test_accents_sc_default_latin1'}{'contents'}[0];
$result_trees{'test_accents_sc_default_latin1'}{'contents'}[0]{'parent'} = $result_trees{'test_accents_sc_default_latin1'};

$result_texis{'test_accents_sc_default_latin1'} = '@documentencoding ISO-8859-1

@u{--a}
@^{--a}
@aa{} @AA{} @^e @^E @~{@dotless{i}} @dotless{i} @udotaccent{r} @v{@\'{r}} @={@,{@~{n}}}.
@equiv{}
@sc{@aa{} @AA{} @^e @^E @~{@dotless{i}} @dotless{i} @udotaccent{r} @v{@\'{r}} @={@,{@~{n}}}}.

--- -- \'` \'\' ``

@exclamdown{} @comma{} @copyright{} @dots{} @enddots{} @quotedblleft{} @error{} @expansion{}
@minus{} @registeredsymbol{}
';


$result_texts{'test_accents_sc_default_latin1'} = '
-a(
-a^
aa AA e^ E^ i~ i .r r\'< n~,=.
==
AA AA E^ E^ I~ I .R R\'< N~,=.

-- - \'` " "

! , (C) ... ... " error--> ==>
- (R)
';

$result_errors{'test_accents_sc_default_latin1'} = [];


$result_floats{'test_accents_sc_default_latin1'} = {};



$result_converted{'html_text'}->{'test_accents_sc_default_latin1'} = '
<p>&ndash;a&#774;
&ndash;a&#770;
&aring; &Aring; &ecirc; &Ecirc; &#297; i &#7771; &#341;&#780; &ntilde;&#807;&#772;.
&equiv;
<small>&Aring; &Aring; &Ecirc; &Ecirc; &#296; I &#7770; &#340;&#780; &Ntilde;&#807;&#772;</small>.
</p>
<p>&mdash; &ndash; &rsquo;&lsquo; &rdquo; &ldquo;
</p>
<p>&iexcl; , &copy; &hellip; <small class="enddots">...</small> &ldquo; error&rarr; &rarr;
- &reg;
</p>';

1;
