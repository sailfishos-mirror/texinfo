use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'include_in_removed_before_item'} = {
  'contents' => [
    {
      'contents' => [
        {
          'cmdname' => 'table',
          'contents' => [
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => 'code',
                      'source_info' => {
                        'line_nr' => 1
                      }
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => {
                      'text' => '
'
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
                  'contents' => [
                    {
                      'cmdname' => 'c',
                      'contents' => [
                        {
                          'text' => ' source mark holder comment
',
                          'type' => 'rawline_arg'
                        }
                      ],
                      'source_marks' => [
                        {
                          'counter' => 1,
                          'element' => {
                            'cmdname' => 'include',
                            'contents' => [
                              {
                                'contents' => [
                                  {
                                    'text' => 'only_comment.texi'
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
                            'extra' => {
                              'text_arg' => 'only_comment.texi'
                            },
                            'info' => {
                              'spaces_before_argument' => {
                                'text' => ' '
                              }
                            },
                            'source_info' => {
                              'line_nr' => 3
                            }
                          },
                          'sourcemark_type' => 'include',
                          'status' => 'start'
                        }
                      ]
                    },
                    {
                      'cmdname' => 'c',
                      'contents' => [
                        {
                          'text' => ' in here
',
                          'type' => 'rawline_arg'
                        }
                      ],
                      'source_marks' => [
                        {
                          'counter' => 1,
                          'sourcemark_type' => 'include',
                          'status' => 'end'
                        }
                      ]
                    },
                    {
                      'cmdname' => 'item',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'FOO'
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
                      'info' => {
                        'spaces_before_argument' => {
                          'text' => ' '
                        }
                      },
                      'source_info' => {
                        'line_nr' => 4
                      }
                    }
                  ],
                  'type' => 'table_term'
                }
              ],
              'type' => 'table_entry'
            },
            {
              'cmdname' => 'end',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'table'
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
              'extra' => {
                'text_arg' => 'table'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 5
              }
            }
          ],
          'extra' => {
            'command_as_argument' => {}
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
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'include_in_removed_before_item'}{'contents'}[0]{'contents'}[0]{'extra'}{'command_as_argument'} = $result_trees{'include_in_removed_before_item'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0];

$result_texis{'include_in_removed_before_item'} = '@table @code
@c source mark holder comment
@c in here
@item FOO
@end table
';


$result_texts{'include_in_removed_before_item'} = 'FOO
';

$result_errors{'include_in_removed_before_item'} = [];


$result_floats{'include_in_removed_before_item'} = {};


1;
