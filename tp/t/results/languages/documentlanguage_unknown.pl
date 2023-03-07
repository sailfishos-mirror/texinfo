use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'documentlanguage_unknown'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'text' => '\\input texinfo @c -*-texinfo-*-
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
                  'text' => ' this document is setup to detect when the documentlanguage was not
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c'
            },
            {
              'args' => [
                {
                  'text' => ' set according to command line, but according to document.  This
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c'
            },
            {
              'args' => [
                {
                  'text' => ' is important to test that in the Parser, as converters initialized with
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c'
            },
            {
              'args' => [
                {
                  'text' => ' Texinfo::Convert::Converter converter() and with values accessed by
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c'
            },
            {
              'args' => [
                {
                  'text' => ' get_conf() will use the command line.
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c'
            },
            {
              'args' => [
                {
                  'text' => ' This is tricky to demonstrate, as documentlanguage is not used much
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c'
            },
            {
              'args' => [
                {
                  'text' => ' in Parser.  It is used in two places to set the documentlanguage extra
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c'
            },
            {
              'args' => [
                {
                  'text' => ' value, 
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c'
            },
            {
              'args' => [
                {
                  'text' => ' 1) for the untranslated type, for the prefix of @def* and 
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c'
            },
            {
              'args' => [
                {
                  'text' => ' 2) for the @def* line commands with added index entries that need to 
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c'
            },
            {
              'args' => [
                {
                  'text' => '    be translated, like \'{name} of {class}\'.
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c'
            },
            {
              'args' => [
                {
                  'text' => ' The untranslated type is in general translated in the converters
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c'
            },
            {
              'args' => [
                {
                  'text' => ' without using the extra documentlanguage key value, so getting it 
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c'
            },
            {
              'args' => [
                {
                  'text' => ' wrong does not have any consequence.
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c'
            },
            {
              'args' => [
                {
                  'text' => ' The @def* translated added indices are translated relatively early,
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c'
            },
            {
              'args' => [
                {
                  'text' => ' before the converter, and the extra documentlanguage key is used to
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c'
            },
            {
              'args' => [
                {
                  'text' => ' get the language, so if the wrong language is set, it will show up
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c'
            },
            {
              'args' => [
                {
                  'text' => ' in the index generated by @printindex.
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c'
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
                      'text' => 'pt'
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
              'cmdname' => 'documentlanguage',
              'extra' => {
                'text_arg' => 'pt'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'file_name' => 'documentlanguage.texi',
                'line_nr' => 22,
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
            'spaces_after_argument' => {
              'text' => '
'
            }
          },
          'type' => 'line_arg'
        }
      ],
      'cmdname' => 'node',
      'extra' => {
        'normalized' => 'Top'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'file_name' => 'documentlanguage.texi',
        'line_nr' => 24,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'text' => 'top section'
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
      'cmdname' => 'top',
      'contents' => [
        {
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'extra' => {},
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'file_name' => 'documentlanguage.texi',
        'line_nr' => 25,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'text' => 'chapter'
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
      'cmdname' => 'node',
      'extra' => {
        'isindex' => 1,
        'normalized' => 'chapter'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'file_name' => 'documentlanguage.texi',
        'line_nr' => 27,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'text' => 'Chapter'
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
      'cmdname' => 'chapter',
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
                      'text' => 'chapter'
                    }
                  ],
                  'extra' => {
                    'node_content' => [
                      {}
                    ],
                    'normalized' => 'chapter'
                  },
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'xref',
              'source_info' => {
                'file_name' => 'documentlanguage.texi',
                'line_nr' => 30,
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
          'cmdname' => 'deftypemethod',
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'extra' => {
                            'documentlanguage' => 'unknown'
                          },
                          'text' => 'Method',
                          'type' => 'untranslated'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'category'
                      },
                      'type' => 'bracketed_inserted'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'text' => ' ',
                      'type' => 'spaces_inserted'
                    },
                    {
                      'extra' => {
                        'def_role' => 'class'
                      },
                      'text' => 'class'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'extra' => {
                        'def_role' => 'type'
                      },
                      'text' => 'data-type'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'extra' => {
                        'def_role' => 'name'
                      },
                      'text' => 'name'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'extra' => {
                        'def_role' => 'typearg'
                      },
                      'text' => 'arguments'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => {
                      'text' => '
'
                    }
                  },
                  'type' => 'block_line_arg'
                }
              ],
              'extra' => {
                'def_command' => 'deftypemethod',
                'def_index_element' => {
                  'contents' => [
                    {},
                    {
                      'text' => ' on '
                    },
                    {}
                  ]
                },
                'def_index_ref_element' => {
                  'contents' => [
                    {},
                    {
                      'text' => ' on '
                    },
                    {}
                  ]
                },
                'documentlanguage' => 'unknown',
                'element_node' => {},
                'index_entry' => [
                  'fn',
                  1
                ],
                'original_def_cmdname' => 'deftypemethod'
              },
              'source_info' => {
                'file_name' => 'documentlanguage.texi',
                'line_nr' => 32,
                'macro' => ''
              },
              'type' => 'def_line'
            },
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'Some text.
'
                    }
                  ],
                  'type' => 'paragraph'
                }
              ],
              'type' => 'def_item'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'deftypemethod'
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
              'cmdname' => 'end',
              'extra' => {
                'text_arg' => 'deftypemethod'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'file_name' => 'documentlanguage.texi',
                'line_nr' => 34,
                'macro' => ''
              }
            }
          ],
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'file_name' => 'documentlanguage.texi',
            'line_nr' => 32,
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
              'contents' => [
                {
                  'text' => 'fn'
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
          'cmdname' => 'printindex',
          'extra' => {
            'misc_args' => [
              'fn'
            ]
          },
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'file_name' => 'documentlanguage.texi',
            'line_nr' => 36,
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
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'file_name' => 'documentlanguage.texi',
        'line_nr' => 28,
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
$result_trees{'documentlanguage_unknown'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'extra'}{'node_content'}[0] = $result_trees{'documentlanguage_unknown'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'documentlanguage_unknown'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'extra'}{'def_index_element'}{'contents'}[0] = $result_trees{'documentlanguage_unknown'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'documentlanguage_unknown'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'extra'}{'def_index_element'}{'contents'}[2] = $result_trees{'documentlanguage_unknown'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'documentlanguage_unknown'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'extra'}{'def_index_ref_element'}{'contents'}[0] = $result_trees{'documentlanguage_unknown'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'documentlanguage_unknown'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'extra'}{'def_index_ref_element'}{'contents'}[2] = $result_trees{'documentlanguage_unknown'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'documentlanguage_unknown'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'extra'}{'element_node'} = $result_trees{'documentlanguage_unknown'}{'contents'}[3];

$result_texis{'documentlanguage_unknown'} = '\\input texinfo @c -*-texinfo-*-

@c this document is setup to detect when the documentlanguage was not
@c set according to command line, but according to document.  This
@c is important to test that in the Parser, as converters initialized with
@c Texinfo::Convert::Converter converter() and with values accessed by
@c get_conf() will use the command line.
@c This is tricky to demonstrate, as documentlanguage is not used much
@c in Parser.  It is used in two places to set the documentlanguage extra
@c value, 
@c 1) for the untranslated type, for the prefix of @def* and 
@c 2) for the @def* line commands with added index entries that need to 
@c    be translated, like \'{name} of {class}\'.
@c The untranslated type is in general translated in the converters
@c without using the extra documentlanguage key value, so getting it 
@c wrong does not have any consequence.
@c The @def* translated added indices are translated relatively early,
@c before the converter, and the extra documentlanguage key is used to
@c get the language, so if the wrong language is set, it will show up
@c in the index generated by @printindex.

@documentlanguage pt

@node Top
@top top section

@node chapter
@chapter Chapter

@xref{chapter}.

@deftypemethod class data-type name arguments
Some text.
@end deftypemethod

@printindex fn

@bye
';


$result_texts{'documentlanguage_unknown'} = '

top section
***********

1 Chapter
*********

chapter.

Method on class: data-type name arguments
Some text.


';

$result_sectioning{'documentlanguage_unknown'} = {
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
                    'normalized' => 'chapter'
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
$result_sectioning{'documentlanguage_unknown'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'documentlanguage_unknown'}{'structure'}{'section_childs'}[0];
$result_sectioning{'documentlanguage_unknown'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_prev'} = $result_sectioning{'documentlanguage_unknown'}{'structure'}{'section_childs'}[0];
$result_sectioning{'documentlanguage_unknown'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_up'} = $result_sectioning{'documentlanguage_unknown'}{'structure'}{'section_childs'}[0];
$result_sectioning{'documentlanguage_unknown'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'documentlanguage_unknown'};

$result_nodes{'documentlanguage_unknown'} = {
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
        'normalized' => 'chapter'
      },
      'structure' => {
        'node_prev' => {},
        'node_up' => {}
      }
    }
  }
};
$result_nodes{'documentlanguage_unknown'}{'structure'}{'node_next'}{'structure'}{'node_prev'} = $result_nodes{'documentlanguage_unknown'};
$result_nodes{'documentlanguage_unknown'}{'structure'}{'node_next'}{'structure'}{'node_up'} = $result_nodes{'documentlanguage_unknown'};

$result_menus{'documentlanguage_unknown'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  },
  'structure' => {}
};

$result_errors{'documentlanguage_unknown'} = [];


$result_floats{'documentlanguage_unknown'} = {};


$result_indices_sort_strings{'documentlanguage_unknown'} = {
  'fn' => [
    'name on class'
  ]
};


1;
