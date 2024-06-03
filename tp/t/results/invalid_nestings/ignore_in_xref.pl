use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'ignore_in_xref'} = {
  'contents' => [
    {
      'type' => 'before_node_section'
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'text' => 'first'
            }
          ],
          'info' => {
            'spaces_after_argument' => {
              'text' => '
'
            }
          },
          'type' => 'line_arg'
        }
      ],
      'cmdname' => 'node',
      'contents' => [
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'first'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'first'
                  },
                  'type' => 'brace_arg'
                },
                {
                  'contents' => [
                    {
                      'args' => [
                        {
                          'info' => {
                            'spaces_after_argument' => {
                              'text' => '
'
                            }
                          },
                          'type' => 'block_line_arg'
                        }
                      ],
                      'cmdname' => 'ignore',
                      'contents' => [
                        {
                          'text' => 'ignore me
',
                          'type' => 'raw'
                        },
                        {
                          'args' => [
                            {
                              'contents' => [
                                {
                                  'text' => 'ignore'
                                }
                              ],
                              'info' => {
                                'spaces_after_argument' => {
                                  'text' => '
'
                                }
                              },
                              'type' => 'line_arg'
                            }
                          ],
                          'cmdname' => 'end',
                          'extra' => {
                            'text_arg' => 'ignore'
                          },
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
                      'source_info' => {
                        'line_nr' => 4
                      }
                    }
                  ],
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => '
'
                    }
                  },
                  'type' => 'brace_arg'
                }
              ],
              'cmdname' => 'xref',
              'source_info' => {
                'line_nr' => 3
              }
            },
            {
              'text' => '.
'
            }
          ],
          'type' => 'paragraph'
        }
      ],
      'extra' => {
        'is_target' => 1,
        'normalized' => 'first'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 1
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'ignore_in_xref'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'ignore_in_xref'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0];

$result_texis{'ignore_in_xref'} = '@node first

@xref{first,
@ignore
ignore me
@end ignore
}.
';


$result_texts{'ignore_in_xref'} = '
first.
';

$result_nodes{'ignore_in_xref'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'normalized' => 'first'
    }
  }
];

$result_menus{'ignore_in_xref'} = [
  {
    'extra' => {
      'normalized' => 'first'
    }
  }
];

$result_errors{'ignore_in_xref'} = [
  {
    'error_line' => 'warning: @ignore should not appear anywhere inside @xref
',
    'line_nr' => 4,
    'text' => '@ignore should not appear anywhere inside @xref',
    'type' => 'warning'
  }
];


$result_floats{'ignore_in_xref'} = {};


1;
