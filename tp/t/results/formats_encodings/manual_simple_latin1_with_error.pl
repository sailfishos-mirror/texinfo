use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'manual_simple_latin1_with_error'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => '\\input texinfo.tex
',
              'type' => 'text_before_beginning'
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'text_before_beginning'
            }
          ],
          'parent' => {},
          'type' => 'preamble_before_beginning'
        },
        {
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'iso-8859-1'
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
              'cmdname' => 'documentencoding',
              'extra' => {
                'input_encoding_name' => 'iso-8859-1',
                'input_perl_encoding' => 'iso-8859-1',
                'spaces_before_argument' => ' ',
                'text_arg' => 'iso-8859-1'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => 'manual_simple_latin1_with_error.texi',
                'line_nr' => 3,
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
        'file_name' => 'manual_simple_latin1_with_error.texi',
        'line_nr' => 5,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => "Test\x{e9}"
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
      'parent' => {},
      'source_info' => {
        'file_name' => 'manual_simple_latin1_with_error.texi',
        'line_nr' => 6,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => "\x{e9}sseul\x{e9}"
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
      'contents' => [
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'extra' => {
        'node_content' => [
          {}
        ],
        'nodes_manuals' => [
          {
            'node_content' => [
              {}
            ],
            'normalized' => '_00e9sseul_00e9'
          }
        ],
        'normalized' => '_00e9sseul_00e9',
        'spaces_before_argument' => ' '
      },
      'parent' => {},
      'source_info' => {
        'file_name' => 'manual_simple_latin1_with_error.texi',
        'line_nr' => 8,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => "Chapitr\x{e9}"
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
            'normalized' => 'Chapitr_00e9'
          }
        ],
        'normalized' => 'Chapitr_00e9',
        'spaces_before_argument' => ' '
      },
      'parent' => {},
      'source_info' => {
        'file_name' => 'manual_simple_latin1_with_error.texi',
        'line_nr' => 10,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => "Chapitr\x{e9}"
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
          'cmdname' => 'value',
          'contents' => [],
          'extra' => {
            'flag' => "non_conn\x{f9}e"
          },
          'parent' => {}
        },
        {
          'parent' => {},
          'text' => '
'
        }
      ],
      'extra' => {
        'spaces_before_argument' => ' '
      },
      'parent' => {},
      'source_info' => {
        'file_name' => 'manual_simple_latin1_with_error.texi',
        'line_nr' => 11,
        'macro' => ''
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'manual_simple_latin1_with_error'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'manual_simple_latin1_with_error'}{'contents'}[0]{'contents'}[0];
$result_trees{'manual_simple_latin1_with_error'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'manual_simple_latin1_with_error'}{'contents'}[0]{'contents'}[0];
$result_trees{'manual_simple_latin1_with_error'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'manual_simple_latin1_with_error'}{'contents'}[0];
$result_trees{'manual_simple_latin1_with_error'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'manual_simple_latin1_with_error'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'manual_simple_latin1_with_error'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'manual_simple_latin1_with_error'}{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'manual_simple_latin1_with_error'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'manual_simple_latin1_with_error'}{'contents'}[0]{'contents'}[1];
$result_trees{'manual_simple_latin1_with_error'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'manual_simple_latin1_with_error'}{'contents'}[0]{'contents'}[1];
$result_trees{'manual_simple_latin1_with_error'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'manual_simple_latin1_with_error'}{'contents'}[0];
$result_trees{'manual_simple_latin1_with_error'}{'contents'}[0]{'parent'} = $result_trees{'manual_simple_latin1_with_error'};
$result_trees{'manual_simple_latin1_with_error'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'manual_simple_latin1_with_error'}{'contents'}[1]{'args'}[0];
$result_trees{'manual_simple_latin1_with_error'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'manual_simple_latin1_with_error'}{'contents'}[1];
$result_trees{'manual_simple_latin1_with_error'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'manual_simple_latin1_with_error'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'manual_simple_latin1_with_error'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'manual_simple_latin1_with_error'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'manual_simple_latin1_with_error'}{'contents'}[1]{'parent'} = $result_trees{'manual_simple_latin1_with_error'};
$result_trees{'manual_simple_latin1_with_error'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'manual_simple_latin1_with_error'}{'contents'}[2]{'args'}[0];
$result_trees{'manual_simple_latin1_with_error'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'manual_simple_latin1_with_error'}{'contents'}[2];
$result_trees{'manual_simple_latin1_with_error'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'manual_simple_latin1_with_error'}{'contents'}[2];
$result_trees{'manual_simple_latin1_with_error'}{'contents'}[2]{'parent'} = $result_trees{'manual_simple_latin1_with_error'};
$result_trees{'manual_simple_latin1_with_error'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'manual_simple_latin1_with_error'}{'contents'}[3]{'args'}[0];
$result_trees{'manual_simple_latin1_with_error'}{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'manual_simple_latin1_with_error'}{'contents'}[3];
$result_trees{'manual_simple_latin1_with_error'}{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'manual_simple_latin1_with_error'}{'contents'}[3];
$result_trees{'manual_simple_latin1_with_error'}{'contents'}[3]{'extra'}{'node_content'}[0] = $result_trees{'manual_simple_latin1_with_error'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'manual_simple_latin1_with_error'}{'contents'}[3]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'manual_simple_latin1_with_error'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'manual_simple_latin1_with_error'}{'contents'}[3]{'parent'} = $result_trees{'manual_simple_latin1_with_error'};
$result_trees{'manual_simple_latin1_with_error'}{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'manual_simple_latin1_with_error'}{'contents'}[4]{'args'}[0];
$result_trees{'manual_simple_latin1_with_error'}{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'manual_simple_latin1_with_error'}{'contents'}[4];
$result_trees{'manual_simple_latin1_with_error'}{'contents'}[4]{'extra'}{'node_content'}[0] = $result_trees{'manual_simple_latin1_with_error'}{'contents'}[4]{'args'}[0]{'contents'}[0];
$result_trees{'manual_simple_latin1_with_error'}{'contents'}[4]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'manual_simple_latin1_with_error'}{'contents'}[4]{'args'}[0]{'contents'}[0];
$result_trees{'manual_simple_latin1_with_error'}{'contents'}[4]{'parent'} = $result_trees{'manual_simple_latin1_with_error'};
$result_trees{'manual_simple_latin1_with_error'}{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'manual_simple_latin1_with_error'}{'contents'}[5]{'args'}[0];
$result_trees{'manual_simple_latin1_with_error'}{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'manual_simple_latin1_with_error'}{'contents'}[5];
$result_trees{'manual_simple_latin1_with_error'}{'contents'}[5]{'contents'}[0]{'parent'} = $result_trees{'manual_simple_latin1_with_error'}{'contents'}[5];
$result_trees{'manual_simple_latin1_with_error'}{'contents'}[5]{'contents'}[1]{'parent'} = $result_trees{'manual_simple_latin1_with_error'}{'contents'}[5];
$result_trees{'manual_simple_latin1_with_error'}{'contents'}[5]{'contents'}[2]{'parent'} = $result_trees{'manual_simple_latin1_with_error'}{'contents'}[5];
$result_trees{'manual_simple_latin1_with_error'}{'contents'}[5]{'parent'} = $result_trees{'manual_simple_latin1_with_error'};

$result_texis{'manual_simple_latin1_with_error'} = '\\input texinfo.tex

@documentencoding iso-8859-1

@node Top
@top Testé

@node ésseulé

@node Chapitré
@chapter Chapitré

@value{non_connùe}
';


$result_texts{'manual_simple_latin1_with_error'} = '
Testé
*****


1 Chapitré
**********


';

$result_sectioning{'manual_simple_latin1_with_error'} = {
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
                    'normalized' => 'Chapitr_00e9'
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
$result_sectioning{'manual_simple_latin1_with_error'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'manual_simple_latin1_with_error'}{'structure'}{'section_childs'}[0];
$result_sectioning{'manual_simple_latin1_with_error'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_prev'} = $result_sectioning{'manual_simple_latin1_with_error'}{'structure'}{'section_childs'}[0];
$result_sectioning{'manual_simple_latin1_with_error'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_up'} = $result_sectioning{'manual_simple_latin1_with_error'}{'structure'}{'section_childs'}[0];
$result_sectioning{'manual_simple_latin1_with_error'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'manual_simple_latin1_with_error'};

$result_nodes{'manual_simple_latin1_with_error'} = {
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
        'normalized' => 'Chapitr_00e9'
      },
      'structure' => {
        'node_prev' => {},
        'node_up' => {}
      }
    }
  }
};
$result_nodes{'manual_simple_latin1_with_error'}{'structure'}{'node_next'}{'structure'}{'node_prev'} = $result_nodes{'manual_simple_latin1_with_error'};
$result_nodes{'manual_simple_latin1_with_error'}{'structure'}{'node_next'}{'structure'}{'node_up'} = $result_nodes{'manual_simple_latin1_with_error'};

$result_menus{'manual_simple_latin1_with_error'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  },
  'structure' => {}
};

$result_errors{'manual_simple_latin1_with_error'} = [
  {
    'error_line' => "warning: undefined flag: non_conn\x{f9}e
",
    'file_name' => 'manual_simple_latin1_with_error.texi',
    'line_nr' => 13,
    'macro' => '',
    'text' => "undefined flag: non_conn\x{f9}e",
    'type' => 'warning'
  },
  {
    'error_line' => "warning: node `\x{e9}sseul\x{e9}' unreferenced
",
    'file_name' => 'manual_simple_latin1_with_error.texi',
    'line_nr' => 8,
    'macro' => '',
    'text' => "node `\x{e9}sseul\x{e9}' unreferenced",
    'type' => 'warning'
  }
];


$result_floats{'manual_simple_latin1_with_error'} = {};


1;
