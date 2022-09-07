use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'wrong_braces_with_end_of_lines'} = {
  'contents' => [
    {
      'contents' => [
        {
          'cmdname' => 'deffn',
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'extra' => {
                        'def_role' => 'category'
                      },
                      'parent' => {},
                      'text' => 'category'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'extra' => {
                        'def_role' => 'name'
                      },
                      'parent' => {},
                      'text' => 'name'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'text' => 'args'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'more args'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'arg',
                        'spaces_after_argument' => '
',
                        'spaces_before_argument' => '   '
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 1,
                        'macro' => ''
                      },
                      'type' => 'bracketed_def_content'
                    }
                  ],
                  'parent' => {},
                  'type' => 'block_line_arg'
                }
              ],
              'extra' => {
                'def_command' => 'deffn',
                'def_parsed_hash' => {
                  'category' => {},
                  'name' => {}
                },
                'index_entry' => {
                  'command' => {},
                  'content' => [
                    {}
                  ],
                  'content_normalized' => [
                    {}
                  ],
                  'in_code' => 1,
                  'index_at_command' => 'deffn',
                  'index_ignore_chars' => {},
                  'index_name' => 'fn',
                  'index_type_command' => 'deffn',
                  'number' => 1
                },
                'original_def_cmdname' => 'deffn'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 1,
                'macro' => ''
              },
              'type' => 'def_line'
            },
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'deffn with '
                    },
                    {
                      'cmdname' => '{',
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => '
'
                    }
                  ],
                  'parent' => {},
                  'type' => 'paragraph'
                }
              ],
              'parent' => {},
              'type' => 'def_item'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'deffn'
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
                'text_arg' => 'deffn'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 4,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'end_command' => {},
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
          'cmdname' => 'deffn',
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'extra' => {
                        'def_role' => 'category'
                      },
                      'parent' => {},
                      'text' => 'category'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'extra' => {
                        'def_role' => 'name'
                      },
                      'parent' => {},
                      'text' => 'name'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'text' => 'args'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => '    ',
                      'type' => 'spaces'
                    },
                    {
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'text' => 'more'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'extra' => {
                        'def_role' => 'arg'
                      },
                      'parent' => {},
                      'text' => 'args'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => '
',
                      'type' => 'spaces_at_end'
                    }
                  ],
                  'parent' => {},
                  'type' => 'block_line_arg'
                }
              ],
              'extra' => {
                'def_command' => 'deffn',
                'def_parsed_hash' => {
                  'category' => {},
                  'name' => {}
                },
                'index_entry' => {
                  'command' => {},
                  'content' => [
                    {}
                  ],
                  'content_normalized' => [
                    {}
                  ],
                  'in_code' => 1,
                  'index_at_command' => 'deffn',
                  'index_ignore_chars' => {},
                  'index_name' => 'fn',
                  'index_type_command' => 'deffn',
                  'number' => 2
                },
                'original_def_cmdname' => 'deffn'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 6,
                'macro' => ''
              },
              'type' => 'def_line'
            },
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'deffn with '
                    },
                    {
                      'cmdname' => '}',
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => '
'
                    }
                  ],
                  'parent' => {},
                  'type' => 'paragraph'
                }
              ],
              'parent' => {},
              'type' => 'def_item'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'deffn'
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
                'text_arg' => 'deffn'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 9,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'end_command' => {},
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
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[6]{'contents'}[0]{'parent'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[0];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[0];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[0];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[0]{'extra'}{'end_command'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[8]{'parent'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[9]{'parent'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[2];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[2];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'args'}[0];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[2];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[2];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[2]{'extra'}{'end_command'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[2];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0];
$result_trees{'wrong_braces_with_end_of_lines'}{'contents'}[0]{'parent'} = $result_trees{'wrong_braces_with_end_of_lines'};

$result_texis{'wrong_braces_with_end_of_lines'} = '@deffn category name args {   more args
}deffn with @{
@end deffn 

@deffn category name args    more args
deffn with @}
@end deffn 
';


$result_texts{'wrong_braces_with_end_of_lines'} = 'category: name args more args
deffn with {

category: name args    more args
deffn with }
';

$result_errors{'wrong_braces_with_end_of_lines'} = [
  {
    'error_line' => 'misplaced {
',
    'file_name' => '',
    'line_nr' => 1,
    'macro' => '',
    'text' => 'misplaced {',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: entry for index `fn\' outside of any node
',
    'file_name' => '',
    'line_nr' => 2,
    'macro' => '',
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'misplaced }
',
    'file_name' => '',
    'line_nr' => 6,
    'macro' => '',
    'text' => 'misplaced }',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: entry for index `fn\' outside of any node
',
    'file_name' => '',
    'line_nr' => 7,
    'macro' => '',
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  }
];


$result_floats{'wrong_braces_with_end_of_lines'} = {};


$result_indices_sort_strings{'wrong_braces_with_end_of_lines'} = {
  'fn' => [
    'name',
    'name'
  ]
};


1;
