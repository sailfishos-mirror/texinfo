use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'raw_block_commands_expand_tex'} = {
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
              'contents' => [],
              'extra' => {
                'spaces_after_argument' => '
'
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'html',
          'contents' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => '<blink>html</blink> ``'
                },
                {
                  'parent' => {},
                  'text' => '}
'
                }
              ],
              'parent' => {},
              'type' => 'rawpreformatted'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'html'
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
                'text_arg' => 'html'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 4,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'end_command' => {}
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
          'args' => [
            {
              'contents' => [],
              'extra' => {
                'spaces_after_argument' => '
'
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'xml',
          'contents' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => '<para>xml</para> ``'
                },
                {
                  'parent' => {},
                  'text' => '}
'
                }
              ],
              'parent' => {},
              'type' => 'rawpreformatted'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'xml'
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
                'text_arg' => 'xml'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 8,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'end_command' => {}
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 6,
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
              'contents' => [],
              'extra' => {
                'spaces_after_argument' => '
'
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'docbook',
          'contents' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => '<emphasis>docbook</emphasis> ``'
                },
                {
                  'parent' => {},
                  'text' => '}
'
                }
              ],
              'parent' => {},
              'type' => 'rawpreformatted'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'docbook'
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
                'text_arg' => 'docbook'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 12,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'end_command' => {}
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 10,
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
              'contents' => [],
              'extra' => {
                'spaces_after_argument' => '
'
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'tex',
          'contents' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => '$\\underline'
                },
                {
                  'parent' => {},
                  'text' => '{a < b '
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'tex \\hbox'
                        },
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => ' code '
                            }
                          ],
                          'parent' => {},
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 15,
                            'macro' => ''
                          },
                          'type' => 'bracketed'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'code',
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
                  'text' => '}$ ``
'
                }
              ],
              'parent' => {},
              'type' => 'rawpreformatted'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'tex'
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
                'text_arg' => 'tex'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
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
            'file_name' => '',
            'line_nr' => 14,
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
              'contents' => [],
              'extra' => {
                'spaces_after_argument' => '
'
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'latex',
          'contents' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => '$\\frac'
                },
                {
                  'parent' => {},
                  'text' => '{a < b '
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'tex \\hbox'
                        },
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => ' code '
                            }
                          ],
                          'parent' => {},
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 19,
                            'macro' => ''
                          },
                          'type' => 'bracketed'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'code',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 19,
                    'macro' => ''
                  }
                },
                {
                  'parent' => {},
                  'text' => '}'
                },
                {
                  'parent' => {},
                  'text' => '{b'
                },
                {
                  'parent' => {},
                  'text' => '}$ ``
'
                }
              ],
              'parent' => {},
              'type' => 'rawpreformatted'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'latex'
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
                'text_arg' => 'latex'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 20,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'end_command' => {}
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 18,
            'macro' => ''
          }
        }
      ],
      'parent' => {},
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'raw_block_commands_expand_tex'}{'contents'}[0];
$result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[1];
$result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[1];
$result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[1];
$result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[1]{'extra'}{'end_command'} = $result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'raw_block_commands_expand_tex'}{'contents'}[0];
$result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'raw_block_commands_expand_tex'}{'contents'}[0];
$result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[3];
$result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[3]{'contents'}[0];
$result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[3]{'contents'}[0];
$result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[3];
$result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0];
$result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[3]{'contents'}[1];
$result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[3];
$result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[3]{'extra'}{'end_command'} = $result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[3]{'contents'}[1];
$result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'raw_block_commands_expand_tex'}{'contents'}[0];
$result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'raw_block_commands_expand_tex'}{'contents'}[0];
$result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[5];
$result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[5]{'contents'}[0];
$result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[5]{'contents'}[0];
$result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'parent'} = $result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[5];
$result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[5]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[5]{'contents'}[1]{'args'}[0];
$result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[5]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[5]{'contents'}[1];
$result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[5]{'contents'}[1]{'parent'} = $result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[5];
$result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[5]{'extra'}{'end_command'} = $result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[5]{'contents'}[1];
$result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'raw_block_commands_expand_tex'}{'contents'}[0];
$result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[6]{'parent'} = $result_trees{'raw_block_commands_expand_tex'}{'contents'}[0];
$result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[7]{'args'}[0]{'parent'} = $result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[7];
$result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[7]{'contents'}[0];
$result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[7]{'contents'}[0];
$result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[1];
$result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'contents'}[2];
$result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[7]{'contents'}[0];
$result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[7]{'contents'}[0];
$result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'parent'} = $result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[7];
$result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[7]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[7]{'contents'}[1]{'args'}[0];
$result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[7]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[7]{'contents'}[1];
$result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[7]{'contents'}[1]{'parent'} = $result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[7];
$result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[7]{'extra'}{'end_command'} = $result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[7]{'contents'}[1];
$result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[7]{'parent'} = $result_trees{'raw_block_commands_expand_tex'}{'contents'}[0];
$result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[8]{'parent'} = $result_trees{'raw_block_commands_expand_tex'}{'contents'}[0];
$result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[9]{'args'}[0]{'parent'} = $result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[9];
$result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[9]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[9]{'contents'}[0];
$result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[9]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[9]{'contents'}[0];
$result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[9]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[9]{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[9]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[9]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[1];
$result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[9]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[9]{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[9]{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[9]{'contents'}[0]{'contents'}[2];
$result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[9]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[9]{'contents'}[0];
$result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[9]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[9]{'contents'}[0];
$result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[9]{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[9]{'contents'}[0];
$result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[9]{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[9]{'contents'}[0];
$result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[9]{'contents'}[0]{'parent'} = $result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[9];
$result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[9]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[9]{'contents'}[1]{'args'}[0];
$result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[9]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[9]{'contents'}[1];
$result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[9]{'contents'}[1]{'parent'} = $result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[9];
$result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[9]{'extra'}{'end_command'} = $result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[9]{'contents'}[1];
$result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'contents'}[9]{'parent'} = $result_trees{'raw_block_commands_expand_tex'}{'contents'}[0];
$result_trees{'raw_block_commands_expand_tex'}{'contents'}[0]{'parent'} = $result_trees{'raw_block_commands_expand_tex'};

$result_texis{'raw_block_commands_expand_tex'} = '
@html
<blink>html</blink> ``}
@end html

@xml
<para>xml</para> ``}
@end xml

@docbook
<emphasis>docbook</emphasis> ``}
@end docbook

@tex
$\\underline{a < b @code{tex \\hbox{ code }}}$ ``
@end tex

@latex
$\\frac{a < b @code{tex \\hbox{ code }}}{b}$ ``
@end latex
';


$result_texts{'raw_block_commands_expand_tex'} = '




';

$result_errors{'raw_block_commands_expand_tex'} = [];


$result_floats{'raw_block_commands_expand_tex'} = {};



$result_converted{'plaintext'}->{'raw_block_commands_expand_tex'} = '$\\underline{a < b ‘tex \\hbox{ code }’}$ ``

';


$result_converted{'html_text'}->{'raw_block_commands_expand_tex'} = '



$\\underline{a &lt; b &lt;code class=&quot;code&quot;&gt;tex \\hbox{ code }&lt;/code&gt;}$ ``

';

$result_converted_errors{'html_text'}->{'raw_block_commands_expand_tex'} = [
  {
    'error_line' => 'warning: raw format tex is not converted
',
    'file_name' => '',
    'line_nr' => 14,
    'macro' => '',
    'text' => 'raw format tex is not converted',
    'type' => 'warning'
  }
];



$result_converted{'xml'}->{'raw_block_commands_expand_tex'} = '
<html endspaces=" ">
&lt;blink&gt;html&lt;/blink&gt; &textldquo;}
</html>

<xml endspaces=" ">
&lt;para&gt;xml&lt;/para&gt; &textldquo;}
</xml>

<docbook endspaces=" ">
&lt;emphasis&gt;docbook&lt;/emphasis&gt; &textldquo;}
</docbook>

$\\underline{a < b <code>tex \\hbox{ code }</code>}$ ``

<latex endspaces=" ">
$\\frac{a &lt; b <code>tex \\hbox{ code }</code>}{b}$ &textldquo;
</latex>
';


$result_converted{'docbook'}->{'raw_block_commands_expand_tex'} = '



$\\underline{a < b <literal>tex \\hbox{ code }</literal>}$ ``

';


$result_converted{'latex_text'}->{'raw_block_commands_expand_tex'} = '



$\\underline{a < b \\texttt{tex \\hbox{ code }}}$ ``

';

1;
