use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'caption_in_example'} = {
  'contents' => [
    {
      'contents' => [
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
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'float',
          'contents' => [
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
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'caption'
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
                  'extra' => {
                    'float' => {}
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 6,
                    'macro' => ''
                  }
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => '
'
                    },
                    {
                      'parent' => {},
                      'text' => '
',
                      'type' => 'empty_line'
                    },
                    {
                      'parent' => {},
                      'text' => 'After caption
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
                    'line_nr' => 9,
                    'macro' => ''
                  }
                }
              ],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 3,
                'macro' => ''
              }
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
                'spaces_before_argument' => ' ',
                'text_arg' => 'float'
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
            'caption' => {},
            'spaces_before_argument' => ' ',
            'type' => {
              'content' => [
                {}
              ],
              'normalized' => 'float'
            }
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
$result_trees{'caption_in_example'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'caption_in_example'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'caption_in_example'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'caption_in_example'}{'contents'}[0]{'contents'}[0];
$result_trees{'caption_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'caption_in_example'}{'contents'}[0]{'contents'}[0];
$result_trees{'caption_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'caption_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'caption_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'caption_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'caption_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'caption_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'caption_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'caption_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'caption_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'caption_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'caption_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'caption_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'caption_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'caption_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'caption_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'extra'}{'float'} = $result_trees{'caption_in_example'}{'contents'}[0]{'contents'}[0];
$result_trees{'caption_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'caption_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'caption_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'caption_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[2];
$result_trees{'caption_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'caption_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[2];
$result_trees{'caption_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'caption_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[2];
$result_trees{'caption_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'caption_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'caption_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'caption_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[3]{'args'}[0];
$result_trees{'caption_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'caption_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[3];
$result_trees{'caption_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'caption_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'caption_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'caption_in_example'}{'contents'}[0]{'contents'}[0];
$result_trees{'caption_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'caption_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'caption_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'caption_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'caption_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'caption_in_example'}{'contents'}[0]{'contents'}[0];
$result_trees{'caption_in_example'}{'contents'}[0]{'contents'}[0]{'extra'}{'caption'} = $result_trees{'caption_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'caption_in_example'}{'contents'}[0]{'contents'}[0]{'extra'}{'type'}{'content'}[0] = $result_trees{'caption_in_example'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'caption_in_example'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'caption_in_example'}{'contents'}[0];
$result_trees{'caption_in_example'}{'contents'}[0]{'parent'} = $result_trees{'caption_in_example'};

$result_texis{'caption_in_example'} = '@float float

@example
in example 

@caption{caption}

After caption
@end example
@end float
';


$result_texts{'caption_in_example'} = 'float

in example 



After caption
';

$result_errors{'caption_in_example'} = [
  {
    'error_line' => 'warning: @caption should be right below `@float\'
',
    'file_name' => '',
    'line_nr' => 6,
    'macro' => '',
    'text' => '@caption should be right below `@float\'',
    'type' => 'warning'
  }
];


$result_floats{'caption_in_example'} = {
  'float' => [
    {
      'cmdname' => 'float',
      'extra' => {
        'caption' => {
          'cmdname' => 'caption',
          'extra' => {
            'float' => {}
          }
        },
        'type' => {
          'content' => [
            {
              'text' => 'float'
            }
          ],
          'normalized' => 'float'
        }
      },
      'structure' => {}
    }
  ]
};
$result_floats{'caption_in_example'}{'float'}[0]{'extra'}{'caption'}{'extra'}{'float'} = $result_floats{'caption_in_example'}{'float'}[0];



$result_converted{'plaintext'}->{'caption_in_example'} = '     in example



     After caption

float: caption
';


$result_converted{'html'}->{'caption_in_example'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, http://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Untitled Document</title>

<meta name="description" content="Untitled Document">
<meta name="keywords" content="Untitled Document">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="viewport" content="width=device-width,initial-scale=1">

<style type="text/css">
<!--
div.example {margin-left: 3.2em}
-->
</style>


</head>

<body lang="en">
<div class="float">

<div class="example">
<pre class="example-preformatted">in example 

</pre><pre class="example-preformatted">


After caption
</pre></div>
<div class="caption"><p><strong class="strong">float: </strong>caption</p></div></div>


</body>
</html>
';

$result_converted_errors{'html'}->{'caption_in_example'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'file_name' => 'caption_in_example.texi',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];



$result_converted{'docbook'}->{'caption_in_example'} = '
<screen>in example 

</screen><screen>

After caption
</screen>';


$result_converted{'xml'}->{'caption_in_example'} = '<float type="float" spaces=" " endspaces=" "><floattype>float</floattype>

<example endspaces=" ">
<pre xml:space="preserve">in example 

</pre><caption><para>caption</para></caption><pre xml:space="preserve">

After caption
</pre></example>
</float>
';


$result_converted{'latex_text'}->{'caption_in_example'} = '\\begin{TexinfoFloatfloat}

\\begin{GNUTexinfoindented}
\\begin{GNUTexinfopreformatted}%
\\ttfamily in example 

\\end{GNUTexinfopreformatted}
\\caption{caption}
\\begin{GNUTexinfopreformatted}%
\\ttfamily 

After caption
\\end{GNUTexinfopreformatted}
\\end{GNUTexinfoindented}
\\end{TexinfoFloatfloat}
';

1;
