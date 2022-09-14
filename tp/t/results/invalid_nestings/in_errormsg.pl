use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'in_errormsg'} = {
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
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'in ref'
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
            'normalized' => 'in-ref'
          },
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
          'type' => 'spaces_after_close_brace'
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'Text. '
            },
            {
              'args' => [
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
                        'line_nr' => 3,
                        'macro' => ''
                      }
                    },
                    {
                      'parent' => {},
                      'text' => ' ',
                      'type' => 'spaces_after_close_brace'
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'in ref'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'ref',
                      'contents' => [],
                      'extra' => {
                        'label' => {},
                        'node_argument' => {
                          'node_content' => [
                            {}
                          ],
                          'normalized' => 'in-ref'
                        }
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
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'errormsg',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 3,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '
'
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
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
                'spaces_before_argument' => '
'
              },
              'parent' => {},
              'type' => 'brace_command_arg'
            }
          ],
          'cmdname' => 'errormsg',
          'contents' => [],
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
                  'cmdname' => 'asis',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 6,
                    'macro' => ''
                  },
                  'type' => 'command_as_argument'
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
          'cmdname' => 'table',
          'contents' => [
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
                              'text' => 'item'
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
                      'cmdname' => 'item',
                      'extra' => {
                        'spaces_before_argument' => ' '
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 7,
                        'macro' => ''
                      }
                    }
                  ],
                  'parent' => {},
                  'type' => 'table_term'
                }
              ],
              'parent' => {},
              'type' => 'table_entry'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'table'
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
                'text_arg' => 'table'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 8,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'command_as_argument' => {},
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 6,
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
$result_trees{'in_errormsg'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'in_errormsg'}{'contents'}[0];
$result_trees{'in_errormsg'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'in_errormsg'}{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'in_errormsg'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'in_errormsg'}{'contents'}[0]{'contents'}[1];
$result_trees{'in_errormsg'}{'contents'}[0]{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'in_errormsg'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'in_errormsg'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'in_errormsg'}{'contents'}[0];
$result_trees{'in_errormsg'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'in_errormsg'}{'contents'}[0];
$result_trees{'in_errormsg'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'in_errormsg'}{'contents'}[0]{'contents'}[3];
$result_trees{'in_errormsg'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'in_errormsg'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'in_errormsg'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'in_errormsg'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'in_errormsg'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'extra'}{'node_content'}[0] = $result_trees{'in_errormsg'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'in_errormsg'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'in_errormsg'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0];
$result_trees{'in_errormsg'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'in_errormsg'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0];
$result_trees{'in_errormsg'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'in_errormsg'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'in_errormsg'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'in_errormsg'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[2];
$result_trees{'in_errormsg'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[2]{'extra'}{'label'} = $result_trees{'in_errormsg'}{'contents'}[0]{'contents'}[1];
$result_trees{'in_errormsg'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[2]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'in_errormsg'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'in_errormsg'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'in_errormsg'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0];
$result_trees{'in_errormsg'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'in_errormsg'}{'contents'}[0]{'contents'}[3]{'contents'}[1];
$result_trees{'in_errormsg'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'in_errormsg'}{'contents'}[0]{'contents'}[3];
$result_trees{'in_errormsg'}{'contents'}[0]{'contents'}[3]{'contents'}[2]{'parent'} = $result_trees{'in_errormsg'}{'contents'}[0]{'contents'}[3];
$result_trees{'in_errormsg'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'in_errormsg'}{'contents'}[0];
$result_trees{'in_errormsg'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'in_errormsg'}{'contents'}[0];
$result_trees{'in_errormsg'}{'contents'}[0]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'in_errormsg'}{'contents'}[0]{'contents'}[5];
$result_trees{'in_errormsg'}{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'in_errormsg'}{'contents'}[0];
$result_trees{'in_errormsg'}{'contents'}[0]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'in_errormsg'}{'contents'}[0]{'contents'}[6]{'args'}[0];
$result_trees{'in_errormsg'}{'contents'}[0]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'in_errormsg'}{'contents'}[0]{'contents'}[6];
$result_trees{'in_errormsg'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'in_errormsg'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'in_errormsg'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'in_errormsg'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'in_errormsg'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'in_errormsg'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'contents'}[0];
$result_trees{'in_errormsg'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'in_errormsg'}{'contents'}[0]{'contents'}[6]{'contents'}[0];
$result_trees{'in_errormsg'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'parent'} = $result_trees{'in_errormsg'}{'contents'}[0]{'contents'}[6];
$result_trees{'in_errormsg'}{'contents'}[0]{'contents'}[6]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'in_errormsg'}{'contents'}[0]{'contents'}[6]{'contents'}[1]{'args'}[0];
$result_trees{'in_errormsg'}{'contents'}[0]{'contents'}[6]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'in_errormsg'}{'contents'}[0]{'contents'}[6]{'contents'}[1];
$result_trees{'in_errormsg'}{'contents'}[0]{'contents'}[6]{'contents'}[1]{'parent'} = $result_trees{'in_errormsg'}{'contents'}[0]{'contents'}[6];
$result_trees{'in_errormsg'}{'contents'}[0]{'contents'}[6]{'extra'}{'command_as_argument'} = $result_trees{'in_errormsg'}{'contents'}[0]{'contents'}[6]{'args'}[0]{'contents'}[0];
$result_trees{'in_errormsg'}{'contents'}[0]{'contents'}[6]{'parent'} = $result_trees{'in_errormsg'}{'contents'}[0];
$result_trees{'in_errormsg'}{'contents'}[0]{'parent'} = $result_trees{'in_errormsg'};

$result_texis{'in_errormsg'} = '
@anchor{in ref}
Text. @errormsg{@anchor{in anchor} @ref{in ref}}

@errormsg{
}@table @asis
@item item
@end table
';


$result_texts{'in_errormsg'} = '
Text. 

item
';

$result_errors{'in_errormsg'} = [
  {
    'error_line' => 'warning: @anchor should not appear in @errormsg
',
    'file_name' => '',
    'line_nr' => 3,
    'macro' => '',
    'text' => '@anchor should not appear in @errormsg',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @ref should not appear in @errormsg
',
    'file_name' => '',
    'line_nr' => 3,
    'macro' => '',
    'text' => '@ref should not appear in @errormsg',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @table should not appear in @errormsg
',
    'file_name' => '',
    'line_nr' => 6,
    'macro' => '',
    'text' => '@table should not appear in @errormsg',
    'type' => 'warning'
  },
  {
    'error_line' => '@errormsg missing closing brace
',
    'file_name' => '',
    'line_nr' => 5,
    'macro' => '',
    'text' => '@errormsg missing closing brace',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced }
',
    'file_name' => '',
    'line_nr' => 9,
    'macro' => '',
    'text' => 'misplaced }',
    'type' => 'error'
  }
];


$result_floats{'in_errormsg'} = {};


1;
