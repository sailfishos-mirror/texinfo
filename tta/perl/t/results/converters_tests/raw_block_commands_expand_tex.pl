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
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'html',
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
                  'text' => '<blink>html</blink> ``}
'
                }
              ],
              'type' => 'rawpreformatted'
            },
            {
              'cmdname' => 'end',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'html'
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
                'text_arg' => 'html'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 4
              }
            }
          ],
          'source_info' => {
            'line_nr' => 2
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'xml',
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
                  'text' => '<para>xml</para> ``}
'
                }
              ],
              'type' => 'rawpreformatted'
            },
            {
              'cmdname' => 'end',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'xml'
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
                'text_arg' => 'xml'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 8
              }
            }
          ],
          'source_info' => {
            'line_nr' => 6
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'docbook',
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
                  'text' => '<emphasis>docbook</emphasis> ``}
'
                }
              ],
              'type' => 'rawpreformatted'
            },
            {
              'cmdname' => 'end',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'docbook'
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
                'text_arg' => 'docbook'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 12
              }
            }
          ],
          'source_info' => {
            'line_nr' => 10
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'tex',
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
                  'text' => '$\\underline{a < b '
                },
                {
                  'cmdname' => 'code',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'tex \\hbox'
                        },
                        {
                          'contents' => [
                            {
                              'text' => '{ code }'
                            }
                          ],
                          'source_info' => {
                            'line_nr' => 15
                          },
                          'type' => 'balanced_braces'
                        }
                      ],
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 15
                  }
                },
                {
                  'text' => '}$ ``
'
                }
              ],
              'type' => 'rawpreformatted'
            },
            {
              'cmdname' => 'end',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'tex'
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
                'text_arg' => 'tex'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 16
              }
            }
          ],
          'source_info' => {
            'line_nr' => 14
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'latex',
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
                  'text' => '$\\frac{a < b '
                },
                {
                  'cmdname' => 'code',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'tex \\hbox'
                        },
                        {
                          'contents' => [
                            {
                              'text' => '{ code }'
                            }
                          ],
                          'source_info' => {
                            'line_nr' => 19
                          },
                          'type' => 'balanced_braces'
                        }
                      ],
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 19
                  }
                },
                {
                  'text' => '}{b}$ ``
'
                }
              ],
              'type' => 'rawpreformatted'
            },
            {
              'cmdname' => 'end',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'latex'
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
                'text_arg' => 'latex'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 20
              }
            }
          ],
          'source_info' => {
            'line_nr' => 18
          }
        }
      ],
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};

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
<blink>html</blink> ``}

<para>xml</para> ``}

<emphasis>docbook</emphasis> ``}

$\\underline{a < b tex \\hbox{ code }}$ ``

$\\frac{a < b tex \\hbox{ code }}{b}$ ``
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
    'line_nr' => 14,
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
