use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'comments_on_misc_command_line'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'comments_on_misc_command_line.info'
                }
              ],
              'extra' => {
                'comment_at_end' => {
                  'args' => [
                    {
                      'parent' => {},
                      'text' => ' setfilename (text)
',
                      'type' => 'misc_arg'
                    }
                  ],
                  'cmdname' => 'c',
                  'extra' => {
                    'misc_args' => [
                      ' setfilename (text)
'
                    ]
                  },
                  'parent' => {}
                },
                'spaces_after_argument' => '  '
              },
              'parent' => {},
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'setfilename',
          'extra' => {
            'spaces_before_argument' => '  ',
            'text_arg' => 'comments_on_misc_command_line.info'
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 1,
            'macro' => ''
          }
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'phoo,;,:'
                }
              ],
              'extra' => {
                'comment_at_end' => {
                  'args' => [
                    {
                      'parent' => {},
                      'text' => ' definfoenclose (number)
',
                      'type' => 'misc_arg'
                    }
                  ],
                  'cmdname' => 'c',
                  'extra' => {
                    'misc_args' => [
                      ' definfoenclose (number)
'
                    ]
                  },
                  'parent' => {}
                },
                'spaces_after_argument' => '  '
              },
              'parent' => {},
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'definfoenclose',
          'extra' => {
            'misc_args' => [
              'phoo',
              ';',
              ':'
            ],
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 2,
            'macro' => ''
          }
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'none'
                }
              ],
              'extra' => {
                'comment_at_end' => {
                  'args' => [
                    {
                      'parent' => {},
                      'text' => ' c (number)
',
                      'type' => 'misc_arg'
                    }
                  ],
                  'cmdname' => 'c',
                  'extra' => {
                    'misc_args' => [
                      ' c (number)
'
                    ]
                  },
                  'parent' => {}
                },
                'spaces_after_argument' => ' '
              },
              'parent' => {},
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'firstparagraphindent',
          'extra' => {
            'misc_args' => [
              'none'
            ],
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
              'parent' => {},
              'text' => ' @c raisesections (skipline)
',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'raisesections',
          'parent' => {}
        },
        {
          'args' => [
            {
              'parent' => {},
              'text' => '  @comment  (noarg)
',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'insertcopying',
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 5,
            'macro' => ''
          }
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => '200mm'
                }
              ],
              'extra' => {
                'comment_at_end' => {
                  'args' => [
                    {
                      'parent' => {},
                      'text' => ' pagesizes  (line)
',
                      'type' => 'misc_arg'
                    }
                  ],
                  'cmdname' => 'c',
                  'extra' => {
                    'misc_args' => [
                      ' pagesizes  (line)
'
                    ]
                  },
                  'parent' => {}
                },
                'spaces_after_argument' => ' '
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
            'line_nr' => 6,
            'macro' => ''
          }
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'cmdname' => 'thispage',
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => ' '
                },
                {
                  'cmdname' => '|',
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => ' aaa'
                }
              ],
              'extra' => {
                'comment_at_end' => {
                  'args' => [
                    {
                      'parent' => {},
                      'text' => ' everyheading (lineraw)
',
                      'type' => 'misc_arg'
                    }
                  ],
                  'cmdname' => 'c',
                  'extra' => {
                    'misc_args' => [
                      ' everyheading (lineraw)
'
                    ]
                  },
                  'parent' => {}
                },
                'spaces_after_argument' => ' '
              },
              'parent' => {},
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'everyheading',
          'extra' => {
            'spaces_before_argument' => ' '
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
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'indent',
          'extra' => {
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 9,
            'macro' => ''
          }
        },
        {
          'args' => [
            {
              'parent' => {},
              'text' => ' indent (skipspace)
',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'c',
          'extra' => {
            'misc_args' => [
              ' indent (skipspace)
'
            ]
          },
          'parent' => {}
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'Para.
'
            }
          ],
          'extra' => {
            'indent' => 1
          },
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
$result_trees{'comments_on_misc_command_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'comments_on_misc_command_line'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'comments_on_misc_command_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'extra'}{'comment_at_end'}{'args'}[0]{'parent'} = $result_trees{'comments_on_misc_command_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'extra'}{'comment_at_end'};
$result_trees{'comments_on_misc_command_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'extra'}{'comment_at_end'}{'parent'} = $result_trees{'comments_on_misc_command_line'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'comments_on_misc_command_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'comments_on_misc_command_line'}{'contents'}[0]{'contents'}[0];
$result_trees{'comments_on_misc_command_line'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'comments_on_misc_command_line'}{'contents'}[0];
$result_trees{'comments_on_misc_command_line'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'comments_on_misc_command_line'}{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'comments_on_misc_command_line'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'extra'}{'comment_at_end'}{'args'}[0]{'parent'} = $result_trees{'comments_on_misc_command_line'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'extra'}{'comment_at_end'};
$result_trees{'comments_on_misc_command_line'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'extra'}{'comment_at_end'}{'parent'} = $result_trees{'comments_on_misc_command_line'}{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'comments_on_misc_command_line'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'comments_on_misc_command_line'}{'contents'}[0]{'contents'}[1];
$result_trees{'comments_on_misc_command_line'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'comments_on_misc_command_line'}{'contents'}[0];
$result_trees{'comments_on_misc_command_line'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'comments_on_misc_command_line'}{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'comments_on_misc_command_line'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'extra'}{'comment_at_end'}{'args'}[0]{'parent'} = $result_trees{'comments_on_misc_command_line'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'extra'}{'comment_at_end'};
$result_trees{'comments_on_misc_command_line'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'extra'}{'comment_at_end'}{'parent'} = $result_trees{'comments_on_misc_command_line'}{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'comments_on_misc_command_line'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'comments_on_misc_command_line'}{'contents'}[0]{'contents'}[2];
$result_trees{'comments_on_misc_command_line'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'comments_on_misc_command_line'}{'contents'}[0];
$result_trees{'comments_on_misc_command_line'}{'contents'}[0]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'comments_on_misc_command_line'}{'contents'}[0]{'contents'}[3];
$result_trees{'comments_on_misc_command_line'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'comments_on_misc_command_line'}{'contents'}[0];
$result_trees{'comments_on_misc_command_line'}{'contents'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'comments_on_misc_command_line'}{'contents'}[0]{'contents'}[4];
$result_trees{'comments_on_misc_command_line'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'comments_on_misc_command_line'}{'contents'}[0];
$result_trees{'comments_on_misc_command_line'}{'contents'}[0]{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'comments_on_misc_command_line'}{'contents'}[0]{'contents'}[5]{'args'}[0];
$result_trees{'comments_on_misc_command_line'}{'contents'}[0]{'contents'}[5]{'args'}[0]{'extra'}{'comment_at_end'}{'args'}[0]{'parent'} = $result_trees{'comments_on_misc_command_line'}{'contents'}[0]{'contents'}[5]{'args'}[0]{'extra'}{'comment_at_end'};
$result_trees{'comments_on_misc_command_line'}{'contents'}[0]{'contents'}[5]{'args'}[0]{'extra'}{'comment_at_end'}{'parent'} = $result_trees{'comments_on_misc_command_line'}{'contents'}[0]{'contents'}[5]{'args'}[0];
$result_trees{'comments_on_misc_command_line'}{'contents'}[0]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'comments_on_misc_command_line'}{'contents'}[0]{'contents'}[5];
$result_trees{'comments_on_misc_command_line'}{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'comments_on_misc_command_line'}{'contents'}[0];
$result_trees{'comments_on_misc_command_line'}{'contents'}[0]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'comments_on_misc_command_line'}{'contents'}[0]{'contents'}[6]{'args'}[0];
$result_trees{'comments_on_misc_command_line'}{'contents'}[0]{'contents'}[6]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'comments_on_misc_command_line'}{'contents'}[0]{'contents'}[6]{'args'}[0];
$result_trees{'comments_on_misc_command_line'}{'contents'}[0]{'contents'}[6]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'comments_on_misc_command_line'}{'contents'}[0]{'contents'}[6]{'args'}[0];
$result_trees{'comments_on_misc_command_line'}{'contents'}[0]{'contents'}[6]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'comments_on_misc_command_line'}{'contents'}[0]{'contents'}[6]{'args'}[0];
$result_trees{'comments_on_misc_command_line'}{'contents'}[0]{'contents'}[6]{'args'}[0]{'extra'}{'comment_at_end'}{'args'}[0]{'parent'} = $result_trees{'comments_on_misc_command_line'}{'contents'}[0]{'contents'}[6]{'args'}[0]{'extra'}{'comment_at_end'};
$result_trees{'comments_on_misc_command_line'}{'contents'}[0]{'contents'}[6]{'args'}[0]{'extra'}{'comment_at_end'}{'parent'} = $result_trees{'comments_on_misc_command_line'}{'contents'}[0]{'contents'}[6]{'args'}[0];
$result_trees{'comments_on_misc_command_line'}{'contents'}[0]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'comments_on_misc_command_line'}{'contents'}[0]{'contents'}[6];
$result_trees{'comments_on_misc_command_line'}{'contents'}[0]{'contents'}[6]{'parent'} = $result_trees{'comments_on_misc_command_line'}{'contents'}[0];
$result_trees{'comments_on_misc_command_line'}{'contents'}[0]{'contents'}[7]{'parent'} = $result_trees{'comments_on_misc_command_line'}{'contents'}[0];
$result_trees{'comments_on_misc_command_line'}{'contents'}[0]{'contents'}[8]{'parent'} = $result_trees{'comments_on_misc_command_line'}{'contents'}[0];
$result_trees{'comments_on_misc_command_line'}{'contents'}[0]{'contents'}[9]{'args'}[0]{'parent'} = $result_trees{'comments_on_misc_command_line'}{'contents'}[0]{'contents'}[9];
$result_trees{'comments_on_misc_command_line'}{'contents'}[0]{'contents'}[9]{'parent'} = $result_trees{'comments_on_misc_command_line'}{'contents'}[0];
$result_trees{'comments_on_misc_command_line'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'parent'} = $result_trees{'comments_on_misc_command_line'}{'contents'}[0]{'contents'}[10];
$result_trees{'comments_on_misc_command_line'}{'contents'}[0]{'contents'}[10]{'parent'} = $result_trees{'comments_on_misc_command_line'}{'contents'}[0];
$result_trees{'comments_on_misc_command_line'}{'contents'}[0]{'parent'} = $result_trees{'comments_on_misc_command_line'};

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
    'file_name' => '',
    'line_nr' => 2,
    'macro' => '',
    'text' => '@definfoenclose is obsolete',
    'type' => 'warning'
  }
];


$result_floats{'comments_on_misc_command_line'} = {};



$result_converted{'xml'}->{'comments_on_misc_command_line'} = '<setfilename file="comments_on_misc_command_line.info" spaces="  ">comments_on_misc_command_line.info  </setfilename><!-- c setfilename (text) -->
<definfoenclose command="phoo" open=";" close=":" line="phoo,;,:  @c definfoenclose (number)"></definfoenclose><!-- c definfoenclose (number) -->
<firstparagraphindent value="none" line="none @c c (number)"></firstparagraphindent><!-- c c (number) -->
<raisesections line=" @c raisesections (skipline)"></raisesections>
<insertcopying line="  @comment  (noarg)"></insertcopying>
<pagesizes spaces=" ">200mm </pagesizes><!-- c pagesizes  (line) -->
<everyheading spaces=" "><thispage></thispage> <divideheading/> aaa </everyheading><!-- c everyheading (lineraw) -->

<indent></indent><!-- c indent (skipspace) -->
<para>Para.
</para>';

1;
