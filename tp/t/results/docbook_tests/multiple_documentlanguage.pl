use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'multiple_documentlanguage'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'ja'
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
          'cmdname' => 'documentlanguage',
          'extra' => {
            'spaces_before_argument' => ' ',
            'text_arg' => 'ja'
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
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 3,
        'macro' => ''
      },
      'parent' => {}
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'top'
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
      'cmdname' => 'top',
      'contents' => [
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'extra' => {
        'spaces_before_argument' => ' '
      },
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 4,
        'macro' => ''
      },
      'parent' => {},
      'structure' => {
        'level' => 0
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'chap'
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
            'normalized' => 'chap'
          }
        ],
        'normalized' => 'chap',
        'spaces_before_argument' => ' '
      },
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 6,
        'macro' => ''
      },
      'parent' => {}
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'Chap no new language'
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
                  'text' => 'fr'
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
          'cmdname' => 'documentlanguage',
          'extra' => {
            'spaces_before_argument' => ' ',
            'text_arg' => 'fr'
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 9,
            'macro' => ''
          },
          'parent' => {}
        }
      ],
      'extra' => {
        'spaces_before_argument' => ' '
      },
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 7,
        'macro' => ''
      },
      'parent' => {},
      'structure' => {
        'level' => 1,
        'number' => 1
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'chapter fr'
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
            'normalized' => 'chapter-fr'
          }
        ],
        'normalized' => 'chapter-fr',
        'spaces_before_argument' => ' '
      },
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 10,
        'macro' => ''
      },
      'parent' => {}
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'chapter fr'
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
                  'text' => 'pt'
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
          'cmdname' => 'documentlanguage',
          'extra' => {
            'spaces_before_argument' => ' ',
            'text_arg' => 'pt'
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 13,
            'macro' => ''
          },
          'parent' => {}
        }
      ],
      'extra' => {
        'spaces_before_argument' => ' '
      },
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 11,
        'macro' => ''
      },
      'parent' => {},
      'structure' => {
        'level' => 1,
        'number' => 2
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'subnode pt'
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
            'normalized' => 'subnode-pt'
          }
        ],
        'normalized' => 'subnode-pt',
        'spaces_before_argument' => ' '
      },
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 14,
        'macro' => ''
      },
      'parent' => {}
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'section pt'
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
      'cmdname' => 'section',
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
                  'text' => 'fr'
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
          'cmdname' => 'documentlanguage',
          'extra' => {
            'spaces_before_argument' => ' ',
            'text_arg' => 'fr'
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 17,
            'macro' => ''
          },
          'parent' => {}
        }
      ],
      'extra' => {
        'spaces_before_argument' => ' '
      },
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 15,
        'macro' => ''
      },
      'parent' => {},
      'structure' => {
        'level' => 2,
        'number' => '2.1'
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'subnode fr'
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
            'normalized' => 'subnode-fr'
          }
        ],
        'normalized' => 'subnode-fr',
        'spaces_before_argument' => ' '
      },
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 18,
        'macro' => ''
      },
      'parent' => {}
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'section fr'
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
      'cmdname' => 'section',
      'contents' => [
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'extra' => {
        'spaces_before_argument' => ' '
      },
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 19,
        'macro' => ''
      },
      'parent' => {},
      'structure' => {
        'level' => 2,
        'number' => '2.2'
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'multiple_documentlanguage'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple_documentlanguage'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'multiple_documentlanguage'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'multiple_documentlanguage'}{'contents'}[0]{'contents'}[0];
$result_trees{'multiple_documentlanguage'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple_documentlanguage'}{'contents'}[0];
$result_trees{'multiple_documentlanguage'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'multiple_documentlanguage'}{'contents'}[0];
$result_trees{'multiple_documentlanguage'}{'contents'}[0]{'parent'} = $result_trees{'multiple_documentlanguage'};
$result_trees{'multiple_documentlanguage'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple_documentlanguage'}{'contents'}[1]{'args'}[0];
$result_trees{'multiple_documentlanguage'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'multiple_documentlanguage'}{'contents'}[1];
$result_trees{'multiple_documentlanguage'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'multiple_documentlanguage'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'multiple_documentlanguage'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'multiple_documentlanguage'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'multiple_documentlanguage'}{'contents'}[1]{'parent'} = $result_trees{'multiple_documentlanguage'};
$result_trees{'multiple_documentlanguage'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple_documentlanguage'}{'contents'}[2]{'args'}[0];
$result_trees{'multiple_documentlanguage'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'multiple_documentlanguage'}{'contents'}[2];
$result_trees{'multiple_documentlanguage'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'multiple_documentlanguage'}{'contents'}[2];
$result_trees{'multiple_documentlanguage'}{'contents'}[2]{'parent'} = $result_trees{'multiple_documentlanguage'};
$result_trees{'multiple_documentlanguage'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple_documentlanguage'}{'contents'}[3]{'args'}[0];
$result_trees{'multiple_documentlanguage'}{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'multiple_documentlanguage'}{'contents'}[3];
$result_trees{'multiple_documentlanguage'}{'contents'}[3]{'extra'}{'node_content'}[0] = $result_trees{'multiple_documentlanguage'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'multiple_documentlanguage'}{'contents'}[3]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'multiple_documentlanguage'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'multiple_documentlanguage'}{'contents'}[3]{'parent'} = $result_trees{'multiple_documentlanguage'};
$result_trees{'multiple_documentlanguage'}{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple_documentlanguage'}{'contents'}[4]{'args'}[0];
$result_trees{'multiple_documentlanguage'}{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'multiple_documentlanguage'}{'contents'}[4];
$result_trees{'multiple_documentlanguage'}{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'multiple_documentlanguage'}{'contents'}[4];
$result_trees{'multiple_documentlanguage'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple_documentlanguage'}{'contents'}[4]{'contents'}[1]{'args'}[0];
$result_trees{'multiple_documentlanguage'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'multiple_documentlanguage'}{'contents'}[4]{'contents'}[1];
$result_trees{'multiple_documentlanguage'}{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'multiple_documentlanguage'}{'contents'}[4];
$result_trees{'multiple_documentlanguage'}{'contents'}[4]{'parent'} = $result_trees{'multiple_documentlanguage'};
$result_trees{'multiple_documentlanguage'}{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple_documentlanguage'}{'contents'}[5]{'args'}[0];
$result_trees{'multiple_documentlanguage'}{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'multiple_documentlanguage'}{'contents'}[5];
$result_trees{'multiple_documentlanguage'}{'contents'}[5]{'extra'}{'node_content'}[0] = $result_trees{'multiple_documentlanguage'}{'contents'}[5]{'args'}[0]{'contents'}[0];
$result_trees{'multiple_documentlanguage'}{'contents'}[5]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'multiple_documentlanguage'}{'contents'}[5]{'args'}[0]{'contents'}[0];
$result_trees{'multiple_documentlanguage'}{'contents'}[5]{'parent'} = $result_trees{'multiple_documentlanguage'};
$result_trees{'multiple_documentlanguage'}{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple_documentlanguage'}{'contents'}[6]{'args'}[0];
$result_trees{'multiple_documentlanguage'}{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'multiple_documentlanguage'}{'contents'}[6];
$result_trees{'multiple_documentlanguage'}{'contents'}[6]{'contents'}[0]{'parent'} = $result_trees{'multiple_documentlanguage'}{'contents'}[6];
$result_trees{'multiple_documentlanguage'}{'contents'}[6]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple_documentlanguage'}{'contents'}[6]{'contents'}[1]{'args'}[0];
$result_trees{'multiple_documentlanguage'}{'contents'}[6]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'multiple_documentlanguage'}{'contents'}[6]{'contents'}[1];
$result_trees{'multiple_documentlanguage'}{'contents'}[6]{'contents'}[1]{'parent'} = $result_trees{'multiple_documentlanguage'}{'contents'}[6];
$result_trees{'multiple_documentlanguage'}{'contents'}[6]{'parent'} = $result_trees{'multiple_documentlanguage'};
$result_trees{'multiple_documentlanguage'}{'contents'}[7]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple_documentlanguage'}{'contents'}[7]{'args'}[0];
$result_trees{'multiple_documentlanguage'}{'contents'}[7]{'args'}[0]{'parent'} = $result_trees{'multiple_documentlanguage'}{'contents'}[7];
$result_trees{'multiple_documentlanguage'}{'contents'}[7]{'extra'}{'node_content'}[0] = $result_trees{'multiple_documentlanguage'}{'contents'}[7]{'args'}[0]{'contents'}[0];
$result_trees{'multiple_documentlanguage'}{'contents'}[7]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'multiple_documentlanguage'}{'contents'}[7]{'args'}[0]{'contents'}[0];
$result_trees{'multiple_documentlanguage'}{'contents'}[7]{'parent'} = $result_trees{'multiple_documentlanguage'};
$result_trees{'multiple_documentlanguage'}{'contents'}[8]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple_documentlanguage'}{'contents'}[8]{'args'}[0];
$result_trees{'multiple_documentlanguage'}{'contents'}[8]{'args'}[0]{'parent'} = $result_trees{'multiple_documentlanguage'}{'contents'}[8];
$result_trees{'multiple_documentlanguage'}{'contents'}[8]{'contents'}[0]{'parent'} = $result_trees{'multiple_documentlanguage'}{'contents'}[8];
$result_trees{'multiple_documentlanguage'}{'contents'}[8]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple_documentlanguage'}{'contents'}[8]{'contents'}[1]{'args'}[0];
$result_trees{'multiple_documentlanguage'}{'contents'}[8]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'multiple_documentlanguage'}{'contents'}[8]{'contents'}[1];
$result_trees{'multiple_documentlanguage'}{'contents'}[8]{'contents'}[1]{'parent'} = $result_trees{'multiple_documentlanguage'}{'contents'}[8];
$result_trees{'multiple_documentlanguage'}{'contents'}[8]{'parent'} = $result_trees{'multiple_documentlanguage'};
$result_trees{'multiple_documentlanguage'}{'contents'}[9]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple_documentlanguage'}{'contents'}[9]{'args'}[0];
$result_trees{'multiple_documentlanguage'}{'contents'}[9]{'args'}[0]{'parent'} = $result_trees{'multiple_documentlanguage'}{'contents'}[9];
$result_trees{'multiple_documentlanguage'}{'contents'}[9]{'extra'}{'node_content'}[0] = $result_trees{'multiple_documentlanguage'}{'contents'}[9]{'args'}[0]{'contents'}[0];
$result_trees{'multiple_documentlanguage'}{'contents'}[9]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'multiple_documentlanguage'}{'contents'}[9]{'args'}[0]{'contents'}[0];
$result_trees{'multiple_documentlanguage'}{'contents'}[9]{'parent'} = $result_trees{'multiple_documentlanguage'};
$result_trees{'multiple_documentlanguage'}{'contents'}[10]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'multiple_documentlanguage'}{'contents'}[10]{'args'}[0];
$result_trees{'multiple_documentlanguage'}{'contents'}[10]{'args'}[0]{'parent'} = $result_trees{'multiple_documentlanguage'}{'contents'}[10];
$result_trees{'multiple_documentlanguage'}{'contents'}[10]{'contents'}[0]{'parent'} = $result_trees{'multiple_documentlanguage'}{'contents'}[10];
$result_trees{'multiple_documentlanguage'}{'contents'}[10]{'parent'} = $result_trees{'multiple_documentlanguage'};

$result_texis{'multiple_documentlanguage'} = '@documentlanguage ja

@node Top
@top top

@node chap
@chapter Chap no new language

@documentlanguage fr
@node chapter fr
@chapter chapter fr

@documentlanguage pt
@node subnode pt
@section section pt

@documentlanguage fr
@node subnode fr
@section section fr

';


$result_texts{'multiple_documentlanguage'} = '
top
***

1 Chap no new language
**********************

2 chapter fr
************

2.1 section pt
==============

2.2 section fr
==============

';

$result_sectioning{'multiple_documentlanguage'} = {
  'section_childs' => [
    {
      'cmdname' => 'top',
      'extra' => {
        'associated_node' => {
          'cmdname' => 'node',
          'extra' => {
            'normalized' => 'Top',
            'spaces_before_argument' => ' '
          }
        },
        'spaces_before_argument' => ' '
      },
      'section_childs' => [
        {
          'cmdname' => 'chapter',
          'extra' => {
            'associated_node' => {
              'cmdname' => 'node',
              'extra' => {
                'normalized' => 'chap',
                'spaces_before_argument' => ' '
              }
            },
            'spaces_before_argument' => ' '
          },
          'section_up' => {},
          'structure' => {
            'level' => 1,
            'number' => 1
          },
          'toplevel_prev' => {},
          'toplevel_up' => {}
        },
        {
          'cmdname' => 'chapter',
          'extra' => {
            'associated_node' => {
              'cmdname' => 'node',
              'extra' => {
                'normalized' => 'chapter-fr',
                'spaces_before_argument' => ' '
              }
            },
            'spaces_before_argument' => ' '
          },
          'section_childs' => [
            {
              'cmdname' => 'section',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => 'subnode-pt',
                    'spaces_before_argument' => ' '
                  }
                },
                'spaces_before_argument' => ' '
              },
              'section_up' => {},
              'structure' => {
                'level' => 2,
                'number' => '2.1'
              }
            },
            {
              'cmdname' => 'section',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => 'subnode-fr',
                    'spaces_before_argument' => ' '
                  }
                },
                'spaces_before_argument' => ' '
              },
              'section_prev' => {},
              'section_up' => {},
              'structure' => {
                'level' => 2,
                'number' => '2.2'
              }
            }
          ],
          'section_prev' => {},
          'section_up' => {},
          'structure' => {
            'level' => 1,
            'number' => 2
          },
          'toplevel_prev' => {},
          'toplevel_up' => {}
        }
      ],
      'section_up' => {},
      'structure' => {
        'level' => 0
      }
    }
  ],
  'structure' => {
    'level' => -1
  }
};
$result_sectioning{'multiple_documentlanguage'}{'section_childs'}[0]{'section_childs'}[0]{'section_up'} = $result_sectioning{'multiple_documentlanguage'}{'section_childs'}[0];
$result_sectioning{'multiple_documentlanguage'}{'section_childs'}[0]{'section_childs'}[0]{'toplevel_prev'} = $result_sectioning{'multiple_documentlanguage'}{'section_childs'}[0];
$result_sectioning{'multiple_documentlanguage'}{'section_childs'}[0]{'section_childs'}[0]{'toplevel_up'} = $result_sectioning{'multiple_documentlanguage'}{'section_childs'}[0];
$result_sectioning{'multiple_documentlanguage'}{'section_childs'}[0]{'section_childs'}[1]{'section_childs'}[0]{'section_up'} = $result_sectioning{'multiple_documentlanguage'}{'section_childs'}[0]{'section_childs'}[1];
$result_sectioning{'multiple_documentlanguage'}{'section_childs'}[0]{'section_childs'}[1]{'section_childs'}[1]{'section_prev'} = $result_sectioning{'multiple_documentlanguage'}{'section_childs'}[0]{'section_childs'}[1]{'section_childs'}[0];
$result_sectioning{'multiple_documentlanguage'}{'section_childs'}[0]{'section_childs'}[1]{'section_childs'}[1]{'section_up'} = $result_sectioning{'multiple_documentlanguage'}{'section_childs'}[0]{'section_childs'}[1];
$result_sectioning{'multiple_documentlanguage'}{'section_childs'}[0]{'section_childs'}[1]{'section_prev'} = $result_sectioning{'multiple_documentlanguage'}{'section_childs'}[0]{'section_childs'}[0];
$result_sectioning{'multiple_documentlanguage'}{'section_childs'}[0]{'section_childs'}[1]{'section_up'} = $result_sectioning{'multiple_documentlanguage'}{'section_childs'}[0];
$result_sectioning{'multiple_documentlanguage'}{'section_childs'}[0]{'section_childs'}[1]{'toplevel_prev'} = $result_sectioning{'multiple_documentlanguage'}{'section_childs'}[0]{'section_childs'}[0];
$result_sectioning{'multiple_documentlanguage'}{'section_childs'}[0]{'section_childs'}[1]{'toplevel_up'} = $result_sectioning{'multiple_documentlanguage'}{'section_childs'}[0];
$result_sectioning{'multiple_documentlanguage'}{'section_childs'}[0]{'section_up'} = $result_sectioning{'multiple_documentlanguage'};

$result_nodes{'multiple_documentlanguage'} = {
  'cmdname' => 'node',
  'extra' => {
    'associated_section' => {
      'cmdname' => 'top',
      'extra' => {
        'spaces_before_argument' => ' '
      },
      'structure' => {
        'level' => 0
      }
    },
    'normalized' => 'Top',
    'spaces_before_argument' => ' '
  },
  'node_next' => {
    'cmdname' => 'node',
    'extra' => {
      'associated_section' => {
        'cmdname' => 'chapter',
        'extra' => {
          'spaces_before_argument' => ' '
        },
        'structure' => {
          'level' => 1,
          'number' => 1
        }
      },
      'normalized' => 'chap',
      'spaces_before_argument' => ' '
    },
    'node_next' => {
      'cmdname' => 'node',
      'extra' => {
        'associated_section' => {
          'cmdname' => 'chapter',
          'extra' => {
            'spaces_before_argument' => ' '
          },
          'structure' => {
            'level' => 1,
            'number' => 2
          }
        },
        'normalized' => 'chapter-fr',
        'spaces_before_argument' => ' '
      },
      'node_prev' => {},
      'node_up' => {}
    },
    'node_prev' => {},
    'node_up' => {}
  }
};
$result_nodes{'multiple_documentlanguage'}{'node_next'}{'node_next'}{'node_prev'} = $result_nodes{'multiple_documentlanguage'}{'node_next'};
$result_nodes{'multiple_documentlanguage'}{'node_next'}{'node_next'}{'node_up'} = $result_nodes{'multiple_documentlanguage'};
$result_nodes{'multiple_documentlanguage'}{'node_next'}{'node_prev'} = $result_nodes{'multiple_documentlanguage'};
$result_nodes{'multiple_documentlanguage'}{'node_next'}{'node_up'} = $result_nodes{'multiple_documentlanguage'};

$result_menus{'multiple_documentlanguage'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top',
    'spaces_before_argument' => ' '
  }
};

$result_errors{'multiple_documentlanguage'} = [];


$result_floats{'multiple_documentlanguage'} = {};



$result_converted{'docbook'}->{'multiple_documentlanguage'} = '
<chapter label="" id="Top" lang="ja">
<title>top</title>

</chapter>
<chapter label="1" id="chap" lang="ja">
<title>Chap no new language</title>

</chapter>
<chapter label="2" id="chapter-fr" lang="fr">
<title>chapter fr</title>

<sect1 label="2.1" id="subnode-pt" lang="pt">
<title>section pt</title>

</sect1>
<sect1 label="2.2" id="subnode-fr">
<title>section fr</title>

</sect1>
</chapter>
';

1;
