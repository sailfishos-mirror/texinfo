use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'block_commands'} = {
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
          'cmdname' => 'group',
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
                  'text' => 'in group
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
                      'text' => 'group'
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
                'command_argument' => 'group',
                'spaces_before_argument' => ' ',
                'text_arg' => 'group'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 4,
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
                  'text' => 'warning'
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
          'cmdname' => 'quotation',
          'contents' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'in quotation
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
                'line_nr' => 8,
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
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'a float'
                }
              ],
              'parent' => {},
              'type' => 'block_line_arg'
            },
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'b float'
                }
              ],
              'extra' => {
                'spaces_after_argument' => '
',
                'spaces_before_argument' => ' '
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'float',
          'contents' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'In float
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
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'in caption
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
                          'text' => 'in caption'
                        }
                      ],
                      'parent' => {},
                      'type' => 'paragraph'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_context'
                }
              ],
              'cmdname' => 'caption',
              'contents' => [],
              'extra' => {
                'float' => {}
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 14,
                'macro' => ''
              }
            },
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
                      'text' => 'float'
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
                'command_argument' => 'float',
                'spaces_before_argument' => ' ',
                'text_arg' => 'float'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 17,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'caption' => {},
            'end_command' => {},
            'node_content' => [
              {}
            ],
            'normalized' => 'b-float',
            'spaces_before_argument' => ' ',
            'type' => {
              'content' => [
                {}
              ],
              'normalized' => 'a float'
            }
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
$result_trees{'block_commands'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'block_commands'}{'contents'}[0];
$result_trees{'block_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'extra'}{'command'} = $result_trees{'block_commands'}{'contents'}[0]{'contents'}[1];
$result_trees{'block_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'block_commands'}{'contents'}[0]{'contents'}[1];
$result_trees{'block_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'block_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'block_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'block_commands'}{'contents'}[0]{'contents'}[1];
$result_trees{'block_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'block_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0];
$result_trees{'block_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'block_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[2];
$result_trees{'block_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'block_commands'}{'contents'}[0]{'contents'}[1];
$result_trees{'block_commands'}{'contents'}[0]{'contents'}[1]{'extra'}{'end_command'} = $result_trees{'block_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[2];
$result_trees{'block_commands'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'block_commands'}{'contents'}[0];
$result_trees{'block_commands'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'block_commands'}{'contents'}[0];
$result_trees{'block_commands'}{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'block_commands'}{'contents'}[0]{'contents'}[3]{'args'}[0];
$result_trees{'block_commands'}{'contents'}[0]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'block_commands'}{'contents'}[0]{'contents'}[3];
$result_trees{'block_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'block_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[0];
$result_trees{'block_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'block_commands'}{'contents'}[0]{'contents'}[3];
$result_trees{'block_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'block_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0];
$result_trees{'block_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'block_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[1];
$result_trees{'block_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'block_commands'}{'contents'}[0]{'contents'}[3];
$result_trees{'block_commands'}{'contents'}[0]{'contents'}[3]{'extra'}{'end_command'} = $result_trees{'block_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[1];
$result_trees{'block_commands'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'block_commands'}{'contents'}[0];
$result_trees{'block_commands'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'block_commands'}{'contents'}[0];
$result_trees{'block_commands'}{'contents'}[0]{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'block_commands'}{'contents'}[0]{'contents'}[5]{'args'}[0];
$result_trees{'block_commands'}{'contents'}[0]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'block_commands'}{'contents'}[0]{'contents'}[5];
$result_trees{'block_commands'}{'contents'}[0]{'contents'}[5]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'block_commands'}{'contents'}[0]{'contents'}[5]{'args'}[1];
$result_trees{'block_commands'}{'contents'}[0]{'contents'}[5]{'args'}[1]{'parent'} = $result_trees{'block_commands'}{'contents'}[0]{'contents'}[5];
$result_trees{'block_commands'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'block_commands'}{'contents'}[0]{'contents'}[5]{'contents'}[0];
$result_trees{'block_commands'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'parent'} = $result_trees{'block_commands'}{'contents'}[0]{'contents'}[5];
$result_trees{'block_commands'}{'contents'}[0]{'contents'}[5]{'contents'}[1]{'parent'} = $result_trees{'block_commands'}{'contents'}[0]{'contents'}[5];
$result_trees{'block_commands'}{'contents'}[0]{'contents'}[5]{'contents'}[2]{'parent'} = $result_trees{'block_commands'}{'contents'}[0]{'contents'}[5];
$result_trees{'block_commands'}{'contents'}[0]{'contents'}[5]{'contents'}[3]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'block_commands'}{'contents'}[0]{'contents'}[5]{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'block_commands'}{'contents'}[0]{'contents'}[5]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'block_commands'}{'contents'}[0]{'contents'}[5]{'contents'}[3]{'args'}[0];
$result_trees{'block_commands'}{'contents'}[0]{'contents'}[5]{'contents'}[3]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'block_commands'}{'contents'}[0]{'contents'}[5]{'contents'}[3]{'args'}[0];
$result_trees{'block_commands'}{'contents'}[0]{'contents'}[5]{'contents'}[3]{'args'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'block_commands'}{'contents'}[0]{'contents'}[5]{'contents'}[3]{'args'}[0]{'contents'}[2];
$result_trees{'block_commands'}{'contents'}[0]{'contents'}[5]{'contents'}[3]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'block_commands'}{'contents'}[0]{'contents'}[5]{'contents'}[3]{'args'}[0];
$result_trees{'block_commands'}{'contents'}[0]{'contents'}[5]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'block_commands'}{'contents'}[0]{'contents'}[5]{'contents'}[3];
$result_trees{'block_commands'}{'contents'}[0]{'contents'}[5]{'contents'}[3]{'extra'}{'float'} = $result_trees{'block_commands'}{'contents'}[0]{'contents'}[5];
$result_trees{'block_commands'}{'contents'}[0]{'contents'}[5]{'contents'}[3]{'parent'} = $result_trees{'block_commands'}{'contents'}[0]{'contents'}[5];
$result_trees{'block_commands'}{'contents'}[0]{'contents'}[5]{'contents'}[4]{'parent'} = $result_trees{'block_commands'}{'contents'}[0]{'contents'}[5];
$result_trees{'block_commands'}{'contents'}[0]{'contents'}[5]{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'block_commands'}{'contents'}[0]{'contents'}[5]{'contents'}[5]{'args'}[0];
$result_trees{'block_commands'}{'contents'}[0]{'contents'}[5]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'block_commands'}{'contents'}[0]{'contents'}[5]{'contents'}[5];
$result_trees{'block_commands'}{'contents'}[0]{'contents'}[5]{'contents'}[5]{'parent'} = $result_trees{'block_commands'}{'contents'}[0]{'contents'}[5];
$result_trees{'block_commands'}{'contents'}[0]{'contents'}[5]{'extra'}{'caption'} = $result_trees{'block_commands'}{'contents'}[0]{'contents'}[5]{'contents'}[3];
$result_trees{'block_commands'}{'contents'}[0]{'contents'}[5]{'extra'}{'end_command'} = $result_trees{'block_commands'}{'contents'}[0]{'contents'}[5]{'contents'}[5];
$result_trees{'block_commands'}{'contents'}[0]{'contents'}[5]{'extra'}{'node_content'}[0] = $result_trees{'block_commands'}{'contents'}[0]{'contents'}[5]{'args'}[1]{'contents'}[0];
$result_trees{'block_commands'}{'contents'}[0]{'contents'}[5]{'extra'}{'type'}{'content'}[0] = $result_trees{'block_commands'}{'contents'}[0]{'contents'}[5]{'args'}[0]{'contents'}[0];
$result_trees{'block_commands'}{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'block_commands'}{'contents'}[0];
$result_trees{'block_commands'}{'contents'}[0]{'parent'} = $result_trees{'block_commands'};

$result_texis{'block_commands'} = '
@group
in group
@end group

@quotation warning
in quotation
@end quotation

@float a float, b float
In float


@caption{in caption

in caption}
@end float
';


$result_texts{'block_commands'} = '
in group

warning
in quotation

a float, b float
In float



';

$result_errors{'block_commands'} = [];


$result_floats{'block_commands'} = {
  'a float' => [
    {
      'cmdname' => 'float',
      'extra' => {
        'caption' => {
          'cmdname' => 'caption',
          'extra' => {
            'float' => {}
          }
        },
        'normalized' => 'b-float',
        'type' => {
          'content' => [
            {
              'text' => 'a float'
            }
          ],
          'normalized' => 'a float'
        }
      },
      'structure' => {
        'float_number' => 1
      }
    }
  ]
};
$result_floats{'block_commands'}{'a float'}[0]{'extra'}{'caption'}{'extra'}{'float'} = $result_floats{'block_commands'}{'a float'}[0];



$result_converted{'plaintext'}->{'block_commands'} = 'in group

     warning: in quotation

In float


a float 1: in caption

in caption
';


$result_converted{'html_text'}->{'block_commands'} = '
<div class="group"><p>in group
</p></div>
<blockquote class="quotation">
<p><b class="b">warning:</b> in quotation
</p></blockquote>

<div class="float" id="b-float">
<p>In float
</p>


<div class="caption"><p><strong class="strong">a float 1: </strong>in caption
</p>
<p>in caption</p></div></div>';


$result_converted{'xml'}->{'block_commands'} = '
<group endspaces=" ">
<para>in group
</para></group>

<quotation spaces=" " endspaces=" "><quotationtype>warning</quotationtype>
<para>in quotation
</para></quotation>

<float name="b-float" type="a float" number="1" spaces=" " endspaces=" "><floattype>a float</floattype><floatname spaces=" ">b float</floatname>
<para>In float
</para>

<caption><para>in caption
</para>
<para>in caption</para></caption>
</float>
';


$result_converted{'latex'}->{'block_commands'} = '
\\vtop{%
in group
\\strut}%

\\begin{quote}
\\textbf{warning:} in quotation
\\end{quote}

\\begin{TexinfoFloatafloat}
In float


\\caption{in caption

in caption}

\\label{anchor:b-float}%
\\end{TexinfoFloatafloat}
';


$result_converted{'docbook'}->{'block_commands'} = '
<para>in group
</para>
<warning><para>in quotation
</para></warning>
<anchor id="b-float"/>
<para>In float
</para>


';

1;
