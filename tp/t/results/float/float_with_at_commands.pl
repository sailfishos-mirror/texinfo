use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'float_with_at_commands'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [],
          'parent' => {},
          'type' => 'preamble_before_content'
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'entr'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'e'
                        }
                      ],
                      'parent' => {},
                      'type' => 'following_arg'
                    }
                  ],
                  'cmdname' => '\'',
                  'contents' => [],
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 1,
                    'macro' => ''
                  },
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => 'e'
                }
              ],
              'parent' => {},
              'type' => 'block_line_arg'
            },
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'premi'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'e'
                        }
                      ],
                      'parent' => {},
                      'type' => 'following_arg'
                    }
                  ],
                  'cmdname' => '`',
                  'contents' => [],
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 1,
                    'macro' => ''
                  },
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => 're entr'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'e'
                        }
                      ],
                      'parent' => {},
                      'type' => 'following_arg'
                    }
                  ],
                  'cmdname' => '\'',
                  'contents' => [],
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 1,
                    'macro' => ''
                  },
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => 'e'
                }
              ],
              'extra' => {
                'spaces_after_argument' => '
',
                'spaces_before_argument' => ' '
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'float',
          'contents' => [
            {
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'Ceci est notre premi'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'e'
                        }
                      ],
                      'parent' => {},
                      'type' => 'following_arg'
                    }
                  ],
                  'cmdname' => '`',
                  'contents' => [],
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 3,
                    'macro' => ''
                  },
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => 're entr'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'e'
                        }
                      ],
                      'parent' => {},
                      'type' => 'following_arg'
                    }
                  ],
                  'cmdname' => '\'',
                  'contents' => [],
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 3,
                    'macro' => ''
                  },
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => 'e.
'
                }
              ],
              'parent' => {},
              'type' => 'paragraph'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'La premi'
                        },
                        {
                          'args' => [
                            {
                              'contents' => [
                                {
                                  'parent' => {},
                                  'text' => 'e'
                                }
                              ],
                              'parent' => {},
                              'type' => 'following_arg'
                            }
                          ],
                          'cmdname' => '`',
                          'contents' => [],
                          'line_nr' => {
                            'file_name' => '',
                            'line_nr' => 4,
                            'macro' => ''
                          },
                          'parent' => {}
                        },
                        {
                          'parent' => {},
                          'text' => 're entr'
                        },
                        {
                          'args' => [
                            {
                              'contents' => [
                                {
                                  'parent' => {},
                                  'text' => 'e'
                                }
                              ],
                              'parent' => {},
                              'type' => 'following_arg'
                            }
                          ],
                          'cmdname' => '\'',
                          'contents' => [],
                          'line_nr' => {
                            'file_name' => '',
                            'line_nr' => 4,
                            'macro' => ''
                          },
                          'parent' => {}
                        },
                        {
                          'parent' => {},
                          'text' => 'e est importante'
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
              'cmdname' => 'caption',
              'contents' => [],
              'extra' => {
                'float' => {}
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 4,
                'macro' => ''
              },
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '
'
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
                      'parent' => {},
                      'text' => 'float'
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
                'command_argument' => 'float',
                'spaces_before_argument' => ' ',
                'text_arg' => 'float'
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 6,
                'macro' => ''
              },
              'parent' => {}
            }
          ],
          'extra' => {
            'caption' => {},
            'end_command' => {},
            'node_content' => [
              {},
              {},
              {},
              {},
              {}
            ],
            'normalized' => 'premi_00e8re-entr_00e9e',
            'spaces_before_argument' => ' ',
            'type' => {
              'content' => [
                {},
                {},
                {}
              ],
              'normalized' => 'entr@\'ee'
            }
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 1,
            'macro' => ''
          },
          'parent' => {}
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
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'entr'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'e'
                        }
                      ],
                      'parent' => {},
                      'type' => 'following_arg'
                    }
                  ],
                  'cmdname' => '\'',
                  'contents' => [],
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 9,
                    'macro' => ''
                  },
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => 'e'
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
          'cmdname' => 'listoffloats',
          'extra' => {
            'spaces_before_argument' => ' ',
            'type' => {
              'content' => [
                {},
                {},
                {}
              ],
              'normalized' => 'entr@\'ee'
            }
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 9,
            'macro' => ''
          },
          'parent' => {}
        }
      ],
      'parent' => {},
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'float_with_at_commands'}{'contents'}[0];
$result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[1];
$result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1];
$result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'args'}[1];
$result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'args'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'args'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'args'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'args'}[1]{'contents'}[1];
$result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'args'}[1]{'contents'}[1]{'parent'} = $result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'args'}[1];
$result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'args'}[1]{'contents'}[2]{'parent'} = $result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'args'}[1];
$result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'args'}[1]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'args'}[1]{'contents'}[3]{'args'}[0];
$result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'args'}[1]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'args'}[1]{'contents'}[3];
$result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'args'}[1]{'contents'}[3]{'parent'} = $result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'args'}[1];
$result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'args'}[1]{'contents'}[4]{'parent'} = $result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'args'}[1];
$result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'args'}[1]{'parent'} = $result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1];
$result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1];
$result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[1];
$result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[3]{'args'}[0];
$result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[3];
$result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[4]{'parent'} = $result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1];
$result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0];
$result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0]{'contents'}[3];
$result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0];
$result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[2];
$result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'extra'}{'float'} = $result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1];
$result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1];
$result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1];
$result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[4]{'parent'} = $result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1];
$result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[5]{'args'}[0];
$result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[5];
$result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[5]{'parent'} = $result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1];
$result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'extra'}{'caption'} = $result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[2];
$result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'extra'}{'end_command'} = $result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[5];
$result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'args'}[1]{'contents'}[0];
$result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'extra'}{'node_content'}[1] = $result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'args'}[1]{'contents'}[1];
$result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'extra'}{'node_content'}[2] = $result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'args'}[1]{'contents'}[2];
$result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'extra'}{'node_content'}[3] = $result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'args'}[1]{'contents'}[3];
$result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'extra'}{'node_content'}[4] = $result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'args'}[1]{'contents'}[4];
$result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'extra'}{'type'}{'content'}[0] = $result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'extra'}{'type'}{'content'}[1] = $result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[1];
$result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'extra'}{'type'}{'content'}[2] = $result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[2];
$result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'float_with_at_commands'}{'contents'}[0];
$result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'float_with_at_commands'}{'contents'}[0];
$result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'float_with_at_commands'}{'contents'}[0];
$result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[4]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[4]{'args'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[4]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[4]{'args'}[0]{'contents'}[1];
$result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[4]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[4]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[4];
$result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[4]{'extra'}{'type'}{'content'}[0] = $result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0];
$result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[4]{'extra'}{'type'}{'content'}[1] = $result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[4]{'args'}[0]{'contents'}[1];
$result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[4]{'extra'}{'type'}{'content'}[2] = $result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[4]{'args'}[0]{'contents'}[2];
$result_trees{'float_with_at_commands'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'float_with_at_commands'}{'contents'}[0];
$result_trees{'float_with_at_commands'}{'contents'}[0]{'parent'} = $result_trees{'float_with_at_commands'};

$result_texis{'float_with_at_commands'} = '@float entr@\'ee, premi@`ere entr@\'ee

Ceci est notre premi@`ere entr@\'ee.
@caption{La premi@`ere entr@\'ee est importante}

@end float


@listoffloats entr@\'ee
';


$result_texts{'float_with_at_commands'} = 'entre\'e, premie`re entre\'e

Ceci est notre premie`re entre\'e.




';

$result_errors{'float_with_at_commands'} = [];


$result_floats{'float_with_at_commands'} = {
  'entr@\'ee' => [
    {
      'cmdname' => 'float',
      'extra' => {
        'caption' => {
          'cmdname' => 'caption',
          'extra' => {
            'float' => {}
          }
        },
        'normalized' => 'premi_00e8re-entr_00e9e',
        'type' => {
          'content' => [
            {
              'text' => 'entr'
            },
            {
              'cmdname' => '\''
            },
            {
              'text' => 'e'
            }
          ],
          'normalized' => 'entr@\'ee'
        }
      },
      'structure' => {
        'float_number' => 1
      }
    }
  ]
};
$result_floats{'float_with_at_commands'}{'entr@\'ee'}[0]{'extra'}{'caption'}{'extra'}{'float'} = $result_floats{'float_with_at_commands'}{'entr@\'ee'}[0];



$result_converted{'plaintext'}->{'float_with_at_commands'} = 'Ceci est notre première entrée.


entrée 1: La première entrée est importante

* Menu:

* entrée 1: première entrée.             La première entrée est ...

';


$result_converted{'html'}->{'float_with_at_commands'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, http://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Untitled Document</title>

<meta name="description" content="Untitled Document">
<meta name="keywords" content="Untitled Document">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="viewport" content="width=device-width,initial-scale=1">

<style type="text/css">
<!--
kbd {font-style: oblique}
-->
</style>


</head>

<body lang="en">
<div class="float" id="premi_00e8re-entr_00e9e">

<p>Ceci est notre premi&egrave;re entr&eacute;e.
</p>

<div class="float-caption"><p><strong class="strong">entr&eacute;e 1: </strong>La premi&egrave;re entr&eacute;e est importante</p></div></div>

<dl class="listoffloats">
<dt><a href="#premi_00e8re-entr_00e9e">entr&eacute;e 1</a></dt><dd><p>La premi&egrave;re entr&eacute;e est importante</p></dd>
</dl>



</body>
</html>
';

$result_converted_errors{'html'}->{'float_with_at_commands'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];


1;
