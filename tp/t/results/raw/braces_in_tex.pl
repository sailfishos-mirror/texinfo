use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'braces_in_tex'} = {
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
                'line_nr' => 8,
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
                        'line_nr' => 18,
                        'macro' => ''
                      }
                    }
                  ],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 12,
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
                'line_nr' => 19,
                'macro' => ''
              }
            }
          ],
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 11,
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
$result_trees{'braces_in_tex'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'braces_in_tex'}{'contents'}[0];
$result_trees{'braces_in_tex'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'braces_in_tex'}{'contents'}[0]{'contents'}[1];
$result_trees{'braces_in_tex'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'braces_in_tex'}{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'braces_in_tex'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'braces_in_tex'}{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'braces_in_tex'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'braces_in_tex'}{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'braces_in_tex'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'braces_in_tex'}{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'braces_in_tex'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'braces_in_tex'}{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'braces_in_tex'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'braces_in_tex'}{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'braces_in_tex'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[6]{'parent'} = $result_trees{'braces_in_tex'}{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'braces_in_tex'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'braces_in_tex'}{'contents'}[0]{'contents'}[1];
$result_trees{'braces_in_tex'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'braces_in_tex'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'braces_in_tex'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'braces_in_tex'}{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'braces_in_tex'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'braces_in_tex'}{'contents'}[0]{'contents'}[1];
$result_trees{'braces_in_tex'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'braces_in_tex'}{'contents'}[0];
$result_trees{'braces_in_tex'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'braces_in_tex'}{'contents'}[0];
$result_trees{'braces_in_tex'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'braces_in_tex'}{'contents'}[0];
$result_trees{'braces_in_tex'}{'contents'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'braces_in_tex'}{'contents'}[0]{'contents'}[4];
$result_trees{'braces_in_tex'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'braces_in_tex'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[0];
$result_trees{'braces_in_tex'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'braces_in_tex'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'braces_in_tex'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'braces_in_tex'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'braces_in_tex'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'braces_in_tex'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'braces_in_tex'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'braces_in_tex'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'braces_in_tex'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'braces_in_tex'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'braces_in_tex'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'braces_in_tex'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'braces_in_tex'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[6]{'parent'} = $result_trees{'braces_in_tex'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'braces_in_tex'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'braces_in_tex'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[0];
$result_trees{'braces_in_tex'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'braces_in_tex'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'braces_in_tex'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'braces_in_tex'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'braces_in_tex'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'braces_in_tex'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[0];
$result_trees{'braces_in_tex'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'braces_in_tex'}{'contents'}[0]{'contents'}[4]{'contents'}[0];
$result_trees{'braces_in_tex'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'braces_in_tex'}{'contents'}[0]{'contents'}[4];
$result_trees{'braces_in_tex'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'braces_in_tex'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'args'}[0];
$result_trees{'braces_in_tex'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'braces_in_tex'}{'contents'}[0]{'contents'}[4]{'contents'}[1];
$result_trees{'braces_in_tex'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'braces_in_tex'}{'contents'}[0]{'contents'}[4];
$result_trees{'braces_in_tex'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'braces_in_tex'}{'contents'}[0];
$result_trees{'braces_in_tex'}{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'braces_in_tex'}{'contents'}[0];
$result_trees{'braces_in_tex'}{'contents'}[0]{'parent'} = $result_trees{'braces_in_tex'};

$result_texis{'braces_in_tex'} = '
@tex
$$ 
\\chi^2 = \\sum_{i=1}^N
\\left(y_i - (a + b x_i)
\\over \\sigma_i\\right)^2 
$$
@end tex


@example
@tex
$$ 
\\chi^2 = \\sum_{i=1}^N
\\left(y_i - (a + b x_i)
\\over \\sigma_i\\right)^2 
$$
@end tex
@end example

';


$result_texts{'braces_in_tex'} = '



';

$result_errors{'braces_in_tex'} = [];


$result_floats{'braces_in_tex'} = {};



$result_converted{'plaintext'}->{'braces_in_tex'} = '
';

1;
