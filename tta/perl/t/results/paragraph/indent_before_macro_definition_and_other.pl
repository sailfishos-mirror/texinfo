use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'indent_before_macro_definition_and_other'} = {
  'contents' => [
    {
      'contents' => [
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'indent',
          'source_info' => {
            'line_nr' => 2
          }
        },
        {
          'text' => '
',
          'type' => 'ignorable_spaces_after_command'
        },
        {
          'cmdname' => 'author',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'someone'
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
          'extra' => {},
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 3
          }
        },
        {
          'cmdname' => 'image',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'my_image'
                }
              ],
              'type' => 'brace_arg'
            }
          ],
          'extra' => {
            'input_encoding_name' => 'utf-8'
          },
          'source_info' => {
            'line_nr' => 4
          }
        },
        {
          'text' => '
'
        },
        {
          'cmdname' => 'vskip',
          'contents' => [
            {
              'text' => ' 0pt plus 1filll
',
              'type' => 'rawline_arg'
            }
          ]
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
                  'text' => '<code>in c</code>
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
                'line_nr' => 8
              }
            }
          ],
          'source_info' => {
            'line_nr' => 6
          },
          'source_marks' => [
            {
              'counter' => 1,
              'element' => {
                'cmdname' => 'ifnothtml',
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
                    'text' => 'not html
',
                    'type' => 'raw'
                  },
                  {
                    'cmdname' => 'end',
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'text' => 'ifnothtml'
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
                      'text_arg' => 'ifnothtml'
                    },
                    'info' => {
                      'spaces_before_argument' => {
                        'text' => ' '
                      }
                    },
                    'source_info' => {
                      'line_nr' => 11
                    }
                  }
                ],
                'source_info' => {
                  'line_nr' => 9
                }
              },
              'sourcemark_type' => 'ignored_conditional_block'
            }
          ]
        },
        {
          'cmdname' => 'setchapternewpage',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'on'
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
            'misc_args' => [
              'on'
            ]
          },
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 12
          }
        },
        {
          'cmdname' => 'anchor',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'spot'
                }
              ],
              'type' => 'brace_arg'
            }
          ],
          'extra' => {
            'is_target' => 1,
            'normalized' => 'spot'
          },
          'source_info' => {
            'line_nr' => 13
          }
        },
        {
          'text' => '
',
          'type' => 'spaces_after_close_brace'
        },
        {
          'cmdname' => 'cpindex',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'ei'
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
            'index_entry' => [
              'cp',
              1
            ]
          },
          'info' => {
            'command_name' => 'cpindex',
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 14
          },
          'type' => 'index_entry_command'
        },
        {
          'cmdname' => 'macro',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => ' aaa {g}
',
                  'type' => 'macro_line'
                }
              ],
              'type' => 'arguments_line'
            },
            {
              'text' => 'll /g/
',
              'type' => 'raw'
            },
            {
              'cmdname' => 'end',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'macro'
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
                'text_arg' => 'macro'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 17
              }
            }
          ],
          'extra' => {
            'macro_name' => 'aaa',
            'misc_args' => [
              'g'
            ]
          },
          'source_info' => {
            'line_nr' => 15
          }
        },
        {
          'contents' => [
            {
              'text' => 'HHERE
'
            }
          ],
          'extra' => {
            'indent' => 1
          },
          'type' => 'paragraph'
        }
      ],
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};

$result_texis{'indent_before_macro_definition_and_other'} = '
@indent
@author someone
@image{my_image}
@vskip 0pt plus 1filll
@html
<code>in c</code>
@end html
@setchapternewpage on
@anchor{spot}
@cpindex ei
@macro aaa {g}
ll /g/
@end macro
HHERE
';


$result_texts{'indent_before_macro_definition_and_other'} = '
someone
my_image
<code>in c</code>
HHERE
';

$result_errors{'indent_before_macro_definition_and_other'} = [
  {
    'error_line' => 'warning: @author not meaningful outside `@titlepage\' and `@quotation\' environments
',
    'line_nr' => 3,
    'text' => '@author not meaningful outside `@titlepage\' and `@quotation\' environments',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `cp\' outside of any node
',
    'line_nr' => 14,
    'text' => 'entry for index `cp\' outside of any node',
    'type' => 'warning'
  }
];


$result_floats{'indent_before_macro_definition_and_other'} = {};


$result_indices_sort_strings{'indent_before_macro_definition_and_other'} = {
  'cp' => [
    'ei'
  ]
};



$result_converted{'plaintext'}->{'indent_before_macro_definition_and_other'} = '[my_image]
   HHERE
';

$result_converted_errors{'plaintext'}->{'indent_before_macro_definition_and_other'} = [
  {
    'error_line' => 'warning: could not find @image file `my_image.txt\' nor alternate text
',
    'line_nr' => 4,
    'text' => 'could not find @image file `my_image.txt\' nor alternate text',
    'type' => 'warning'
  }
];



$result_converted{'html_text'}->{'indent_before_macro_definition_and_other'} = '
<img class="image" src="my_image.jpg" alt="my_image">
<code>in c</code>
<a class="anchor" id="spot"></a><a class="index-entry-id" id="index-ei"></a>
<p>HHERE
</p>';

$result_converted_errors{'html_text'}->{'indent_before_macro_definition_and_other'} = [
  {
    'error_line' => 'warning: @image file `my_image\' (for HTML) not found, using `my_image.jpg\'
',
    'line_nr' => 4,
    'text' => '@image file `my_image\' (for HTML) not found, using `my_image.jpg\'',
    'type' => 'warning'
  }
];


1;
