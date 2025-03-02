use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'flushleft_flushright_in_quotation'} = {
  'contents' => [
    {
      'contents' => [
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'quotation',
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
              'cmdname' => 'flushleft',
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
                  'text' => '   ',
                  'type' => 'spaces_before_paragraph'
                },
                {
                  'contents' => [
                    {
                      'text' => 'f l
'
                    }
                  ],
                  'type' => 'paragraph'
                },
                {
                  'cmdname' => 'end',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'flushleft'
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
                    'text_arg' => 'flushleft'
                  },
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'source_info' => {
                    'line_nr' => 5
                  }
                }
              ],
              'source_info' => {
                'line_nr' => 3
              }
            },
            {
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'cmdname' => 'flushright',
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
                  'text' => '  ',
                  'type' => 'spaces_before_paragraph'
                },
                {
                  'contents' => [
                    {
                      'text' => 'f r
'
                    }
                  ],
                  'type' => 'paragraph'
                },
                {
                  'cmdname' => 'end',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'flushright'
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
                    'text_arg' => 'flushright'
                  },
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'source_info' => {
                    'line_nr' => 9
                  }
                }
              ],
              'source_info' => {
                'line_nr' => 7
              }
            },
            {
              'cmdname' => 'end',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'quotation'
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
                'text_arg' => 'quotation'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 10
              }
            }
          ],
          'source_info' => {
            'line_nr' => 2
          }
        }
      ],
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};

$result_texis{'flushleft_flushright_in_quotation'} = '
@quotation
@flushleft
   f l
@end flushleft

@flushright
  f r
@end flushright
@end quotation
';


$result_texts{'flushleft_flushright_in_quotation'} = '
f l

f r
';

$result_errors{'flushleft_flushright_in_quotation'} = [];


$result_floats{'flushleft_flushright_in_quotation'} = {};



$result_converted{'plaintext'}->{'flushleft_flushright_in_quotation'} = '     f l

                                                                    f r
';


$result_converted{'html_text'}->{'flushleft_flushright_in_quotation'} = '
<blockquote class="quotation">
<div class="flushleft"><p class="flushleft-paragraph">f l
</p></div>
<div class="flushright"><p class="flushright-paragraph">f r
</p></div></blockquote>
';


$result_converted{'xml'}->{'flushleft_flushright_in_quotation'} = '
<quotation endspaces=" ">
<flushleft endspaces=" ">
   <para>f l
</para></flushleft>

<flushright endspaces=" ">
  <para>f r
</para></flushright>
</quotation>
';


$result_converted{'latex_text'}->{'flushleft_flushright_in_quotation'} = '
\\begin{quote}
\\begin{flushleft}
\\begin{Texinfopreformatted}%
   f l
\\end{Texinfopreformatted}
\\end{flushleft}

\\begin{flushright}
\\begin{Texinfopreformatted}%
  f r
\\end{Texinfopreformatted}
\\end{flushright}
\\end{quote}
';


$result_converted{'docbook'}->{'flushleft_flushright_in_quotation'} = '
<blockquote><para>f l
</para>
<para>f r
</para></blockquote>';

1;
