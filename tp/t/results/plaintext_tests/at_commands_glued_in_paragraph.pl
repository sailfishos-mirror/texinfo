use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'at_commands_glued_in_paragraph'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'at'
            },
            {
              'cmdname' => '@',
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '.
'
            },
            {
              'parent' => {},
              'text' => 'TeX'
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'TeX',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 2,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => 'TeX.
'
            },
            {
              'parent' => {},
              'text' => 'code'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'in code'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'code',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 3,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => 'code.
'
            },
            {
              'parent' => {},
              'text' => 'acronym'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'ABC'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'aaa bb cc'
                    }
                  ],
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'acronym',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 4,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => 'acronym.
'
            },
            {
              'parent' => {},
              'text' => 'acronym2'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'ABC'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'acronym',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 5,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => 'acronym.
'
            },
            {
              'parent' => {},
              'text' => 'email'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'somebody'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'mali'
                    }
                  ],
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'email',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 6,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => 'email.
'
            },
            {
              'parent' => {},
              'text' => 'ref'
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
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'ref',
              'extra' => {
                'node_argument' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => 'Top'
                }
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 7,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => 'ref.
'
            },
            {
              'parent' => {},
              'text' => 'Foornote'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'in footnote'
                        }
                      ],
                      'parent' => {},
                      'type' => 'paragraph'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_context'
                }
              ],
              'cmdname' => 'footnote',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 8,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => 'after footnote.
'
            },
            {
              'parent' => {},
              'text' => 'accent'
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
              'cmdname' => '^',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 9,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => 'accent.
'
            },
            {
              'parent' => {},
              'text' => 'and star'
            },
            {
              'cmdname' => '*',
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => 'star.
'
            },
            {
              'parent' => {},
              'text' => 'noindent'
            },
            {
              'cmdname' => 'noindent',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 11,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => ' ',
              'type' => 'ignorable_spaces_after_command'
            },
            {
              'parent' => {},
              'text' => 'after noindent
'
            },
            {
              'parent' => {},
              'text' => 'sp'
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => '4'
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
          'cmdname' => 'sp',
          'extra' => {
            'misc_args' => [
              '4'
            ],
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 12,
            'macro' => ''
          }
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'anchor'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'anchor'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'anchor',
              'extra' => {
                'node_content' => [
                  {}
                ],
                'normalized' => 'anchor'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 13,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => 'anchor
'
            },
            {
              'parent' => {},
              'text' => 'index'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'index'
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
                  'content_normalized' => [],
                  'entry_content' => [],
                  'entry_element' => {},
                  'entry_number' => 1,
                  'in_code' => 0,
                  'index_at_command' => 'cindex',
                  'index_ignore_chars' => {},
                  'index_name' => 'cp',
                  'index_type_command' => 'cindex'
                },
                'spaces_before_argument' => ' '
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 14,
                'macro' => ''
              },
              'type' => 'index_entry_command'
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
$result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0];
$result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0];
$result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0];
$result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0];
$result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0]{'contents'}[4];
$result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0];
$result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0];
$result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'parent'} = $result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0];
$result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0]{'contents'}[7]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0]{'contents'}[7]{'args'}[0];
$result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0]{'contents'}[7]{'args'}[0]{'parent'} = $result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0]{'contents'}[7];
$result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0]{'contents'}[7]{'parent'} = $result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0];
$result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0]{'contents'}[8]{'parent'} = $result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0];
$result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0]{'contents'}[9]{'parent'} = $result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0];
$result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0]{'contents'}[10]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0]{'contents'}[10]{'args'}[0];
$result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0]{'contents'}[10]{'args'}[0]{'parent'} = $result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0]{'contents'}[10];
$result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0]{'contents'}[10]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0]{'contents'}[10]{'args'}[1];
$result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0]{'contents'}[10]{'args'}[1]{'parent'} = $result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0]{'contents'}[10];
$result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0]{'contents'}[10]{'parent'} = $result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0];
$result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0]{'contents'}[11]{'parent'} = $result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0];
$result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0]{'contents'}[12]{'parent'} = $result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0];
$result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0]{'contents'}[13]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0]{'contents'}[13]{'args'}[0];
$result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0]{'contents'}[13]{'args'}[0]{'parent'} = $result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0]{'contents'}[13];
$result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0]{'contents'}[13]{'parent'} = $result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0];
$result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0]{'contents'}[14]{'parent'} = $result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0];
$result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0]{'contents'}[15]{'parent'} = $result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0];
$result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0]{'contents'}[16]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0]{'contents'}[16]{'args'}[0];
$result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0]{'contents'}[16]{'args'}[0]{'parent'} = $result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0]{'contents'}[16];
$result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0]{'contents'}[16]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0]{'contents'}[16]{'args'}[1];
$result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0]{'contents'}[16]{'args'}[1]{'parent'} = $result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0]{'contents'}[16];
$result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0]{'contents'}[16]{'parent'} = $result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0];
$result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0]{'contents'}[17]{'parent'} = $result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0];
$result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0]{'contents'}[18]{'parent'} = $result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0];
$result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0]{'contents'}[19]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0]{'contents'}[19]{'args'}[0];
$result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0]{'contents'}[19]{'args'}[0]{'parent'} = $result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0]{'contents'}[19];
$result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0]{'contents'}[19]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0]{'contents'}[19]{'args'}[0]{'contents'}[0];
$result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0]{'contents'}[19]{'parent'} = $result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0];
$result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0]{'contents'}[20]{'parent'} = $result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0];
$result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0]{'contents'}[21]{'parent'} = $result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0];
$result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0]{'contents'}[22]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0]{'contents'}[22]{'args'}[0]{'contents'}[0];
$result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0]{'contents'}[22]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0]{'contents'}[22]{'args'}[0];
$result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0]{'contents'}[22]{'args'}[0]{'parent'} = $result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0]{'contents'}[22];
$result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0]{'contents'}[22]{'parent'} = $result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0];
$result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0]{'contents'}[23]{'parent'} = $result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0];
$result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0]{'contents'}[24]{'parent'} = $result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0];
$result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0]{'contents'}[25]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0]{'contents'}[25]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0]{'contents'}[25]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0]{'contents'}[25]{'args'}[0]{'contents'}[0];
$result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0]{'contents'}[25]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0]{'contents'}[25]{'args'}[0];
$result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0]{'contents'}[25]{'args'}[0]{'parent'} = $result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0]{'contents'}[25];
$result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0]{'contents'}[25]{'parent'} = $result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0];
$result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0]{'contents'}[26]{'parent'} = $result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0];
$result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0]{'contents'}[27]{'parent'} = $result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0];
$result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0]{'contents'}[28]{'parent'} = $result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0];
$result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0]{'contents'}[29]{'parent'} = $result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0];
$result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0]{'contents'}[30]{'parent'} = $result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0];
$result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0]{'contents'}[31]{'parent'} = $result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0];
$result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0]{'contents'}[32]{'parent'} = $result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0];
$result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0]{'contents'}[33]{'parent'} = $result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0];
$result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0]{'contents'}[34]{'parent'} = $result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0];
$result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0];
$result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[1];
$result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0];
$result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[2];
$result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[2];
$result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[2];
$result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[2]{'contents'}[3]{'parent'} = $result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[2];
$result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[2]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[2]{'contents'}[4]{'args'}[0];
$result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[2]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[2]{'contents'}[4];
$result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[2]{'contents'}[4]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[2]{'contents'}[4]{'args'}[0]{'contents'};
$result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[2]{'contents'}[4]{'extra'}{'index_entry'}{'entry_content'} = $result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[2]{'contents'}[4]{'args'}[0]{'contents'};
$result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[2]{'contents'}[4]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[2]{'contents'}[4];
$result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[2]{'contents'}[4]{'parent'} = $result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[2];
$result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0];
$result_trees{'at_commands_glued_in_paragraph'}{'contents'}[0]{'parent'} = $result_trees{'at_commands_glued_in_paragraph'};

$result_texis{'at_commands_glued_in_paragraph'} = 'at@@.
TeX@TeX{}TeX.
code@code{in code}code.
acronym@acronym{ABC, aaa bb cc}acronym.
acronym2@acronym{ABC}acronym.
email@email{somebody, mali}email.
ref@ref{Top}ref.
Foornote@footnote{in footnote}after footnote.
accent@^{@dotless{i}}accent.
and star@*star.
noindent@noindent after noindent
sp@sp 4
anchor@anchor{anchor}anchor
index@cindex index
';


$result_texts{'at_commands_glued_in_paragraph'} = 'at@.
TeXTeXTeX.
codein codecode.
acronymABC (aaa bb cc)acronym.
acronym2ABCacronym.
emailmaliemail.
refTopref.
Foornoteafter footnote.
accenti^accent.
and star
star.
noindentafter noindent
sp



anchoranchor
index';

$result_errors{'at_commands_glued_in_paragraph'} = [
  {
    'error_line' => 'warning: @cindex should only appear at the beginning of a line
',
    'file_name' => '',
    'line_nr' => 14,
    'macro' => '',
    'text' => '@cindex should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `cp\' outside of any node
',
    'file_name' => '',
    'line_nr' => 14,
    'macro' => '',
    'text' => 'entry for index `cp\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => '@ref reference to nonexistent node `Top\'
',
    'file_name' => '',
    'line_nr' => 7,
    'macro' => '',
    'text' => '@ref reference to nonexistent node `Top\'',
    'type' => 'error'
  }
];


$result_floats{'at_commands_glued_in_paragraph'} = {};


$result_indices_sort_strings{'at_commands_glued_in_paragraph'} = {
  'cp' => [
    'index'
  ]
};



$result_converted{'plaintext'}->{'at_commands_glued_in_paragraph'} = 'at@.  TeXTeXTeX. code‘in code’code.  acronymABC (aaa bb cc)acronym.
acronym2ABCacronym.  emailmali <somebody>email.  ref*note Top::ref.
Foornote(1)after footnote.  accentîaccent.  and star
star.  noindentafter noindent sp




   anchoranchor index

   ---------- Footnotes ----------

   (1) in footnote

';

1;
