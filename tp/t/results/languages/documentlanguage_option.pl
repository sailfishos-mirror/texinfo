use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'documentlanguage_option'} = {
  'contents' => [
    {
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
              'args' => [
                {
                  'text' => ' this document is setup to detect when the documentlanguage was not
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' this document is setup to detect when the documentlanguage was not
'
                ]
              }
            },
            {
              'args' => [
                {
                  'text' => ' set according to command line, but according to document.  This
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' set according to command line, but according to document.  This
'
                ]
              }
            },
            {
              'args' => [
                {
                  'text' => ' is important to test that in the Parser, as converters initialized with
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' is important to test that in the Parser, as converters initialized with
'
                ]
              }
            },
            {
              'args' => [
                {
                  'text' => ' Texinfo::Convert::Converter converter() and with values accessed by
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' Texinfo::Convert::Converter converter() and with values accessed by
'
                ]
              }
            },
            {
              'args' => [
                {
                  'text' => ' get_conf() will use the command line.
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' get_conf() will use the command line.
'
                ]
              }
            },
            {
              'args' => [
                {
                  'text' => ' This is tricky to demonstrate, as documentlanguage is not used much
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' This is tricky to demonstrate, as documentlanguage is not used much
'
                ]
              }
            },
            {
              'args' => [
                {
                  'text' => ' in Parser.  It is used in two places to set the documentlanguage extra
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' in Parser.  It is used in two places to set the documentlanguage extra
'
                ]
              }
            },
            {
              'args' => [
                {
                  'text' => ' value, 
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' value, 
'
                ]
              }
            },
            {
              'args' => [
                {
                  'text' => ' 1) for the untranslated type, for the prefix of @def* and 
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' 1) for the untranslated type, for the prefix of @def* and 
'
                ]
              }
            },
            {
              'args' => [
                {
                  'text' => ' 2) for the @def* line commands with added index entries that need to 
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' 2) for the @def* line commands with added index entries that need to 
'
                ]
              }
            },
            {
              'args' => [
                {
                  'text' => '    be translated, like \'{name} of {class}\'.
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  '    be translated, like \'{name} of {class}\'.
'
                ]
              }
            },
            {
              'args' => [
                {
                  'text' => ' The untranslated type is in general translated in the converters
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' The untranslated type is in general translated in the converters
'
                ]
              }
            },
            {
              'args' => [
                {
                  'text' => ' without using the extra documentlanguage key value, so getting it 
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' without using the extra documentlanguage key value, so getting it 
'
                ]
              }
            },
            {
              'args' => [
                {
                  'text' => ' wrong does not have any consequence.
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' wrong does not have any consequence.
'
                ]
              }
            },
            {
              'args' => [
                {
                  'text' => ' The @def* translated added indices are translated relatively early,
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' The @def* translated added indices are translated relatively early,
'
                ]
              }
            },
            {
              'args' => [
                {
                  'text' => ' before the converter, and the extra documentlanguage key is used to
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' before the converter, and the extra documentlanguage key is used to
'
                ]
              }
            },
            {
              'args' => [
                {
                  'text' => ' get the language, so if the wrong language is set, it will show up
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' get the language, so if the wrong language is set, it will show up
'
                ]
              }
            },
            {
              'args' => [
                {
                  'text' => ' in the index generated by @printindex.
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' in the index generated by @printindex.
'
                ]
              }
            }
          ],
          'type' => 'preamble_before_setfilename'
        },
        {
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'documentlanguage.info'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => '
'
                  },
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'setfilename',
              'extra' => {
                'text_arg' => 'documentlanguage.info'
              },
              'info' => {
                'spaces_before_argument' => ' '
              },
              'source_info' => {
                'file_name' => 'documentlanguage.texi',
                'line_nr' => 21,
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
                      'text' => 'pt'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => '
'
                  },
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'documentlanguage',
              'extra' => {
                'text_arg' => 'pt'
              },
              'info' => {
                'spaces_before_argument' => ' '
              },
              'source_info' => {
                'file_name' => 'documentlanguage.texi',
                'line_nr' => 23,
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
              'text' => 'top section'
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
        }
      ],
      'extra' => {},
      'info' => {
        'spaces_before_argument' => ' '
      },
      'source_info' => {
        'file_name' => 'documentlanguage.texi',
        'line_nr' => 26,
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
            'normalized' => 'chapter'
          }
        ],
        'normalized' => 'chapter'
      },
      'info' => {
        'spaces_before_argument' => ' '
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
          'contents' => [
            {
              'text' => 'Chapter'
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
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'chapter'
                    }
                  ],
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'xref',
              'extra' => {
                'label' => {},
                'node_argument' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => 'chapter'
                }
              },
              'source_info' => {
                'file_name' => 'documentlanguage.texi',
                'line_nr' => 31,
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
                            'documentlanguage' => 'fr'
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
                    'spaces_after_argument' => '
'
                  },
                  'type' => 'block_line_arg'
                }
              ],
              'extra' => {
                'def_command' => 'deftypemethod',
                'def_parsed_hash' => {
                  'category' => {},
                  'class' => {},
                  'name' => {},
                  'type' => {}
                },
                'documentlanguage' => 'fr',
                'index_entry' => {
                  'content_normalized' => [
                    {},
                    {
                      'text' => ' on '
                    },
                    {}
                  ],
                  'entry_content' => [
                    {},
                    {
                      'text' => ' de '
                    },
                    {}
                  ],
                  'entry_element' => {},
                  'entry_node' => {},
                  'entry_number' => 1,
                  'in_code' => 1,
                  'index_at_command' => 'deftypemethod',
                  'index_ignore_chars' => {},
                  'index_name' => 'fn',
                  'index_type_command' => 'deftypemethod'
                },
                'original_def_cmdname' => 'deftypemethod'
              },
              'source_info' => {
                'file_name' => 'documentlanguage.texi',
                'line_nr' => 33,
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
                    'spaces_after_argument' => '
'
                  },
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'text_arg' => 'deftypemethod'
              },
              'info' => {
                'spaces_before_argument' => ' '
              },
              'source_info' => {
                'file_name' => 'documentlanguage.texi',
                'line_nr' => 35,
                'macro' => ''
              }
            }
          ],
          'info' => {
            'spaces_before_argument' => ' '
          },
          'source_info' => {
            'file_name' => 'documentlanguage.texi',
            'line_nr' => 33,
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
                'spaces_after_argument' => '
'
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
            'spaces_before_argument' => ' '
          },
          'source_info' => {
            'file_name' => 'documentlanguage.texi',
            'line_nr' => 37,
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
        'file_name' => 'documentlanguage.texi',
        'line_nr' => 29,
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
$result_trees{'documentlanguage_option'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'documentlanguage_option'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'documentlanguage_option'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'documentlanguage_option'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'documentlanguage_option'}{'contents'}[3]{'extra'}{'node_content'}[0] = $result_trees{'documentlanguage_option'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'documentlanguage_option'}{'contents'}[3]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'documentlanguage_option'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'documentlanguage_option'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'extra'}{'label'} = $result_trees{'documentlanguage_option'}{'contents'}[3];
$result_trees{'documentlanguage_option'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'documentlanguage_option'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'documentlanguage_option'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'documentlanguage_option'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'documentlanguage_option'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'class'} = $result_trees{'documentlanguage_option'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'documentlanguage_option'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'documentlanguage_option'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'documentlanguage_option'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'type'} = $result_trees{'documentlanguage_option'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'documentlanguage_option'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'documentlanguage_option'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'documentlanguage_option'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[2] = $result_trees{'documentlanguage_option'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'documentlanguage_option'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'extra'}{'index_entry'}{'entry_content'}[0] = $result_trees{'documentlanguage_option'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'documentlanguage_option'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'extra'}{'index_entry'}{'entry_content'}[2] = $result_trees{'documentlanguage_option'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'documentlanguage_option'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'documentlanguage_option'}{'contents'}[4]{'contents'}[3]{'contents'}[0];
$result_trees{'documentlanguage_option'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'extra'}{'index_entry'}{'entry_node'} = $result_trees{'documentlanguage_option'}{'contents'}[3];

$result_texis{'documentlanguage_option'} = '\\input texinfo @c -*-texinfo-*-

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
@setfilename documentlanguage.info

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


$result_texts{'documentlanguage_option'} = '

top section
***********

1 Chapter
*********

chapter.

Method on class: data-type name arguments
Some text.


';

$result_sectioning{'documentlanguage_option'} = {
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
                    'isindex' => 1,
                    'normalized' => 'chapter'
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
$result_sectioning{'documentlanguage_option'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'documentlanguage_option'}{'structure'}{'section_childs'}[0];
$result_sectioning{'documentlanguage_option'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_prev'} = $result_sectioning{'documentlanguage_option'}{'structure'}{'section_childs'}[0];
$result_sectioning{'documentlanguage_option'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_up'} = $result_sectioning{'documentlanguage_option'}{'structure'}{'section_childs'}[0];
$result_sectioning{'documentlanguage_option'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'documentlanguage_option'};

$result_nodes{'documentlanguage_option'} = {
  'cmdname' => 'node',
  'extra' => {
    'associated_section' => {
      'cmdname' => 'top',
      'extra' => {},
      'info' => {},
      'structure' => {}
    },
    'normalized' => 'Top'
  },
  'info' => {},
  'structure' => {
    'node_next' => {
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
        'isindex' => 1,
        'normalized' => 'chapter'
      },
      'info' => {},
      'structure' => {
        'node_prev' => {},
        'node_up' => {}
      }
    }
  }
};
$result_nodes{'documentlanguage_option'}{'structure'}{'node_next'}{'structure'}{'node_prev'} = $result_nodes{'documentlanguage_option'};
$result_nodes{'documentlanguage_option'}{'structure'}{'node_next'}{'structure'}{'node_up'} = $result_nodes{'documentlanguage_option'};

$result_menus{'documentlanguage_option'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  },
  'info' => {},
  'structure' => {}
};

$result_errors{'documentlanguage_option'} = [];


$result_floats{'documentlanguage_option'} = {};


$result_indices_sort_strings{'documentlanguage_option'} = {
  'fn' => [
    'name de class'
  ]
};


1;
