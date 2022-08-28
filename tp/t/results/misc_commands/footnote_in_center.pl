use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'footnote_in_center'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'Centered text with a footnote'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'This footnote
'
                            },
                            {
                              'parent' => {},
                              'text' => 'shows an important feature of the centered text.
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
                          'cmdname' => 'example',
                          'contents' => [
                            {
                              'extra' => {
                                'command' => {}
                              },
                              'parent' => {},
                              'text' => '
',
                              'type' => 'empty_line_after_command'
                            },
                            {
                              'args' => [
                                {
                                  'contents' => [
                                    {
                                      'cmdname' => 'asis',
                                      'contents' => [],
                                      'parent' => {},
                                      'source_info' => {
                                        'file_name' => '',
                                        'line_nr' => 5,
                                        'macro' => ''
                                      },
                                      'type' => 'command_as_argument'
                                    }
                                  ],
                                  'extra' => {
                                    'spaces_after_argument' => '
'
                                  },
                                  'parent' => {},
                                  'type' => 'block_line_arg'
                                }
                              ],
                              'cmdname' => 'table',
                              'contents' => [
                                {
                                  'contents' => [
                                    {
                                      'contents' => [
                                        {
                                          'args' => [
                                            {
                                              'contents' => [
                                                {
                                                  'parent' => {},
                                                  'text' => 'item'
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
                                          'cmdname' => 'item',
                                          'extra' => {
                                            'spaces_before_argument' => ' '
                                          },
                                          'parent' => {},
                                          'source_info' => {
                                            'file_name' => '',
                                            'line_nr' => 6,
                                            'macro' => ''
                                          }
                                        }
                                      ],
                                      'parent' => {},
                                      'type' => 'table_term'
                                    },
                                    {
                                      'contents' => [
                                        {
                                          'contents' => [
                                            {
                                              'parent' => {},
                                              'text' => 'line
'
                                            }
                                          ],
                                          'parent' => {},
                                          'type' => 'preformatted'
                                        }
                                      ],
                                      'parent' => {},
                                      'type' => 'table_item'
                                    }
                                  ],
                                  'parent' => {},
                                  'type' => 'table_entry'
                                },
                                {
                                  'args' => [
                                    {
                                      'contents' => [
                                        {
                                          'parent' => {},
                                          'text' => 'table'
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
                                    'command_argument' => 'table',
                                    'spaces_before_argument' => ' ',
                                    'text_arg' => 'table'
                                  },
                                  'parent' => {},
                                  'source_info' => {
                                    'file_name' => '',
                                    'line_nr' => 8,
                                    'macro' => ''
                                  }
                                }
                              ],
                              'extra' => {
                                'command_as_argument' => {},
                                'end_command' => {},
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
                                'line_nr' => 9,
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
                            'line_nr' => 4,
                            'macro' => ''
                          }
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_context'
                    }
                  ],
                  'cmdname' => 'footnote',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 1,
                    'macro' => ''
                  }
                },
                {
                  'parent' => {},
                  'text' => ' and text after the footnote.'
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
          'cmdname' => 'center',
          'extra' => {
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 1,
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
$result_trees{'footnote_in_center'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'footnote_in_center'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'footnote_in_center'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'footnote_in_center'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'footnote_in_center'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'footnote_in_center'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'footnote_in_center'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'footnote_in_center'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'footnote_in_center'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'footnote_in_center'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'footnote_in_center'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[2]{'contents'}[0]{'extra'}{'command'} = $result_trees{'footnote_in_center'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[2];
$result_trees{'footnote_in_center'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'footnote_in_center'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[2];
$result_trees{'footnote_in_center'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'footnote_in_center'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'footnote_in_center'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'footnote_in_center'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'footnote_in_center'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'footnote_in_center'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'footnote_in_center'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'footnote_in_center'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'footnote_in_center'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'footnote_in_center'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'contents'}[0];
$result_trees{'footnote_in_center'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'footnote_in_center'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0];
$result_trees{'footnote_in_center'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'footnote_in_center'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'footnote_in_center'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'footnote_in_center'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'contents'}[1];
$result_trees{'footnote_in_center'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'footnote_in_center'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0];
$result_trees{'footnote_in_center'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'footnote_in_center'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'footnote_in_center'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'footnote_in_center'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'footnote_in_center'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'footnote_in_center'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1];
$result_trees{'footnote_in_center'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'footnote_in_center'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'footnote_in_center'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[2]{'contents'}[1]{'extra'}{'command_as_argument'} = $result_trees{'footnote_in_center'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'footnote_in_center'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[2]{'contents'}[1]{'extra'}{'end_command'} = $result_trees{'footnote_in_center'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1];
$result_trees{'footnote_in_center'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'footnote_in_center'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[2];
$result_trees{'footnote_in_center'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[2]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'footnote_in_center'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[2]{'contents'}[2]{'args'}[0];
$result_trees{'footnote_in_center'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[2]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'footnote_in_center'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[2]{'contents'}[2];
$result_trees{'footnote_in_center'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'footnote_in_center'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[2];
$result_trees{'footnote_in_center'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[2]{'extra'}{'end_command'} = $result_trees{'footnote_in_center'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[2]{'contents'}[2];
$result_trees{'footnote_in_center'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'footnote_in_center'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'footnote_in_center'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'footnote_in_center'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1];
$result_trees{'footnote_in_center'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'footnote_in_center'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'footnote_in_center'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'footnote_in_center'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'footnote_in_center'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'footnote_in_center'}{'contents'}[0]{'contents'}[0];
$result_trees{'footnote_in_center'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'footnote_in_center'}{'contents'}[0];
$result_trees{'footnote_in_center'}{'contents'}[0]{'parent'} = $result_trees{'footnote_in_center'};

$result_texis{'footnote_in_center'} = '@center Centered text with a footnote@footnote{This footnote
shows an important feature of the centered text.

@example
@table @asis
@item item
line
@end table 
@end example
} and text after the footnote.
';


$result_texts{'footnote_in_center'} = 'Centered text with a footnote and text after the footnote.
';

$result_errors{'footnote_in_center'} = [];


$result_floats{'footnote_in_center'} = {};



$result_converted{'plaintext'}->{'footnote_in_center'} = '     Centered text with a footnote(1) and text after the footnote.

   ---------- Footnotes ----------

   (1) This footnote shows an important feature of the centered text.

     item
          line

';


$result_converted{'html_text'}->{'footnote_in_center'} = '<div class="center">Centered text with a footnote<a class="footnote" id="DOCF1" href="#FOOT1"><sup>1</sup></a> and text after the footnote.
</div><div class="footnotes-segment">
<hr>
<h4 class="footnotes-heading">Footnotes</h4>

<h5 class="footnote-body-heading"><a id="FOOT1" href="#DOCF1">(1)</a></h5>
<p>This footnote
shows an important feature of the centered text.
</p>
<div class="example">
<dl class="table">
<dt><code class="table-term-preformatted-code">item</code></dt>
<dd><pre class="example-preformatted">line
</pre></dd>
</dl>
</div>
</div>
';


$result_converted{'latex'}->{'footnote_in_center'} = '\\begin{center}
Centered text with a footnote\\footnote{This footnote
shows an important feature of the centered text.

\\begin{GNUTexinfoindented}
\\begin{description}
\\item[{\\parbox[b]{\\linewidth}{%
item}}]
\\begin{GNUTexinfopreformatted}
\\ttfamily line
\\end{GNUTexinfopreformatted}
\\end{description}
\\end{GNUTexinfoindented}
} and text after the footnote.
\\end{center}
';


$result_converted{'docbook'}->{'footnote_in_center'} = '<simpara role="center">Centered text with a footnote<footnote><para>This footnote
shows an important feature of the centered text.
</para>
<variablelist><varlistentry><term>item
</term><listitem><screen>line
</screen></listitem></varlistentry></variablelist></footnote> and text after the footnote.</simpara>
';

1;
