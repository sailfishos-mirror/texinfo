use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'mathjax_with_texinfo_html_text'} = {
  'contents' => [
    {
      'contents' => [
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
                              'parent' => {},
                              'type' => 'brace_command_arg'
                            }
                          ],
                          'cmdname' => 'copyright',
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
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'minus',
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
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'geq',
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
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'AA',
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
$result_trees{'mathjax_with_texinfo_html_text'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'mathjax_with_texinfo_html_text'}{'contents'}[0]{'contents'}[0];
$result_trees{'mathjax_with_texinfo_html_text'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'mathjax_with_texinfo_html_text'}{'contents'}[0]{'contents'}[0];
$result_trees{'mathjax_with_texinfo_html_text'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'mathjax_with_texinfo_html_text'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'mathjax_with_texinfo_html_text'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'mathjax_with_texinfo_html_text'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[1];
$result_trees{'mathjax_with_texinfo_html_text'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'mathjax_with_texinfo_html_text'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'mathjax_with_texinfo_html_text'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'mathjax_with_texinfo_html_text'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[2];
$result_trees{'mathjax_with_texinfo_html_text'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'mathjax_with_texinfo_html_text'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'mathjax_with_texinfo_html_text'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'mathjax_with_texinfo_html_text'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[2];
$result_trees{'mathjax_with_texinfo_html_text'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'mathjax_with_texinfo_html_text'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'mathjax_with_texinfo_html_text'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'mathjax_with_texinfo_html_text'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'mathjax_with_texinfo_html_text'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'mathjax_with_texinfo_html_text'}{'contents'}[0]{'contents'}[0];
$result_trees{'mathjax_with_texinfo_html_text'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'mathjax_with_texinfo_html_text'}{'contents'}[0]{'contents'}[0];
$result_trees{'mathjax_with_texinfo_html_text'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'mathjax_with_texinfo_html_text'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0];
$result_trees{'mathjax_with_texinfo_html_text'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'mathjax_with_texinfo_html_text'}{'contents'}[0]{'contents'}[0]{'contents'}[3];
$result_trees{'mathjax_with_texinfo_html_text'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'mathjax_with_texinfo_html_text'}{'contents'}[0]{'contents'}[0];
$result_trees{'mathjax_with_texinfo_html_text'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'mathjax_with_texinfo_html_text'}{'contents'}[0]{'contents'}[0];
$result_trees{'mathjax_with_texinfo_html_text'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'mathjax_with_texinfo_html_text'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'args'}[0];
$result_trees{'mathjax_with_texinfo_html_text'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'mathjax_with_texinfo_html_text'}{'contents'}[0]{'contents'}[0]{'contents'}[5];
$result_trees{'mathjax_with_texinfo_html_text'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'mathjax_with_texinfo_html_text'}{'contents'}[0]{'contents'}[0];
$result_trees{'mathjax_with_texinfo_html_text'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'mathjax_with_texinfo_html_text'}{'contents'}[0];
$result_trees{'mathjax_with_texinfo_html_text'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'mathjax_with_texinfo_html_text'}{'contents'}[0];
$result_trees{'mathjax_with_texinfo_html_text'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'mathjax_with_texinfo_html_text'}{'contents'}[0]{'contents'}[2];
$result_trees{'mathjax_with_texinfo_html_text'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'mathjax_with_texinfo_html_text'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'mathjax_with_texinfo_html_text'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'mathjax_with_texinfo_html_text'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[1];
$result_trees{'mathjax_with_texinfo_html_text'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'mathjax_with_texinfo_html_text'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'mathjax_with_texinfo_html_text'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'mathjax_with_texinfo_html_text'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'mathjax_with_texinfo_html_text'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'mathjax_with_texinfo_html_text'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[3];
$result_trees{'mathjax_with_texinfo_html_text'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'mathjax_with_texinfo_html_text'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'mathjax_with_texinfo_html_text'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'mathjax_with_texinfo_html_text'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'mathjax_with_texinfo_html_text'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'mathjax_with_texinfo_html_text'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[5];
$result_trees{'mathjax_with_texinfo_html_text'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'mathjax_with_texinfo_html_text'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'mathjax_with_texinfo_html_text'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'mathjax_with_texinfo_html_text'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'mathjax_with_texinfo_html_text'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[7]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'mathjax_with_texinfo_html_text'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[7]{'args'}[0];
$result_trees{'mathjax_with_texinfo_html_text'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[7]{'args'}[0]{'parent'} = $result_trees{'mathjax_with_texinfo_html_text'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[7];
$result_trees{'mathjax_with_texinfo_html_text'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'mathjax_with_texinfo_html_text'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'mathjax_with_texinfo_html_text'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'mathjax_with_texinfo_html_text'}{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'mathjax_with_texinfo_html_text'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'mathjax_with_texinfo_html_text'}{'contents'}[0]{'contents'}[2];
$result_trees{'mathjax_with_texinfo_html_text'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'mathjax_with_texinfo_html_text'}{'contents'}[0]{'contents'}[2];
$result_trees{'mathjax_with_texinfo_html_text'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'mathjax_with_texinfo_html_text'}{'contents'}[0];
$result_trees{'mathjax_with_texinfo_html_text'}{'contents'}[0]{'parent'} = $result_trees{'mathjax_with_texinfo_html_text'};

$result_texis{'mathjax_with_texinfo_html_text'} = '@displaymath
a@sup{b - \\frac{\\xi}{phi @copyright{}}} @dotless{i}
@end displaymath

Some @math{a @minus{} b @geq{} @AA{} @^e}.
';


$result_texts{'mathjax_with_texinfo_html_text'} = 'ab - \\frac{\\xi}{phi (C)} i

Some a - b >= AA e^.
';

$result_errors{'mathjax_with_texinfo_html_text'} = [];


$result_floats{'mathjax_with_texinfo_html_text'} = {};



$result_converted{'html_text'}->{'mathjax_with_texinfo_html_text'} = '<div class="displaymath"><em class="tex2jax_process">\\[a<sup class="sup">b - \\frac{\\xi}{phi &copy;}</sup> &inodot;
\\]</em></div>
<p>Some <em class="math tex2jax_process">\\(a &minus; b &ge; &Aring; &ecirc;\\)</em>.
</p>';

1;
