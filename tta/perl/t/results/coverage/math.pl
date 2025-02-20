use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'math'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'text' => 'Simple math
'
            },
            {
              'cmdname' => 'math',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => '--'
                    },
                    {
                      'contents' => [
                        {
                          'text' => '{x^i}'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 2
                      },
                      'type' => 'balanced_braces'
                    },
                    {
                      'text' => '\\over'
                    },
                    {
                      'contents' => [
                        {
                          'text' => '{\\tan y}'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 2
                      },
                      'type' => 'balanced_braces'
                    }
                  ],
                  'type' => 'brace_command_context'
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
              'text' => 'Math with '
            },
            {
              'cmdname' => '@'
            },
            {
              'text' => '-command
'
            },
            {
              'cmdname' => 'math',
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => 'code',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'math code'
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
                      'text' => ' a < b \\sum'
                    },
                    {
                      'cmdname' => 'sub',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'i'
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
                      'text' => ' q'
                    },
                    {
                      'cmdname' => 'sup',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => '2'
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
                  'type' => 'brace_command_context'
                }
              ],
              'source_info' => {
                'line_nr' => 5
              }
            },
            {
              'text' => '
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
              'text' => 'Complex
'
            },
            {
              'cmdname' => 'math',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => '\\underline'
                    },
                    {
                      'contents' => [
                        {
                          'text' => '{'
                        },
                        {
                          'cmdname' => 'code',
                          'contents' => [
                            {
                              'contents' => [
                                {
                                  'text' => 'math \\hbox'
                                },
                                {
                                  'contents' => [
                                    {
                                      'text' => '{ code }'
                                    }
                                  ],
                                  'source_info' => {
                                    'line_nr' => 8
                                  },
                                  'type' => 'balanced_braces'
                                }
                              ],
                              'type' => 'brace_container'
                            }
                          ],
                          'source_info' => {
                            'line_nr' => 8
                          }
                        },
                        {
                          'text' => '}'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 8
                      },
                      'type' => 'balanced_braces'
                    },
                    {
                      'text' => ' '
                    },
                    {
                      'cmdname' => '\\'
                    },
                    {
                      'text' => 'i \\sum_'
                    },
                    {
                      'contents' => [
                        {
                          'text' => '{i}'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 8
                      },
                      'type' => 'balanced_braces'
                    },
                    {
                      'contents' => [
                        {
                          'text' => '{\\underline'
                        },
                        {
                          'contents' => [
                            {
                              'text' => '{f}'
                            }
                          ],
                          'source_info' => {
                            'line_nr' => 8
                          },
                          'type' => 'balanced_braces'
                        },
                        {
                          'text' => '}'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 8
                      },
                      'type' => 'balanced_braces'
                    }
                  ],
                  'type' => 'brace_command_context'
                }
              ],
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 8
              }
            },
            {
              'text' => '
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
              'cmdname' => '@'
            },
            {
              'text' => '\\ outside of math
'
            },
            {
              'cmdname' => '\\'
            },
            {
              'text' => '
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
              'text' => 'The 3'
            },
            {
              'cmdname' => 'sup',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'rd'
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 13
              }
            },
            {
              'text' => 'is the I'
            },
            {
              'cmdname' => 'sub',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'r'
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 13
              }
            },
            {
              'text' => '.
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};

$result_texis{'math'} = 'Simple math
@math{--{x^i}\\over{\\tan y}}

Math with @@-command
@math{@code{math code} a < b \\sum@sub{i} q@sup{2}}

Complex
@math{ \\underline{@code{math \\hbox{ code }}} @\\i \\sum_{i}{\\underline{f}}}

@@\\ outside of math
@\\

The 3@sup{rd}is the I@sub{r}.

';


$result_texts{'math'} = 'Simple math
--{x^i}\\over{\\tan y}

Math with @-command
math code a < b \\sumi q2

Complex
\\underline{math \\hbox{ code }} \\i \\sum_{i}{\\underline{f}}

@\\ outside of math
\\

The 3rdis the Ir.

';

$result_errors{'math'} = [
  {
    'error_line' => 'warning: @\\ should only appear in math context
',
    'line_nr' => 11,
    'text' => '@\\ should only appear in math context',
    'type' => 'warning'
  }
];


$result_floats{'math'} = {};



$result_converted{'plaintext'}->{'math'} = 'Simple math --{x^i}\\over{\\tan y}

   Math with @-command ‘math code’ a < b \\sum_{i} q^{2}

   Complex \\underline{‘math \\hbox{ code }’} \\i \\sum_{i}{\\underline{f}}

   @\\ outside of math \\

   The 3^{rd}is the I_{r}.

';


$result_converted{'html_text'}->{'math'} = '<p>Simple math
<em class="math">--{x^i}\\over{\\tan y}</em>
</p>
<p>Math with @-command
<em class="math"><code class="code">math code</code> a &lt; b \\sum<sub class="sub">i</sub> q<sup class="sup">2</sup></em>
</p>
<p>Complex
<em class="math">\\underline{<code class="code">math \\hbox{ code }</code>} \\i \\sum_{i}{\\underline{f}}</em>
</p>
<p>@\\ outside of math
\\
</p>
<p>The 3<sup class="sup">rd</sup>is the I<sub class="sub">r</sub>.
</p>
';


$result_converted{'xml'}->{'math'} = '<para>Simple math
<math>--{x^i}\\over{\\tan y}</math>
</para>
<para>Math with &arobase;-command
<math><code>math code</code> a &lt; b \\sum<sub>i</sub> q<sup>2</sup></math>
</para>
<para>Complex
<math spaces=" ">\\underline{<code>math \\hbox{ code }</code>} &backslash;i \\sum_{i}{\\underline{f}}</math>
</para>
<para>&arobase;\\ outside of math
&backslash;
</para>
<para>The 3<sup>rd</sup>is the I<sub>r</sub>.
</para>
';


$result_converted{'latex_text'}->{'math'} = 'Simple math
$--{x^i}\\over{\\tan y}$

Math with @-command
$\\mathtt{math code} a < b \\sum_{i} q^{2}$

Complex
$\\underline{\\mathtt{math \\hbox{ code }}} \\backslash{}i \\sum_{i}{\\underline{f}}$

@\\textbackslash{} outside of math
\\textbackslash{}

The 3\\textsuperscript{rd}is the I\\textsubscript{r}.

';


$result_converted{'docbook'}->{'math'} = '<para>Simple math
<inlineequation><mathphrase>--{x^i}\\over{\\tan y}</mathphrase></inlineequation>
</para>
<para>Math with @-command
<inlineequation><mathphrase><literal>math code</literal> a &lt; b \\sum<subscript>i</subscript> q<superscript>2</superscript></mathphrase></inlineequation>
</para>
<para>Complex
<inlineequation><mathphrase>\\underline{<literal>math \\hbox{ code }</literal>} \\i \\sum_{i}{\\underline{f}}</mathphrase></inlineequation>
</para>
<para>@\\ outside of math
\\
</para>
<para>The 3<superscript>rd</superscript>is the I<subscript>r</subscript>.
</para>
';

1;
