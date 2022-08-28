use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'heading_command_in_commands'} = {
  'contents' => [
    {
      'contents' => [
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
                      'text' => '
'
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'in code'
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
                      'cmdname' => 'everyheading',
                      'extra' => {
                        'spaces_before_argument' => ' '
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
            },
            {
              'parent' => {},
              'text' => '
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
              'contents' => [
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'in example'
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
                  'cmdname' => 'everyheading',
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 7,
                    'macro' => ''
                  }
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
        },
        {
          'cmdname' => 'quotation',
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
                      'parent' => {},
                      'text' => 'in quotation'
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
              'cmdname' => 'everyheading',
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
                'line_nr' => 12,
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
            'line_nr' => 10,
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
$result_trees{'heading_command_in_commands'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'heading_command_in_commands'}{'contents'}[0];
$result_trees{'heading_command_in_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'heading_command_in_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'heading_command_in_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'heading_command_in_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'heading_command_in_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'heading_command_in_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[1];
$result_trees{'heading_command_in_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'heading_command_in_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'heading_command_in_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'heading_command_in_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'heading_command_in_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'heading_command_in_commands'}{'contents'}[0]{'contents'}[1];
$result_trees{'heading_command_in_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'heading_command_in_commands'}{'contents'}[0]{'contents'}[1];
$result_trees{'heading_command_in_commands'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'heading_command_in_commands'}{'contents'}[0];
$result_trees{'heading_command_in_commands'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'heading_command_in_commands'}{'contents'}[0];
$result_trees{'heading_command_in_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'extra'}{'command'} = $result_trees{'heading_command_in_commands'}{'contents'}[0]{'contents'}[3];
$result_trees{'heading_command_in_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'heading_command_in_commands'}{'contents'}[0]{'contents'}[3];
$result_trees{'heading_command_in_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'heading_command_in_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'heading_command_in_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'heading_command_in_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[0];
$result_trees{'heading_command_in_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'heading_command_in_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[1];
$result_trees{'heading_command_in_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'heading_command_in_commands'}{'contents'}[0]{'contents'}[3];
$result_trees{'heading_command_in_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'heading_command_in_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[2]{'args'}[0];
$result_trees{'heading_command_in_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'heading_command_in_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[2];
$result_trees{'heading_command_in_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[2]{'parent'} = $result_trees{'heading_command_in_commands'}{'contents'}[0]{'contents'}[3];
$result_trees{'heading_command_in_commands'}{'contents'}[0]{'contents'}[3]{'extra'}{'end_command'} = $result_trees{'heading_command_in_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[2];
$result_trees{'heading_command_in_commands'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'heading_command_in_commands'}{'contents'}[0];
$result_trees{'heading_command_in_commands'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'heading_command_in_commands'}{'contents'}[0];
$result_trees{'heading_command_in_commands'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'extra'}{'command'} = $result_trees{'heading_command_in_commands'}{'contents'}[0]{'contents'}[5];
$result_trees{'heading_command_in_commands'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'parent'} = $result_trees{'heading_command_in_commands'}{'contents'}[0]{'contents'}[5];
$result_trees{'heading_command_in_commands'}{'contents'}[0]{'contents'}[5]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'heading_command_in_commands'}{'contents'}[0]{'contents'}[5]{'contents'}[1]{'args'}[0];
$result_trees{'heading_command_in_commands'}{'contents'}[0]{'contents'}[5]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'heading_command_in_commands'}{'contents'}[0]{'contents'}[5]{'contents'}[1];
$result_trees{'heading_command_in_commands'}{'contents'}[0]{'contents'}[5]{'contents'}[1]{'parent'} = $result_trees{'heading_command_in_commands'}{'contents'}[0]{'contents'}[5];
$result_trees{'heading_command_in_commands'}{'contents'}[0]{'contents'}[5]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'heading_command_in_commands'}{'contents'}[0]{'contents'}[5]{'contents'}[2]{'args'}[0];
$result_trees{'heading_command_in_commands'}{'contents'}[0]{'contents'}[5]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'heading_command_in_commands'}{'contents'}[0]{'contents'}[5]{'contents'}[2];
$result_trees{'heading_command_in_commands'}{'contents'}[0]{'contents'}[5]{'contents'}[2]{'parent'} = $result_trees{'heading_command_in_commands'}{'contents'}[0]{'contents'}[5];
$result_trees{'heading_command_in_commands'}{'contents'}[0]{'contents'}[5]{'extra'}{'end_command'} = $result_trees{'heading_command_in_commands'}{'contents'}[0]{'contents'}[5]{'contents'}[2];
$result_trees{'heading_command_in_commands'}{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'heading_command_in_commands'}{'contents'}[0];
$result_trees{'heading_command_in_commands'}{'contents'}[0]{'parent'} = $result_trees{'heading_command_in_commands'};

$result_texis{'heading_command_in_commands'} = '
@code{
@everyheading in code
}

@example
@everyheading in example
@end example

@quotation
@everyheading in quotation
@end quotation
';


$result_texts{'heading_command_in_commands'} = '




';

$result_errors{'heading_command_in_commands'} = [
  {
    'error_line' => 'warning: @everyheading should not appear in @code
',
    'file_name' => '',
    'line_nr' => 3,
    'macro' => '',
    'text' => '@everyheading should not appear in @code',
    'type' => 'warning'
  }
];


$result_floats{'heading_command_in_commands'} = {};



$result_converted{'plaintext'}->{'heading_command_in_commands'} = '‘ ’


';


$result_converted{'html_text'}->{'heading_command_in_commands'} = '
<p><code class="code">
</code>
</p>

<blockquote class="quotation">
</blockquote>
';


$result_converted{'latex'}->{'heading_command_in_commands'} = '
\\texttt{
\\newpagestyle{custom}{%
\\sethead[in code][][]%
{in code}{}{}%
}%
\\pagestyle{custom}%
}

\\begin{GNUTexinfoindented}
\\begin{GNUTexinfopreformatted}
\\ttfamily \\renewpagestyle{custom}{%
\\sethead[in example][][]%
{in example}{}{}%
}%
\\pagestyle{custom}%
\\end{GNUTexinfopreformatted}
\\end{GNUTexinfoindented}

\\begin{quote}
\\renewpagestyle{custom}{%
\\sethead[in quotation][][]%
{in quotation}{}{}%
}%
\\pagestyle{custom}%
\\end{quote}
';

1;
