use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'empty_nodes_with_commands'} = {
  'contents' => [
    {
      'contents' => [
        {
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'type' => 'before_node_section'
    },
    {
      'cmdname' => 'node',
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
              'type' => 'line_arg'
            }
          ],
          'type' => 'arguments_line'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 2
      }
    },
    {
      'cmdname' => 'node',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'cmdname' => '
'
                }
              ],
              'type' => 'line_arg'
            }
          ],
          'type' => 'arguments_line'
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
    },
    {
      'cmdname' => 'node',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'cmdname' => ':'
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
          'type' => 'arguments_line'
        }
      ],
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 5
      }
    },
    {
      'cmdname' => 'node',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'cmdname' => 'asis',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => ' '
                        }
                      ],
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 6
                  }
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
          'type' => 'arguments_line'
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
  'type' => 'document_root'
};

$result_texis{'empty_nodes_with_commands'} = '
@node @c comment

@node @
@node @:
@node @asis{ }
';


$result_texts{'empty_nodes_with_commands'} = '

';

$result_errors{'empty_nodes_with_commands'} = [
  {
    'error_line' => 'empty argument in @node
',
    'line_nr' => 2,
    'text' => 'empty argument in @node',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: @ should not occur at end of argument to line command
',
    'line_nr' => 4,
    'text' => '@ should not occur at end of argument to line command',
    'type' => 'warning'
  },
  {
    'error_line' => 'empty node name after expansion `@
\'
',
    'line_nr' => 4,
    'text' => 'empty node name after expansion `@
\'',
    'type' => 'error'
  },
  {
    'error_line' => 'empty node name after expansion `@:\'
',
    'line_nr' => 5,
    'text' => 'empty node name after expansion `@:\'',
    'type' => 'error'
  },
  {
    'error_line' => 'empty node name after expansion `@asis{ }\'
',
    'line_nr' => 6,
    'text' => 'empty node name after expansion `@asis{ }\'',
    'type' => 'error'
  }
];


$result_floats{'empty_nodes_with_commands'} = {};


1;
