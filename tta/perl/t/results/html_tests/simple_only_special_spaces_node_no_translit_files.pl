use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'simple_only_special_spaces_node_no_translit_files'} = {
  "contents" => [
    {
      "contents" => [
        {
          "type" => "preamble_before_content"
        }
      ],
      "type" => "before_node_section"
    },
    {
      "cmdname" => "node",
      "contents" => [
        {
          "contents" => [
            {
              "contents" => [
                {
                  "text" => "Top"
                }
              ],
              "info" => {
                "spaces_after_argument" => {
                  "text" => "\n"
                }
              },
              "type" => "line_arg"
            }
          ],
          "type" => "arguments_line"
        }
      ],
      "extra" => {
        "is_target" => 1,
        "normalized" => "Top"
      },
      "info" => {
        "spaces_before_argument" => {
          "text" => " "
        }
      },
      "source_info" => {
        "file_name" => "simple_only_special_spaces_node.texi",
        "line_nr" => 1
      }
    },
    {
      "cmdname" => "top",
      "contents" => [
        {
          "contents" => [
            {
              "contents" => [
                {
                  "text" => "top"
                }
              ],
              "info" => {
                "spaces_after_argument" => {
                  "text" => "\n"
                }
              },
              "type" => "line_arg"
            }
          ],
          "type" => "arguments_line"
        },
        {
          "text" => "\n",
          "type" => "empty_line"
        }
      ],
      "extra" => {},
      "info" => {
        "spaces_before_argument" => {
          "text" => " "
        }
      },
      "source_info" => {
        "file_name" => "simple_only_special_spaces_node.texi",
        "line_nr" => 2
      }
    },
    {
      "cmdname" => "node",
      "contents" => [
        {
          "contents" => [
            {
              "contents" => [
                {
                  "text" => "\x{2000}\x{2001}"
                }
              ],
              "info" => {
                "spaces_after_argument" => {
                  "text" => "\n"
                }
              },
              "type" => "line_arg"
            }
          ],
          "type" => "arguments_line"
        }
      ],
      "extra" => {
        "is_target" => 1,
        "normalized" => "_2002_2003"
      },
      "info" => {
        "spaces_before_argument" => {
          "text" => " "
        }
      },
      "source_info" => {
        "file_name" => "simple_only_special_spaces_node.texi",
        "line_nr" => 4
      }
    },
    {
      "cmdname" => "chapter",
      "contents" => [
        {
          "contents" => [
            {
              "contents" => [
                {
                  "text" => "EN QUAD|\x{2000}|"
                }
              ],
              "info" => {
                "spaces_after_argument" => {
                  "text" => "\n"
                }
              },
              "type" => "line_arg"
            }
          ],
          "type" => "arguments_line"
        },
        {
          "text" => "\n",
          "type" => "empty_line"
        }
      ],
      "extra" => {
        "section_number" => 1
      },
      "info" => {
        "spaces_before_argument" => {
          "text" => " "
        }
      },
      "source_info" => {
        "file_name" => "simple_only_special_spaces_node.texi",
        "line_nr" => 5
      }
    },
    {
      "cmdname" => "node",
      "contents" => [
        {
          "contents" => [
            {
              "info" => {
                "spaces_after_argument" => {
                  "text" => " \r\n"
                }
              },
              "type" => "line_arg"
            }
          ],
          "type" => "arguments_line"
        }
      ],
      "extra" => {},
      "source_info" => {
        "file_name" => "simple_only_special_spaces_node.texi",
        "line_nr" => 7
      }
    },
    {
      "cmdname" => "chapter",
      "contents" => [
        {
          "contents" => [
            {
              "contents" => [
                {
                  "text" => "CARRIAGE RETURN|\r|"
                }
              ],
              "info" => {
                "spaces_after_argument" => {
                  "text" => "\n"
                }
              },
              "type" => "line_arg"
            }
          ],
          "type" => "arguments_line"
        },
        {
          "text" => "\n",
          "type" => "empty_line"
        }
      ],
      "extra" => {
        "section_number" => 2
      },
      "info" => {
        "spaces_before_argument" => {
          "text" => " "
        }
      },
      "source_info" => {
        "file_name" => "simple_only_special_spaces_node.texi",
        "line_nr" => 8
      }
    },
    {
      "cmdname" => "node",
      "contents" => [
        {
          "contents" => [
            {
              "contents" => [
                {
                  "text" => "\x{2004}\x{2005}"
                }
              ],
              "info" => {
                "spaces_after_argument" => {
                  "text" => "\n"
                }
              },
              "type" => "line_arg"
            }
          ],
          "type" => "arguments_line"
        }
      ],
      "extra" => {
        "is_target" => 1,
        "normalized" => "_2004_2005"
      },
      "info" => {
        "spaces_before_argument" => {
          "text" => " "
        }
      },
      "source_info" => {
        "file_name" => "simple_only_special_spaces_node.texi",
        "line_nr" => 10
      }
    },
    {
      "cmdname" => "chapter",
      "contents" => [
        {
          "contents" => [
            {
              "contents" => [
                {
                  "text" => "THREE-PER-EM SPACE"
                }
              ],
              "info" => {
                "spaces_after_argument" => {
                  "text" => "\n"
                }
              },
              "type" => "line_arg"
            }
          ],
          "type" => "arguments_line"
        },
        {
          "text" => "\n",
          "type" => "empty_line"
        }
      ],
      "extra" => {
        "section_number" => 3
      },
      "info" => {
        "spaces_before_argument" => {
          "text" => " "
        }
      },
      "source_info" => {
        "file_name" => "simple_only_special_spaces_node.texi",
        "line_nr" => 11
      }
    }
  ],
  "type" => "document_root"
};

$result_texis{'simple_only_special_spaces_node_no_translit_files'} = '@node Top
@top top

@node   
@chapter EN QUAD| |

@node '."\r".'
@chapter CARRIAGE RETURN|'."\r".'|

@node   
@chapter THREE-PER-EM SPACE

';


$result_texts{'simple_only_special_spaces_node_no_translit_files'} = 'top
***

1 EN QUAD| |
************

2 CARRIAGE RETURN|'."\r".'|
*******************

3 THREE-PER-EM SPACE
********************

';

$result_sectioning{'simple_only_special_spaces_node_no_translit_files'} = {
  'extra' => {
    'section_childs' => [
      {
        'cmdname' => 'top',
        'extra' => {
          'associated_node' => {
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'Top'
            }
          },
          'section_childs' => [
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => '_2002_2003'
                  }
                },
                'section_directions' => {
                  'up' => {}
                },
                'section_level' => 1,
                'section_number' => '1',
                'toplevel_directions' => {
                  'prev' => {},
                  'up' => {}
                }
              }
            },
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {}
                },
                'section_directions' => {
                  'prev' => {},
                  'up' => {}
                },
                'section_level' => 1,
                'section_number' => '2',
                'toplevel_directions' => {
                  'prev' => {},
                  'up' => {}
                }
              }
            },
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => '_2004_2005'
                  }
                },
                'section_directions' => {
                  'prev' => {},
                  'up' => {}
                },
                'section_level' => 1,
                'section_number' => '3',
                'toplevel_directions' => {
                  'prev' => {},
                  'up' => {}
                }
              }
            }
          ],
          'section_level' => 0,
          'sectioning_root' => {},
          'toplevel_directions' => {}
        }
      }
    ],
    'section_level' => -1
  }
};
$result_sectioning{'simple_only_special_spaces_node_no_translit_files'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'simple_only_special_spaces_node_no_translit_files'}{'extra'}{'section_childs'}[0];
$result_sectioning{'simple_only_special_spaces_node_no_translit_files'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'simple_only_special_spaces_node_no_translit_files'}{'extra'}{'section_childs'}[0];
$result_sectioning{'simple_only_special_spaces_node_no_translit_files'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'simple_only_special_spaces_node_no_translit_files'}{'extra'}{'section_childs'}[0];
$result_sectioning{'simple_only_special_spaces_node_no_translit_files'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'simple_only_special_spaces_node_no_translit_files'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'simple_only_special_spaces_node_no_translit_files'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'simple_only_special_spaces_node_no_translit_files'}{'extra'}{'section_childs'}[0];
$result_sectioning{'simple_only_special_spaces_node_no_translit_files'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'simple_only_special_spaces_node_no_translit_files'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'simple_only_special_spaces_node_no_translit_files'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'simple_only_special_spaces_node_no_translit_files'}{'extra'}{'section_childs'}[0];
$result_sectioning{'simple_only_special_spaces_node_no_translit_files'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[2]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'simple_only_special_spaces_node_no_translit_files'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1];
$result_sectioning{'simple_only_special_spaces_node_no_translit_files'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[2]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'simple_only_special_spaces_node_no_translit_files'}{'extra'}{'section_childs'}[0];
$result_sectioning{'simple_only_special_spaces_node_no_translit_files'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[2]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'simple_only_special_spaces_node_no_translit_files'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1];
$result_sectioning{'simple_only_special_spaces_node_no_translit_files'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[2]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'simple_only_special_spaces_node_no_translit_files'}{'extra'}{'section_childs'}[0];
$result_sectioning{'simple_only_special_spaces_node_no_translit_files'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'simple_only_special_spaces_node_no_translit_files'};

$result_nodes{'simple_only_special_spaces_node_no_translit_files'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'associated_section' => {
        'cmdname' => 'top',
        'extra' => {}
      },
      'node_directions' => {
        'next' => {
          'cmdname' => 'node',
          'extra' => {
            'associated_section' => {
              'cmdname' => 'chapter',
              'extra' => {
                'section_number' => '1'
              }
            },
            'node_directions' => {
              'next' => {
                'cmdname' => 'node',
                'extra' => {
                  'associated_section' => {
                    'cmdname' => 'chapter',
                    'extra' => {
                      'section_number' => '2'
                    }
                  }
                }
              },
              'prev' => {},
              'up' => {}
            },
            'normalized' => '_2002_2003'
          }
        }
      },
      'normalized' => 'Top'
    }
  },
  {},
  {
    'cmdname' => 'node',
    'extra' => {
      'associated_section' => {
        'cmdname' => 'chapter',
        'extra' => {
          'section_number' => '3'
        }
      },
      'node_directions' => {
        'prev' => {},
        'up' => {}
      },
      'normalized' => '_2004_2005'
    }
  }
];
$result_nodes{'simple_only_special_spaces_node_no_translit_files'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'simple_only_special_spaces_node_no_translit_files'}[0];
$result_nodes{'simple_only_special_spaces_node_no_translit_files'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'simple_only_special_spaces_node_no_translit_files'}[0];
$result_nodes{'simple_only_special_spaces_node_no_translit_files'}[1] = $result_nodes{'simple_only_special_spaces_node_no_translit_files'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'simple_only_special_spaces_node_no_translit_files'}[2]{'extra'}{'node_directions'}{'prev'} = $result_nodes{'simple_only_special_spaces_node_no_translit_files'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'simple_only_special_spaces_node_no_translit_files'}[2]{'extra'}{'node_directions'}{'up'} = $result_nodes{'simple_only_special_spaces_node_no_translit_files'}[0];

$result_menus{'simple_only_special_spaces_node_no_translit_files'} = [
  {
    'extra' => {
      'normalized' => 'Top'
    }
  },
  {
    'extra' => {
      'normalized' => '_2002_2003'
    }
  },
  {
    'extra' => {
      'normalized' => '_2004_2005'
    }
  }
];

$result_errors{'simple_only_special_spaces_node_no_translit_files'} = [
  {
    'error_line' => 'empty argument in @node
',
    'file_name' => 'simple_only_special_spaces_node.texi',
    'line_nr' => 7,
    'text' => 'empty argument in @node',
    'type' => 'error'
  }
];


$result_floats{'simple_only_special_spaces_node_no_translit_files'} = {};


1;
