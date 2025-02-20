use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'normal_font_in_monospace'} = {
  'contents' => [
    {
      'contents' => [
        {
          'cmdname' => 'example',
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
                  'text' => 'in example '
                },
                {
                  'cmdname' => 'r',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'in r---now '
                        },
                        {
                          'cmdname' => 'code',
                          'contents' => [
                            {
                              'contents' => [
                                {
                                  'text' => 'in co---de'
                                }
                              ],
                              'type' => 'brace_container'
                            }
                          ],
                          'source_info' => {
                            'line_nr' => 2
                          }
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
                  'text' => '
'
                }
              ],
              'type' => 'preformatted'
            },
            {
              'cmdname' => 'end',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'example'
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
                'text_arg' => 'example'
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
          'contents' => [
            {
              'cmdname' => 'command',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'in command---c '
                    },
                    {
                      'cmdname' => 'r',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'in r---r '
                            },
                            {
                              'cmdname' => 'file',
                              'contents' => [
                                {
                                  'contents' => [
                                    {
                                      'text' => 'in file---'
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
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 5
                      }
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 5
              }
            },
            {
              'text' => '.
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

$result_texis{'normal_font_in_monospace'} = '@example
in example @r{in r---now @code{in co---de}}
@end example

@command{in command---c @r{in r---r @file{in file---}}}.
';


$result_texts{'normal_font_in_monospace'} = 'in example in r---now in co---de

in command---c in r---r in file---.
';

$result_errors{'normal_font_in_monospace'} = [];


$result_floats{'normal_font_in_monospace'} = {};



$result_converted{'plaintext'}->{'normal_font_in_monospace'} = '     in example in r--now ‘in co---de’

   ‘in command---c in r--r ‘in file---’’.
';


$result_converted{'html_text'}->{'normal_font_in_monospace'} = '<div class="example">
<pre class="example-preformatted">in example <span class="r">in r&mdash;now <code class="code">in co---de</code></span>
</pre></div>

<p><code class="command">in command---c <span class="r">in r&mdash;r <samp class="file">in file---</samp></span></code>.
</p>';


$result_converted{'xml'}->{'normal_font_in_monospace'} = '<example endspaces=" ">
<pre xml:space="preserve">in example <r>in r&textmdash;now <code>in co---de</code></r>
</pre></example>

<para><command>in command---c <r>in r&textmdash;r <file>in file---</file></r></command>.
</para>';


$result_converted{'docbook'}->{'normal_font_in_monospace'} = '<screen>in example in r&#8212;now <literal>in co---de</literal>
</screen>
<para><command>in command---c in r&#8212;r <filename>in file---</filename></command>.
</para>';


$result_converted{'latex_text'}->{'normal_font_in_monospace'} = '\\begin{Texinfoindented}
\\begin{Texinfopreformatted}%
\\ttfamily in example \\textnormal{in r---now \\texttt{in co{-}{-}{-}de}}
\\end{Texinfopreformatted}
\\end{Texinfoindented}

\\texttt{in command{-}{-}{-}c \\textnormal{in r---r \\texttt{in file{-}{-}{-}}}}.
';

1;
