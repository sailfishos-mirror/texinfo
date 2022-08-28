use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'nested_formats'} = {
  'contents' => [
    {
      'contents' => [
        {
          'cmdname' => 'format',
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
                      'parent' => {},
                      'text' => '
',
                      'type' => 'empty_line'
                    },
                    {
                      'parent' => {},
                      'text' => 'in -- format/example
'
                    },
                    {
                      'parent' => {},
                      'text' => '
',
                      'type' => 'empty_line'
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
                    'line_nr' => 6,
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
                'line_nr' => 2,
                'macro' => ''
              }
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
                'command_argument' => 'format',
                'spaces_before_argument' => ' ',
                'text_arg' => 'format'
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
              'cmdname' => 'format',
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
                      'parent' => {},
                      'text' => '
',
                      'type' => 'empty_line'
                    },
                    {
                      'parent' => {},
                      'text' => 'in -- example/format
'
                    },
                    {
                      'parent' => {},
                      'text' => '
',
                      'type' => 'empty_line'
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
                    'command_argument' => 'format',
                    'spaces_before_argument' => ' ',
                    'text_arg' => 'format'
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
                'line_nr' => 10,
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
$result_trees{'nested_formats'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'command'} = $result_trees{'nested_formats'}{'contents'}[0]{'contents'}[0];
$result_trees{'nested_formats'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_formats'}{'contents'}[0]{'contents'}[0];
$result_trees{'nested_formats'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'extra'}{'command'} = $result_trees{'nested_formats'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'nested_formats'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'nested_formats'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'nested_formats'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'nested_formats'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'nested_formats'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'nested_formats'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'nested_formats'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'nested_formats'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'nested_formats'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'nested_formats'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'nested_formats'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_formats'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0];
$result_trees{'nested_formats'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'nested_formats'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[2];
$result_trees{'nested_formats'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'nested_formats'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'nested_formats'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'extra'}{'end_command'} = $result_trees{'nested_formats'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[2];
$result_trees{'nested_formats'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'nested_formats'}{'contents'}[0]{'contents'}[0];
$result_trees{'nested_formats'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_formats'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'nested_formats'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'nested_formats'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'nested_formats'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'nested_formats'}{'contents'}[0]{'contents'}[0];
$result_trees{'nested_formats'}{'contents'}[0]{'contents'}[0]{'extra'}{'end_command'} = $result_trees{'nested_formats'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'nested_formats'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_formats'}{'contents'}[0];
$result_trees{'nested_formats'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'nested_formats'}{'contents'}[0];
$result_trees{'nested_formats'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'extra'}{'command'} = $result_trees{'nested_formats'}{'contents'}[0]{'contents'}[2];
$result_trees{'nested_formats'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'nested_formats'}{'contents'}[0]{'contents'}[2];
$result_trees{'nested_formats'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'command'} = $result_trees{'nested_formats'}{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'nested_formats'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'nested_formats'}{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'nested_formats'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'nested_formats'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1];
$result_trees{'nested_formats'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'nested_formats'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1];
$result_trees{'nested_formats'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'nested_formats'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1];
$result_trees{'nested_formats'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'nested_formats'}{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'nested_formats'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_formats'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[0];
$result_trees{'nested_formats'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'nested_formats'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[2];
$result_trees{'nested_formats'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'nested_formats'}{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'nested_formats'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'extra'}{'end_command'} = $result_trees{'nested_formats'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[2];
$result_trees{'nested_formats'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'nested_formats'}{'contents'}[0]{'contents'}[2];
$result_trees{'nested_formats'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_formats'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'args'}[0];
$result_trees{'nested_formats'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'nested_formats'}{'contents'}[0]{'contents'}[2]{'contents'}[2];
$result_trees{'nested_formats'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'nested_formats'}{'contents'}[0]{'contents'}[2];
$result_trees{'nested_formats'}{'contents'}[0]{'contents'}[2]{'extra'}{'end_command'} = $result_trees{'nested_formats'}{'contents'}[0]{'contents'}[2]{'contents'}[2];
$result_trees{'nested_formats'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'nested_formats'}{'contents'}[0];
$result_trees{'nested_formats'}{'contents'}[0]{'parent'} = $result_trees{'nested_formats'};

$result_texis{'nested_formats'} = '@format
@example

in -- format/example

@end example
@end format

@example
@format

in -- example/format

@end format
@end example
';


$result_texts{'nested_formats'} = '
in -- format/example



in -- example/format

';

$result_errors{'nested_formats'} = [];


$result_floats{'nested_formats'} = {};



$result_converted{'plaintext'}->{'nested_formats'} = '
     in -- format/example



     in -- example/format

';


$result_converted{'html_text'}->{'nested_formats'} = '<div class="format">
<div class="example">
<pre class="example-preformatted">

in -- format/example

</pre></div>
</div>

<div class="example">
<div class="format">
<pre class="example-preformatted">

in -- example/format

</pre></div>
</div>
';


$result_converted{'docbook'}->{'nested_formats'} = '<screen>
in -- format/example

</screen>
<literallayout>
in -- example/format

</literallayout>';


$result_converted{'xml'}->{'nested_formats'} = '<format endspaces=" ">
<example endspaces=" ">
<pre xml:space="preserve">
in -- format/example

</pre></example>
</format>

<example endspaces=" ">
<format endspaces=" ">
<pre xml:space="preserve">
in -- example/format

</pre></format>
</example>
';


$result_converted{'latex'}->{'nested_formats'} = '\\begin{GNUTexinfoindented}
\\begin{GNUTexinfopreformatted}
\\ttfamily 
in {-}{-} format/example

\\end{GNUTexinfopreformatted}
\\end{GNUTexinfoindented}

\\begin{GNUTexinfoindented}
\\begin{GNUTexinfopreformatted}

in -- example/format

\\end{GNUTexinfopreformatted}
\\end{GNUTexinfoindented}
';

1;
