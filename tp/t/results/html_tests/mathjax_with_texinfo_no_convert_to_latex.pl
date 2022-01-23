use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'mathjax_with_texinfo_no_convert_to_latex'} = {
  'contents' => [
    {
      'contents' => [
        {
          'cmdname' => 'displaymath',
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
              'parent' => {},
              'text' => 'a'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'b - \\frac'
                    },
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => '\\xsi'
                        }
                      ],
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 2,
                        'macro' => ''
                      },
                      'parent' => {},
                      'type' => 'bracketed'
                    },
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'phi '
                        },
                        {
                          'args' => [
                            {
                              'contents' => [],
                              'parent' => {},
                              'type' => 'brace_command_arg'
                            }
                          ],
                          'cmdname' => 'copyright',
                          'contents' => [],
                          'line_nr' => {
                            'file_name' => '',
                            'line_nr' => 2,
                            'macro' => ''
                          },
                          'parent' => {}
                        }
                      ],
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 2,
                        'macro' => ''
                      },
                      'parent' => {},
                      'type' => 'bracketed'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'sup',
              'contents' => [],
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 2,
                'macro' => ''
              },
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => ' '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'i'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'dotless',
              'contents' => [],
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 2,
                'macro' => ''
              },
              'parent' => {}
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
                      'text' => 'displaymath'
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
                'command_argument' => 'displaymath',
                'spaces_before_argument' => ' ',
                'text_arg' => 'displaymath'
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 3,
                'macro' => ''
              },
              'parent' => {}
            }
          ],
          'extra' => {
            'end_command' => {}
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 1,
            'macro' => ''
          },
          'parent' => {}
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
              'text' => 'Some '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'a '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'minus',
                      'contents' => [],
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 5,
                        'macro' => ''
                      },
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => ' b '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'geq',
                      'contents' => [],
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 5,
                        'macro' => ''
                      },
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => ' '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'AA',
                      'contents' => [],
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 5,
                        'macro' => ''
                      },
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => ' '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'e'
                            }
                          ],
                          'parent' => {},
                          'type' => 'following_arg'
                        }
                      ],
                      'cmdname' => '^',
                      'contents' => [],
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 5,
                        'macro' => ''
                      },
                      'parent' => {}
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_context'
                }
              ],
              'cmdname' => 'math',
              'contents' => [],
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 5,
                'macro' => ''
              },
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '.
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
$result_trees{'mathjax_with_texinfo_no_convert_to_latex'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'command'} = $result_trees{'mathjax_with_texinfo_no_convert_to_latex'}{'contents'}[0]{'contents'}[0];
$result_trees{'mathjax_with_texinfo_no_convert_to_latex'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'mathjax_with_texinfo_no_convert_to_latex'}{'contents'}[0]{'contents'}[0];
$result_trees{'mathjax_with_texinfo_no_convert_to_latex'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'mathjax_with_texinfo_no_convert_to_latex'}{'contents'}[0]{'contents'}[0];
$result_trees{'mathjax_with_texinfo_no_convert_to_latex'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'mathjax_with_texinfo_no_convert_to_latex'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'mathjax_with_texinfo_no_convert_to_latex'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'mathjax_with_texinfo_no_convert_to_latex'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[1];
$result_trees{'mathjax_with_texinfo_no_convert_to_latex'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'mathjax_with_texinfo_no_convert_to_latex'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'mathjax_with_texinfo_no_convert_to_latex'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'mathjax_with_texinfo_no_convert_to_latex'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[2];
$result_trees{'mathjax_with_texinfo_no_convert_to_latex'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'mathjax_with_texinfo_no_convert_to_latex'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'mathjax_with_texinfo_no_convert_to_latex'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'mathjax_with_texinfo_no_convert_to_latex'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[2];
$result_trees{'mathjax_with_texinfo_no_convert_to_latex'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'mathjax_with_texinfo_no_convert_to_latex'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'mathjax_with_texinfo_no_convert_to_latex'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'mathjax_with_texinfo_no_convert_to_latex'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'mathjax_with_texinfo_no_convert_to_latex'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'mathjax_with_texinfo_no_convert_to_latex'}{'contents'}[0]{'contents'}[0];
$result_trees{'mathjax_with_texinfo_no_convert_to_latex'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'mathjax_with_texinfo_no_convert_to_latex'}{'contents'}[0]{'contents'}[0];
$result_trees{'mathjax_with_texinfo_no_convert_to_latex'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'mathjax_with_texinfo_no_convert_to_latex'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'mathjax_with_texinfo_no_convert_to_latex'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'mathjax_with_texinfo_no_convert_to_latex'}{'contents'}[0]{'contents'}[0]{'contents'}[4];
$result_trees{'mathjax_with_texinfo_no_convert_to_latex'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'mathjax_with_texinfo_no_convert_to_latex'}{'contents'}[0]{'contents'}[0];
$result_trees{'mathjax_with_texinfo_no_convert_to_latex'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'mathjax_with_texinfo_no_convert_to_latex'}{'contents'}[0]{'contents'}[0];
$result_trees{'mathjax_with_texinfo_no_convert_to_latex'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'mathjax_with_texinfo_no_convert_to_latex'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'args'}[0];
$result_trees{'mathjax_with_texinfo_no_convert_to_latex'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'mathjax_with_texinfo_no_convert_to_latex'}{'contents'}[0]{'contents'}[0]{'contents'}[6];
$result_trees{'mathjax_with_texinfo_no_convert_to_latex'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'parent'} = $result_trees{'mathjax_with_texinfo_no_convert_to_latex'}{'contents'}[0]{'contents'}[0];
$result_trees{'mathjax_with_texinfo_no_convert_to_latex'}{'contents'}[0]{'contents'}[0]{'extra'}{'end_command'} = $result_trees{'mathjax_with_texinfo_no_convert_to_latex'}{'contents'}[0]{'contents'}[0]{'contents'}[6];
$result_trees{'mathjax_with_texinfo_no_convert_to_latex'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'mathjax_with_texinfo_no_convert_to_latex'}{'contents'}[0];
$result_trees{'mathjax_with_texinfo_no_convert_to_latex'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'mathjax_with_texinfo_no_convert_to_latex'}{'contents'}[0];
$result_trees{'mathjax_with_texinfo_no_convert_to_latex'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'mathjax_with_texinfo_no_convert_to_latex'}{'contents'}[0]{'contents'}[2];
$result_trees{'mathjax_with_texinfo_no_convert_to_latex'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'mathjax_with_texinfo_no_convert_to_latex'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'mathjax_with_texinfo_no_convert_to_latex'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'mathjax_with_texinfo_no_convert_to_latex'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[1];
$result_trees{'mathjax_with_texinfo_no_convert_to_latex'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'mathjax_with_texinfo_no_convert_to_latex'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'mathjax_with_texinfo_no_convert_to_latex'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'mathjax_with_texinfo_no_convert_to_latex'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'mathjax_with_texinfo_no_convert_to_latex'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'mathjax_with_texinfo_no_convert_to_latex'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[3];
$result_trees{'mathjax_with_texinfo_no_convert_to_latex'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'mathjax_with_texinfo_no_convert_to_latex'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'mathjax_with_texinfo_no_convert_to_latex'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'mathjax_with_texinfo_no_convert_to_latex'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'mathjax_with_texinfo_no_convert_to_latex'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'mathjax_with_texinfo_no_convert_to_latex'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[5];
$result_trees{'mathjax_with_texinfo_no_convert_to_latex'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'mathjax_with_texinfo_no_convert_to_latex'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'mathjax_with_texinfo_no_convert_to_latex'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'mathjax_with_texinfo_no_convert_to_latex'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'mathjax_with_texinfo_no_convert_to_latex'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[7]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'mathjax_with_texinfo_no_convert_to_latex'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[7]{'args'}[0];
$result_trees{'mathjax_with_texinfo_no_convert_to_latex'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[7]{'args'}[0]{'parent'} = $result_trees{'mathjax_with_texinfo_no_convert_to_latex'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[7];
$result_trees{'mathjax_with_texinfo_no_convert_to_latex'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'mathjax_with_texinfo_no_convert_to_latex'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'mathjax_with_texinfo_no_convert_to_latex'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'mathjax_with_texinfo_no_convert_to_latex'}{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'mathjax_with_texinfo_no_convert_to_latex'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'mathjax_with_texinfo_no_convert_to_latex'}{'contents'}[0]{'contents'}[2];
$result_trees{'mathjax_with_texinfo_no_convert_to_latex'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'mathjax_with_texinfo_no_convert_to_latex'}{'contents'}[0]{'contents'}[2];
$result_trees{'mathjax_with_texinfo_no_convert_to_latex'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'mathjax_with_texinfo_no_convert_to_latex'}{'contents'}[0];
$result_trees{'mathjax_with_texinfo_no_convert_to_latex'}{'contents'}[0]{'parent'} = $result_trees{'mathjax_with_texinfo_no_convert_to_latex'};

$result_texis{'mathjax_with_texinfo_no_convert_to_latex'} = '@displaymath
a@sup{b - \\frac{\\xsi}{phi @copyright{}}} @dotless{i}
@end displaymath

Some @math{a @minus{} b @geq{} @AA{} @^e}.
';


$result_texts{'mathjax_with_texinfo_no_convert_to_latex'} = 'ab - \\frac{\\xsi}{phi (C)} i

Some a - b >= AA e^.
';

$result_errors{'mathjax_with_texinfo_no_convert_to_latex'} = [];


$result_floats{'mathjax_with_texinfo_no_convert_to_latex'} = {};



$result_converted{'html'}->{'mathjax_with_texinfo_no_convert_to_latex'} = '<!DOCTYPE html>
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


<script type=\'text/javascript\'>
MathJax = {
  options: {
    skipHtmlTags: {\'[-]\': [\'pre\']},
    ignoreHtmlClass: \'tex2jax_ignore\',
    processHtmlClass: \'tex2jax_process\'
  },
};
</script><script type="text/javascript" id="MathJax-script" async
  src="https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-svg.js">
</script>
</head>

<body lang="en" class="tex2jax_ignore">
<div class="displaymath"><em class="tex2jax_process">\\[a<sup class="sup">b - \\frac{\\xsi}{phi &copy;}</sup> i
\\]</em></div>
<p>Some <em class="math tex2jax_process">\\(a - b &ge; &Aring; &ecirc;\\)</em>.
</p>

<a href=\'js_licenses.html\' rel=\'jslicense\'><small>JavaScript license information</small></a>
</body>
</html>
';

$result_converted_errors{'html'}->{'mathjax_with_texinfo_no_convert_to_latex'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];


1;
