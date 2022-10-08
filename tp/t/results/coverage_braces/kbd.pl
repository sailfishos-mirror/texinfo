use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'kbd'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'kbd: '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'in kbd'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'code',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 1,
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
              'parent' => {},
              'text' => 'kbd in code: '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'in first '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'in nested kbd'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'kbd',
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 3,
                        'macro' => ''
                      }
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'code',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 3,
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
              'parent' => {},
              'text' => 'kbd in kbd: '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'in top kbd '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'in nested kbd'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'kbd',
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
              'cmdname' => 'kbd',
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
              'parent' => {},
              'text' => 'kbd in '
            },
            {
              'cmdname' => '@',
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => 'example:
'
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
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
                  'text' => 'in example
'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'in example in kbd'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'code',
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 11,
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
                'line_nr' => 12,
                'macro' => ''
              }
            }
          ],
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 9,
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
              'parent' => {},
              'text' => 'kbd in '
            },
            {
              'cmdname' => '@',
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => 'format:
'
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
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
              'extra' => {
                'spaces_after_argument' => ' 
'
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'format',
          'contents' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'in format
'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'in format in kbd'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'code',
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 18,
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
              'type' => 'preformatted'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'format'
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
                'text_arg' => 'format'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 19,
                'macro' => ''
              }
            }
          ],
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 16,
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
$result_trees{'kbd'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbd'}{'contents'}[0]{'contents'}[0];
$result_trees{'kbd'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbd'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'kbd'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'kbd'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'kbd'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'kbd'}{'contents'}[0]{'contents'}[0];
$result_trees{'kbd'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'kbd'}{'contents'}[0]{'contents'}[0];
$result_trees{'kbd'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbd'}{'contents'}[0];
$result_trees{'kbd'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'kbd'}{'contents'}[0];
$result_trees{'kbd'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'kbd'}{'contents'}[0]{'contents'}[2];
$result_trees{'kbd'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbd'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'kbd'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbd'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'kbd'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'kbd'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[1];
$result_trees{'kbd'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'kbd'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'kbd'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'kbd'}{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'kbd'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'kbd'}{'contents'}[0]{'contents'}[2];
$result_trees{'kbd'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'kbd'}{'contents'}[0]{'contents'}[2];
$result_trees{'kbd'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'kbd'}{'contents'}[0];
$result_trees{'kbd'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'kbd'}{'contents'}[0];
$result_trees{'kbd'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'kbd'}{'contents'}[0]{'contents'}[4];
$result_trees{'kbd'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbd'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'args'}[0];
$result_trees{'kbd'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbd'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'kbd'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'kbd'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[1];
$result_trees{'kbd'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'kbd'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'args'}[0];
$result_trees{'kbd'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'kbd'}{'contents'}[0]{'contents'}[4]{'contents'}[1];
$result_trees{'kbd'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'kbd'}{'contents'}[0]{'contents'}[4];
$result_trees{'kbd'}{'contents'}[0]{'contents'}[4]{'contents'}[2]{'parent'} = $result_trees{'kbd'}{'contents'}[0]{'contents'}[4];
$result_trees{'kbd'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'kbd'}{'contents'}[0];
$result_trees{'kbd'}{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'kbd'}{'contents'}[0];
$result_trees{'kbd'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'parent'} = $result_trees{'kbd'}{'contents'}[0]{'contents'}[6];
$result_trees{'kbd'}{'contents'}[0]{'contents'}[6]{'contents'}[1]{'parent'} = $result_trees{'kbd'}{'contents'}[0]{'contents'}[6];
$result_trees{'kbd'}{'contents'}[0]{'contents'}[6]{'contents'}[2]{'parent'} = $result_trees{'kbd'}{'contents'}[0]{'contents'}[6];
$result_trees{'kbd'}{'contents'}[0]{'contents'}[6]{'parent'} = $result_trees{'kbd'}{'contents'}[0];
$result_trees{'kbd'}{'contents'}[0]{'contents'}[7]{'parent'} = $result_trees{'kbd'}{'contents'}[0];
$result_trees{'kbd'}{'contents'}[0]{'contents'}[8]{'args'}[0]{'parent'} = $result_trees{'kbd'}{'contents'}[0]{'contents'}[8];
$result_trees{'kbd'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbd'}{'contents'}[0]{'contents'}[8]{'contents'}[0];
$result_trees{'kbd'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbd'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'kbd'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'kbd'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'contents'}[1];
$result_trees{'kbd'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'kbd'}{'contents'}[0]{'contents'}[8]{'contents'}[0];
$result_trees{'kbd'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'kbd'}{'contents'}[0]{'contents'}[8]{'contents'}[0];
$result_trees{'kbd'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'parent'} = $result_trees{'kbd'}{'contents'}[0]{'contents'}[8];
$result_trees{'kbd'}{'contents'}[0]{'contents'}[8]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbd'}{'contents'}[0]{'contents'}[8]{'contents'}[1]{'args'}[0];
$result_trees{'kbd'}{'contents'}[0]{'contents'}[8]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'kbd'}{'contents'}[0]{'contents'}[8]{'contents'}[1];
$result_trees{'kbd'}{'contents'}[0]{'contents'}[8]{'contents'}[1]{'parent'} = $result_trees{'kbd'}{'contents'}[0]{'contents'}[8];
$result_trees{'kbd'}{'contents'}[0]{'contents'}[8]{'parent'} = $result_trees{'kbd'}{'contents'}[0];
$result_trees{'kbd'}{'contents'}[0]{'contents'}[9]{'parent'} = $result_trees{'kbd'}{'contents'}[0];
$result_trees{'kbd'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'parent'} = $result_trees{'kbd'}{'contents'}[0]{'contents'}[10];
$result_trees{'kbd'}{'contents'}[0]{'contents'}[10]{'contents'}[1]{'parent'} = $result_trees{'kbd'}{'contents'}[0]{'contents'}[10];
$result_trees{'kbd'}{'contents'}[0]{'contents'}[10]{'contents'}[2]{'parent'} = $result_trees{'kbd'}{'contents'}[0]{'contents'}[10];
$result_trees{'kbd'}{'contents'}[0]{'contents'}[10]{'parent'} = $result_trees{'kbd'}{'contents'}[0];
$result_trees{'kbd'}{'contents'}[0]{'contents'}[11]{'parent'} = $result_trees{'kbd'}{'contents'}[0];
$result_trees{'kbd'}{'contents'}[0]{'contents'}[12]{'args'}[0]{'parent'} = $result_trees{'kbd'}{'contents'}[0]{'contents'}[12];
$result_trees{'kbd'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbd'}{'contents'}[0]{'contents'}[12]{'contents'}[0];
$result_trees{'kbd'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbd'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'kbd'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'kbd'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'contents'}[1];
$result_trees{'kbd'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'kbd'}{'contents'}[0]{'contents'}[12]{'contents'}[0];
$result_trees{'kbd'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'kbd'}{'contents'}[0]{'contents'}[12]{'contents'}[0];
$result_trees{'kbd'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'parent'} = $result_trees{'kbd'}{'contents'}[0]{'contents'}[12];
$result_trees{'kbd'}{'contents'}[0]{'contents'}[12]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbd'}{'contents'}[0]{'contents'}[12]{'contents'}[1]{'args'}[0];
$result_trees{'kbd'}{'contents'}[0]{'contents'}[12]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'kbd'}{'contents'}[0]{'contents'}[12]{'contents'}[1];
$result_trees{'kbd'}{'contents'}[0]{'contents'}[12]{'contents'}[1]{'parent'} = $result_trees{'kbd'}{'contents'}[0]{'contents'}[12];
$result_trees{'kbd'}{'contents'}[0]{'contents'}[12]{'parent'} = $result_trees{'kbd'}{'contents'}[0];
$result_trees{'kbd'}{'contents'}[0]{'parent'} = $result_trees{'kbd'};

$result_texis{'kbd'} = 'kbd: @code{in kbd}.

kbd in code: @code{in first @kbd{in nested kbd}}.

kbd in kbd: @kbd{in top kbd @kbd{in nested kbd}}.

kbd in @@example:

@example 
in example
@code{in example in kbd}.
@end example

kbd in @@format:

@format 
in format
@code{in format in kbd}.
@end format
';


$result_texts{'kbd'} = 'kbd: in kbd.

kbd in code: in first in nested kbd.

kbd in kbd: in top kbd in nested kbd.

kbd in @example:

in example
in example in kbd.

kbd in @format:

in format
in format in kbd.
';

$result_errors{'kbd'} = [];


$result_floats{'kbd'} = {};



$result_converted{'plaintext'}->{'kbd'} = 'kbd: ‘in kbd’.

   kbd in code: ‘in first in nested kbd’.

   kbd in kbd: ‘in top kbd in nested kbd’.

   kbd in @example:

     in example
     in example in kbd.

   kbd in @format:

in format
‘in format in kbd’.
';


$result_converted{'html_text'}->{'kbd'} = '<p>kbd: <code class="code">in kbd</code>.
</p>
<p>kbd in code: <code class="code">in first <kbd class="kbd">in nested kbd</kbd></code>.
</p>
<p>kbd in kbd: <kbd class="kbd">in top kbd <kbd class="kbd">in nested kbd</kbd></kbd>.
</p>
<p>kbd in @example:
</p>
<div class="example">
<pre class="example-preformatted">in example
<code class="code">in example in kbd</code>.
</pre></div>

<p>kbd in @format:
</p>
<div class="format">
<pre class="format-preformatted">in format
<code class="code">in format in kbd</code>.
</pre></div>
';


$result_converted{'latex_text'}->{'kbd'} = 'kbd: \\texttt{in kbd}.

kbd in code: \\texttt{in first \\Texinfocommandstyletextkbd{in nested kbd}}.

kbd in kbd: \\Texinfocommandstyletextkbd{in top kbd \\Texinfocommandstyletextkbd{in nested kbd}}.

kbd in @example:

\\begin{Texinfoindented}
\\begin{Texinfopreformatted}%
\\ttfamily in example
\\texttt{in example in kbd}.
\\end{Texinfopreformatted}
\\end{Texinfoindented}

kbd in @format:

\\begin{Texinfopreformatted}%
in format
\\texttt{in format in kbd}.
\\end{Texinfopreformatted}
';

1;
