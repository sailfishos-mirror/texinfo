use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'verbatim_and_verbatiminclude'} = {
  'contents' => [
    {
      'contents' => [
        {
          'cmdname' => 'verbatim',
          'contents' => [
            {
              'extra' => {
                'spaces_associated_command' => {}
              },
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line_after_command'
            },
            {
              'parent' => {},
              'text' => 'In verbatim                @@                        aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa       bbbbbbbbbbbbbb
',
              'type' => 'raw'
            }
          ],
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
          'type' => 'empty_line_after_command'
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
              'text' => 'Text before
'
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
        },
        {
          'cmdname' => 'verbatim',
          'contents' => [
            {
              'extra' => {
                'spaces_associated_command' => {}
              },
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line_after_command'
            },
            {
              'parent' => {},
              'text' => 'in verbatime
',
              'type' => 'raw'
            }
          ],
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 6,
            'macro' => ''
          }
        },
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line_after_command'
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'Text after
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
                  'text' => 'In quotation
'
                }
              ],
              'parent' => {},
              'type' => 'paragraph'
            },
            {
              'cmdname' => 'verbatim',
              'contents' => [
                {
                  'extra' => {
                    'spaces_associated_command' => {}
                  },
                  'parent' => {},
                  'text' => '
',
                  'type' => 'empty_line_after_command'
                },
                {
                  'parent' => {},
                  'text' => 'In verbatim in quotation
',
                  'type' => 'raw'
                },
                {
                  'parent' => {},
                  'text' => 'In verbatim                @@                        aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa       bbbbbbbbbbbbbb
',
                  'type' => 'raw'
                }
              ],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 13,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line_after_command'
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
                'command_argument' => 'quotation',
                'spaces_before_argument' => ' ',
                'text_arg' => 'quotation'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 17,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'end_command' => {}
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 11,
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
          'contents' => [
            {
              'parent' => {},
              'text' => 'Before
'
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
        },
        {
          'cmdname' => 'verbatim',
          'contents' => [
            {
              'extra' => {
                'spaces_associated_command' => {}
              },
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line_after_command'
            },
            {
              'parent' => {},
              'text' => 'In verbatim test text
',
              'type' => 'raw'
            }
          ],
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 20,
            'macro' => ''
          }
        },
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line_after_command'
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'After
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
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'verb.txt'
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
          'cmdname' => 'verbatiminclude',
          'extra' => {
            'input_perl_encoding' => 'utf-8',
            'spaces_before_argument' => ' ',
            'text_arg' => 'verb.txt'
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 25,
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
          'cmdname' => 'quotation',
          'contents' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'In quotation include 
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
                      'text' => 'verb.txt'
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
              'cmdname' => 'verbatiminclude',
              'extra' => {
                'input_perl_encoding' => 'utf-8',
                'spaces_before_argument' => ' ',
                'text_arg' => 'verb.txt'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 29,
                'macro' => ''
              }
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
                'command_argument' => 'quotation',
                'spaces_before_argument' => ' ',
                'text_arg' => 'quotation'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 30,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'end_command' => {}
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 27,
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
          'contents' => [
            {
              'parent' => {},
              'text' => 'Before include
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
                  'text' => 'verb.txt'
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
          'cmdname' => 'verbatiminclude',
          'extra' => {
            'input_perl_encoding' => 'utf-8',
            'spaces_before_argument' => ' ',
            'text_arg' => 'verb.txt'
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 33,
            'macro' => ''
          }
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'After
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
                }
              ],
              'parent' => {},
              'type' => 'preformatted'
            },
            {
              'cmdname' => 'verbatim',
              'contents' => [
                {
                  'extra' => {
                    'spaces_associated_command' => {}
                  },
                  'parent' => {},
                  'text' => '
',
                  'type' => 'empty_line_after_command'
                },
                {
                  'parent' => {},
                  'text' => 'In verbatim in example
',
                  'type' => 'raw'
                },
                {
                  'parent' => {},
                  'text' => 'In verbatim                @@                        aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa       bbbbbbbbbbbbbb
',
                  'type' => 'raw'
                }
              ],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 39,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line_after_command'
            },
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => '
',
                  'type' => 'empty_line'
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
                'command_argument' => 'example',
                'spaces_before_argument' => ' ',
                'text_arg' => 'example'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 44,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'end_command' => {}
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 36,
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
          'cmdname' => 'quotation',
          'contents' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'In quotation with spaces
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
              'cmdname' => 'verbatim',
              'contents' => [
                {
                  'extra' => {
                    'spaces_associated_command' => {}
                  },
                  'parent' => {},
                  'text' => '
',
                  'type' => 'empty_line_after_command'
                },
                {
                  'parent' => {},
                  'text' => 'In verbatim in quotation with spaces
',
                  'type' => 'raw'
                },
                {
                  'parent' => {},
                  'text' => 'In verbatim                @@                        aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa       bbbbbbbbbbbbbb
',
                  'type' => 'raw'
                }
              ],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 49,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line_after_command'
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
                'command_argument' => 'quotation',
                'spaces_before_argument' => ' ',
                'text_arg' => 'quotation'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 54,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'end_command' => {}
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 46,
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
          'cmdname' => 'quotation',
          'contents' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'In quotation 
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
              'cmdname' => 'verbatim',
              'contents' => [
                {
                  'extra' => {
                    'spaces_associated_command' => {}
                  },
                  'parent' => {},
                  'text' => '
',
                  'type' => 'empty_line_after_command'
                },
                {
                  'parent' => {},
                  'text' => 'In verbatim in quotation
',
                  'type' => 'raw'
                }
              ],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 59,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line_after_command'
            },
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'in quotation after end verbaatim
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
                'command_argument' => 'quotation',
                'spaces_before_argument' => ' ',
                'text_arg' => 'quotation'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 63,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'end_command' => {}
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 56,
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
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'spaces_associated_command'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[0];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[0];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[0];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[3];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'extra'}{'spaces_associated_command'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[4];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[4];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[4];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[6];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[6]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[7]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[8]{'args'}[0]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[8];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[8]{'contents'}[0];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[8];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[8]{'contents'}[1]{'contents'}[0]{'extra'}{'spaces_associated_command'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[8]{'contents'}[1];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[8]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[8]{'contents'}[1];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[8]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[8]{'contents'}[1];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[8]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[8]{'contents'}[1];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[8]{'contents'}[1]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[8];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[8]{'contents'}[2]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[8];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[8]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[8]{'contents'}[3]{'args'}[0];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[8]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[8]{'contents'}[3];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[8]{'contents'}[3]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[8];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[8]{'extra'}{'end_command'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[8]{'contents'}[3];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[8]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[9]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[10];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[10]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[11]{'contents'}[0]{'extra'}{'spaces_associated_command'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[11];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[11]{'contents'}[0]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[11];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[11]{'contents'}[1]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[11];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[11]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[12]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[13]{'contents'}[0]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[13];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[13]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[14]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[15]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[15]{'args'}[0];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[15]{'args'}[0]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[15];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[15]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[16]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[17]{'args'}[0]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[17];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[17]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[17]{'contents'}[0];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[17]{'contents'}[0]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[17];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[17]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[17]{'contents'}[1]{'args'}[0];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[17]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[17]{'contents'}[1];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[17]{'contents'}[1]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[17];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[17]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[17]{'contents'}[2]{'args'}[0];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[17]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[17]{'contents'}[2];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[17]{'contents'}[2]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[17];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[17]{'extra'}{'end_command'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[17]{'contents'}[2];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[17]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[18]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[19]{'contents'}[0]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[19];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[19]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[20]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[20]{'args'}[0];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[20]{'args'}[0]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[20];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[20]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[21]{'contents'}[0]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[21];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[21]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[22]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[23]{'args'}[0]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[23];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[23]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[23]{'contents'}[0];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[23]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[23]{'contents'}[0];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[23]{'contents'}[0]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[23];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[23]{'contents'}[1]{'contents'}[0]{'extra'}{'spaces_associated_command'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[23]{'contents'}[1];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[23]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[23]{'contents'}[1];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[23]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[23]{'contents'}[1];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[23]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[23]{'contents'}[1];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[23]{'contents'}[1]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[23];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[23]{'contents'}[2]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[23];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[23]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[23]{'contents'}[3];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[23]{'contents'}[3]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[23];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[23]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[23]{'contents'}[4]{'args'}[0];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[23]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[23]{'contents'}[4];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[23]{'contents'}[4]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[23];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[23]{'extra'}{'end_command'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[23]{'contents'}[4];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[23]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[24]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[25]{'args'}[0]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[25];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[25]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[25]{'contents'}[0];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[25]{'contents'}[0]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[25];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[25]{'contents'}[1]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[25];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[25]{'contents'}[2]{'contents'}[0]{'extra'}{'spaces_associated_command'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[25]{'contents'}[2];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[25]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[25]{'contents'}[2];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[25]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[25]{'contents'}[2];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[25]{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[25]{'contents'}[2];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[25]{'contents'}[2]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[25];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[25]{'contents'}[3]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[25];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[25]{'contents'}[4]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[25];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[25]{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[25]{'contents'}[5]{'args'}[0];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[25]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[25]{'contents'}[5];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[25]{'contents'}[5]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[25];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[25]{'extra'}{'end_command'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[25]{'contents'}[5];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[25]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[26]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[27]{'args'}[0]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[27];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[27]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[27]{'contents'}[0];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[27]{'contents'}[0]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[27];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[27]{'contents'}[1]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[27];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[27]{'contents'}[2]{'contents'}[0]{'extra'}{'spaces_associated_command'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[27]{'contents'}[2];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[27]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[27]{'contents'}[2];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[27]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[27]{'contents'}[2];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[27]{'contents'}[2]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[27];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[27]{'contents'}[3]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[27];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[27]{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[27]{'contents'}[4];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[27]{'contents'}[4]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[27];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[27]{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[27]{'contents'}[5]{'args'}[0];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[27]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[27]{'contents'}[5];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[27]{'contents'}[5]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[27];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[27]{'extra'}{'end_command'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[27]{'contents'}[5];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'contents'}[27]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0];
$result_trees{'verbatim_and_verbatiminclude'}{'contents'}[0]{'parent'} = $result_trees{'verbatim_and_verbatiminclude'};

$result_texis{'verbatim_and_verbatiminclude'} = '@verbatim
In verbatim                @@                        aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa       bbbbbbbbbbbbbb
@end verbatim

Text before
@verbatim
in verbatime
@end verbatim
Text after

@quotation
In quotation
@verbatim
In verbatim in quotation
In verbatim                @@                        aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa       bbbbbbbbbbbbbb
@end verbatim
@end quotation

Before
@verbatim
In verbatim test text
@end verbatim
After

@verbatiminclude verb.txt

@quotation
In quotation include 
@verbatiminclude verb.txt
@end quotation

Before include
@verbatiminclude verb.txt
After

@example
In example

@verbatim
In verbatim in example
In verbatim                @@                        aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa       bbbbbbbbbbbbbb
@end verbatim

@end example

@quotation
In quotation with spaces

@verbatim
In verbatim in quotation with spaces
In verbatim                @@                        aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa       bbbbbbbbbbbbbb
@end verbatim

@end quotation

@quotation
In quotation 

@verbatim
In verbatim in quotation
@end verbatim
in quotation after end verbaatim
@end quotation
';


$result_texts{'verbatim_and_verbatiminclude'} = 'In verbatim                @@                        aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa       bbbbbbbbbbbbbb

Text before
in verbatime
Text after

In quotation
In verbatim in quotation
In verbatim                @@                        aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa       bbbbbbbbbbbbbb

Before
In verbatim test text
After


In quotation include 

Before include
After

In example

In verbatim in example
In verbatim                @@                        aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa       bbbbbbbbbbbbbb


In quotation with spaces

In verbatim in quotation with spaces
In verbatim                @@                        aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa       bbbbbbbbbbbbbb


In quotation 

In verbatim in quotation
in quotation after end verbaatim
';

$result_errors{'verbatim_and_verbatiminclude'} = [];


$result_floats{'verbatim_and_verbatiminclude'} = {};



$result_converted{'plaintext'}->{'verbatim_and_verbatiminclude'} = 'In verbatim                @@                        aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa       bbbbbbbbbbbbbb

   Text before
in verbatime
   Text after

     In quotation
     In verbatim in quotation
     In verbatim                @@                        aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa       bbbbbbbbbbbbbb

   Before
In verbatim test text
   After

     In quotation include

   Before include
   After

     In example

     In verbatim in example
     In verbatim                @@                        aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa       bbbbbbbbbbbbbb


     In quotation with spaces

     In verbatim in quotation with spaces
     In verbatim                @@                        aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa       bbbbbbbbbbbbbb

     In quotation

     In verbatim in quotation
     in quotation after end verbaatim
';

$result_converted_errors{'plaintext'}->{'verbatim_and_verbatiminclude'} = [
  {
    'error_line' => '@verbatiminclude: could not find verb.txt
',
    'file_name' => '',
    'line_nr' => 25,
    'macro' => '',
    'text' => '@verbatiminclude: could not find verb.txt',
    'type' => 'error'
  },
  {
    'error_line' => '@verbatiminclude: could not find verb.txt
',
    'file_name' => '',
    'line_nr' => 29,
    'macro' => '',
    'text' => '@verbatiminclude: could not find verb.txt',
    'type' => 'error'
  },
  {
    'error_line' => '@verbatiminclude: could not find verb.txt
',
    'file_name' => '',
    'line_nr' => 33,
    'macro' => '',
    'text' => '@verbatiminclude: could not find verb.txt',
    'type' => 'error'
  }
];


1;
