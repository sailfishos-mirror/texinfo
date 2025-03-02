use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'raw_and_comments'} = {
  'contents' => [
    {
      'contents' => [
        {
          'cmdname' => 'tex',
          'contents' => [
            {
              'contents' => [
                {
                  'info' => {
                    'comment_at_end' => {
                      'cmdname' => 'c',
                      'contents' => [
                        {
                          'text' => ' comment
',
                          'type' => 'rawline_arg'
                        }
                      ]
                    }
                  },
                  'type' => 'block_line_arg'
                }
              ],
              'type' => 'arguments_line'
            },
            {
              'contents' => [
                {
                  'text' => 'in <tex>
'
                }
              ],
              'type' => 'rawpreformatted'
            },
            {
              'cmdname' => 'end',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'tex'
                    }
                  ],
                  'info' => {
                    'comment_at_end' => {
                      'cmdname' => 'comment',
                      'contents' => [
                        {
                          'text' => ' other comment
',
                          'type' => 'rawline_arg'
                        }
                      ]
                    },
                    'spaces_after_argument' => {
                      'text' => '  '
                    }
                  },
                  'type' => 'line_arg'
                }
              ],
              'extra' => {
                'text_arg' => 'tex'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 3
              }
            }
          ],
          'info' => {
            'spaces_before_argument' => {
              'text' => '  '
            }
          },
          'source_info' => {
            'line_nr' => 1
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'text' => 'Para
'
            },
            {
              'cmdname' => 'xml',
              'contents' => [
                {
                  'contents' => [
                    {
                      'info' => {
                        'comment_at_end' => {
                          'cmdname' => 'c',
                          'contents' => [
                            {
                              'text' => ' in xml comment
',
                              'type' => 'rawline_arg'
                            }
                          ]
                        }
                      },
                      'type' => 'block_line_arg'
                    }
                  ],
                  'type' => 'arguments_line'
                },
                {
                  'contents' => [
                    {
                      'text' => '<in />
'
                    }
                  ],
                  'type' => 'rawpreformatted'
                },
                {
                  'cmdname' => 'end',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'xml'
                        }
                      ],
                      'info' => {
                        'comment_at_end' => {
                          'cmdname' => 'comment',
                          'contents' => [
                            {
                              'text' => ' end xml comment
',
                              'type' => 'rawline_arg'
                            }
                          ]
                        },
                        'spaces_after_argument' => {
                          'text' => '  '
                        }
                      },
                      'type' => 'line_arg'
                    }
                  ],
                  'extra' => {
                    'text_arg' => 'xml'
                  },
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'source_info' => {
                    'line_nr' => 8
                  }
                }
              ],
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 6
              }
            }
          ],
          'type' => 'paragraph'
        }
      ],
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};

$result_texis{'raw_and_comments'} = '@tex  @c comment
in <tex>
@end tex  @comment other comment

Para
@xml @c in xml comment
<in />
@end xml  @comment end xml comment
';


$result_texts{'raw_and_comments'} = 'in <tex>

Para
<in />
';

$result_errors{'raw_and_comments'} = [];


$result_floats{'raw_and_comments'} = {};



$result_converted{'xml'}->{'raw_and_comments'} = '<tex spaces="  " endspaces=" "><!-- c comment -->
in &lt;tex&gt;
</tex>  <!-- comment other comment -->

<para>Para
<in />
</para>';

1;
