use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'char_latin2_latin2_in_refs'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'text' => '\\input texinfo
',
              'type' => 'text_before_beginning'
            },
            {
              'text' => '
',
              'type' => 'text_before_beginning'
            }
          ],
          'type' => 'preamble_before_beginning'
        },
        {
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'ISO-8859-2'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => '
'
                  },
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'documentencoding',
              'extra' => {
                'input_encoding_name' => 'iso-8859-2',
                'input_perl_encoding' => 'iso-8859-2',
                'text_arg' => 'ISO-8859-2'
              },
              'info' => {
                'spaces_before_argument' => ' '
              },
              'source_info' => {
                'file_name' => 'char_latin2_latin2_in_refs.texi',
                'line_nr' => 3,
                'macro' => ''
              }
            },
            {
              'text' => '
',
              'type' => 'empty_line'
            }
          ],
          'type' => 'preamble_before_content'
        }
      ],
      'type' => 'before_node_section'
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'text' => 'Top'
            }
          ],
          'info' => {
            'spaces_after_argument' => '
'
          },
          'type' => 'line_arg'
        }
      ],
      'cmdname' => 'node',
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
            'normalized' => 'Top'
          }
        ],
        'normalized' => 'Top'
      },
      'info' => {
        'spaces_before_argument' => ' '
      },
      'source_info' => {
        'file_name' => 'char_latin2_latin2_in_refs.texi',
        'line_nr' => 5,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'text' => 'char latin2 latin2 in refs'
            }
          ],
          'info' => {
            'spaces_after_argument' => '
'
          },
          'type' => 'line_arg'
        }
      ],
      'cmdname' => 'top',
      'contents' => [
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => "\x{104} \x{105} \x{2db} \x{118} \x{119}"
                    }
                  ],
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'ref',
              'extra' => {
                'label' => {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'text' => "\x{104} \x{105} \x{2db} \x{118} \x{119}"
                        }
                      ],
                      'info' => {
                        'spaces_after_argument' => '
'
                      },
                      'type' => 'line_arg'
                    }
                  ],
                  'cmdname' => 'node',
                  'extra' => {
                    'node_content' => [
                      {}
                    ],
                    'nodes_manuals' => [
                      {
                        'node_content' => [
                          {}
                        ],
                        'normalized' => '_0104-_0105-_02db-_0118-_0119'
                      }
                    ],
                    'normalized' => '_0104-_0105-_02db-_0118-_0119'
                  },
                  'info' => {
                    'spaces_before_argument' => ' '
                  },
                  'source_info' => {
                    'file_name' => 'char_latin2_latin2_in_refs.texi',
                    'line_nr' => 17,
                    'macro' => ''
                  }
                },
                'node_argument' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => '_0104-_0105-_02db-_0118-_0119'
                }
              },
              'source_info' => {
                'file_name' => 'char_latin2_latin2_in_refs.texi',
                'line_nr' => 8,
                'macro' => ''
              }
            },
            {
              'text' => '.
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'text' => 'cp'
                }
              ],
              'info' => {
                'spaces_after_argument' => '
'
              },
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'printindex',
          'extra' => {
            'misc_args' => [
              'cp'
            ]
          },
          'info' => {
            'spaces_before_argument' => ' '
          },
          'source_info' => {
            'file_name' => 'char_latin2_latin2_in_refs.texi',
            'line_nr' => 10,
            'macro' => ''
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'args' => [
            {
              'text' => ' Aogonek(0xa1=0241) aogonek(0xb1=0261) standalone ogonek(0xca=0312) Eogonek(0xea=0352) eogonek
',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'c',
          'extra' => {
            'misc_args' => [
              ' Aogonek(0xa1=0241) aogonek(0xb1=0261) standalone ogonek(0xca=0312) Eogonek(0xea=0352) eogonek
'
            ]
          }
        },
        {
          'args' => [
            {
              'info' => {
                'spaces_after_argument' => '
'
              },
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'menu',
          'contents' => [
            {
              'args' => [
                {
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'text' => "\x{104} \x{105} \x{2db} \x{118} \x{119}"
                    }
                  ],
                  'type' => 'menu_entry_node'
                },
                {
                  'text' => '::',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => '
'
                        }
                      ],
                      'type' => 'preformatted'
                    }
                  ],
                  'type' => 'menu_entry_description'
                }
              ],
              'extra' => {
                'menu_entry_description' => {},
                'menu_entry_node' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => '_0104-_0105-_02db-_0118-_0119'
                }
              },
              'source_info' => {
                'file_name' => 'char_latin2_latin2_in_refs.texi',
                'line_nr' => 14,
                'macro' => ''
              },
              'type' => 'menu_entry'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'menu'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => '
'
                  },
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'text_arg' => 'menu'
              },
              'info' => {
                'spaces_before_argument' => ' '
              },
              'source_info' => {
                'file_name' => 'char_latin2_latin2_in_refs.texi',
                'line_nr' => 15,
                'macro' => ''
              }
            }
          ],
          'source_info' => {
            'file_name' => 'char_latin2_latin2_in_refs.texi',
            'line_nr' => 13,
            'macro' => ''
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'extra' => {},
      'info' => {
        'spaces_before_argument' => ' '
      },
      'source_info' => {
        'file_name' => 'char_latin2_latin2_in_refs.texi',
        'line_nr' => 6,
        'macro' => ''
      }
    },
    {},
    {
      'args' => [
        {
          'contents' => [
            {
              'text' => "\x{104} \x{105} \x{2db} \x{118} \x{119}"
            }
          ],
          'info' => {
            'spaces_after_argument' => '
'
          },
          'type' => 'line_arg'
        }
      ],
      'cmdname' => 'chapter',
      'contents' => [
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'text' => "\x{104} \x{105} \x{2db} \x{118} \x{119}"
                }
              ],
              'info' => {
                'spaces_after_argument' => '
'
              },
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'cindex',
          'extra' => {
            'index_entry' => {
              'content_normalized' => [],
              'entry_content' => [],
              'entry_element' => {},
              'entry_node' => {},
              'entry_number' => 1,
              'in_code' => 0,
              'index_at_command' => 'cindex',
              'index_ignore_chars' => {},
              'index_name' => 'cp',
              'index_type_command' => 'cindex'
            }
          },
          'info' => {
            'spaces_before_argument' => ' '
          },
          'source_info' => {
            'file_name' => 'char_latin2_latin2_in_refs.texi',
            'line_nr' => 20,
            'macro' => ''
          },
          'type' => 'index_entry_command'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'extra' => {},
      'info' => {
        'spaces_before_argument' => ' '
      },
      'source_info' => {
        'file_name' => 'char_latin2_latin2_in_refs.texi',
        'line_nr' => 18,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'text' => '
',
          'type' => 'misc_arg'
        }
      ],
      'cmdname' => 'bye'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'char_latin2_latin2_in_refs'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'char_latin2_latin2_in_refs'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'char_latin2_latin2_in_refs'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'char_latin2_latin2_in_refs'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'label'}{'extra'}{'node_content'}[0] = $result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'label'}{'args'}[0]{'contents'}[0];
$result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'label'}{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'label'}{'args'}[0]{'contents'}[0];
$result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2]{'contents'}[6]{'contents'}[0]{'extra'}{'menu_entry_description'} = $result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2]{'contents'}[6]{'contents'}[0]{'args'}[3];
$result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2]{'contents'}[6]{'contents'}[0]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2]{'contents'}[6]{'contents'}[0]{'args'}[1]{'contents'}[0];
$result_trees{'char_latin2_latin2_in_refs'}{'contents'}[3] = $result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'label'};
$result_trees{'char_latin2_latin2_in_refs'}{'contents'}[4]{'contents'}[1]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'char_latin2_latin2_in_refs'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'char_latin2_latin2_in_refs'}{'contents'}[4]{'contents'}[1]{'extra'}{'index_entry'}{'entry_content'} = $result_trees{'char_latin2_latin2_in_refs'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'char_latin2_latin2_in_refs'}{'contents'}[4]{'contents'}[1]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'char_latin2_latin2_in_refs'}{'contents'}[4]{'contents'}[1];
$result_trees{'char_latin2_latin2_in_refs'}{'contents'}[4]{'contents'}[1]{'extra'}{'index_entry'}{'entry_node'} = $result_trees{'char_latin2_latin2_in_refs'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'label'};

$result_texis{'char_latin2_latin2_in_refs'} = '\\input texinfo

@documentencoding ISO-8859-2

@node Top
@top char latin2 latin2 in refs

@ref{?? ?? ?? ?? ??}.

@printindex cp

@c Aogonek(0xa1=0241) aogonek(0xb1=0261) standalone ogonek(0xca=0312) Eogonek(0xea=0352) eogonek
@menu
* ?? ?? ?? ?? ??::
@end menu

@node ?? ?? ?? ?? ??
@chapter ?? ?? ?? ?? ??

@cindex ?? ?? ?? ?? ??

@bye
';


$result_texts{'char_latin2_latin2_in_refs'} = '
char latin2 latin2 in refs
**************************

?? ?? ?? ?? ??.


* ?? ?? ?? ?? ??::

1 ?? ?? ?? ?? ??
***********


';

$result_sectioning{'char_latin2_latin2_in_refs'} = {
  'structure' => {
    'section_childs' => [
      {
        'cmdname' => 'top',
        'extra' => {
          'associated_node' => {
            'cmdname' => 'node',
            'extra' => {
              'isindex' => 1,
              'normalized' => 'Top'
            },
            'info' => {},
            'structure' => {}
          }
        },
        'info' => {},
        'structure' => {
          'section_childs' => [
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => '_0104-_0105-_02db-_0118-_0119'
                  },
                  'info' => {},
                  'structure' => {}
                }
              },
              'info' => {},
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
$result_sectioning{'char_latin2_latin2_in_refs'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'char_latin2_latin2_in_refs'}{'structure'}{'section_childs'}[0];
$result_sectioning{'char_latin2_latin2_in_refs'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_prev'} = $result_sectioning{'char_latin2_latin2_in_refs'}{'structure'}{'section_childs'}[0];
$result_sectioning{'char_latin2_latin2_in_refs'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_up'} = $result_sectioning{'char_latin2_latin2_in_refs'}{'structure'}{'section_childs'}[0];
$result_sectioning{'char_latin2_latin2_in_refs'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'char_latin2_latin2_in_refs'};

$result_nodes{'char_latin2_latin2_in_refs'} = {
  'cmdname' => 'node',
  'extra' => {
    'associated_section' => {
      'cmdname' => 'top',
      'extra' => {},
      'info' => {},
      'structure' => {}
    },
    'isindex' => 1,
    'menus' => [
      {
        'cmdname' => 'menu'
      }
    ],
    'normalized' => 'Top'
  },
  'info' => {},
  'structure' => {
    'menu_child' => {
      'cmdname' => 'node',
      'extra' => {
        'associated_section' => {
          'cmdname' => 'chapter',
          'extra' => {},
          'info' => {},
          'structure' => {
            'section_number' => 1
          }
        },
        'normalized' => '_0104-_0105-_02db-_0118-_0119'
      },
      'info' => {},
      'structure' => {
        'node_prev' => {},
        'node_up' => {}
      }
    },
    'node_next' => {}
  }
};
$result_nodes{'char_latin2_latin2_in_refs'}{'structure'}{'menu_child'}{'structure'}{'node_prev'} = $result_nodes{'char_latin2_latin2_in_refs'};
$result_nodes{'char_latin2_latin2_in_refs'}{'structure'}{'menu_child'}{'structure'}{'node_up'} = $result_nodes{'char_latin2_latin2_in_refs'};
$result_nodes{'char_latin2_latin2_in_refs'}{'structure'}{'node_next'} = $result_nodes{'char_latin2_latin2_in_refs'}{'structure'}{'menu_child'};

$result_menus{'char_latin2_latin2_in_refs'} = {
  'cmdname' => 'node',
  'extra' => {
    'isindex' => 1,
    'normalized' => 'Top'
  },
  'info' => {},
  'structure' => {
    'menu_child' => {
      'cmdname' => 'node',
      'extra' => {
        'normalized' => '_0104-_0105-_02db-_0118-_0119'
      },
      'info' => {},
      'structure' => {
        'menu_up' => {},
        'menu_up_hash' => {
          'Top' => 1
        }
      }
    }
  }
};
$result_menus{'char_latin2_latin2_in_refs'}{'structure'}{'menu_child'}{'structure'}{'menu_up'} = $result_menus{'char_latin2_latin2_in_refs'};

$result_errors{'char_latin2_latin2_in_refs'} = [];


$result_floats{'char_latin2_latin2_in_refs'} = {};


$result_indices_sort_strings{'char_latin2_latin2_in_refs'} = {
  'cp' => [
    "\x{104} \x{105} \x{2db} \x{118} \x{119}"
  ]
};


1;
