use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'format_on_first_footnote_line'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'Texte'
            },
            {
              'args' => [
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
                              'text' => 'in quotation on the first footnote line
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
                            'line_nr' => 3,
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
              'text' => 'Last text '
            },
            {
              'args' => [
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
                              'text' => 'in example
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
                            'line_nr' => 8,
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
                        'line_nr' => 6,
                        'macro' => ''
                      }
                    },
                    {
                      'parent' => {},
                      'text' => '
',
                      'type' => 'empty_line'
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
                'line_nr' => 6,
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
          'type' => 'paragraph'
        }
      ],
      'parent' => {},
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'format_on_first_footnote_line'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'format_on_first_footnote_line'}{'contents'}[0]{'contents'}[0];
$result_trees{'format_on_first_footnote_line'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'format_on_first_footnote_line'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'format_on_first_footnote_line'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'format_on_first_footnote_line'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'format_on_first_footnote_line'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'format_on_first_footnote_line'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'format_on_first_footnote_line'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'format_on_first_footnote_line'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'format_on_first_footnote_line'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'format_on_first_footnote_line'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'format_on_first_footnote_line'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'format_on_first_footnote_line'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'format_on_first_footnote_line'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'extra'}{'end_command'} = $result_trees{'format_on_first_footnote_line'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'format_on_first_footnote_line'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'format_on_first_footnote_line'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'format_on_first_footnote_line'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'format_on_first_footnote_line'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'format_on_first_footnote_line'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'format_on_first_footnote_line'}{'contents'}[0]{'contents'}[0];
$result_trees{'format_on_first_footnote_line'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'format_on_first_footnote_line'}{'contents'}[0]{'contents'}[0];
$result_trees{'format_on_first_footnote_line'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'format_on_first_footnote_line'}{'contents'}[0];
$result_trees{'format_on_first_footnote_line'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'format_on_first_footnote_line'}{'contents'}[0];
$result_trees{'format_on_first_footnote_line'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'format_on_first_footnote_line'}{'contents'}[0]{'contents'}[2];
$result_trees{'format_on_first_footnote_line'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'format_on_first_footnote_line'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'format_on_first_footnote_line'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'format_on_first_footnote_line'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'format_on_first_footnote_line'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'format_on_first_footnote_line'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'format_on_first_footnote_line'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'format_on_first_footnote_line'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'format_on_first_footnote_line'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'format_on_first_footnote_line'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'format_on_first_footnote_line'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'format_on_first_footnote_line'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'format_on_first_footnote_line'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0]{'extra'}{'end_command'} = $result_trees{'format_on_first_footnote_line'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'format_on_first_footnote_line'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'format_on_first_footnote_line'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'format_on_first_footnote_line'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'format_on_first_footnote_line'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'format_on_first_footnote_line'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'format_on_first_footnote_line'}{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'format_on_first_footnote_line'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'format_on_first_footnote_line'}{'contents'}[0]{'contents'}[2];
$result_trees{'format_on_first_footnote_line'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'format_on_first_footnote_line'}{'contents'}[0]{'contents'}[2];
$result_trees{'format_on_first_footnote_line'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'format_on_first_footnote_line'}{'contents'}[0];
$result_trees{'format_on_first_footnote_line'}{'contents'}[0]{'parent'} = $result_trees{'format_on_first_footnote_line'};

$result_texis{'format_on_first_footnote_line'} = 'Texte@footnote{@quotation
in quotation on the first footnote line
@end quotation
}.

Last text @footnote{@example
in example
@end example

}
';


$result_texts{'format_on_first_footnote_line'} = 'Texte.

Last text 
';

$result_errors{'format_on_first_footnote_line'} = [];


$result_floats{'format_on_first_footnote_line'} = {};



$result_converted{'plaintext'}->{'format_on_first_footnote_line'} = 'Texte(1).

   Last text (2)

   ---------- Footnotes ----------

   (1) in quotation on the first footnote line

   (2) in example

';


$result_converted{'html_text'}->{'format_on_first_footnote_line'} = '<p>Texte<a class="footnote" id="DOCF1" href="#FOOT1"><sup>1</sup></a>.
</p>
<p>Last text <a class="footnote" id="DOCF2" href="#FOOT2"><sup>2</sup></a>
</p><div class="footnotes-segment">
<hr>
<h4 class="footnotes-heading">Footnotes</h4>

<h5 class="footnote-body-heading"><a id="FOOT1" href="#DOCF1">(1)</a></h5>
<blockquote class="quotation">
<p>in quotation on the first footnote line
</p></blockquote>
<h5 class="footnote-body-heading"><a id="FOOT2" href="#DOCF2">(2)</a></h5>
<div class="example">
<pre class="example-preformatted">in example
</pre></div>

</div>
';


$result_converted{'latex_text'}->{'format_on_first_footnote_line'} = 'Texte\\footnote{\\begin{quote}
in quotation on the first footnote line
\\end{quote}
}.

Last text \\footnote{\\begin{GNUTexinfoindented}
\\begin{GNUTexinfopreformatted}
\\ttfamily in example
\\end{GNUTexinfopreformatted}
\\end{GNUTexinfoindented}

}
';

1;
