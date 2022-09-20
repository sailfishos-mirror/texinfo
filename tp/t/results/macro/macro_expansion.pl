use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'macro_expansion'} = {
  'contents' => [
    {
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
              'parent' => {},
              'text' => 'macroone',
              'type' => 'macro_name'
            },
            {
              'parent' => {},
              'text' => 'arg1',
              'type' => 'macro_arg'
            },
            {
              'parent' => {},
              'text' => 'arg2',
              'type' => 'macro_arg'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => 'result of a macro with \\arg1\\ and 
',
              'type' => 'raw'
            },
            {
              'parent' => {},
              'text' => '@verbatim
',
              'type' => 'raw'
            },
            {
              'parent' => {},
              'text' => '\\arg2\\
',
              'type' => 'raw'
            },
            {
              'parent' => {},
              'text' => '@end verbatim
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
                'line_nr' => 7,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'arg_line' => ' macroone {arg1, arg2 }
'
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
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
          'contents' => [
            {
              'parent' => {},
              'text' => '2 simple args. result of a macro with first arg and 
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
              'text' => 'second arg
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'verbatim.'
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
                'text_arg' => 'verbatim.'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 9,
                'macro' => 'macroone'
              }
            }
          ],
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 9,
            'macro' => 'macroone'
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
              'parent' => {},
              'text' => 'comma in command. result of a macro with aaa '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'a macro , '
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'samp',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 11,
                'macro' => 'macroone'
              }
            },
            {
              'parent' => {},
              'text' => ' bbb and 
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
              'text' => '
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'verbatim.'
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
                'text_arg' => 'verbatim.'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 11,
                'macro' => 'macroone'
              }
            }
          ],
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 11,
            'macro' => 'macroone'
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
              'parent' => {},
              'text' => 'call on the line. result of a macro with  and 
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
              'text' => '
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'verbatim my arg.'
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
                'text_arg' => 'verbatim my arg.'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 13,
                'macro' => 'macroone'
              }
            }
          ],
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 13,
            'macro' => 'macroone'
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
              'parent' => {},
              'text' => 'recursive call. result of a macro with first arg and 
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
              'text' => '@macroone{nested second arg}
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'verbatim.'
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
                'text_arg' => 'verbatim.'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 15,
                'macro' => 'macroone'
              }
            }
          ],
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 15,
            'macro' => 'macroone'
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
              'parent' => {},
              'text' => 'protect stuff. result of a macro with first , arg and 
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
              'text' => '{} \\ 
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'verbatim.'
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
                'text_arg' => 'verbatim.'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 17,
                'macro' => 'macroone'
              }
            }
          ],
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 17,
            'macro' => 'macroone'
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
              'parent' => {},
              'text' => 'multi-line arg. result of a macro with arg 1
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
              'text' => 'now and 
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
              'text' => 'arg3
',
              'type' => 'raw'
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'raw'
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'verbatim.'
                    }
                  ],
                  'parent' => {},
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'spaces_before_argument' => ' ',
                'text_arg' => 'verbatim.'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 23,
                'macro' => 'macroone'
              }
            }
          ],
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 23,
            'macro' => 'macroone'
          }
        }
      ],
      'parent' => {},
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_expansion'}{'contents'}[0];
$result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[1];
$result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[1]{'args'}[1]{'parent'} = $result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[1];
$result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[1]{'args'}[2]{'parent'} = $result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[1];
$result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[1];
$result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[1];
$result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[1];
$result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[1];
$result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[1]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[1]{'contents'}[4]{'args'}[0];
$result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[1]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[1]{'contents'}[4];
$result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[1]{'contents'}[4]{'parent'} = $result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[1];
$result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'macro_expansion'}{'contents'}[0];
$result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'macro_expansion'}{'contents'}[0];
$result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[3];
$result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'macro_expansion'}{'contents'}[0];
$result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[4];
$result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[4];
$result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'args'}[0];
$result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[4]{'contents'}[1];
$result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[4];
$result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'macro_expansion'}{'contents'}[0];
$result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'macro_expansion'}{'contents'}[0];
$result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'parent'} = $result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[6];
$result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[6]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[6]{'contents'}[1]{'args'}[0];
$result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[6]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[6]{'contents'}[1];
$result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[6]{'contents'}[1]{'parent'} = $result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[6];
$result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[6]{'contents'}[2]{'parent'} = $result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[6];
$result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[6]{'parent'} = $result_trees{'macro_expansion'}{'contents'}[0];
$result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[7]{'args'}[0]{'parent'} = $result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[7];
$result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'parent'} = $result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[7];
$result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[7]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[7]{'contents'}[1]{'args'}[0];
$result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[7]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[7]{'contents'}[1];
$result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[7]{'contents'}[1]{'parent'} = $result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[7];
$result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[7]{'parent'} = $result_trees{'macro_expansion'}{'contents'}[0];
$result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[8]{'parent'} = $result_trees{'macro_expansion'}{'contents'}[0];
$result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[9]{'contents'}[0]{'parent'} = $result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[9];
$result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[9]{'parent'} = $result_trees{'macro_expansion'}{'contents'}[0];
$result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[10]{'args'}[0]{'parent'} = $result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[10];
$result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'parent'} = $result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[10];
$result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[10]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[10]{'contents'}[1]{'args'}[0];
$result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[10]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[10]{'contents'}[1];
$result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[10]{'contents'}[1]{'parent'} = $result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[10];
$result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[10]{'parent'} = $result_trees{'macro_expansion'}{'contents'}[0];
$result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[11]{'parent'} = $result_trees{'macro_expansion'}{'contents'}[0];
$result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'parent'} = $result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[12];
$result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[12]{'parent'} = $result_trees{'macro_expansion'}{'contents'}[0];
$result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[13]{'args'}[0]{'parent'} = $result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[13];
$result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[13]{'contents'}[0]{'parent'} = $result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[13];
$result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[13]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[13]{'contents'}[1]{'args'}[0];
$result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[13]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[13]{'contents'}[1];
$result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[13]{'contents'}[1]{'parent'} = $result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[13];
$result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[13]{'parent'} = $result_trees{'macro_expansion'}{'contents'}[0];
$result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[14]{'parent'} = $result_trees{'macro_expansion'}{'contents'}[0];
$result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[15]{'contents'}[0]{'parent'} = $result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[15];
$result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[15]{'parent'} = $result_trees{'macro_expansion'}{'contents'}[0];
$result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[16]{'args'}[0]{'parent'} = $result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[16];
$result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'parent'} = $result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[16];
$result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[16]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[16]{'contents'}[1]{'args'}[0];
$result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[16]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[16]{'contents'}[1];
$result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[16]{'contents'}[1]{'parent'} = $result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[16];
$result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[16]{'parent'} = $result_trees{'macro_expansion'}{'contents'}[0];
$result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[17]{'parent'} = $result_trees{'macro_expansion'}{'contents'}[0];
$result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'parent'} = $result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[18];
$result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[18]{'parent'} = $result_trees{'macro_expansion'}{'contents'}[0];
$result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[19]{'parent'} = $result_trees{'macro_expansion'}{'contents'}[0];
$result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[20]{'contents'}[0]{'parent'} = $result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[20];
$result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[20]{'parent'} = $result_trees{'macro_expansion'}{'contents'}[0];
$result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[21]{'args'}[0]{'parent'} = $result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[21];
$result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[21]{'contents'}[0]{'parent'} = $result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[21];
$result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[21]{'contents'}[1]{'parent'} = $result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[21];
$result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[21]{'contents'}[2]{'parent'} = $result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[21];
$result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[21]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[21]{'contents'}[3]{'args'}[0];
$result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[21]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[21]{'contents'}[3];
$result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[21]{'contents'}[3]{'parent'} = $result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[21];
$result_trees{'macro_expansion'}{'contents'}[0]{'contents'}[21]{'parent'} = $result_trees{'macro_expansion'}{'contents'}[0];
$result_trees{'macro_expansion'}{'contents'}[0]{'parent'} = $result_trees{'macro_expansion'};

$result_texis{'macro_expansion'} = '
@macro macroone {arg1, arg2 }
result of a macro with \\arg1\\ and 
@verbatim
\\arg2\\
@end verbatim
@end macro

2 simple args. result of a macro with first arg and 
@verbatim
second arg
@end verbatim.

comma in command. result of a macro with aaa @samp{a macro , } bbb and 
@verbatim

@end verbatim.

call on the line. result of a macro with  and 
@verbatim

@end verbatim my arg.

recursive call. result of a macro with first arg and 
@verbatim
@macroone{nested second arg}
@end verbatim.

protect stuff. result of a macro with first , arg and 
@verbatim
{} \\ 
@end verbatim.

multi-line arg. result of a macro with arg 1

now and 
@verbatim
arg3


@end verbatim.';


$result_texts{'macro_expansion'} = '

2 simple args. result of a macro with first arg and 
second arg

comma in command. result of a macro with aaa a macro ,  bbb and 


call on the line. result of a macro with  and 


recursive call. result of a macro with first arg and 
@macroone{nested second arg}

protect stuff. result of a macro with first , arg and 
{} \\ 

multi-line arg. result of a macro with arg 1

now and 
arg3


';

$result_errors{'macro_expansion'} = [
  {
    'error_line' => 'bad argument to @end: verbatim. (possibly involving @macroone)
',
    'file_name' => '',
    'line_nr' => 9,
    'macro' => 'macroone',
    'text' => 'bad argument to @end: verbatim.',
    'type' => 'error'
  },
  {
    'error_line' => 'bad argument to @end: verbatim. (possibly involving @macroone)
',
    'file_name' => '',
    'line_nr' => 11,
    'macro' => 'macroone',
    'text' => 'bad argument to @end: verbatim.',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: @macroone defined with zero or more than one argument should be invoked with {}
',
    'file_name' => '',
    'line_nr' => 13,
    'macro' => '',
    'text' => '@macroone defined with zero or more than one argument should be invoked with {}',
    'type' => 'warning'
  },
  {
    'error_line' => 'bad argument to @end: verbatim my arg. (possibly involving @macroone)
',
    'file_name' => '',
    'line_nr' => 13,
    'macro' => 'macroone',
    'text' => 'bad argument to @end: verbatim my arg.',
    'type' => 'error'
  },
  {
    'error_line' => 'bad argument to @end: verbatim. (possibly involving @macroone)
',
    'file_name' => '',
    'line_nr' => 15,
    'macro' => 'macroone',
    'text' => 'bad argument to @end: verbatim.',
    'type' => 'error'
  },
  {
    'error_line' => 'bad argument to @end: verbatim. (possibly involving @macroone)
',
    'file_name' => '',
    'line_nr' => 17,
    'macro' => 'macroone',
    'text' => 'bad argument to @end: verbatim.',
    'type' => 'error'
  },
  {
    'error_line' => 'bad argument to @end: verbatim. (possibly involving @macroone)
',
    'file_name' => '',
    'line_nr' => 23,
    'macro' => 'macroone',
    'text' => 'bad argument to @end: verbatim.',
    'type' => 'error'
  }
];


$result_floats{'macro_expansion'} = {};


1;
