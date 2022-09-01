use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'seeentry'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [],
          'parent' => {},
          'type' => 'preamble_before_content'
        }
      ],
      'parent' => {},
      'type' => 'before_node_section'
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'Top'
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
      'cmdname' => 'node',
      'contents' => [],
      'extra' => {
        'node_content' => [
          {}
        ],
        'nodes_manuals' => [
          {
            'node_content' => [
              {}
            ],
            'normalized' => 'Top'
          }
        ],
        'normalized' => 'Top',
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
      'args' => [
        {
          'contents' => [],
          'extra' => {
            'spaces_after_argument' => '
'
          },
          'parent' => {},
          'type' => 'line_arg'
        }
      ],
      'cmdname' => 'top',
      'contents' => [
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'extra' => {},
      'parent' => {},
      'source_info' => {
        'file_name' => '',
        'line_nr' => 2,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'chapter index'
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
      'cmdname' => 'node',
      'contents' => [],
      'extra' => {
        'isindex' => 1,
        'node_content' => [
          {}
        ],
        'nodes_manuals' => [
          {
            'node_content' => [
              {}
            ],
            'normalized' => 'chapter-index'
          }
        ],
        'normalized' => 'chapter-index',
        'spaces_before_argument' => ' '
      },
      'parent' => {},
      'source_info' => {
        'file_name' => '',
        'line_nr' => 4,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'Index'
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
      'cmdname' => 'chapter',
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
                  'text' => 'aaa'
                },
                {
                  'parent' => {},
                  'text' => ' ',
                  'type' => 'empty_spaces_before_argument'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'bbb'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'seeentry',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 7,
                    'macro' => ''
                  }
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
          'cmdname' => 'cindex',
          'extra' => {
            'index_entry' => {
              'command' => {},
              'content' => [],
              'content_normalized' => [],
              'index_at_command' => 'cindex',
              'index_ignore_chars' => {},
              'index_name' => 'cp',
              'index_type_command' => 'cindex',
              'node' => {},
              'number' => 1
            },
            'seeentry' => {},
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 7,
            'macro' => ''
          },
          'type' => 'index_entry_command'
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
                          'text' => 'ccc'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'seealso',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 8,
                    'macro' => ''
                  }
                },
                {
                  'parent' => {},
                  'text' => ' ',
                  'type' => 'empty_spaces_after_close_brace'
                },
                {
                  'parent' => {},
                  'text' => 'ddd'
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
          'cmdname' => 'cindex',
          'extra' => {
            'index_entry' => {
              'command' => {},
              'content' => [],
              'content_normalized' => [],
              'index_at_command' => 'cindex',
              'index_ignore_chars' => {},
              'index_name' => 'cp',
              'index_type_command' => 'cindex',
              'node' => {},
              'number' => 1
            },
            'seealso' => {},
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 8,
            'macro' => ''
          },
          'type' => 'index_entry_command'
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
                  'text' => 'f---aaa'
                },
                {
                  'parent' => {},
                  'text' => ' ',
                  'type' => 'empty_spaces_before_argument'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'f---bbb'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'seeentry',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 10,
                    'macro' => ''
                  }
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
          'cmdname' => 'findex',
          'extra' => {
            'index_entry' => {
              'command' => {},
              'content' => [],
              'content_normalized' => [],
              'index_at_command' => 'findex',
              'index_ignore_chars' => {},
              'index_name' => 'fn',
              'index_type_command' => 'findex',
              'node' => {},
              'number' => 1
            },
            'seeentry' => {},
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 10,
            'macro' => ''
          },
          'type' => 'index_entry_command'
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
                          'text' => 'f---ccc'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'seealso',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 11,
                    'macro' => ''
                  }
                },
                {
                  'parent' => {},
                  'text' => ' ',
                  'type' => 'empty_spaces_after_close_brace'
                },
                {
                  'parent' => {},
                  'text' => 'f---ddd'
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
          'cmdname' => 'findex',
          'extra' => {
            'index_entry' => {
              'command' => {},
              'content' => [],
              'content_normalized' => [],
              'index_at_command' => 'findex',
              'index_ignore_chars' => {},
              'index_name' => 'fn',
              'index_type_command' => 'findex',
              'node' => {},
              'number' => 1
            },
            'seealso' => {},
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 11,
            'macro' => ''
          },
          'type' => 'index_entry_command'
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
                  'text' => 'cp'
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
          'cmdname' => 'printindex',
          'extra' => {
            'misc_args' => [
              'cp'
            ],
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 13,
            'macro' => ''
          }
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'fn'
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
          'cmdname' => 'printindex',
          'extra' => {
            'misc_args' => [
              'fn'
            ],
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 14,
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
  'type' => 'document_root'
};
$result_trees{'seeentry'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'seeentry'}{'contents'}[0];
$result_trees{'seeentry'}{'contents'}[0]{'parent'} = $result_trees{'seeentry'};
$result_trees{'seeentry'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'seeentry'}{'contents'}[1]{'args'}[0];
$result_trees{'seeentry'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'seeentry'}{'contents'}[1];
$result_trees{'seeentry'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'seeentry'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'seeentry'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'seeentry'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'seeentry'}{'contents'}[1]{'parent'} = $result_trees{'seeentry'};
$result_trees{'seeentry'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'seeentry'}{'contents'}[2];
$result_trees{'seeentry'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'seeentry'}{'contents'}[2];
$result_trees{'seeentry'}{'contents'}[2]{'parent'} = $result_trees{'seeentry'};
$result_trees{'seeentry'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'seeentry'}{'contents'}[3]{'args'}[0];
$result_trees{'seeentry'}{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'seeentry'}{'contents'}[3];
$result_trees{'seeentry'}{'contents'}[3]{'extra'}{'node_content'}[0] = $result_trees{'seeentry'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'seeentry'}{'contents'}[3]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'seeentry'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'seeentry'}{'contents'}[3]{'parent'} = $result_trees{'seeentry'};
$result_trees{'seeentry'}{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'seeentry'}{'contents'}[4]{'args'}[0];
$result_trees{'seeentry'}{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'seeentry'}{'contents'}[4];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'seeentry'}{'contents'}[4];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'seeentry'}{'contents'}[4]{'contents'}[1]{'args'}[0];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'seeentry'}{'contents'}[4]{'contents'}[1]{'args'}[0];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'seeentry'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'seeentry'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[2];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'seeentry'}{'contents'}[4]{'contents'}[1]{'args'}[0];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'seeentry'}{'contents'}[4]{'contents'}[1];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[1]{'extra'}{'index_entry'}{'command'} = $result_trees{'seeentry'}{'contents'}[4]{'contents'}[1];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[1]{'extra'}{'index_entry'}{'content'} = $result_trees{'seeentry'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[1]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'seeentry'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[1]{'extra'}{'index_entry'}{'node'} = $result_trees{'seeentry'}{'contents'}[3];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[1]{'extra'}{'seeentry'} = $result_trees{'seeentry'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[2];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'seeentry'}{'contents'}[4];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[2]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'seeentry'}{'contents'}[4]{'contents'}[2]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[2]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'seeentry'}{'contents'}[4]{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'seeentry'}{'contents'}[4]{'contents'}[2]{'args'}[0];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[2]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'seeentry'}{'contents'}[4]{'contents'}[2]{'args'}[0];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[2]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'seeentry'}{'contents'}[4]{'contents'}[2]{'args'}[0];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'seeentry'}{'contents'}[4]{'contents'}[2];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[2]{'extra'}{'index_entry'}{'command'} = $result_trees{'seeentry'}{'contents'}[4]{'contents'}[2];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[2]{'extra'}{'index_entry'}{'content'} = $result_trees{'seeentry'}{'contents'}[4]{'contents'}[2]{'args'}[0]{'contents'};
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[2]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'seeentry'}{'contents'}[4]{'contents'}[2]{'args'}[0]{'contents'};
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[2]{'extra'}{'index_entry'}{'node'} = $result_trees{'seeentry'}{'contents'}[3];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[2]{'extra'}{'seealso'} = $result_trees{'seeentry'}{'contents'}[4]{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[2]{'parent'} = $result_trees{'seeentry'}{'contents'}[4];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[3]{'parent'} = $result_trees{'seeentry'}{'contents'}[4];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'seeentry'}{'contents'}[4]{'contents'}[4]{'args'}[0];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[4]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'seeentry'}{'contents'}[4]{'contents'}[4]{'args'}[0];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[4]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'seeentry'}{'contents'}[4]{'contents'}[4]{'args'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[4]{'args'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'seeentry'}{'contents'}[4]{'contents'}[4]{'args'}[0]{'contents'}[2];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[4]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'seeentry'}{'contents'}[4]{'contents'}[4]{'args'}[0];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'seeentry'}{'contents'}[4]{'contents'}[4];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[4]{'extra'}{'index_entry'}{'command'} = $result_trees{'seeentry'}{'contents'}[4]{'contents'}[4];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[4]{'extra'}{'index_entry'}{'content'} = $result_trees{'seeentry'}{'contents'}[4]{'contents'}[4]{'args'}[0]{'contents'};
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[4]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'seeentry'}{'contents'}[4]{'contents'}[4]{'args'}[0]{'contents'};
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[4]{'extra'}{'index_entry'}{'node'} = $result_trees{'seeentry'}{'contents'}[3];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[4]{'extra'}{'seeentry'} = $result_trees{'seeentry'}{'contents'}[4]{'contents'}[4]{'args'}[0]{'contents'}[2];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[4]{'parent'} = $result_trees{'seeentry'}{'contents'}[4];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[5]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'seeentry'}{'contents'}[4]{'contents'}[5]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[5]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'seeentry'}{'contents'}[4]{'contents'}[5]{'args'}[0]{'contents'}[0];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'seeentry'}{'contents'}[4]{'contents'}[5]{'args'}[0];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[5]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'seeentry'}{'contents'}[4]{'contents'}[5]{'args'}[0];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[5]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'seeentry'}{'contents'}[4]{'contents'}[5]{'args'}[0];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'seeentry'}{'contents'}[4]{'contents'}[5];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[5]{'extra'}{'index_entry'}{'command'} = $result_trees{'seeentry'}{'contents'}[4]{'contents'}[5];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[5]{'extra'}{'index_entry'}{'content'} = $result_trees{'seeentry'}{'contents'}[4]{'contents'}[5]{'args'}[0]{'contents'};
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[5]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'seeentry'}{'contents'}[4]{'contents'}[5]{'args'}[0]{'contents'};
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[5]{'extra'}{'index_entry'}{'node'} = $result_trees{'seeentry'}{'contents'}[3];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[5]{'extra'}{'seealso'} = $result_trees{'seeentry'}{'contents'}[4]{'contents'}[5]{'args'}[0]{'contents'}[0];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[5]{'parent'} = $result_trees{'seeentry'}{'contents'}[4];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[6]{'parent'} = $result_trees{'seeentry'}{'contents'}[4];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[7]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'seeentry'}{'contents'}[4]{'contents'}[7]{'args'}[0];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[7]{'args'}[0]{'parent'} = $result_trees{'seeentry'}{'contents'}[4]{'contents'}[7];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[7]{'parent'} = $result_trees{'seeentry'}{'contents'}[4];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[8]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'seeentry'}{'contents'}[4]{'contents'}[8]{'args'}[0];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[8]{'args'}[0]{'parent'} = $result_trees{'seeentry'}{'contents'}[4]{'contents'}[8];
$result_trees{'seeentry'}{'contents'}[4]{'contents'}[8]{'parent'} = $result_trees{'seeentry'}{'contents'}[4];
$result_trees{'seeentry'}{'contents'}[4]{'parent'} = $result_trees{'seeentry'};

$result_texis{'seeentry'} = '@node Top
@top

@node chapter index
@chapter Index

@cindex aaa @seeentry{bbb}
@cindex @seealso{ccc} ddd

@findex f---aaa @seeentry{f---bbb}
@findex @seealso{f---ccc} f---ddd

@printindex cp
@printindex fn
';


$result_texts{'seeentry'} = '
1 Index
*******



';

$result_sectioning{'seeentry'} = {
  'structure' => {
    'section_childs' => [
      {
        'cmdname' => 'top',
        'extra' => {
          'associated_node' => {
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'Top'
            },
            'structure' => {}
          }
        },
        'structure' => {
          'section_childs' => [
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'isindex' => 1,
                    'normalized' => 'chapter-index'
                  },
                  'structure' => {}
                }
              },
              'structure' => {
                'section_level' => 1,
                'section_number' => 1,
                'section_up' => {},
                'toplevel_prev' => {},
                'toplevel_up' => {}
              }
            }
          ],
          'section_level' => 0,
          'section_up' => {}
        }
      }
    ],
    'section_level' => -1
  }
};
$result_sectioning{'seeentry'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'seeentry'}{'structure'}{'section_childs'}[0];
$result_sectioning{'seeentry'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_prev'} = $result_sectioning{'seeentry'}{'structure'}{'section_childs'}[0];
$result_sectioning{'seeentry'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_up'} = $result_sectioning{'seeentry'}{'structure'}{'section_childs'}[0];
$result_sectioning{'seeentry'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'seeentry'};

$result_nodes{'seeentry'} = {
  'cmdname' => 'node',
  'extra' => {
    'associated_section' => {
      'cmdname' => 'top',
      'extra' => {},
      'structure' => {}
    },
    'normalized' => 'Top'
  },
  'structure' => {
    'node_next' => {
      'cmdname' => 'node',
      'extra' => {
        'associated_section' => {
          'cmdname' => 'chapter',
          'extra' => {},
          'structure' => {
            'section_number' => 1
          }
        },
        'isindex' => 1,
        'normalized' => 'chapter-index'
      },
      'structure' => {
        'node_prev' => {},
        'node_up' => {}
      }
    }
  }
};
$result_nodes{'seeentry'}{'structure'}{'node_next'}{'structure'}{'node_prev'} = $result_nodes{'seeentry'};
$result_nodes{'seeentry'}{'structure'}{'node_next'}{'structure'}{'node_up'} = $result_nodes{'seeentry'};

$result_menus{'seeentry'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  },
  'structure' => {}
};

$result_errors{'seeentry'} = [];


$result_floats{'seeentry'} = {};



$result_converted{'docbook'}->{'seeentry'} = '<chapter label="1" id="chapter-index">
<title>Index</title>

<indexterm role="cp"><primary>aaa</primary><see>bbb</see></indexterm>
<indexterm role="cp"><primary>ddd</primary><seealso>ccc</seealso></indexterm>

<indexterm role="fn"><primary>f&#8212;aaa</primary><see>f&#8212;bbb</see></indexterm>
<indexterm role="fn"><primary>f&#8212;ddd</primary><seealso>f&#8212;ccc</seealso></indexterm>

<index role="cp"></index>
<index role="fn"></index>
</chapter>
';


$result_converted{'info'}->{'seeentry'} = 'This is , produced from .


File: ,  Node: Top,  Next: chapter index,  Up: (dir)

* Menu:

* chapter index::


File: ,  Node: chapter index,  Prev: Top,  Up: Top

1 Index
*******



Tag Table:
Node: Top27
Node: chapter index111

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'plaintext'}->{'seeentry'} = '1 Index
*******

';


$result_converted{'html_text'}->{'seeentry'} = '<div class="top-level-extent" id="Top">
<div class="nav-panel">
<p>
 &nbsp; [<a href="#chapter-index" title="Index" rel="index">Index</a>]</p>
</div>
<a class="top" id="SEC_Top"></a>
<ul class="mini-toc">
<li><a href="#chapter-index" accesskey="1">Index</a></li>
</ul>
<hr>
<div class="chapter-level-extent" id="chapter-index">
<div class="nav-panel">
<p>
 &nbsp; [<a href="#chapter-index" title="Index" rel="index">Index</a>]</p>
</div>
<h2 class="chapter" id="Index">1 Index</h2>



</div>
</div>
';


$result_converted{'file_latex'}->{'seeentry'} = '\\documentclass{book}
\\usepackage{amsfonts}
\\usepackage{amsmath}
\\usepackage[gen]{eurosym}
\\usepackage[T1]{fontenc}
\\usepackage{textcomp}
\\usepackage{graphicx}
\\usepackage{etoolbox}
\\usepackage{titleps}
\\usepackage{float}
% use hidelinks to remove boxes around links to be similar with Texinfo TeX
\\usepackage[hidelinks]{hyperref}
\\usepackage[utf8]{inputenc}

\\makeatletter
\\newcommand{\\GNUTexinfosettitle}{No Title}%

% redefine the \\mainmatter command such that it does not clear page
% as if in double page
\\renewcommand\\mainmatter{\\clearpage\\@mainmattertrue\\pagenumbering{arabic}}
% add command aliases to use the same command in book and report
\\newcommand\\GNUTexinfomainmatter{\\mainmatter}
\\newcommand\\GNUTexinfofrontmatter{\\frontmatter}
\\newenvironment{GNUTexinfopreformatted}{%
  \\par\\obeylines\\obeyspaces\\frenchspacing
  \\parskip=\\z@\\parindent=\\z@}{}
\\newenvironment{GNUTexinfoindented}
  {\\begin{list}{}{}
  \\item\\relax}
  {\\end{list}}
% command that does nothing used to help with substitutions in commands
\\newcommand{\\GNUTexinfoplaceholder}[1]{}

% plain page style, for part and chapter, which call \\thispagestyle{plain}
\\renewpagestyle{plain}{\\sethead[\\thepage{}][][]
                             {}{}{\\thepage{}}}

% single header
\\newpagestyle{single}{\\sethead[\\chaptername{} \\thechapter{} \\chaptertitle{}][][\\thepage]
                              {\\chaptername{} \\thechapter{} \\chaptertitle{}}{}{\\thepage}}

% called when setting single headers
\\newcommand{\\GNUTexinfosetsingleheader}{\\pagestyle{single}}

% double header
\\newpagestyle{double}{\\sethead[\\thepage{}][][\\GNUTexinfosettitle]
                              {\\chaptername{} \\thechapter{} \\chaptertitle{}}{}{\\thepage}}

% called when setting double headers
\\newcommand{\\GNUTexinfosetdoubleheader}{\\pagestyle{double}}


% avoid pagebreak and headings setting for a sectionning command
\\newcommand{\\GNUTexinfonopagebreakheading}[2]{{\\let\\clearpage\\relax \\let\\cleardoublepage\\relax \\let\\thispagestyle\\GNUTexinfoplaceholder #1{#2}}}

\\renewcommand{\\includegraphics}[1]{\\fbox{FIG \\detokenize{#1}}}

\\makeatother
% set default for @setchapternewpage
\\makeatletter
\\patchcmd{\\chapter}{\\if@openright\\cleardoublepage\\else\\clearpage\\fi}{\\GNUTexinfoplaceholder{setchapternewpage placeholder}\\clearpage}{}{}
\\makeatother
\\GNUTexinfosetsingleheader{}%

\\begin{document}
\\label{anchor:Top}%
\\chapter{{Index}}
\\label{anchor:chapter-index}%

\\index[cp]{aaa|see{bbb}}%
\\index[cp]{ddd|seealso{ccc}}%

\\index[fn]{f--aaa@\\texttt{f{-}{-}{-}aaa}|see{f---bbb}}%
\\index[fn]{f--ddd@\\texttt{f{-}{-}{-}ddd}|seealso{f---ccc}}%

\\end{document}
';

1;
