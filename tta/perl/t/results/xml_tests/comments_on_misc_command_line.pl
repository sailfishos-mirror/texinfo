use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'comments_on_misc_command_line'} = {
  'contents' => [
    {
      'contents' => [
        {
          'cmdname' => 'setfilename',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'comments_on_misc_command_line.info'
                }
              ],
              'info' => {
                'comment_at_end' => {
                  'cmdname' => 'c',
                  'contents' => [
                    {
                      'text' => ' setfilename (text)
',
                      'type' => 'rawline_arg'
                    }
                  ]
                },
                'spaces_after_argument' => {
                  'text' => '  '
                }
              },
              'type' => 'line_arg'
            }
          ],
          'extra' => {
            'text_arg' => 'comments_on_misc_command_line.info'
          },
          'info' => {
            'spaces_before_argument' => {
              'text' => '  '
            }
          },
          'source_info' => {
            'line_nr' => 1
          }
        },
        {
          'cmdname' => 'definfoenclose',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'phoo,;,:'
                }
              ],
              'info' => {
                'comment_at_end' => {
                  'cmdname' => 'c',
                  'contents' => [
                    {
                      'text' => ' definfoenclose (number)
',
                      'type' => 'rawline_arg'
                    }
                  ]
                },
                'spaces_after_argument' => {
                  'text' => '  '
                }
              },
              'type' => 'line_arg'
            }
          ],
          'extra' => {
            'misc_args' => [
              'phoo',
              ';',
              ':'
            ]
          },
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 2
          }
        },
        {
          'cmdname' => 'firstparagraphindent',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'none'
                }
              ],
              'info' => {
                'comment_at_end' => {
                  'cmdname' => 'c',
                  'contents' => [
                    {
                      'text' => ' c (number)
',
                      'type' => 'rawline_arg'
                    }
                  ]
                },
                'spaces_after_argument' => {
                  'text' => ' '
                }
              },
              'type' => 'line_arg'
            }
          ],
          'extra' => {
            'misc_args' => [
              'none'
            ]
          },
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
          'cmdname' => 'raisesections',
          'contents' => [
            {
              'text' => ' @c raisesections (skipline)
',
              'type' => 'rawline_arg'
            }
          ]
        },
        {
          'cmdname' => 'insertcopying',
          'contents' => [
            {
              'text' => '  @comment  (noarg)
',
              'type' => 'rawline_arg'
            }
          ],
          'extra' => {},
          'source_info' => {
            'line_nr' => 5
          }
        },
        {
          'cmdname' => 'pagesizes',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => '200mm'
                }
              ],
              'info' => {
                'comment_at_end' => {
                  'cmdname' => 'c',
                  'contents' => [
                    {
                      'text' => ' pagesizes  (line)
',
                      'type' => 'rawline_arg'
                    }
                  ]
                },
                'spaces_after_argument' => {
                  'text' => ' '
                }
              },
              'type' => 'line_arg'
            }
          ],
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 6
          }
        },
        {
          'cmdname' => 'everyheading',
          'contents' => [
            {
              'contents' => [
                {
                  'cmdname' => 'thispage'
                },
                {
                  'text' => ' '
                },
                {
                  'cmdname' => '|'
                },
                {
                  'text' => ' aaa'
                }
              ],
              'info' => {
                'comment_at_end' => {
                  'cmdname' => 'c',
                  'contents' => [
                    {
                      'text' => ' everyheading (lineraw)
',
                      'type' => 'rawline_arg'
                    }
                  ]
                },
                'spaces_after_argument' => {
                  'text' => ' '
                }
              },
              'type' => 'line_arg'
            }
          ],
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 7
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'indent',
          'source_info' => {
            'line_nr' => 9
          }
        },
        {
          'text' => ' ',
          'type' => 'ignorable_spaces_after_command'
        },
        {
          'cmdname' => 'c',
          'contents' => [
            {
              'text' => ' indent (skipspace)
',
              'type' => 'rawline_arg'
            }
          ]
        },
        {
          'contents' => [
            {
              'text' => 'Para.
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

$result_texis{'comments_on_misc_command_line'} = '@setfilename  comments_on_misc_command_line.info  @c setfilename (text)
@definfoenclose phoo,;,:  @c definfoenclose (number)
@firstparagraphindent none @c c (number)
@raisesections @c raisesections (skipline)
@insertcopying  @comment  (noarg)
@pagesizes 200mm @c pagesizes  (line)
@everyheading @thispage @| aaa @c everyheading (lineraw)

@indent @c indent (skipspace)
Para.
';


$result_texts{'comments_on_misc_command_line'} = '
Para.
';

$result_errors{'comments_on_misc_command_line'} = [
  {
    'error_line' => 'warning: @definfoenclose is obsolete
',
    'line_nr' => 2,
    'text' => '@definfoenclose is obsolete',
    'type' => 'warning'
  }
];


$result_floats{'comments_on_misc_command_line'} = {};



$result_converted{'xml'}->{'comments_on_misc_command_line'} = '<setfilename file="comments_on_misc_command_line.info" spaces="  ">comments_on_misc_command_line.info  </setfilename><!-- c setfilename (text) -->
<definfoenclose spaces=" " command="phoo" open=";" close=":" line="phoo,;,:  @c definfoenclose (number)"></definfoenclose><!-- c definfoenclose (number) -->
<firstparagraphindent spaces=" " value="none" line="none @c c (number)"></firstparagraphindent><!-- c c (number) -->
<raisesections line=" @c raisesections (skipline)"></raisesections>
<insertcopying line="  @comment  (noarg)"></insertcopying>
<pagesizes spaces=" ">200mm </pagesizes><!-- c pagesizes  (line) -->
<everyheading spaces=" "><thispage></thispage> <divideheading/> aaa </everyheading><!-- c everyheading (lineraw) -->

<indent></indent> <!-- c indent (skipspace) -->
<para>Para.
</para>';

1;
