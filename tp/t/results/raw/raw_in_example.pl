use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'raw_in_example'} = {
  'contents' => [
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
                  'cmdname' => 'html',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'in html
'
                        }
                      ],
                      'parent' => {},
                      'type' => 'rawpreformatted'
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'html'
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
                        'text_arg' => 'html'
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
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 2,
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
                'spaces_before_argument' => ' ',
                'text_arg' => 'example'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 5,
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
                  'cmdname' => 'html',
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
                          'parent' => {},
                          'text' => 'Some html <code>some code</code>.
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
                      'type' => 'rawpreformatted'
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'html'
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
                        'text_arg' => 'html'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 13,
                        'macro' => ''
                      }
                    }
                  ],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 9,
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
                  'cmdname' => 'tex',
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
                          'parent' => {},
                          'text' => '$$ 
'
                        },
                        {
                          'parent' => {},
                          'text' => '\\chi^2 = \\sum_'
                        },
                        {
                          'parent' => {},
                          'text' => '{i=1'
                        },
                        {
                          'parent' => {},
                          'text' => '}^N
'
                        },
                        {
                          'parent' => {},
                          'text' => '\\left(y_i - (a + b x_i)
'
                        },
                        {
                          'parent' => {},
                          'text' => '\\over \\sigma_i\\right)^2 
'
                        },
                        {
                          'parent' => {},
                          'text' => '$$
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
                      'type' => 'rawpreformatted'
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'tex'
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
                        'text_arg' => 'tex'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 23,
                        'macro' => ''
                      }
                    }
                  ],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 15,
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
                'line_nr' => 25,
                'macro' => ''
              }
            }
          ],
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 7,
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
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[0];
$result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[0];
$result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[0];
$result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'raw_in_example'}{'contents'}[0];
$result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'raw_in_example'}{'contents'}[0];
$result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[2];
$result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[1];
$result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[1];
$result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[1];
$result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[3];
$result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[3]{'contents'}[0];
$result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[3]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[3]{'contents'}[0];
$result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[3]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[3]{'contents'}[0];
$result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[3]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[3]{'contents'}[0];
$result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[3]{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[3]{'contents'}[0];
$result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[3]{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[3]{'contents'}[0];
$result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[3]{'contents'}[0]{'contents'}[6]{'parent'} = $result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[3]{'contents'}[0];
$result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[3]{'contents'}[0]{'contents'}[7]{'parent'} = $result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[3]{'contents'}[0];
$result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[3]{'contents'}[0]{'contents'}[8]{'parent'} = $result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[3]{'contents'}[0];
$result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[3];
$result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0];
$result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[3]{'contents'}[1];
$result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[3];
$result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[2];
$result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[2];
$result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'raw_in_example'}{'contents'}[0];
$result_trees{'raw_in_example'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'raw_in_example'}{'contents'}[0];
$result_trees{'raw_in_example'}{'contents'}[0]{'parent'} = $result_trees{'raw_in_example'};

$result_texis{'raw_in_example'} = '@example
@html
in html
@end html
@end example

@example

@html

Some html <code>some code</code>.

@end html

@tex

$$ 
\\chi^2 = \\sum_{i=1}^N
\\left(y_i - (a + b x_i)
\\over \\sigma_i\\right)^2 
$$

@end tex

@end example

';


$result_texts{'raw_in_example'} = '




';

$result_errors{'raw_in_example'} = [];


$result_floats{'raw_in_example'} = {};



$result_converted{'plaintext'}->{'raw_in_example'} = '




';


$result_converted{'html_text'}->{'raw_in_example'} = '<div class="example">
<pre class="example-preformatted">in html
</pre></div>

<div class="example">
<pre class="example-preformatted">


Some html <code>some code</code>.



</pre></div>

';

1;
