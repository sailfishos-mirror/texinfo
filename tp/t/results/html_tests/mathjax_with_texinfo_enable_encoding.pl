use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'mathjax_with_texinfo_enable_encoding'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [],
          'parent' => {},
          'type' => 'preamble_before_content'
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
          'cmdname' => 'displaymath',
          'contents' => [
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
                          'text' => '\\xi'
                        }
                      ],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 2,
                        'macro' => ''
                      },
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
                          'parent' => {},
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 2,
                            'macro' => ''
                          }
                        }
                      ],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 2,
                        'macro' => ''
                      },
                      'type' => 'bracketed'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'sup',
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
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 5,
                        'macro' => ''
                      }
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
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 5,
                        'macro' => ''
                      }
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
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 5,
                        'macro' => ''
                      }
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
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 5,
                        'macro' => ''
                      }
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_context'
                }
              ],
              'cmdname' => 'math',
              'contents' => [],
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
        }
      ],
      'parent' => {},
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'mathjax_with_texinfo_enable_encoding'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'mathjax_with_texinfo_enable_encoding'}{'contents'}[0];
$result_trees{'mathjax_with_texinfo_enable_encoding'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'mathjax_with_texinfo_enable_encoding'}{'contents'}[0]{'contents'}[1];
$result_trees{'mathjax_with_texinfo_enable_encoding'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'mathjax_with_texinfo_enable_encoding'}{'contents'}[0]{'contents'}[1];
$result_trees{'mathjax_with_texinfo_enable_encoding'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'mathjax_with_texinfo_enable_encoding'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'mathjax_with_texinfo_enable_encoding'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'mathjax_with_texinfo_enable_encoding'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[1];
$result_trees{'mathjax_with_texinfo_enable_encoding'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'mathjax_with_texinfo_enable_encoding'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'mathjax_with_texinfo_enable_encoding'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'mathjax_with_texinfo_enable_encoding'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[2];
$result_trees{'mathjax_with_texinfo_enable_encoding'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'mathjax_with_texinfo_enable_encoding'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'mathjax_with_texinfo_enable_encoding'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'mathjax_with_texinfo_enable_encoding'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[2];
$result_trees{'mathjax_with_texinfo_enable_encoding'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'mathjax_with_texinfo_enable_encoding'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'mathjax_with_texinfo_enable_encoding'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'mathjax_with_texinfo_enable_encoding'}{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'mathjax_with_texinfo_enable_encoding'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'mathjax_with_texinfo_enable_encoding'}{'contents'}[0]{'contents'}[1];
$result_trees{'mathjax_with_texinfo_enable_encoding'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'mathjax_with_texinfo_enable_encoding'}{'contents'}[0]{'contents'}[1];
$result_trees{'mathjax_with_texinfo_enable_encoding'}{'contents'}[0]{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'mathjax_with_texinfo_enable_encoding'}{'contents'}[0]{'contents'}[1]{'contents'}[3]{'args'}[0];
$result_trees{'mathjax_with_texinfo_enable_encoding'}{'contents'}[0]{'contents'}[1]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'mathjax_with_texinfo_enable_encoding'}{'contents'}[0]{'contents'}[1]{'contents'}[3];
$result_trees{'mathjax_with_texinfo_enable_encoding'}{'contents'}[0]{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'mathjax_with_texinfo_enable_encoding'}{'contents'}[0]{'contents'}[1];
$result_trees{'mathjax_with_texinfo_enable_encoding'}{'contents'}[0]{'contents'}[1]{'contents'}[4]{'parent'} = $result_trees{'mathjax_with_texinfo_enable_encoding'}{'contents'}[0]{'contents'}[1];
$result_trees{'mathjax_with_texinfo_enable_encoding'}{'contents'}[0]{'contents'}[1]{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'mathjax_with_texinfo_enable_encoding'}{'contents'}[0]{'contents'}[1]{'contents'}[5]{'args'}[0];
$result_trees{'mathjax_with_texinfo_enable_encoding'}{'contents'}[0]{'contents'}[1]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'mathjax_with_texinfo_enable_encoding'}{'contents'}[0]{'contents'}[1]{'contents'}[5];
$result_trees{'mathjax_with_texinfo_enable_encoding'}{'contents'}[0]{'contents'}[1]{'contents'}[5]{'parent'} = $result_trees{'mathjax_with_texinfo_enable_encoding'}{'contents'}[0]{'contents'}[1];
$result_trees{'mathjax_with_texinfo_enable_encoding'}{'contents'}[0]{'contents'}[1]{'extra'}{'end_command'} = $result_trees{'mathjax_with_texinfo_enable_encoding'}{'contents'}[0]{'contents'}[1]{'contents'}[5];
$result_trees{'mathjax_with_texinfo_enable_encoding'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'mathjax_with_texinfo_enable_encoding'}{'contents'}[0];
$result_trees{'mathjax_with_texinfo_enable_encoding'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'mathjax_with_texinfo_enable_encoding'}{'contents'}[0];
$result_trees{'mathjax_with_texinfo_enable_encoding'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'mathjax_with_texinfo_enable_encoding'}{'contents'}[0]{'contents'}[3];
$result_trees{'mathjax_with_texinfo_enable_encoding'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'mathjax_with_texinfo_enable_encoding'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0];
$result_trees{'mathjax_with_texinfo_enable_encoding'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'mathjax_with_texinfo_enable_encoding'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[1];
$result_trees{'mathjax_with_texinfo_enable_encoding'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'mathjax_with_texinfo_enable_encoding'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0];
$result_trees{'mathjax_with_texinfo_enable_encoding'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'mathjax_with_texinfo_enable_encoding'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0];
$result_trees{'mathjax_with_texinfo_enable_encoding'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'mathjax_with_texinfo_enable_encoding'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[3];
$result_trees{'mathjax_with_texinfo_enable_encoding'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'mathjax_with_texinfo_enable_encoding'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0];
$result_trees{'mathjax_with_texinfo_enable_encoding'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'mathjax_with_texinfo_enable_encoding'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0];
$result_trees{'mathjax_with_texinfo_enable_encoding'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'mathjax_with_texinfo_enable_encoding'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[5];
$result_trees{'mathjax_with_texinfo_enable_encoding'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'mathjax_with_texinfo_enable_encoding'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0];
$result_trees{'mathjax_with_texinfo_enable_encoding'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'mathjax_with_texinfo_enable_encoding'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0];
$result_trees{'mathjax_with_texinfo_enable_encoding'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[7]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'mathjax_with_texinfo_enable_encoding'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[7]{'args'}[0];
$result_trees{'mathjax_with_texinfo_enable_encoding'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[7]{'args'}[0]{'parent'} = $result_trees{'mathjax_with_texinfo_enable_encoding'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[7];
$result_trees{'mathjax_with_texinfo_enable_encoding'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'mathjax_with_texinfo_enable_encoding'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0];
$result_trees{'mathjax_with_texinfo_enable_encoding'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'mathjax_with_texinfo_enable_encoding'}{'contents'}[0]{'contents'}[3]{'contents'}[1];
$result_trees{'mathjax_with_texinfo_enable_encoding'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'mathjax_with_texinfo_enable_encoding'}{'contents'}[0]{'contents'}[3];
$result_trees{'mathjax_with_texinfo_enable_encoding'}{'contents'}[0]{'contents'}[3]{'contents'}[2]{'parent'} = $result_trees{'mathjax_with_texinfo_enable_encoding'}{'contents'}[0]{'contents'}[3];
$result_trees{'mathjax_with_texinfo_enable_encoding'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'mathjax_with_texinfo_enable_encoding'}{'contents'}[0];
$result_trees{'mathjax_with_texinfo_enable_encoding'}{'contents'}[0]{'parent'} = $result_trees{'mathjax_with_texinfo_enable_encoding'};

$result_texis{'mathjax_with_texinfo_enable_encoding'} = '@displaymath
a@sup{b - \\frac{\\xi}{phi @copyright{}}} @dotless{i}
@end displaymath

Some @math{a @minus{} b @geq{} @AA{} @^e}.
';


$result_texts{'mathjax_with_texinfo_enable_encoding'} = 'ab - \\frac{\\xi}{phi (C)} i

Some a - b >= AA e^.
';

$result_errors{'mathjax_with_texinfo_enable_encoding'} = [];


$result_floats{'mathjax_with_texinfo_enable_encoding'} = {};



$result_converted{'latex'}->{'mathjax_with_texinfo_enable_encoding'} = '\\begin{document}
$$
a^{b - \\frac{\\xi}{phi \\copyright{}}} ı
$$

Some $a - b \\geq{} Å ê$.
';


$result_converted{'html'}->{'mathjax_with_texinfo_enable_encoding'} = '<!DOCTYPE html>
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
<div class="displaymath"><em class="tex2jax_process">\\[a^{b - \\frac{\\xi}{phi \\copyright{}}} ı
\\]</em></div>
<p>Some <em class="math tex2jax_process">\\(a - b \\geq{} Å ê\\)</em>.
</p>

<a href="js_licenses.html" rel="jslicense"><small>JavaScript license information</small></a>
</body>
</html>
';

$result_converted_errors{'html'}->{'mathjax_with_texinfo_enable_encoding'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'file_name' => 'mathjax_with_texinfo_enable_encoding.texi',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];


1;
