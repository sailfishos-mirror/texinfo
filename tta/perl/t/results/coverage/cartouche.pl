use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'cartouche'} = {
  'contents' => [
    {
      'contents' => [
        {
          'cmdname' => 'cartouche',
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
                  'text' => 'in cartouche.
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
                      'text' => 'cartouche'
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
                'text_arg' => 'cartouche'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 3
              }
            }
          ],
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
          'cmdname' => 'cartouche',
          'contents' => [
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => 'emph',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'Title of box'
                            }
                          ],
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 5
                      }
                    }
                  ],
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
                  'text' => 'Out of main text
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
                      'text' => 'cartouche'
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
                'text_arg' => 'cartouche'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 7
              }
            }
          ],
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
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};

$result_texis{'cartouche'} = '@cartouche
in cartouche.
@end cartouche

@cartouche @emph{Title of box}
Out of main text
@end cartouche
';


$result_texts{'cartouche'} = 'in cartouche.

Title of box
Out of main text
';

$result_errors{'cartouche'} = [];


$result_floats{'cartouche'} = {};



$result_converted{'plaintext'}->{'cartouche'} = 'in cartouche.

                            _Title of box_
   Out of main text
';


$result_converted{'html_text'}->{'cartouche'} = '<table class="cartouche"><tr><td>
<p>in cartouche.
</p></td></tr></table>

<table class="cartouche"><tr><th>
<em class="emph">Title of box</em></th></tr><tr><td>
<p>Out of main text
</p></td></tr></table>
';


$result_converted{'xml'}->{'cartouche'} = '<cartouche endspaces=" ">
<para>in cartouche.
</para></cartouche>

<cartouche spaces=" " endspaces=" "><cartouchetitle><emph>Title of box</emph></cartouchetitle>
<para>Out of main text
</para></cartouche>
';


$result_converted{'latex_text'}->{'cartouche'} = '\\begin{mdframed}[style=Texinfocartouche]
in cartouche.
\\end{mdframed}

\\begin{mdframed}[style=Texinfocartouche, frametitle={\\emph{Title of box}}]
Out of main text
\\end{mdframed}
';


$result_converted{'docbook'}->{'cartouche'} = '<sidebar><para>in cartouche.
</para></sidebar>
<sidebar><title><emphasis>Title of box</emphasis></title>
<para>Out of main text
</para></sidebar>';

1;
