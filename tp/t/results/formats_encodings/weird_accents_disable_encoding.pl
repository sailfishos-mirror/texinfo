use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'weird_accents_disable_encoding'} = {
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
            }
          ],
          'parent' => {},
          'type' => 'preamble_before_content'
        }
      ],
      'parent' => {},
      'type' => 'before_node_section'
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'Top'
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
      'cmdname' => 'node',
      'contents' => [],
      'extra' => {
        'node_content' => [
          {}
        ],
        'nodes_manuals' => [
          {
            'node_content' => [
              {}
            ],
            'normalized' => 'Top'
          }
        ],
        'normalized' => 'Top',
        'spaces_before_argument' => ' '
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
              'text' => 'top'
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
      'cmdname' => 'top',
      'contents' => [
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'extra' => {
        'spaces_before_argument' => ' '
      },
      'parent' => {},
      'source_info' => {
        'file_name' => '',
        'line_nr' => 4,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'chap'
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
      'cmdname' => 'node',
      'contents' => [],
      'extra' => {
        'node_content' => [
          {}
        ],
        'nodes_manuals' => [
          {
            'node_content' => [
              {}
            ],
            'normalized' => 'chap'
          }
        ],
        'normalized' => 'chap',
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
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'Chapter'
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
      'cmdname' => 'chapter',
      'contents' => [
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
                                'line_nr' => 9,
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
                        'line_nr' => 9,
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
                'line_nr' => 9,
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
                                'line_nr' => 11,
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
                        'line_nr' => 11,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'a'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'ubaraccent',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 13,
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
                'line_nr' => 13,
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
                                      'text' => 'r'
                                    }
                                  ],
                                  'parent' => {},
                                  'type' => 'following_arg'
                                }
                              ],
                              'cmdname' => '`',
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
                      'cmdname' => 'udotaccent',
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
              'cmdname' => '^',
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
                                      'text' => 'r'
                                    }
                                  ],
                                  'parent' => {},
                                  'type' => 'brace_command_arg'
                                }
                              ],
                              'cmdname' => '`',
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
                      'cmdname' => '\'',
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
              'cmdname' => '=',
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
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
        }
      ],
      'extra' => {
        'spaces_before_argument' => ' '
      },
      'parent' => {},
      'source_info' => {
        'file_name' => '',
        'line_nr' => 7,
        'macro' => ''
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'weird_accents_disable_encoding'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'weird_accents_disable_encoding'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'weird_accents_disable_encoding'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'weird_accents_disable_encoding'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'weird_accents_disable_encoding'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'weird_accents_disable_encoding'}{'contents'}[0]{'contents'}[0];
$result_trees{'weird_accents_disable_encoding'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'weird_accents_disable_encoding'}{'contents'}[0]{'contents'}[0];
$result_trees{'weird_accents_disable_encoding'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'weird_accents_disable_encoding'}{'contents'}[0];
$result_trees{'weird_accents_disable_encoding'}{'contents'}[0]{'parent'} = $result_trees{'weird_accents_disable_encoding'};
$result_trees{'weird_accents_disable_encoding'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'weird_accents_disable_encoding'}{'contents'}[1]{'args'}[0];
$result_trees{'weird_accents_disable_encoding'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'weird_accents_disable_encoding'}{'contents'}[1];
$result_trees{'weird_accents_disable_encoding'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'weird_accents_disable_encoding'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'weird_accents_disable_encoding'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'weird_accents_disable_encoding'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'weird_accents_disable_encoding'}{'contents'}[1]{'parent'} = $result_trees{'weird_accents_disable_encoding'};
$result_trees{'weird_accents_disable_encoding'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'weird_accents_disable_encoding'}{'contents'}[2]{'args'}[0];
$result_trees{'weird_accents_disable_encoding'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'weird_accents_disable_encoding'}{'contents'}[2];
$result_trees{'weird_accents_disable_encoding'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'weird_accents_disable_encoding'}{'contents'}[2];
$result_trees{'weird_accents_disable_encoding'}{'contents'}[2]{'parent'} = $result_trees{'weird_accents_disable_encoding'};
$result_trees{'weird_accents_disable_encoding'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'weird_accents_disable_encoding'}{'contents'}[3]{'args'}[0];
$result_trees{'weird_accents_disable_encoding'}{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'weird_accents_disable_encoding'}{'contents'}[3];
$result_trees{'weird_accents_disable_encoding'}{'contents'}[3]{'extra'}{'node_content'}[0] = $result_trees{'weird_accents_disable_encoding'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'weird_accents_disable_encoding'}{'contents'}[3]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'weird_accents_disable_encoding'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'weird_accents_disable_encoding'}{'contents'}[3]{'parent'} = $result_trees{'weird_accents_disable_encoding'};
$result_trees{'weird_accents_disable_encoding'}{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'weird_accents_disable_encoding'}{'contents'}[4]{'args'}[0];
$result_trees{'weird_accents_disable_encoding'}{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'weird_accents_disable_encoding'}{'contents'}[4];
$result_trees{'weird_accents_disable_encoding'}{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'weird_accents_disable_encoding'}{'contents'}[4];
$result_trees{'weird_accents_disable_encoding'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'weird_accents_disable_encoding'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'weird_accents_disable_encoding'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'weird_accents_disable_encoding'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'weird_accents_disable_encoding'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'weird_accents_disable_encoding'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'weird_accents_disable_encoding'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'weird_accents_disable_encoding'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'weird_accents_disable_encoding'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'weird_accents_disable_encoding'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'weird_accents_disable_encoding'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'weird_accents_disable_encoding'}{'contents'}[4]{'contents'}[1]{'contents'}[0];
$result_trees{'weird_accents_disable_encoding'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'weird_accents_disable_encoding'}{'contents'}[4]{'contents'}[1];
$result_trees{'weird_accents_disable_encoding'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'weird_accents_disable_encoding'}{'contents'}[4]{'contents'}[1];
$result_trees{'weird_accents_disable_encoding'}{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'weird_accents_disable_encoding'}{'contents'}[4];
$result_trees{'weird_accents_disable_encoding'}{'contents'}[4]{'contents'}[2]{'parent'} = $result_trees{'weird_accents_disable_encoding'}{'contents'}[4];
$result_trees{'weird_accents_disable_encoding'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'weird_accents_disable_encoding'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'weird_accents_disable_encoding'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'weird_accents_disable_encoding'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'weird_accents_disable_encoding'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'weird_accents_disable_encoding'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'weird_accents_disable_encoding'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'weird_accents_disable_encoding'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'weird_accents_disable_encoding'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'weird_accents_disable_encoding'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'args'}[0];
$result_trees{'weird_accents_disable_encoding'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'weird_accents_disable_encoding'}{'contents'}[4]{'contents'}[3]{'contents'}[0];
$result_trees{'weird_accents_disable_encoding'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'weird_accents_disable_encoding'}{'contents'}[4]{'contents'}[3];
$result_trees{'weird_accents_disable_encoding'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'weird_accents_disable_encoding'}{'contents'}[4]{'contents'}[3];
$result_trees{'weird_accents_disable_encoding'}{'contents'}[4]{'contents'}[3]{'parent'} = $result_trees{'weird_accents_disable_encoding'}{'contents'}[4];
$result_trees{'weird_accents_disable_encoding'}{'contents'}[4]{'contents'}[4]{'parent'} = $result_trees{'weird_accents_disable_encoding'}{'contents'}[4];
$result_trees{'weird_accents_disable_encoding'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'weird_accents_disable_encoding'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'weird_accents_disable_encoding'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'weird_accents_disable_encoding'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'weird_accents_disable_encoding'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'weird_accents_disable_encoding'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'args'}[0];
$result_trees{'weird_accents_disable_encoding'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'weird_accents_disable_encoding'}{'contents'}[4]{'contents'}[5]{'contents'}[0];
$result_trees{'weird_accents_disable_encoding'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'parent'} = $result_trees{'weird_accents_disable_encoding'}{'contents'}[4]{'contents'}[5];
$result_trees{'weird_accents_disable_encoding'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'parent'} = $result_trees{'weird_accents_disable_encoding'}{'contents'}[4]{'contents'}[5];
$result_trees{'weird_accents_disable_encoding'}{'contents'}[4]{'contents'}[5]{'parent'} = $result_trees{'weird_accents_disable_encoding'}{'contents'}[4];
$result_trees{'weird_accents_disable_encoding'}{'contents'}[4]{'contents'}[6]{'parent'} = $result_trees{'weird_accents_disable_encoding'}{'contents'}[4];
$result_trees{'weird_accents_disable_encoding'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'weird_accents_disable_encoding'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'weird_accents_disable_encoding'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'weird_accents_disable_encoding'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'weird_accents_disable_encoding'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'weird_accents_disable_encoding'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'weird_accents_disable_encoding'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'weird_accents_disable_encoding'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'weird_accents_disable_encoding'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'weird_accents_disable_encoding'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'args'}[0];
$result_trees{'weird_accents_disable_encoding'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'weird_accents_disable_encoding'}{'contents'}[4]{'contents'}[7]{'contents'}[0];
$result_trees{'weird_accents_disable_encoding'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'parent'} = $result_trees{'weird_accents_disable_encoding'}{'contents'}[4]{'contents'}[7];
$result_trees{'weird_accents_disable_encoding'}{'contents'}[4]{'contents'}[7]{'contents'}[1]{'parent'} = $result_trees{'weird_accents_disable_encoding'}{'contents'}[4]{'contents'}[7];
$result_trees{'weird_accents_disable_encoding'}{'contents'}[4]{'contents'}[7]{'parent'} = $result_trees{'weird_accents_disable_encoding'}{'contents'}[4];
$result_trees{'weird_accents_disable_encoding'}{'contents'}[4]{'contents'}[8]{'parent'} = $result_trees{'weird_accents_disable_encoding'}{'contents'}[4];
$result_trees{'weird_accents_disable_encoding'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'weird_accents_disable_encoding'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'weird_accents_disable_encoding'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'weird_accents_disable_encoding'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'weird_accents_disable_encoding'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'weird_accents_disable_encoding'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'weird_accents_disable_encoding'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'weird_accents_disable_encoding'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'weird_accents_disable_encoding'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'weird_accents_disable_encoding'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'args'}[0];
$result_trees{'weird_accents_disable_encoding'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'weird_accents_disable_encoding'}{'contents'}[4]{'contents'}[9]{'contents'}[0];
$result_trees{'weird_accents_disable_encoding'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'parent'} = $result_trees{'weird_accents_disable_encoding'}{'contents'}[4]{'contents'}[9];
$result_trees{'weird_accents_disable_encoding'}{'contents'}[4]{'contents'}[9]{'contents'}[1]{'parent'} = $result_trees{'weird_accents_disable_encoding'}{'contents'}[4]{'contents'}[9];
$result_trees{'weird_accents_disable_encoding'}{'contents'}[4]{'contents'}[9]{'parent'} = $result_trees{'weird_accents_disable_encoding'}{'contents'}[4];
$result_trees{'weird_accents_disable_encoding'}{'contents'}[4]{'parent'} = $result_trees{'weird_accents_disable_encoding'};

$result_texis{'weird_accents_disable_encoding'} = '@documentencoding ISO-8859-1

@node Top
@top top

@node chap
@chapter Chapter

@={@~{@dotless{i}}}

@={@,{@~{n}}}

@={@ubaraccent{a}}

@^{@udotaccent{@`r}}

@={@\'{@`{r}}}
';


$result_texts{'weird_accents_disable_encoding'} = '
top
***

1 Chapter
*********

i~=

n~,=

a_=

.r`^

r`\'=
';

$result_sectioning{'weird_accents_disable_encoding'} = {
  'structure' => {
    'section_childs' => [
      {
        'cmdname' => 'top',
        'extra' => {
          'associated_node' => {
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'Top'
            },
            'structure' => {}
          }
        },
        'structure' => {
          'section_childs' => [
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => 'chap'
                  },
                  'structure' => {}
                }
              },
              'structure' => {
                'section_level' => 1,
                'section_number' => 1,
                'section_up' => {},
                'toplevel_prev' => {},
                'toplevel_up' => {}
              }
            }
          ],
          'section_level' => 0,
          'section_up' => {}
        }
      }
    ],
    'section_level' => -1
  }
};
$result_sectioning{'weird_accents_disable_encoding'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'weird_accents_disable_encoding'}{'structure'}{'section_childs'}[0];
$result_sectioning{'weird_accents_disable_encoding'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_prev'} = $result_sectioning{'weird_accents_disable_encoding'}{'structure'}{'section_childs'}[0];
$result_sectioning{'weird_accents_disable_encoding'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_up'} = $result_sectioning{'weird_accents_disable_encoding'}{'structure'}{'section_childs'}[0];
$result_sectioning{'weird_accents_disable_encoding'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'weird_accents_disable_encoding'};

$result_nodes{'weird_accents_disable_encoding'} = {
  'cmdname' => 'node',
  'extra' => {
    'associated_section' => {
      'cmdname' => 'top',
      'extra' => {},
      'structure' => {}
    },
    'normalized' => 'Top'
  },
  'structure' => {
    'node_next' => {
      'cmdname' => 'node',
      'extra' => {
        'associated_section' => {
          'cmdname' => 'chapter',
          'extra' => {},
          'structure' => {
            'section_number' => 1
          }
        },
        'normalized' => 'chap'
      },
      'structure' => {
        'node_prev' => {},
        'node_up' => {}
      }
    }
  }
};
$result_nodes{'weird_accents_disable_encoding'}{'structure'}{'node_next'}{'structure'}{'node_prev'} = $result_nodes{'weird_accents_disable_encoding'};
$result_nodes{'weird_accents_disable_encoding'}{'structure'}{'node_next'}{'structure'}{'node_up'} = $result_nodes{'weird_accents_disable_encoding'};

$result_menus{'weird_accents_disable_encoding'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  },
  'structure' => {}
};

$result_errors{'weird_accents_disable_encoding'} = [];


$result_floats{'weird_accents_disable_encoding'} = {};



$result_converted{'plaintext'}->{'weird_accents_disable_encoding'} = 'top
***

1 Chapter
*********

i~=

   n~,=

   a_=

   .r`^

   r`\'=
';


$result_converted{'html_text'}->{'weird_accents_disable_encoding'} = '
<div class="top-level-extent" id="Top">
<div class="nav-panel">
<p>
 &nbsp; </p>
</div>
<h1 class="top" id="top">top</h1>

<ul class="mini-toc">
<li><a href="#chap" accesskey="1">Chapter</a></li>
</ul>
<hr>
<div class="chapter-level-extent" id="chap">
<div class="nav-panel">
<p>
 &nbsp; </p>
</div>
<h2 class="chapter" id="Chapter">1 Chapter</h2>

<p>&#297;&#772;
</p>
<p>&ntilde;&#807;&#772;
</p>
<p>a&#818;&#772;
</p>
<p>r&#768;&#803;&#770;
</p>
<p>r&#768;&#769;&#772;
</p></div>
</div>
';


$result_converted{'xml'}->{'weird_accents_disable_encoding'} = '<documentencoding encoding="ISO-8859-1" spaces=" ">ISO-8859-1</documentencoding>

<node name="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">chap</nodenext></node>
<top spaces=" "><sectiontitle>top</sectiontitle>

</top>
<node name="chap" spaces=" "><nodename>chap</nodename><nodeprev automatic="on">Top</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>Chapter</sectiontitle>

<para><accent type="macr"><accent type="tilde"><dotless>i</dotless></accent></accent>
</para>
<para><accent type="macr"><accent type="cedil"><accent type="tilde">n</accent></accent></accent>
</para>
<para><accent type="macr"><accent type="ubaraccent">a</accent></accent>
</para>
<para><accent type="circ"><accent type="udotaccent"><accent type="grave" bracketed="off">r</accent></accent></accent>
</para>
<para><accent type="macr"><accent type="acute"><accent type="grave">r</accent></accent></accent>
</para></chapter>
';


$result_converted{'docbook'}->{'weird_accents_disable_encoding'} = '<chapter label="1" id="chap">
<title>Chapter</title>

<para>&#297;&#772;
</para>
<para>&#241;&#807;&#772;
</para>
<para>a&#818;&#772;
</para>
<para>r&#768;&#803;&#770;
</para>
<para>r&#768;&#769;&#772;
</para></chapter>
';

1;
