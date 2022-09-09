use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'on_block_command_line'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'in anchor'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'anchor',
                      'contents' => [],
                      'extra' => {
                        'node_content' => [
                          {}
                        ],
                        'normalized' => 'in-anchor'
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
                  'type' => 'bracketed'
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
                          'text' => 'in titlefont'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'titlefont',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 1,
                    'macro' => ''
                  }
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
          'cmdname' => 'multitable',
          'contents' => [
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => 'item',
                      'contents' => [
                        {
                          'args' => [
                            {
                              'contents' => [
                                {
                                  'parent' => {},
                                  'text' => 'in titlefont'
                                }
                              ],
                              'parent' => {},
                              'type' => 'brace_command_arg'
                            }
                          ],
                          'cmdname' => 'titlefont',
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
                        }
                      ],
                      'extra' => {
                        'cell_number' => 1,
                        'spaces_before_argument' => ' '
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 2,
                        'macro' => ''
                      }
                    }
                  ],
                  'extra' => {
                    'row_number' => 1
                  },
                  'parent' => {},
                  'type' => 'row'
                }
              ],
              'parent' => {},
              'type' => 'multitable_body'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'multitable'
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
                'text_arg' => 'multitable'
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
            'max_columns' => 1,
            'prototypes' => [
              {
                'contents' => [
                  {}
                ],
                'type' => 'bracketed_multitable_prototype'
              }
            ],
            'spaces_before_argument' => ' '
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
          'args' => [
            {
              'contents' => [
                {
                  'cmdname' => 'indent',
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 5,
                    'macro' => ''
                  }
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'in titlefont'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'titlefont',
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
                          'text' => 'in quotation anchor'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'anchor',
                  'contents' => [],
                  'extra' => {
                    'node_content' => [
                      {}
                    ],
                    'normalized' => 'in-quotation-anchor'
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 5,
                    'macro' => ''
                  }
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'footnote'
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
                  'cmdname' => 'footnote',
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
                          'text' => 'exdent'
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
                  'cmdname' => 'exdent',
                  'extra' => {
                    'spaces_before_argument' => ' '
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
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'quotation',
          'contents' => [
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
                'spaces_before_argument' => ' ',
                'text_arg' => 'quotation'
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
            'spaces_before_argument' => ' '
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
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'on_block_command_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'on_block_command_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'on_block_command_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'on_block_command_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'on_block_command_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}[0] = $result_trees{'on_block_command_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'on_block_command_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'on_block_command_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'on_block_command_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'on_block_command_line'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'on_block_command_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'on_block_command_line'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'on_block_command_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'on_block_command_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'on_block_command_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'on_block_command_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'on_block_command_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'on_block_command_line'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'on_block_command_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'on_block_command_line'}{'contents'}[0]{'contents'}[0];
$result_trees{'on_block_command_line'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'on_block_command_line'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'on_block_command_line'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'on_block_command_line'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'on_block_command_line'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'on_block_command_line'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'on_block_command_line'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'on_block_command_line'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'on_block_command_line'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'on_block_command_line'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'on_block_command_line'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'on_block_command_line'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'on_block_command_line'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'on_block_command_line'}{'contents'}[0]{'contents'}[0];
$result_trees{'on_block_command_line'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'on_block_command_line'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'on_block_command_line'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'on_block_command_line'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'on_block_command_line'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'on_block_command_line'}{'contents'}[0]{'contents'}[0];
$result_trees{'on_block_command_line'}{'contents'}[0]{'contents'}[0]{'extra'}{'prototypes'}[0]{'contents'}[0] = $result_trees{'on_block_command_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'on_block_command_line'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'on_block_command_line'}{'contents'}[0];
$result_trees{'on_block_command_line'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'on_block_command_line'}{'contents'}[0];
$result_trees{'on_block_command_line'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'on_block_command_line'}{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'on_block_command_line'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'on_block_command_line'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'on_block_command_line'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'on_block_command_line'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[1];
$result_trees{'on_block_command_line'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'on_block_command_line'}{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'on_block_command_line'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'on_block_command_line'}{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'on_block_command_line'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'on_block_command_line'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[3]{'args'}[0];
$result_trees{'on_block_command_line'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'on_block_command_line'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[3];
$result_trees{'on_block_command_line'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[3]{'extra'}{'node_content'}[0] = $result_trees{'on_block_command_line'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'on_block_command_line'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'on_block_command_line'}{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'on_block_command_line'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'on_block_command_line'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0];
$result_trees{'on_block_command_line'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'on_block_command_line'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'on_block_command_line'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'on_block_command_line'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[4];
$result_trees{'on_block_command_line'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'on_block_command_line'}{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'on_block_command_line'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'on_block_command_line'}{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'on_block_command_line'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'on_block_command_line'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[6]{'args'}[0];
$result_trees{'on_block_command_line'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'on_block_command_line'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[6];
$result_trees{'on_block_command_line'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'on_block_command_line'}{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'on_block_command_line'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'on_block_command_line'}{'contents'}[0]{'contents'}[2];
$result_trees{'on_block_command_line'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'on_block_command_line'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'on_block_command_line'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'on_block_command_line'}{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'on_block_command_line'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'on_block_command_line'}{'contents'}[0]{'contents'}[2];
$result_trees{'on_block_command_line'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'on_block_command_line'}{'contents'}[0];
$result_trees{'on_block_command_line'}{'contents'}[0]{'parent'} = $result_trees{'on_block_command_line'};

$result_texis{'on_block_command_line'} = '@multitable {@anchor{in anchor}} @titlefont{in titlefont}
@item @titlefont{in titlefont}
@end multitable

@quotation @indent @titlefont{in titlefont} @anchor{in quotation anchor}@footnote{footnote} @exdent exdent
@end quotation
';


$result_texts{'on_block_command_line'} = 'in titlefont

in titlefont  exdent
';

$result_errors{'on_block_command_line'} = [
  {
    'error_line' => 'warning: @titlefont should not appear in @multitable
',
    'file_name' => '',
    'line_nr' => 1,
    'macro' => '',
    'text' => '@titlefont should not appear in @multitable',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: unexpected argument on @multitable line: @titlefont{in titlefont}
',
    'file_name' => '',
    'line_nr' => 1,
    'macro' => '',
    'text' => 'unexpected argument on @multitable line: @titlefont{in titlefont}',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @indent should not appear in @quotation
',
    'file_name' => '',
    'line_nr' => 5,
    'macro' => '',
    'text' => '@indent should not appear in @quotation',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @titlefont should not appear in @quotation
',
    'file_name' => '',
    'line_nr' => 5,
    'macro' => '',
    'text' => '@titlefont should not appear in @quotation',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @anchor should not appear in @quotation
',
    'file_name' => '',
    'line_nr' => 5,
    'macro' => '',
    'text' => '@anchor should not appear in @quotation',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @footnote should not appear in @quotation
',
    'file_name' => '',
    'line_nr' => 5,
    'macro' => '',
    'text' => '@footnote should not appear in @quotation',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @exdent should only appear at the beginning of a line
',
    'file_name' => '',
    'line_nr' => 5,
    'macro' => '',
    'text' => '@exdent should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @exdent should not appear in @quotation
',
    'file_name' => '',
    'line_nr' => 5,
    'macro' => '',
    'text' => '@exdent should not appear in @quotation',
    'type' => 'warning'
  }
];


$result_floats{'on_block_command_line'} = {};


1;
