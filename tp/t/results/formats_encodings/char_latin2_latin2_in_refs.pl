use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'char_latin2_latin2_in_refs'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => '\\input texinfo
',
                  'type' => 'text_before_beginning'
                }
              ],
              'parent' => {},
              'type' => 'preamble_before_beginning'
            }
          ],
          'parent' => {},
          'type' => 'preamble_before_setfilename'
        },
        {
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'char_latin2_latin2_in_refs.info'
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
              'cmdname' => 'setfilename',
              'extra' => {
                'spaces_before_argument' => ' ',
                'text_arg' => 'char_latin2_latin2_in_refs.info'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => 'char_latin2_latin2_in_refs.texi',
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
                      'text' => 'ISO-8859-2'
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
                'input_encoding_name' => 'iso-8859-2',
                'input_perl_encoding' => 'iso-8859-2',
                'spaces_before_argument' => ' ',
                'text_arg' => 'ISO-8859-2'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => 'char_latin2_latin2_in_refs.texi',
                'line_nr' => 4,
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
        'isindex' => 1,
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
        'file_name' => 'char_latin2_latin2_in_refs.texi',
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
        },
        {
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => "\x{104} \x{105} \x{2db} \x{118} \x{119}"
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'ref',
              'contents' => [],
              'extra' => {
                'label' => {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => "\x{104} \x{105} \x{2db} \x{118} \x{119}"
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
                        'normalized' => '_0104-_0105-_02db-_0118-_0119'
                      }
                    ],
                    'normalized' => '_0104-_0105-_02db-_0118-_0119',
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => 'char_latin2_latin2_in_refs.texi',
                    'line_nr' => 18,
                    'macro' => ''
                  }
                },
                'node_argument' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => '_0104-_0105-_02db-_0118-_0119'
                }
              },
              'parent' => {},
              'source_info' => {
                'file_name' => 'char_latin2_latin2_in_refs.texi',
                'line_nr' => 9,
                'macro' => ''
              }
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
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'cp'
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
          'cmdname' => 'printindex',
          'extra' => {
            'misc_args' => [
              'cp'
            ],
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => 'char_latin2_latin2_in_refs.texi',
            'line_nr' => 11,
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
              'text' => ' Aogonek(0xa1=0241) aogonek(0xb1=0261) standalone ogonek(0xca=0312) Eogonek(0xea=0352) eogonek
',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'c',
          'extra' => {
            'misc_args' => [
              ' Aogonek(0xa1=0241) aogonek(0xb1=0261) standalone ogonek(0xca=0312) Eogonek(0xea=0352) eogonek
'
            ]
          },
          'parent' => {}
        },
        {
          'cmdname' => 'menu',
          'contents' => [
            {
              'extra' => {
                'command' => {}
              },
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line_after_command'
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => "\x{104} \x{105} \x{2db} \x{118} \x{119}"
                    }
                  ],
                  'parent' => {},
                  'type' => 'menu_entry_node'
                },
                {
                  'parent' => {},
                  'text' => '::',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => '
'
                        }
                      ],
                      'parent' => {},
                      'type' => 'preformatted'
                    }
                  ],
                  'parent' => {},
                  'type' => 'menu_entry_description'
                }
              ],
              'extra' => {
                'menu_entry_description' => {},
                'menu_entry_node' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => '_0104-_0105-_02db-_0118-_0119'
                }
              },
              'parent' => {},
              'source_info' => {
                'file_name' => 'char_latin2_latin2_in_refs.texi',
                'line_nr' => 15,
                'macro' => ''
              },
              'type' => 'menu_entry'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'menu'
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
                'command_argument' => 'menu',
                'spaces_before_argument' => ' ',
                'text_arg' => 'menu'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => 'char_latin2_latin2_in_refs.texi',
                'line_nr' => 16,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'end_command' => {}
          },
          'parent' => {},
          'source_info' => {
            'file_name' => 'char_latin2_latin2_in_refs.texi',
            'line_nr' => 14,
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
        'spaces_before_argument' => ' '
      },
      'parent' => {},
      'source_info' => {
        'file_name' => 'char_latin2_latin2_in_refs.texi',
        'line_nr' => 7,
        'macro' => ''
      }
    },
    {},
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => "\x{104} \x{105} \x{2db} \x{118} \x{119}"
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
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => "\x{104} \x{105} \x{2db} \x{118} \x{119}"
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
          'cmdname' => 'cindex',
          'extra' => {
            'index_entry' => {
              'command' => {},
              'content' => [],
              'content_normalized' => [],
              'in_code' => 0,
              'index_at_command' => 'cindex',
              'index_ignore_chars' => {},
              'index_name' => 'cp',
              'index_type_command' => 'cindex',
              'node' => {},
              'number' => 1
            },
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => 'char_latin2_latin2_in_refs.texi',
            'line_nr' => 21,
            'macro' => ''
          },
          'type' => 'index_entry_command'
        },
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
        'file_name' => 'char_latin2_latin2_in_refs.texi',
        'line_nr' => 19,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'parent' => {},
          'text' => '
',
          'type' => 'misc_arg'
        }
      ],
      'cmdname' => 'bye',
      'parent' => {}
    }
  ],
  'type' => 'document_root'
};
$result_trees{'char_latin2_latin2_in_refs'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'char_latin2_latin2_in_refs'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'char_latin2_latin2_in_refs'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'char_latin2_latin2_in_refs'}{'contents'}[0]{'contents'}[0];
$result_trees{'char_latin2_latin2_in_refs'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'char_latin2_latin2_in_refs'}{'contents'}[0];
$result_trees{'char_latin2_latin2_in_refs'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'char_latin2_latin2_in_refs'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'char_latin2_latin2_in_refs'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'char_latin2_latin2_in_refs'}{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'char_latin2_latin2_in_refs'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'char_latin2_latin2_in_refs'}{'contents'}[0]{'contents'}[1];
$result_trees{'char_latin2_latin2_in_refs'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'char_latin2_latin2_in_refs'}{'contents'}[0]{'contents'}[1];
$result_trees{'char_latin2_latin2_in_refs'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'char_latin2_latin2_in_refs'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0];
$result_trees{'char_latin2_latin2_in_refs'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'char_latin2_latin2_in_refs'}{'contents'}[0]{'contents'}[1]{'contents'}[2];
$result_trees{'char_latin2_latin2_in_refs'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'char_latin2_latin2_in_refs'}{'contents'}[0]{'contents'}[1];
$result_trees{'char_latin2_latin2_in_refs'}{'contents'}[0]{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'char_latin2_latin2_in_refs'}{'contents'}[0]{'contents'}[1];
$result_trees{'char_latin2_latin2_in_refs'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'char_latin2_latin2_in_refs'}{'contents'}[0];
$result_trees{'char_latin2_latin2_in_refs'}{'contents'}[0]{'parent'} = $result_trees{'char_latin2_latin2_in_refs'};
$result_trees{'char_latin2_latin2_in_refs'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'char_latin2_latin2_in_refs'}{'contents'}[1]{'args'}[0];
$result_trees{'char_latin2_latin2_in_refs'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'char_latin2_latin2_in_refs'}{'contents'}[1];
$result_trees{'char_latin2_latin2_in_refs'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'char_latin2_latin2_in_refs'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'char_latin2_latin2_in_refs'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'char_latin2_latin2_in_refs'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'char_latin2_latin2_in_refs'}{'contents'}[1]{'parent'} = $result_trees{'char_latin2_latin2_in_refs'};
$result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2]{'args'}[0];
$result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2];
$result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2];
$result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2]{'contents'}[1]{'contents'}[0];
$result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'label'}{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'label'}{'args'}[0];
$result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'label'}{'args'}[0]{'parent'} = $result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'label'};
$result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'label'}{'extra'}{'node_content'}[0] = $result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'label'}{'args'}[0]{'contents'}[0];
$result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'label'}{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'label'}{'args'}[0]{'contents'}[0];
$result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'label'}{'parent'} = $result_trees{'char_latin2_latin2_in_refs'};
$result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2]{'contents'}[1];
$result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2]{'contents'}[1];
$result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2];
$result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2];
$result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2]{'contents'}[3]{'args'}[0];
$result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2]{'contents'}[3];
$result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2]{'contents'}[3]{'parent'} = $result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2];
$result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2]{'contents'}[4]{'parent'} = $result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2];
$result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2]{'contents'}[5];
$result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2]{'contents'}[5]{'parent'} = $result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2];
$result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2]{'contents'}[6]{'contents'}[0]{'extra'}{'command'} = $result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2]{'contents'}[6];
$result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2]{'contents'}[6]{'contents'}[0]{'parent'} = $result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2]{'contents'}[6];
$result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2]{'contents'}[6]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2]{'contents'}[6]{'contents'}[1];
$result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2]{'contents'}[6]{'contents'}[1]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2]{'contents'}[6]{'contents'}[1]{'args'}[1];
$result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2]{'contents'}[6]{'contents'}[1]{'args'}[1]{'parent'} = $result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2]{'contents'}[6]{'contents'}[1];
$result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2]{'contents'}[6]{'contents'}[1]{'args'}[2]{'parent'} = $result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2]{'contents'}[6]{'contents'}[1];
$result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2]{'contents'}[6]{'contents'}[1]{'args'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2]{'contents'}[6]{'contents'}[1]{'args'}[3]{'contents'}[0];
$result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2]{'contents'}[6]{'contents'}[1]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2]{'contents'}[6]{'contents'}[1]{'args'}[3];
$result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2]{'contents'}[6]{'contents'}[1]{'args'}[3]{'parent'} = $result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2]{'contents'}[6]{'contents'}[1];
$result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2]{'contents'}[6]{'contents'}[1]{'extra'}{'menu_entry_description'} = $result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2]{'contents'}[6]{'contents'}[1]{'args'}[3];
$result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2]{'contents'}[6]{'contents'}[1]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2]{'contents'}[6]{'contents'}[1]{'args'}[1]{'contents'}[0];
$result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2]{'contents'}[6]{'contents'}[1]{'parent'} = $result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2]{'contents'}[6];
$result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2]{'contents'}[6]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2]{'contents'}[6]{'contents'}[2]{'args'}[0];
$result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2]{'contents'}[6]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2]{'contents'}[6]{'contents'}[2];
$result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2]{'contents'}[6]{'contents'}[2]{'parent'} = $result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2]{'contents'}[6];
$result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2]{'contents'}[6]{'extra'}{'end_command'} = $result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2]{'contents'}[6]{'contents'}[2];
$result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2]{'contents'}[6]{'parent'} = $result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2];
$result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2]{'contents'}[7]{'parent'} = $result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2];
$result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2]{'parent'} = $result_trees{'char_latin2_latin2_in_refs'};
$result_trees{'char_latin2_latin2_in_refs'}{'contents'}[3] = $result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'label'};
$result_trees{'char_latin2_latin2_in_refs'}{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'char_latin2_latin2_in_refs'}{'contents'}[4]{'args'}[0];
$result_trees{'char_latin2_latin2_in_refs'}{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'char_latin2_latin2_in_refs'}{'contents'}[4];
$result_trees{'char_latin2_latin2_in_refs'}{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'char_latin2_latin2_in_refs'}{'contents'}[4];
$result_trees{'char_latin2_latin2_in_refs'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'char_latin2_latin2_in_refs'}{'contents'}[4]{'contents'}[1]{'args'}[0];
$result_trees{'char_latin2_latin2_in_refs'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'char_latin2_latin2_in_refs'}{'contents'}[4]{'contents'}[1];
$result_trees{'char_latin2_latin2_in_refs'}{'contents'}[4]{'contents'}[1]{'extra'}{'index_entry'}{'command'} = $result_trees{'char_latin2_latin2_in_refs'}{'contents'}[4]{'contents'}[1];
$result_trees{'char_latin2_latin2_in_refs'}{'contents'}[4]{'contents'}[1]{'extra'}{'index_entry'}{'content'} = $result_trees{'char_latin2_latin2_in_refs'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'char_latin2_latin2_in_refs'}{'contents'}[4]{'contents'}[1]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'char_latin2_latin2_in_refs'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'char_latin2_latin2_in_refs'}{'contents'}[4]{'contents'}[1]{'extra'}{'index_entry'}{'node'} = $result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'label'};
$result_trees{'char_latin2_latin2_in_refs'}{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'char_latin2_latin2_in_refs'}{'contents'}[4];
$result_trees{'char_latin2_latin2_in_refs'}{'contents'}[4]{'contents'}[2]{'parent'} = $result_trees{'char_latin2_latin2_in_refs'}{'contents'}[4];
$result_trees{'char_latin2_latin2_in_refs'}{'contents'}[4]{'parent'} = $result_trees{'char_latin2_latin2_in_refs'};
$result_trees{'char_latin2_latin2_in_refs'}{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'char_latin2_latin2_in_refs'}{'contents'}[5];
$result_trees{'char_latin2_latin2_in_refs'}{'contents'}[5]{'parent'} = $result_trees{'char_latin2_latin2_in_refs'};

$result_texis{'char_latin2_latin2_in_refs'} = '\\input texinfo
@setfilename char_latin2_latin2_in_refs.info

@documentencoding ISO-8859-2

@node Top
@top top

@ref{Ą ą ˛ Ę ę}.

@printindex cp

@c Aogonek(0xa1=0241) aogonek(0xb1=0261) standalone ogonek(0xca=0312) Eogonek(0xea=0352) eogonek
@menu
* Ą ą ˛ Ę ę::
@end menu

@node Ą ą ˛ Ę ę
@chapter Ą ą ˛ Ę ę

@cindex Ą ą ˛ Ę ę

@bye
';


$result_texts{'char_latin2_latin2_in_refs'} = '

top
***

Ą ą ˛ Ę ę.


* Ą ą ˛ Ę ę::

1 Ą ą ˛ Ę ę
***********


';

$result_sectioning{'char_latin2_latin2_in_refs'} = {
  'structure' => {
    'section_childs' => [
      {
        'cmdname' => 'top',
        'extra' => {
          'associated_node' => {
            'cmdname' => 'node',
            'extra' => {
              'isindex' => 1,
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
                    'normalized' => '_0104-_0105-_02db-_0118-_0119'
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
$result_sectioning{'char_latin2_latin2_in_refs'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'char_latin2_latin2_in_refs'}{'structure'}{'section_childs'}[0];
$result_sectioning{'char_latin2_latin2_in_refs'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_prev'} = $result_sectioning{'char_latin2_latin2_in_refs'}{'structure'}{'section_childs'}[0];
$result_sectioning{'char_latin2_latin2_in_refs'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_up'} = $result_sectioning{'char_latin2_latin2_in_refs'}{'structure'}{'section_childs'}[0];
$result_sectioning{'char_latin2_latin2_in_refs'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'char_latin2_latin2_in_refs'};

$result_nodes{'char_latin2_latin2_in_refs'} = {
  'cmdname' => 'node',
  'extra' => {
    'associated_section' => {
      'cmdname' => 'top',
      'extra' => {},
      'structure' => {}
    },
    'isindex' => 1,
    'menus' => [
      {
        'cmdname' => 'menu',
        'extra' => {}
      }
    ],
    'normalized' => 'Top'
  },
  'structure' => {
    'menu_child' => {
      'cmdname' => 'node',
      'extra' => {
        'associated_section' => {
          'cmdname' => 'chapter',
          'extra' => {},
          'structure' => {
            'section_number' => 1
          }
        },
        'normalized' => '_0104-_0105-_02db-_0118-_0119'
      },
      'structure' => {
        'node_prev' => {},
        'node_up' => {}
      }
    },
    'node_next' => {}
  }
};
$result_nodes{'char_latin2_latin2_in_refs'}{'structure'}{'menu_child'}{'structure'}{'node_prev'} = $result_nodes{'char_latin2_latin2_in_refs'};
$result_nodes{'char_latin2_latin2_in_refs'}{'structure'}{'menu_child'}{'structure'}{'node_up'} = $result_nodes{'char_latin2_latin2_in_refs'};
$result_nodes{'char_latin2_latin2_in_refs'}{'structure'}{'node_next'} = $result_nodes{'char_latin2_latin2_in_refs'}{'structure'}{'menu_child'};

$result_menus{'char_latin2_latin2_in_refs'} = {
  'cmdname' => 'node',
  'extra' => {
    'isindex' => 1,
    'normalized' => 'Top'
  },
  'structure' => {
    'menu_child' => {
      'cmdname' => 'node',
      'extra' => {
        'normalized' => '_0104-_0105-_02db-_0118-_0119'
      },
      'structure' => {
        'menu_up' => {},
        'menu_up_hash' => {
          'Top' => 1
        }
      }
    }
  }
};
$result_menus{'char_latin2_latin2_in_refs'}{'structure'}{'menu_child'}{'structure'}{'menu_up'} = $result_menus{'char_latin2_latin2_in_refs'};

$result_errors{'char_latin2_latin2_in_refs'} = [];


$result_floats{'char_latin2_latin2_in_refs'} = {};


$result_indices_sort_strings{'char_latin2_latin2_in_refs'} = {
  'cp' => [
    "\x{104} \x{105} \x{2db} \x{118} \x{119}"
  ]
};


1;
