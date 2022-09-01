use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'exdent_and_commands'} = {
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
          'cmdname' => 'quotation',
          'contents' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'quotation1
'
                }
              ],
              'parent' => {},
              'type' => 'paragraph'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'in exdented protected eol '
                    },
                    {
                      'cmdname' => '
',
                      'parent' => {}
                    }
                  ],
                  'parent' => {},
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'exdent',
              'extra' => {
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
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'following
'
                }
              ],
              'parent' => {},
              'type' => 'paragraph'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'in exdented a '
                    },
                    {
                      'cmdname' => '@',
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => '* '
                    },
                    {
                      'cmdname' => '*',
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => ' and following'
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
              'cmdname' => 'exdent',
              'extra' => {
                'spaces_before_argument' => ' '
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 5,
                'macro' => ''
              }
            },
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'after exdented
'
                }
              ],
              'parent' => {},
              'type' => 'paragraph'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'quotation'
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
                'command_argument' => 'quotation',
                'spaces_before_argument' => ' ',
                'text_arg' => 'quotation'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 7,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'end_command' => {}
          },
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
                  'text' => 'example
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
                      'text' => 'in exdented protected eol '
                    },
                    {
                      'cmdname' => '
',
                      'parent' => {}
                    }
                  ],
                  'parent' => {},
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'exdent',
              'extra' => {
                'spaces_before_argument' => ' '
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 11,
                'macro' => ''
              }
            },
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'following
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
                      'text' => 'in exdented a '
                    },
                    {
                      'cmdname' => '@',
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => '* '
                    },
                    {
                      'cmdname' => '*',
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => ' and following'
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
              'cmdname' => 'exdent',
              'extra' => {
                'spaces_before_argument' => ' '
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 13,
                'macro' => ''
              }
            },
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'after exdented
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
                'command_argument' => 'example',
                'spaces_before_argument' => ' ',
                'text_arg' => 'example'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 15,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'end_command' => {}
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 9,
            'macro' => ''
          }
        }
      ],
      'parent' => {},
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[0];
$result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[0];
$result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[0];
$result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[0];
$result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0];
$result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0];
$result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0];
$result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0];
$result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0];
$result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[3];
$result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[0];
$result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[4];
$result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[0];
$result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'args'}[0];
$result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[5];
$result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[0];
$result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[0]{'extra'}{'end_command'} = $result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[5];
$result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'exdent_and_commands'}{'contents'}[0];
$result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'exdent_and_commands'}{'contents'}[0];
$result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[2];
$result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[2];
$result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[2];
$result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[2];
$result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[2];
$result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[3]{'args'}[0];
$result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[3]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[3]{'args'}[0];
$result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[3]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[3]{'args'}[0];
$result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[3]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[3]{'args'}[0];
$result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[3]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[3]{'args'}[0];
$result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[3];
$result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[3]{'parent'} = $result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[2];
$result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[4];
$result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[4]{'parent'} = $result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[2];
$result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[5]{'args'}[0];
$result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[5];
$result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[5]{'parent'} = $result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[2];
$result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[2]{'extra'}{'end_command'} = $result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[5];
$result_trees{'exdent_and_commands'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'exdent_and_commands'}{'contents'}[0];
$result_trees{'exdent_and_commands'}{'contents'}[0]{'parent'} = $result_trees{'exdent_and_commands'};

$result_texis{'exdent_and_commands'} = '@quotation
quotation1
@exdent in exdented protected eol @
following
@exdent in exdented a @@* @* and following
after exdented
@end quotation

@example
example
@exdent in exdented protected eol @
following
@exdent in exdented a @@* @* and following
after exdented
@end example
';


$result_texts{'exdent_and_commands'} = 'quotation1
in exdented protected eol  
following
in exdented a @* 
 and following
after exdented

example
in exdented protected eol  
following
in exdented a @* 
 and following
after exdented
';

$result_errors{'exdent_and_commands'} = [];


$result_floats{'exdent_and_commands'} = {};



$result_converted{'plaintext'}->{'exdent_and_commands'} = '     quotation1
in exdented protected eol  
     following
in exdented a @*
and following
     after exdented

     example
in exdented protected eol  
     following
in exdented a @*
 and following
     after exdented
';


$result_converted{'html_text'}->{'exdent_and_commands'} = '<blockquote class="quotation">
<p>quotation1
</p><p class="exdent">in exdented protected eol &nbsp;
</p><p>following
</p><p class="exdent">in exdented a @* <br> and following
</p><p>after exdented
</p></blockquote>

<div class="example">
<pre class="example-preformatted">example
</pre><pre class="exdent">in exdented protected eol &nbsp;
</pre><pre class="example-preformatted">following
</pre><pre class="exdent">in exdented a @* 
 and following
</pre><pre class="example-preformatted">after exdented
</pre></div>
';


$result_converted{'xml'}->{'exdent_and_commands'} = '<quotation endspaces=" ">
<para>quotation1
</para><exdent spaces=" ">in exdented protected eol <spacecmd type="nl"/></exdent><para>following
</para><exdent spaces=" ">in exdented a &arobase;* &linebreak; and following</exdent>
<para>after exdented
</para></quotation>

<example endspaces=" ">
<pre xml:space="preserve">example
</pre><exdent spaces=" ">in exdented protected eol <spacecmd type="nl"/></exdent><pre xml:space="preserve">following
</pre><exdent spaces=" ">in exdented a &arobase;* &linebreak; and following</exdent>
<pre xml:space="preserve">after exdented
</pre></example>
';


$result_converted{'latex'}->{'exdent_and_commands'} = '\\begin{quote}
quotation1
\\leavevmode{}\\\\
\\hbox{\\kern -\\leftmargin}%
in exdented protected eol \\ {}
\\\\
following
\\leavevmode{}\\\\
\\hbox{\\kern -\\leftmargin}%
in exdented a @* \\leavevmode{}\\\\ and following
\\\\
after exdented
\\end{quote}

\\begin{GNUTexinfoindented}
\\begin{GNUTexinfopreformatted}
\\ttfamily example
\\end{GNUTexinfopreformatted}
\\leavevmode{}\\\\
\\hbox{\\kern -\\leftmargin}%
in exdented protected eol \\ {}
\\\\
\\begin{GNUTexinfopreformatted}
\\ttfamily following
\\end{GNUTexinfopreformatted}
\\leavevmode{}\\\\
\\hbox{\\kern -\\leftmargin}%
in exdented a @* \\leavevmode{}\\\\ and following
\\\\
\\begin{GNUTexinfopreformatted}
\\ttfamily after exdented
\\end{GNUTexinfopreformatted}
\\end{GNUTexinfoindented}
';


$result_converted{'docbook'}->{'exdent_and_commands'} = '<blockquote><para>quotation1
</para><simpara role="exdent">in exdented protected eol &#160;</simpara>
<para>following
</para><simpara role="exdent">in exdented a @* 
 and following</simpara>
<para>after exdented
</para></blockquote>
<screen>example
</screen><simpara role="exdent">in exdented protected eol &#160;</simpara>
<screen>following
</screen><simpara role="exdent">in exdented a @* 
 and following</simpara>
<screen>after exdented
</screen>';

1;
