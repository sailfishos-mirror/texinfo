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
          'cmdname' => 'example',
          'contents' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'in example '
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'in r---now '
                        },
                        {
                          'args' => [
                            {
                              'contents' => [
                                {
                                  'parent' => {},
                                  'text' => 'in co---de'
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
                            'line_nr' => 2,
                            'macro' => ''
                          }
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'r',
                  'contents' => [],
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
'
                }
              ],
              'parent' => {},
              'type' => 'preformatted'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'example'
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
                'text_arg' => 'example'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 3,
                'macro' => ''
              }
            }
          ],
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 1,
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
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'in command---c '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'in r---r '
                            },
                            {
                              'args' => [
                                {
                                  'contents' => [
                                    {
                                      'parent' => {},
                                      'text' => 'in file---'
                                    }
                                  ],
                                  'parent' => {},
                                  'type' => 'brace_command_arg'
                                }
                              ],
                              'cmdname' => 'file',
                              'contents' => [],
                              'parent' => {},
                              'source_info' => {
                                'file_name' => '',
                                'line_nr' => 5,
                                'macro' => ''
                              }
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'r',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 5,
                        'macro' => ''
                      }
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'command',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 5,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '.
'
            }
          ],
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
$result_trees{'normal_font_in_monospace'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'normal_font_in_monospace'}{'contents'}[0]{'contents'}[0];
$result_trees{'normal_font_in_monospace'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'normal_font_in_monospace'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'normal_font_in_monospace'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'normal_font_in_monospace'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'normal_font_in_monospace'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'normal_font_in_monospace'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'normal_font_in_monospace'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'normal_font_in_monospace'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[1];
$result_trees{'normal_font_in_monospace'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'normal_font_in_monospace'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'normal_font_in_monospace'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'normal_font_in_monospace'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'normal_font_in_monospace'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'normal_font_in_monospace'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'normal_font_in_monospace'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'normal_font_in_monospace'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'normal_font_in_monospace'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'normal_font_in_monospace'}{'contents'}[0]{'contents'}[0];
$result_trees{'normal_font_in_monospace'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'normal_font_in_monospace'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'normal_font_in_monospace'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'normal_font_in_monospace'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'normal_font_in_monospace'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'normal_font_in_monospace'}{'contents'}[0]{'contents'}[0];
$result_trees{'normal_font_in_monospace'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'normal_font_in_monospace'}{'contents'}[0];
$result_trees{'normal_font_in_monospace'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'normal_font_in_monospace'}{'contents'}[0];
$result_trees{'normal_font_in_monospace'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'normal_font_in_monospace'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'normal_font_in_monospace'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'normal_font_in_monospace'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'normal_font_in_monospace'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'normal_font_in_monospace'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'normal_font_in_monospace'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'normal_font_in_monospace'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[1];
$result_trees{'normal_font_in_monospace'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'normal_font_in_monospace'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'normal_font_in_monospace'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'normal_font_in_monospace'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[1];
$result_trees{'normal_font_in_monospace'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'normal_font_in_monospace'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'normal_font_in_monospace'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'normal_font_in_monospace'}{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'normal_font_in_monospace'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'normal_font_in_monospace'}{'contents'}[0]{'contents'}[2];
$result_trees{'normal_font_in_monospace'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'normal_font_in_monospace'}{'contents'}[0]{'contents'}[2];
$result_trees{'normal_font_in_monospace'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'normal_font_in_monospace'}{'contents'}[0];
$result_trees{'normal_font_in_monospace'}{'contents'}[0]{'parent'} = $result_trees{'normal_font_in_monospace'};

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



$result_converted{'plaintext'}->{'normal_font_in_monospace'} = '     in example in r—now ‘in co---de’

   ‘in command---c in r—r ‘in file---’’.
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


$result_converted{'latex_text'}->{'normal_font_in_monospace'} = '\\begin{GNUTexinfoindented}
\\begin{GNUTexinfopreformatted}%
\\ttfamily in example \\textnormal{in r---now \\texttt{in co{-}{-}{-}de}}
\\end{GNUTexinfopreformatted}
\\end{GNUTexinfoindented}

\\texttt{in command{-}{-}{-}c \\textnormal{in r---r \\texttt{in file{-}{-}{-}}}}.
';

1;
