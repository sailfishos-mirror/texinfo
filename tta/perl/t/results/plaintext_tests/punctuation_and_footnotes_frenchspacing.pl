use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'punctuation_and_footnotes_frenchspacing'} = {
  'contents' => [
    {
      'contents' => [
        {
          'cmdname' => 'frenchspacing',
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
            'line_nr' => 1
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'text' => 'Text.'
            },
            {
              'cmdname' => 'footnote',
              'contents' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'after period'
                        }
                      ],
                      'type' => 'paragraph'
                    }
                  ],
                  'type' => 'brace_command_context'
                }
              ],
              'extra' => {},
              'source_info' => {
                'line_nr' => 3
              }
            },
            {
              'text' => ' Sentence 
'
            },
            {
              'text' => 'end.'
            },
            {
              'cmdname' => 'footnote',
              'contents' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'after period double'
                        }
                      ],
                      'type' => 'paragraph'
                    }
                  ],
                  'type' => 'brace_command_context'
                }
              ],
              'extra' => {},
              'source_info' => {
                'line_nr' => 4
              }
            },
            {
              'text' => '  S2.'
            },
            {
              'cmdname' => 'footnote',
              'contents' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'after period triple'
                        }
                      ],
                      'type' => 'paragraph'
                    }
                  ],
                  'type' => 'brace_command_context'
                }
              ],
              'extra' => {},
              'source_info' => {
                'line_nr' => 4
              }
            },
            {
              'text' => '   S3.
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
              'text' => 'No PERIOD.'
            },
            {
              'cmdname' => 'footnote',
              'contents' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'no period'
                        }
                      ],
                      'type' => 'paragraph'
                    }
                  ],
                  'type' => 'brace_command_context'
                }
              ],
              'extra' => {},
              'source_info' => {
                'line_nr' => 6
              }
            },
            {
              'text' => ' worD.'
            },
            {
              'cmdname' => 'footnote',
              'contents' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'no period double'
                        }
                      ],
                      'type' => 'paragraph'
                    }
                  ],
                  'type' => 'brace_command_context'
                }
              ],
              'extra' => {},
              'source_info' => {
                'line_nr' => 6
              }
            },
            {
              'text' => '  w2 
'
            },
            {
              'text' => 'wW.'
            },
            {
              'cmdname' => 'footnote',
              'contents' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'no period triple'
                        }
                      ],
                      'type' => 'paragraph'
                    }
                  ],
                  'type' => 'brace_command_context'
                }
              ],
              'extra' => {},
              'source_info' => {
                'line_nr' => 7
              }
            },
            {
              'text' => '   S3.
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
              'text' => 'Force PERIOD'
            },
            {
              'cmdname' => '.'
            },
            {
              'cmdname' => 'footnote',
              'contents' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'after forced period'
                        }
                      ],
                      'type' => 'paragraph'
                    }
                  ],
                  'type' => 'brace_command_context'
                }
              ],
              'extra' => {},
              'source_info' => {
                'line_nr' => 9
              }
            },
            {
              'text' => ' Sentence 
'
            },
            {
              'text' => 'W'
            },
            {
              'cmdname' => '.'
            },
            {
              'cmdname' => 'footnote',
              'contents' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'after forced period double'
                        }
                      ],
                      'type' => 'paragraph'
                    }
                  ],
                  'type' => 'brace_command_context'
                }
              ],
              'extra' => {},
              'source_info' => {
                'line_nr' => 10
              }
            },
            {
              'text' => '  S2 
'
            },
            {
              'text' => 'W'
            },
            {
              'cmdname' => '.'
            },
            {
              'cmdname' => 'footnote',
              'contents' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'after forced period triple'
                        }
                      ],
                      'type' => 'paragraph'
                    }
                  ],
                  'type' => 'brace_command_context'
                }
              ],
              'extra' => {},
              'source_info' => {
                'line_nr' => 11
              }
            },
            {
              'text' => '   S3.
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
              'text' => 'Force no period.'
            },
            {
              'cmdname' => ':'
            },
            {
              'cmdname' => 'footnote',
              'contents' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'after forced no period'
                        }
                      ],
                      'type' => 'paragraph'
                    }
                  ],
                  'type' => 'brace_command_context'
                }
              ],
              'extra' => {},
              'source_info' => {
                'line_nr' => 13
              }
            },
            {
              'text' => ' Sentence 
'
            },
            {
              'text' => 'w.'
            },
            {
              'cmdname' => ':'
            },
            {
              'cmdname' => 'footnote',
              'contents' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'after forced no period double'
                        }
                      ],
                      'type' => 'paragraph'
                    }
                  ],
                  'type' => 'brace_command_context'
                }
              ],
              'extra' => {},
              'source_info' => {
                'line_nr' => 14
              }
            },
            {
              'text' => '  S2 
'
            },
            {
              'text' => 'w.'
            },
            {
              'cmdname' => ':'
            },
            {
              'cmdname' => 'footnote',
              'contents' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'after forced no period triple'
                        }
                      ],
                      'type' => 'paragraph'
                    }
                  ],
                  'type' => 'brace_command_context'
                }
              ],
              'extra' => {},
              'source_info' => {
                'line_nr' => 15
              }
            },
            {
              'text' => '   S3.
'
            }
          ],
          'type' => 'paragraph'
        }
      ],
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};

$result_texis{'punctuation_and_footnotes_frenchspacing'} = '@frenchspacing on

Text.@footnote{after period} Sentence 
end.@footnote{after period double}  S2.@footnote{after period triple}   S3.

No PERIOD.@footnote{no period} worD.@footnote{no period double}  w2 
wW.@footnote{no period triple}   S3.

Force PERIOD@.@footnote{after forced period} Sentence 
W@.@footnote{after forced period double}  S2 
W@.@footnote{after forced period triple}   S3.

Force no period.@:@footnote{after forced no period} Sentence 
w.@:@footnote{after forced no period double}  S2 
w.@:@footnote{after forced no period triple}   S3.
';


$result_texts{'punctuation_and_footnotes_frenchspacing'} = '
Text. Sentence 
end.  S2.   S3.

No PERIOD. worD.  w2 
wW.   S3.

Force PERIOD. Sentence 
W.  S2 
W.   S3.

Force no period. Sentence 
w.  S2 
w.   S3.
';

$result_errors{'punctuation_and_footnotes_frenchspacing'} = [];


$result_floats{'punctuation_and_footnotes_frenchspacing'} = {};



$result_converted{'plaintext'}->{'punctuation_and_footnotes_frenchspacing'} = 'Text.(1) Sentence end.(2) S2.(3) S3.

   No PERIOD.(4) worD.(5) w2 wW.(6) S3.

   Force PERIOD.(7) Sentence W.(8) S2 W.(9) S3.

   Force no period.(10) Sentence w.(11) S2 w.(12) S3.

   ---------- Footnotes ----------

   (1) after period

   (2) after period double

   (3) after period triple

   (4) no period

   (5) no period double

   (6) no period triple

   (7) after forced period

   (8) after forced period double

   (9) after forced period triple

   (10) after forced no period

   (11) after forced no period double

   (12) after forced no period triple

';

1;
