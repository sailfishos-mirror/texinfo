use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'complex_argument'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'parent' => {},
              'text' => 'macrotwo',
              'type' => 'macro_name'
            },
            {
              'parent' => {},
              'text' => 'arg',
              'type' => 'macro_arg'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => 'coucou \\arg\\ after arg
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'macro'
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
                'text_arg' => 'macro'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 3,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'arg_line' => ' macrotwo{arg}
'
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
              'parent' => {},
              'text' => 'macrofour',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => '1
',
              'type' => 'raw'
            },
            {
              'parent' => {},
              'text' => '2
',
              'type' => 'raw'
            },
            {
              'parent' => {},
              'text' => '3
',
              'type' => 'raw'
            },
            {
              'parent' => {},
              'text' => '4
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'macro'
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
                'text_arg' => 'macro'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 10,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'arg_line' => ' macrofour {}
'
          },
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
',
          'type' => 'empty_line'
        },
        {
          'args' => [
            {
              'parent' => {},
              'text' => 'macrothree',
              'type' => 'macro_name'
            },
            {
              'parent' => {},
              'text' => 'text',
              'type' => 'macro_arg'
            },
            {
              'parent' => {},
              'text' => 'arg',
              'type' => 'macro_arg'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => '\\text\\
',
              'type' => 'raw'
            },
            {
              'parent' => {},
              'text' => '&&&& \\arg\\
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'macro'
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
                'text_arg' => 'macro'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 15,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'arg_line' => ' macrothree{text, arg}
'
          },
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
                      'text' => ' @macrotwo ',
                      'type' => 'raw'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'verb',
              'extra' => {
                'delimiter' => '%'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 38,
                'macro' => 'macrothree'
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
                  'parent' => {},
                  'text' => ' @macrofour
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' @macrofour
'
                ]
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => '4 1'
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
              'cmdname' => 'pagesizes',
              'extra' => {
                'spaces_before_argument' => ' '
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 38,
                'macro' => 'macrothree'
              }
            },
            {
              'parent' => {},
              'text' => '2
'
            },
            {
              'parent' => {},
              'text' => '3
'
            },
            {
              'parent' => {},
              'text' => '4
'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'doubleafter 1'
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
              'cmdname' => 'headings',
              'extra' => {
                'spaces_before_argument' => ' '
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 38,
                'macro' => 'macrothree'
              }
            },
            {
              'parent' => {},
              'text' => '2
'
            },
            {
              'parent' => {},
              'text' => '3
'
            },
            {
              'parent' => {},
              'text' => '4
'
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
        },
        {
          'args' => [
            {
              'extra' => {
                'spaces_after_argument' => '
'
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'verbatim',
          'contents' => [
            {
              'parent' => {},
              'text' => '@macrotwo
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'verbatim'
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
                'text_arg' => 'verbatim'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 38,
                'macro' => 'macrothree'
              }
            }
          ],
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 38,
            'macro' => 'macrothree'
          }
        },
        {
          'args' => [
            {
              'extra' => {
                'spaces_after_argument' => '
'
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'ignore',
          'contents' => [
            {
              'parent' => {},
              'text' => '@macrofour
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'ignore'
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
                'text_arg' => 'ignore'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 38,
                'macro' => 'macrothree'
              }
            }
          ],
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 38,
            'macro' => 'macrothree'
          }
        },
        {
          'args' => [
            {
              'parent' => {},
              'text' => 'macroseven',
              'type' => 'macro_name'
            },
            {
              'parent' => {},
              'text' => 'truc',
              'type' => 'macro_arg'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => '@emph{\\truc\\}
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'macro'
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
                'text_arg' => 'macro'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 38,
                'macro' => 'macrothree'
              }
            }
          ],
          'extra' => {
            'arg_line' => ' macroseven {truc}
'
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 38,
            'macro' => 'macrothree'
          }
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'macroseven defined
'
            },
            {
              'parent' => {},
              'text' => '1
'
            },
            {
              'parent' => {},
              'text' => '2
'
            },
            {
              'parent' => {},
              'text' => '3
'
            },
            {
              'parent' => {},
              'text' => '4
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
              'text' => '&&&& 
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
              'text' => 'Call macroseven
'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'aaa'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'emph',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 41,
                'macro' => 'macroseven'
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
        }
      ],
      'parent' => {},
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'complex_argument'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'complex_argument'}{'contents'}[0]{'contents'}[0];
$result_trees{'complex_argument'}{'contents'}[0]{'contents'}[0]{'args'}[1]{'parent'} = $result_trees{'complex_argument'}{'contents'}[0]{'contents'}[0];
$result_trees{'complex_argument'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'complex_argument'}{'contents'}[0]{'contents'}[0];
$result_trees{'complex_argument'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'complex_argument'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'complex_argument'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'complex_argument'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'complex_argument'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'complex_argument'}{'contents'}[0]{'contents'}[0];
$result_trees{'complex_argument'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'complex_argument'}{'contents'}[0];
$result_trees{'complex_argument'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'complex_argument'}{'contents'}[0];
$result_trees{'complex_argument'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'complex_argument'}{'contents'}[0]{'contents'}[2];
$result_trees{'complex_argument'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'complex_argument'}{'contents'}[0]{'contents'}[2];
$result_trees{'complex_argument'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'complex_argument'}{'contents'}[0]{'contents'}[2];
$result_trees{'complex_argument'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'complex_argument'}{'contents'}[0]{'contents'}[2];
$result_trees{'complex_argument'}{'contents'}[0]{'contents'}[2]{'contents'}[3]{'parent'} = $result_trees{'complex_argument'}{'contents'}[0]{'contents'}[2];
$result_trees{'complex_argument'}{'contents'}[0]{'contents'}[2]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'complex_argument'}{'contents'}[0]{'contents'}[2]{'contents'}[4]{'args'}[0];
$result_trees{'complex_argument'}{'contents'}[0]{'contents'}[2]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'complex_argument'}{'contents'}[0]{'contents'}[2]{'contents'}[4];
$result_trees{'complex_argument'}{'contents'}[0]{'contents'}[2]{'contents'}[4]{'parent'} = $result_trees{'complex_argument'}{'contents'}[0]{'contents'}[2];
$result_trees{'complex_argument'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'complex_argument'}{'contents'}[0];
$result_trees{'complex_argument'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'complex_argument'}{'contents'}[0];
$result_trees{'complex_argument'}{'contents'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'complex_argument'}{'contents'}[0]{'contents'}[4];
$result_trees{'complex_argument'}{'contents'}[0]{'contents'}[4]{'args'}[1]{'parent'} = $result_trees{'complex_argument'}{'contents'}[0]{'contents'}[4];
$result_trees{'complex_argument'}{'contents'}[0]{'contents'}[4]{'args'}[2]{'parent'} = $result_trees{'complex_argument'}{'contents'}[0]{'contents'}[4];
$result_trees{'complex_argument'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'complex_argument'}{'contents'}[0]{'contents'}[4];
$result_trees{'complex_argument'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'complex_argument'}{'contents'}[0]{'contents'}[4];
$result_trees{'complex_argument'}{'contents'}[0]{'contents'}[4]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'complex_argument'}{'contents'}[0]{'contents'}[4]{'contents'}[2]{'args'}[0];
$result_trees{'complex_argument'}{'contents'}[0]{'contents'}[4]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'complex_argument'}{'contents'}[0]{'contents'}[4]{'contents'}[2];
$result_trees{'complex_argument'}{'contents'}[0]{'contents'}[4]{'contents'}[2]{'parent'} = $result_trees{'complex_argument'}{'contents'}[0]{'contents'}[4];
$result_trees{'complex_argument'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'complex_argument'}{'contents'}[0];
$result_trees{'complex_argument'}{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'complex_argument'}{'contents'}[0];
$result_trees{'complex_argument'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'complex_argument'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0];
$result_trees{'complex_argument'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'complex_argument'}{'contents'}[0]{'contents'}[6]{'contents'}[0];
$result_trees{'complex_argument'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'parent'} = $result_trees{'complex_argument'}{'contents'}[0]{'contents'}[6];
$result_trees{'complex_argument'}{'contents'}[0]{'contents'}[6]{'contents'}[1]{'parent'} = $result_trees{'complex_argument'}{'contents'}[0]{'contents'}[6];
$result_trees{'complex_argument'}{'contents'}[0]{'contents'}[6]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'complex_argument'}{'contents'}[0]{'contents'}[6]{'contents'}[2];
$result_trees{'complex_argument'}{'contents'}[0]{'contents'}[6]{'contents'}[2]{'parent'} = $result_trees{'complex_argument'}{'contents'}[0]{'contents'}[6];
$result_trees{'complex_argument'}{'contents'}[0]{'contents'}[6]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'complex_argument'}{'contents'}[0]{'contents'}[6]{'contents'}[3]{'args'}[0];
$result_trees{'complex_argument'}{'contents'}[0]{'contents'}[6]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'complex_argument'}{'contents'}[0]{'contents'}[6]{'contents'}[3];
$result_trees{'complex_argument'}{'contents'}[0]{'contents'}[6]{'contents'}[3]{'parent'} = $result_trees{'complex_argument'}{'contents'}[0]{'contents'}[6];
$result_trees{'complex_argument'}{'contents'}[0]{'contents'}[6]{'contents'}[4]{'parent'} = $result_trees{'complex_argument'}{'contents'}[0]{'contents'}[6];
$result_trees{'complex_argument'}{'contents'}[0]{'contents'}[6]{'contents'}[5]{'parent'} = $result_trees{'complex_argument'}{'contents'}[0]{'contents'}[6];
$result_trees{'complex_argument'}{'contents'}[0]{'contents'}[6]{'contents'}[6]{'parent'} = $result_trees{'complex_argument'}{'contents'}[0]{'contents'}[6];
$result_trees{'complex_argument'}{'contents'}[0]{'contents'}[6]{'contents'}[7]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'complex_argument'}{'contents'}[0]{'contents'}[6]{'contents'}[7]{'args'}[0];
$result_trees{'complex_argument'}{'contents'}[0]{'contents'}[6]{'contents'}[7]{'args'}[0]{'parent'} = $result_trees{'complex_argument'}{'contents'}[0]{'contents'}[6]{'contents'}[7];
$result_trees{'complex_argument'}{'contents'}[0]{'contents'}[6]{'contents'}[7]{'parent'} = $result_trees{'complex_argument'}{'contents'}[0]{'contents'}[6];
$result_trees{'complex_argument'}{'contents'}[0]{'contents'}[6]{'contents'}[8]{'parent'} = $result_trees{'complex_argument'}{'contents'}[0]{'contents'}[6];
$result_trees{'complex_argument'}{'contents'}[0]{'contents'}[6]{'contents'}[9]{'parent'} = $result_trees{'complex_argument'}{'contents'}[0]{'contents'}[6];
$result_trees{'complex_argument'}{'contents'}[0]{'contents'}[6]{'contents'}[10]{'parent'} = $result_trees{'complex_argument'}{'contents'}[0]{'contents'}[6];
$result_trees{'complex_argument'}{'contents'}[0]{'contents'}[6]{'parent'} = $result_trees{'complex_argument'}{'contents'}[0];
$result_trees{'complex_argument'}{'contents'}[0]{'contents'}[7]{'args'}[0]{'parent'} = $result_trees{'complex_argument'}{'contents'}[0]{'contents'}[7];
$result_trees{'complex_argument'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'parent'} = $result_trees{'complex_argument'}{'contents'}[0]{'contents'}[7];
$result_trees{'complex_argument'}{'contents'}[0]{'contents'}[7]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'complex_argument'}{'contents'}[0]{'contents'}[7]{'contents'}[1]{'args'}[0];
$result_trees{'complex_argument'}{'contents'}[0]{'contents'}[7]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'complex_argument'}{'contents'}[0]{'contents'}[7]{'contents'}[1];
$result_trees{'complex_argument'}{'contents'}[0]{'contents'}[7]{'contents'}[1]{'parent'} = $result_trees{'complex_argument'}{'contents'}[0]{'contents'}[7];
$result_trees{'complex_argument'}{'contents'}[0]{'contents'}[7]{'parent'} = $result_trees{'complex_argument'}{'contents'}[0];
$result_trees{'complex_argument'}{'contents'}[0]{'contents'}[8]{'args'}[0]{'parent'} = $result_trees{'complex_argument'}{'contents'}[0]{'contents'}[8];
$result_trees{'complex_argument'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'parent'} = $result_trees{'complex_argument'}{'contents'}[0]{'contents'}[8];
$result_trees{'complex_argument'}{'contents'}[0]{'contents'}[8]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'complex_argument'}{'contents'}[0]{'contents'}[8]{'contents'}[1]{'args'}[0];
$result_trees{'complex_argument'}{'contents'}[0]{'contents'}[8]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'complex_argument'}{'contents'}[0]{'contents'}[8]{'contents'}[1];
$result_trees{'complex_argument'}{'contents'}[0]{'contents'}[8]{'contents'}[1]{'parent'} = $result_trees{'complex_argument'}{'contents'}[0]{'contents'}[8];
$result_trees{'complex_argument'}{'contents'}[0]{'contents'}[8]{'parent'} = $result_trees{'complex_argument'}{'contents'}[0];
$result_trees{'complex_argument'}{'contents'}[0]{'contents'}[9]{'args'}[0]{'parent'} = $result_trees{'complex_argument'}{'contents'}[0]{'contents'}[9];
$result_trees{'complex_argument'}{'contents'}[0]{'contents'}[9]{'args'}[1]{'parent'} = $result_trees{'complex_argument'}{'contents'}[0]{'contents'}[9];
$result_trees{'complex_argument'}{'contents'}[0]{'contents'}[9]{'contents'}[0]{'parent'} = $result_trees{'complex_argument'}{'contents'}[0]{'contents'}[9];
$result_trees{'complex_argument'}{'contents'}[0]{'contents'}[9]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'complex_argument'}{'contents'}[0]{'contents'}[9]{'contents'}[1]{'args'}[0];
$result_trees{'complex_argument'}{'contents'}[0]{'contents'}[9]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'complex_argument'}{'contents'}[0]{'contents'}[9]{'contents'}[1];
$result_trees{'complex_argument'}{'contents'}[0]{'contents'}[9]{'contents'}[1]{'parent'} = $result_trees{'complex_argument'}{'contents'}[0]{'contents'}[9];
$result_trees{'complex_argument'}{'contents'}[0]{'contents'}[9]{'parent'} = $result_trees{'complex_argument'}{'contents'}[0];
$result_trees{'complex_argument'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'parent'} = $result_trees{'complex_argument'}{'contents'}[0]{'contents'}[10];
$result_trees{'complex_argument'}{'contents'}[0]{'contents'}[10]{'contents'}[1]{'parent'} = $result_trees{'complex_argument'}{'contents'}[0]{'contents'}[10];
$result_trees{'complex_argument'}{'contents'}[0]{'contents'}[10]{'contents'}[2]{'parent'} = $result_trees{'complex_argument'}{'contents'}[0]{'contents'}[10];
$result_trees{'complex_argument'}{'contents'}[0]{'contents'}[10]{'contents'}[3]{'parent'} = $result_trees{'complex_argument'}{'contents'}[0]{'contents'}[10];
$result_trees{'complex_argument'}{'contents'}[0]{'contents'}[10]{'contents'}[4]{'parent'} = $result_trees{'complex_argument'}{'contents'}[0]{'contents'}[10];
$result_trees{'complex_argument'}{'contents'}[0]{'contents'}[10]{'parent'} = $result_trees{'complex_argument'}{'contents'}[0];
$result_trees{'complex_argument'}{'contents'}[0]{'contents'}[11]{'parent'} = $result_trees{'complex_argument'}{'contents'}[0];
$result_trees{'complex_argument'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'parent'} = $result_trees{'complex_argument'}{'contents'}[0]{'contents'}[12];
$result_trees{'complex_argument'}{'contents'}[0]{'contents'}[12]{'parent'} = $result_trees{'complex_argument'}{'contents'}[0];
$result_trees{'complex_argument'}{'contents'}[0]{'contents'}[13]{'parent'} = $result_trees{'complex_argument'}{'contents'}[0];
$result_trees{'complex_argument'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'parent'} = $result_trees{'complex_argument'}{'contents'}[0]{'contents'}[14];
$result_trees{'complex_argument'}{'contents'}[0]{'contents'}[14]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'complex_argument'}{'contents'}[0]{'contents'}[14]{'contents'}[1]{'args'}[0];
$result_trees{'complex_argument'}{'contents'}[0]{'contents'}[14]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'complex_argument'}{'contents'}[0]{'contents'}[14]{'contents'}[1];
$result_trees{'complex_argument'}{'contents'}[0]{'contents'}[14]{'contents'}[1]{'parent'} = $result_trees{'complex_argument'}{'contents'}[0]{'contents'}[14];
$result_trees{'complex_argument'}{'contents'}[0]{'contents'}[14]{'contents'}[2]{'parent'} = $result_trees{'complex_argument'}{'contents'}[0]{'contents'}[14];
$result_trees{'complex_argument'}{'contents'}[0]{'contents'}[14]{'parent'} = $result_trees{'complex_argument'}{'contents'}[0];
$result_trees{'complex_argument'}{'contents'}[0]{'contents'}[15]{'parent'} = $result_trees{'complex_argument'}{'contents'}[0];
$result_trees{'complex_argument'}{'contents'}[0]{'parent'} = $result_trees{'complex_argument'};

$result_texis{'complex_argument'} = '@macro macrotwo{arg}
coucou \\arg\\ after arg
@end macro

@macro macrofour {}
1
2
3
4
@end macro

@macro macrothree{text, arg}
\\text\\
&&&& \\arg\\
@end macro

@verb{% @macrotwo %}
@c @macrofour
@pagesizes 4 1
2
3
4
@headings doubleafter 1
2
3
4
@verbatim
@macrotwo
@end verbatim
@ignore
@macrofour
@end ignore
@macro macroseven {truc}
@emph{\\truc\\}
@end macro
macroseven defined
1
2
3
4

&&&& 

Call macroseven
@emph{aaa}

';


$result_texts{'complex_argument'} = '


 @macrotwo 
2
3
4
2
3
4
@macrotwo
macroseven defined
1
2
3
4

&&&& 

Call macroseven
aaa

';

$result_errors{'complex_argument'} = [
  {
    'error_line' => 'bad argument to @headings: doubleafter 1 (possibly involving @macrofour)
',
    'file_name' => '',
    'line_nr' => 38,
    'macro' => 'macrofour',
    'text' => 'bad argument to @headings: doubleafter 1',
    'type' => 'error'
  }
];


$result_floats{'complex_argument'} = {};


1;
