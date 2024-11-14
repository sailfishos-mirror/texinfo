use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'at_commands_in_node'} = {
  'contents' => [
    {
      'type' => 'before_node_section'
    },
    {
      'cmdname' => 'node',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'A '
                },
                {
                  'cmdname' => 'sc',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'sc'
                        }
                      ],
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 1
                  }
                },
                {
                  'text' => ' node '
                },
                {
                  'cmdname' => '"',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'i'
                        }
                      ],
                      'type' => 'following_arg'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 1
                  }
                },
                {
                  'text' => ' '
                },
                {
                  'cmdname' => '"',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'cmdname' => 'dotless',
                          'contents' => [
                            {
                              'contents' => [
                                {
                                  'text' => 'i'
                                }
                              ],
                              'type' => 'brace_container'
                            }
                          ],
                          'source_info' => {
                            'line_nr' => 1
                          }
                        }
                      ],
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 1
                  }
                },
                {
                  'text' => ' '
                },
                {
                  'cmdname' => '`',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'cmdname' => '=',
                          'contents' => [
                            {
                              'contents' => [
                                {
                                  'text' => 'E'
                                }
                              ],
                              'type' => 'following_arg'
                            }
                          ],
                          'source_info' => {
                            'line_nr' => 1
                          }
                        }
                      ],
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 1
                  }
                },
                {
                  'text' => ' '
                },
                {
                  'cmdname' => 'l',
                  'contents' => [
                    {
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 1
                  }
                },
                {
                  'text' => ' '
                },
                {
                  'cmdname' => ',',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'cmdname' => '\'',
                          'contents' => [
                            {
                              'contents' => [
                                {
                                  'text' => 'C'
                                }
                              ],
                              'type' => 'following_arg'
                            }
                          ],
                          'source_info' => {
                            'line_nr' => 1
                          }
                        }
                      ],
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 1
                  }
                },
                {
                  'text' => ' '
                },
                {
                  'cmdname' => 'exclamdown',
                  'contents' => [
                    {
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 1
                  }
                }
              ],
              'type' => 'line_arg'
            }
          ],
          'type' => 'argument'
        }
      ],
      'extra' => {
        'is_target' => 1,
        'normalized' => 'A-sc-node-_00ef-_00ef-_1e14-_0142-_1e08-_00a1'
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

$result_texis{'at_commands_in_node'} = '@node A @sc{sc} node @"i @"{@dotless{i}} @`{@=E} @l{} @,{@\'C} @exclamdown{}';


$result_texts{'at_commands_in_node'} = '';

$result_nodes{'at_commands_in_node'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'normalized' => 'A-sc-node-_00ef-_00ef-_1e14-_0142-_1e08-_00a1'
    }
  }
];

$result_menus{'at_commands_in_node'} = [
  {
    'extra' => {
      'normalized' => 'A-sc-node-_00ef-_00ef-_1e14-_0142-_1e08-_00a1'
    }
  }
];

$result_errors{'at_commands_in_node'} = [];


$result_floats{'at_commands_in_node'} = {};


1;
