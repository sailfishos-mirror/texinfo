use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'text_on_display_command_line'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'text on line'
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
          'cmdname' => 'display',
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'display'
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
                'command_argument' => 'display',
                'spaces_before_argument' => ' ',
                'text_arg' => 'display'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 2,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'end_command' => {},
            'spaces_before_argument' => ' '
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
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'text on line followed by text'
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
          'cmdname' => 'display',
          'contents' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'normal text
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
                      'text' => 'display'
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
                'command_argument' => 'display',
                'spaces_before_argument' => ' ',
                'text_arg' => 'display'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 6,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'end_command' => {},
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 4,
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
          'cmdname' => 'display',
          'contents' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'in display
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
                      'text' => 'display text after end'
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
                'command_argument' => 'display',
                'spaces_before_argument' => ' ',
                'text_arg' => 'display text after end'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 10,
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
            'line_nr' => 8,
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
          'cmdname' => 'display',
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
              'cmdname' => 'display',
              'contents' => [
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'display text after end display nested in display'
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
                    'command_argument' => 'display',
                    'spaces_before_argument' => ' ',
                    'text_arg' => 'display text after end display nested in display'
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 14,
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
                'line_nr' => 13,
                'macro' => ''
              }
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'display'
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
                'command_argument' => 'display',
                'spaces_before_argument' => ' ',
                'text_arg' => 'display'
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
            'line_nr' => 12,
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
$result_trees{'text_on_display_command_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'text_on_display_command_line'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'text_on_display_command_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'text_on_display_command_line'}{'contents'}[0]{'contents'}[0];
$result_trees{'text_on_display_command_line'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'text_on_display_command_line'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'text_on_display_command_line'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'text_on_display_command_line'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'text_on_display_command_line'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'text_on_display_command_line'}{'contents'}[0]{'contents'}[0];
$result_trees{'text_on_display_command_line'}{'contents'}[0]{'contents'}[0]{'extra'}{'end_command'} = $result_trees{'text_on_display_command_line'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'text_on_display_command_line'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'text_on_display_command_line'}{'contents'}[0];
$result_trees{'text_on_display_command_line'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'text_on_display_command_line'}{'contents'}[0];
$result_trees{'text_on_display_command_line'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'text_on_display_command_line'}{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'text_on_display_command_line'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'text_on_display_command_line'}{'contents'}[0]{'contents'}[2];
$result_trees{'text_on_display_command_line'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'text_on_display_command_line'}{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'text_on_display_command_line'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'text_on_display_command_line'}{'contents'}[0]{'contents'}[2];
$result_trees{'text_on_display_command_line'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'text_on_display_command_line'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'text_on_display_command_line'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'text_on_display_command_line'}{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'text_on_display_command_line'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'text_on_display_command_line'}{'contents'}[0]{'contents'}[2];
$result_trees{'text_on_display_command_line'}{'contents'}[0]{'contents'}[2]{'extra'}{'end_command'} = $result_trees{'text_on_display_command_line'}{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'text_on_display_command_line'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'text_on_display_command_line'}{'contents'}[0];
$result_trees{'text_on_display_command_line'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'text_on_display_command_line'}{'contents'}[0];
$result_trees{'text_on_display_command_line'}{'contents'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'text_on_display_command_line'}{'contents'}[0]{'contents'}[4];
$result_trees{'text_on_display_command_line'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'text_on_display_command_line'}{'contents'}[0]{'contents'}[4]{'contents'}[0];
$result_trees{'text_on_display_command_line'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'text_on_display_command_line'}{'contents'}[0]{'contents'}[4];
$result_trees{'text_on_display_command_line'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'text_on_display_command_line'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'args'}[0];
$result_trees{'text_on_display_command_line'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'text_on_display_command_line'}{'contents'}[0]{'contents'}[4]{'contents'}[1];
$result_trees{'text_on_display_command_line'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'text_on_display_command_line'}{'contents'}[0]{'contents'}[4];
$result_trees{'text_on_display_command_line'}{'contents'}[0]{'contents'}[4]{'extra'}{'end_command'} = $result_trees{'text_on_display_command_line'}{'contents'}[0]{'contents'}[4]{'contents'}[1];
$result_trees{'text_on_display_command_line'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'text_on_display_command_line'}{'contents'}[0];
$result_trees{'text_on_display_command_line'}{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'text_on_display_command_line'}{'contents'}[0];
$result_trees{'text_on_display_command_line'}{'contents'}[0]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'text_on_display_command_line'}{'contents'}[0]{'contents'}[6];
$result_trees{'text_on_display_command_line'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'text_on_display_command_line'}{'contents'}[0]{'contents'}[6]{'contents'}[0];
$result_trees{'text_on_display_command_line'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'text_on_display_command_line'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'text_on_display_command_line'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'text_on_display_command_line'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'contents'}[0];
$result_trees{'text_on_display_command_line'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'text_on_display_command_line'}{'contents'}[0]{'contents'}[6]{'contents'}[0];
$result_trees{'text_on_display_command_line'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'extra'}{'end_command'} = $result_trees{'text_on_display_command_line'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'contents'}[0];
$result_trees{'text_on_display_command_line'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'parent'} = $result_trees{'text_on_display_command_line'}{'contents'}[0]{'contents'}[6];
$result_trees{'text_on_display_command_line'}{'contents'}[0]{'contents'}[6]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'text_on_display_command_line'}{'contents'}[0]{'contents'}[6]{'contents'}[1]{'args'}[0];
$result_trees{'text_on_display_command_line'}{'contents'}[0]{'contents'}[6]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'text_on_display_command_line'}{'contents'}[0]{'contents'}[6]{'contents'}[1];
$result_trees{'text_on_display_command_line'}{'contents'}[0]{'contents'}[6]{'contents'}[1]{'parent'} = $result_trees{'text_on_display_command_line'}{'contents'}[0]{'contents'}[6];
$result_trees{'text_on_display_command_line'}{'contents'}[0]{'contents'}[6]{'extra'}{'end_command'} = $result_trees{'text_on_display_command_line'}{'contents'}[0]{'contents'}[6]{'contents'}[1];
$result_trees{'text_on_display_command_line'}{'contents'}[0]{'contents'}[6]{'parent'} = $result_trees{'text_on_display_command_line'}{'contents'}[0];
$result_trees{'text_on_display_command_line'}{'contents'}[0]{'parent'} = $result_trees{'text_on_display_command_line'};

$result_texis{'text_on_display_command_line'} = '@display text on line
@end display

@display text on line followed by text
normal text
@end display

@display
in display
@end display text after end

@display
@display
@end display text after end display nested in display
@end display
';


$result_texts{'text_on_display_command_line'} = '
normal text

in display

';

$result_errors{'text_on_display_command_line'} = [
  {
    'error_line' => 'superfluous argument to @end display:  text after end
',
    'file_name' => '',
    'line_nr' => 10,
    'macro' => '',
    'text' => 'superfluous argument to @end display:  text after end',
    'type' => 'error'
  },
  {
    'error_line' => 'superfluous argument to @end display:  text after end display nested in display
',
    'file_name' => '',
    'line_nr' => 14,
    'macro' => '',
    'text' => 'superfluous argument to @end display:  text after end display nested in display',
    'type' => 'error'
  }
];


$result_floats{'text_on_display_command_line'} = {};



$result_converted{'plaintext'}->{'text_on_display_command_line'} = '
     normal text

     in display

';


$result_converted{'html_text'}->{'text_on_display_command_line'} = '
<div class="display">
<pre class="display-preformatted">normal text
</pre></div>

<div class="display">
<pre class="display-preformatted">in display
</pre></div>

';


$result_converted{'docbook'}->{'text_on_display_command_line'} = '
<literallayout>normal text
</literallayout>
<literallayout>in display
</literallayout>
';


$result_converted{'xml'}->{'text_on_display_command_line'} = '<display spaces=" " endspaces=" ">
</display>

<display spaces=" " endspaces=" ">
<pre xml:space="preserve">normal text
</pre></display>

<display endspaces=" ">
<pre xml:space="preserve">in display
</pre></display>

<display endspaces=" ">
<display endspaces=" ">
</display>
</display>
';


$result_converted{'latex_text'}->{'text_on_display_command_line'} = '\\begin{GNUTexinfoindented}
\\end{GNUTexinfoindented}

\\begin{GNUTexinfoindented}
\\begin{GNUTexinfopreformatted}
normal text
\\end{GNUTexinfopreformatted}
\\end{GNUTexinfoindented}

\\begin{GNUTexinfoindented}
\\begin{GNUTexinfopreformatted}
in display
\\end{GNUTexinfopreformatted}
\\end{GNUTexinfoindented}

\\begin{GNUTexinfoindented}
\\begin{GNUTexinfoindented}
\\end{GNUTexinfoindented}
\\end{GNUTexinfoindented}
';

1;
