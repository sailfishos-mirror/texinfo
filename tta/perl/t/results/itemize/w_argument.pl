use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'w_argument'} = {
  'contents' => [
    {
      'contents' => [
        {
          'cmdname' => 'itemize',
          'contents' => [
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => 'w',
                      'contents' => [
                        {
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 1
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
              'cmdname' => 'item',
              'contents' => [
                {
                  'text' => ' ',
                  'type' => 'ignorable_spaces_after_command'
                },
                {
                  'contents' => [
                    {
                      'cmdname' => 'option',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => '--build='
                            }
                          ],
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 2
                      }
                    },
                    {
                      'text' => ' platform on which the program is compiled,
'
                    }
                  ],
                  'type' => 'paragraph'
                }
              ],
              'extra' => {
                'item_number' => 1
              },
              'source_info' => {
                'line_nr' => 2
              }
            },
            {
              'cmdname' => 'item',
              'contents' => [
                {
                  'text' => ' ',
                  'type' => 'ignorable_spaces_after_command'
                },
                {
                  'contents' => [
                    {
                      'cmdname' => 'option',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => '--target='
                            }
                          ],
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 3
                      }
                    },
                    {
                      'text' => ' target platform on which the program is processed.
'
                    }
                  ],
                  'type' => 'paragraph'
                }
              ],
              'extra' => {
                'item_number' => 2
              },
              'source_info' => {
                'line_nr' => 3
              }
            },
            {
              'cmdname' => 'end',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'itemize'
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
                'text_arg' => 'itemize'
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
          'extra' => {
            'command_as_argument' => {}
          },
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 1
          }
        }
      ],
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'w_argument'}{'contents'}[0]{'contents'}[0]{'extra'}{'command_as_argument'} = $result_trees{'w_argument'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0];

$result_texis{'w_argument'} = '@itemize @w{}
@item @option{--build=} platform on which the program is compiled,
@item @option{--target=} target platform on which the program is processed.
@end itemize
';


$result_texts{'w_argument'} = '--build= platform on which the program is compiled,
--target= target platform on which the program is processed.
';

$result_errors{'w_argument'} = [];


$result_floats{'w_argument'} = {};



$result_converted{'plaintext'}->{'w_argument'} = '     ‘--build=’ platform on which the program is compiled,
     ‘--target=’ target platform on which the program is processed.
';


$result_converted{'html_text'}->{'w_argument'} = '<ul class="itemize mark-none">
<li><samp class="option">--build=</samp> platform on which the program is compiled,
</li><li><samp class="option">--target=</samp> target platform on which the program is processed.
</li></ul>
';


$result_converted{'xml'}->{'w_argument'} = '<itemize commandarg="w" spaces=" " endspaces=" "><itemprepend><w></w></itemprepend>
<listitem><prepend><w></w></prepend> <para><option>--build=</option> platform on which the program is compiled,
</para></listitem><listitem><prepend><w></w></prepend> <para><option>--target=</option> target platform on which the program is processed.
</para></listitem></itemize>
';


$result_converted{'latex_text'}->{'w_argument'} = '\\begin{itemize}[label={}]
\\item \\texttt{{-}{-}build=} platform on which the program is compiled,
\\item \\texttt{{-}{-}target=} target platform on which the program is processed.
\\end{itemize}
';

1;
