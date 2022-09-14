use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'enumerate_and_empty_lines'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'contents' => [],
              'extra' => {
                'spaces_after_argument' => '
'
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'enumerate',
          'contents' => [
            {
              'cmdname' => 'item',
              'contents' => [
                {
                  'parent' => {},
                  'text' => ' ',
                  'type' => 'ignorable_spaces_after_command'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'first item
'
                    }
                  ],
                  'parent' => {},
                  'type' => 'paragraph'
                }
              ],
              'extra' => {
                'item_number' => 1
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 2,
                'macro' => ''
              }
            },
            {
              'cmdname' => 'item',
              'contents' => [
                {
                  'parent' => {},
                  'text' => ' 
',
                  'type' => 'ignorable_spaces_after_command'
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
                      'type' => 'block_line_arg'
                    }
                  ],
                  'cmdname' => 'example',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'In example
'
                        },
                        {
                          'parent' => {},
                          'text' => '
',
                          'type' => 'empty_line'
                        },
                        {
                          'parent' => {},
                          'text' => 'end example.
'
                        }
                      ],
                      'parent' => {},
                      'type' => 'preformatted'
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'example'
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
                        'text_arg' => 'example'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 8,
                        'macro' => ''
                      }
                    }
                  ],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 4,
                    'macro' => ''
                  }
                }
              ],
              'extra' => {
                'item_number' => 2
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 3,
                'macro' => ''
              }
            },
            {
              'cmdname' => 'item',
              'contents' => [
                {
                  'parent' => {},
                  'text' => ' 
',
                  'type' => 'ignorable_spaces_after_command'
                },
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
                      'text' => 'empty line.
'
                    }
                  ],
                  'parent' => {},
                  'type' => 'paragraph'
                }
              ],
              'extra' => {
                'item_number' => 3
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 9,
                'macro' => ''
              }
            },
            {
              'cmdname' => 'item',
              'contents' => [
                {
                  'parent' => {},
                  'text' => '
',
                  'type' => 'ignorable_spaces_after_command'
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
                        'spaces_after_argument' => '
'
                      },
                      'parent' => {},
                      'type' => 'block_line_arg'
                    }
                  ],
                  'cmdname' => 'example',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'In second example
'
                        }
                      ],
                      'parent' => {},
                      'type' => 'preformatted'
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'example'
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
                        'text_arg' => 'example'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 16,
                        'macro' => ''
                      }
                    }
                  ],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 14,
                    'macro' => ''
                  }
                }
              ],
              'extra' => {
                'item_number' => 4
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 12,
                'macro' => ''
              }
            },
            {
              'cmdname' => 'item',
              'contents' => [
                {
                  'parent' => {},
                  'text' => ' 
',
                  'type' => 'ignorable_spaces_after_command'
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
                      'type' => 'block_line_arg'
                    }
                  ],
                  'cmdname' => 'quotation',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'Quotation
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
                        'line_nr' => 20,
                        'macro' => ''
                      }
                    }
                  ],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 18,
                    'macro' => ''
                  }
                },
                {
                  'parent' => {},
                  'text' => '
',
                  'type' => 'empty_line'
                }
              ],
              'extra' => {
                'item_number' => 5
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 17,
                'macro' => ''
              }
            },
            {
              'cmdname' => 'item',
              'contents' => [
                {
                  'parent' => {},
                  'text' => '
',
                  'type' => 'ignorable_spaces_after_command'
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
                        'spaces_after_argument' => '
'
                      },
                      'parent' => {},
                      'type' => 'block_line_arg'
                    }
                  ],
                  'cmdname' => 'quotation',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'quotation after a blank line
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
                        'line_nr' => 26,
                        'macro' => ''
                      }
                    }
                  ],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 24,
                    'macro' => ''
                  }
                }
              ],
              'extra' => {
                'item_number' => 6
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 22,
                'macro' => ''
              }
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'enumerate'
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
                'text_arg' => 'enumerate'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 27,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'enumerate_specification' => '1'
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
              'contents' => [],
              'extra' => {
                'spaces_after_argument' => '
'
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'enumerate',
          'contents' => [
            {
              'cmdname' => 'item',
              'contents' => [
                {
                  'parent' => {},
                  'text' => ' ',
                  'type' => 'ignorable_spaces_after_command'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa fffffffff ggggggggg vvvvvvvvv ggggggggg h
'
                    }
                  ],
                  'parent' => {},
                  'type' => 'paragraph'
                }
              ],
              'extra' => {
                'item_number' => 1
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 30,
                'macro' => ''
              }
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'enumerate'
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
                'text_arg' => 'enumerate'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 31,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'enumerate_specification' => '1'
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 29,
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
$result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0];
$result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0];
$result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[1];
$result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0];
$result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2];
$result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0];
$result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[3];
$result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[3];
$result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[2];
$result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[2]{'contents'}[0];
$result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[2];
$result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[2]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[2]{'contents'}[1];
$result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[2];
$result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[2]{'parent'} = $result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[3];
$result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0];
$result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[4];
$result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[1];
$result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[1]{'contents'}[0];
$result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[1];
$result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[1]{'contents'}[1];
$result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[1];
$result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[4];
$result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[2]{'parent'} = $result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[4];
$result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0];
$result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'contents'}[0]{'parent'} = $result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[5];
$result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'contents'}[1]{'parent'} = $result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[5];
$result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'contents'}[2];
$result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'contents'}[2]{'contents'}[0];
$result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'contents'}[2];
$result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'contents'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'contents'}[2]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'contents'}[2]{'contents'}[1];
$result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'contents'}[2];
$result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'contents'}[2]{'parent'} = $result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[5];
$result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0];
$result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'args'}[0];
$result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[6];
$result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'parent'} = $result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0];
$result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'enumerate_and_empty_lines'}{'contents'}[0];
$result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'enumerate_and_empty_lines'}{'contents'}[0];
$result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[2];
$result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[1];
$result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[2];
$result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[2];
$result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'enumerate_and_empty_lines'}{'contents'}[0];
$result_trees{'enumerate_and_empty_lines'}{'contents'}[0]{'parent'} = $result_trees{'enumerate_and_empty_lines'};

$result_texis{'enumerate_and_empty_lines'} = '@enumerate
@item first item
@item 
@example
In example

end example.
@end example
@item 

empty line.
@item

@example
In second example
@end example
@item 
@quotation
Quotation
@end quotation

@item

@quotation
quotation after a blank line
@end quotation
@end enumerate

@enumerate
@item aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa fffffffff ggggggggg vvvvvvvvv ggggggggg h
@end enumerate
';


$result_texts{'enumerate_and_empty_lines'} = '1. first item
2. In example

end example.
3. 
empty line.
4. 
In second example
5. Quotation

6. 
quotation after a blank line

1. aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa fffffffff ggggggggg vvvvvvvvv ggggggggg h
';

$result_errors{'enumerate_and_empty_lines'} = [];


$result_floats{'enumerate_and_empty_lines'} = {};



$result_converted{'plaintext'}->{'enumerate_and_empty_lines'} = '  1. first item
  2.      In example

          end example.
  3. 
     empty line.
  4. 
          In second example
  5.      Quotation

  6. 
          quotation after a blank line

  1. aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa fffffffff ggggggggg
     vvvvvvvvv ggggggggg h
';


$result_converted{'html_text'}->{'enumerate_and_empty_lines'} = '<ol class="enumerate">
<li> first item
</li><li> <div class="example">
<pre class="example-preformatted">In example

end example.
</pre></div>
</li><li> 
empty line.
</li><li> 
<div class="example">
<pre class="example-preformatted">In second example
</pre></div>
</li><li> <blockquote class="quotation">
<p>Quotation
</p></blockquote>

</li><li> 
<blockquote class="quotation">
<p>quotation after a blank line
</p></blockquote>
</li></ol>

<ol class="enumerate">
<li> aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa fffffffff ggggggggg vvvvvvvvv ggggggggg h
</li></ol>
';

1;
