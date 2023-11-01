use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'no_documentlanguage_before_copying'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'args' => [
                {
                  'info' => {
                    'spaces_after_argument' => {
                      'text' => '
'
                    }
                  },
                  'type' => 'block_line_arg'
                }
              ],
              'cmdname' => 'copying',
              'contents' => [
                {
                  'cmdname' => 'defivar',
                  'contents' => [
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'contents' => [
                                {
                                  'extra' => {
                                    'translation_context' => 'category of instance variables in object-oriented programming for @defivar'
                                  },
                                  'text' => 'Instance Variable',
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
                              'text' => 'copying'
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
                              'text' => 'a'
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
                                'def_role' => 'arg'
                              },
                              'text' => 'b'
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
                        'def_command' => 'defivar',
                        'def_index_element' => {
                          'contents' => [
                            {
                              'extra' => {
                                'def_role' => 'name'
                              },
                              'text' => 'a'
                            },
                            {
                              'text' => ' of '
                            },
                            {
                              'extra' => {
                                'def_role' => 'class'
                              },
                              'text' => 'copying'
                            }
                          ]
                        },
                        'def_index_ref_element' => {
                          'contents' => [
                            {
                              'extra' => {
                                'def_role' => 'name'
                              },
                              'text' => 'a'
                            },
                            {
                              'text' => ' of '
                            },
                            {
                              'extra' => {
                                'def_role' => 'class'
                              },
                              'text' => 'copying'
                            }
                          ]
                        },
                        'element_region' => 'copying',
                        'index_entry' => [
                          'vr',
                          1
                        ],
                        'original_def_cmdname' => 'defivar'
                      },
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 2,
                        'macro' => ''
                      },
                      'type' => 'def_line'
                    },
                    {
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'args' => [
                                {
                                  'type' => 'brace_command_arg'
                                }
                              ],
                              'cmdname' => 'error',
                              'source_info' => {
                                'file_name' => '',
                                'line_nr' => 3,
                                'macro' => ''
                              }
                            },
                            {
                              'text' => '
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
                              'text' => 'defivar'
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
                        'text_arg' => 'defivar'
                      },
                      'info' => {
                        'spaces_before_argument' => {
                          'text' => ' '
                        }
                      },
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 4,
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
                          'text' => 'copying'
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
                    'text_arg' => 'copying'
                  },
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 5,
                    'macro' => ''
                  }
                }
              ],
              'source_info' => {
                'file_name' => '',
                'line_nr' => 1,
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
        'is_target' => 1,
        'normalized' => 'Top'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'file_name' => '',
        'line_nr' => 7,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'text' => 'top'
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
        'file_name' => '',
        'line_nr' => 8,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'text' => 'chap'
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
        'is_target' => 1,
        'normalized' => 'chap'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'file_name' => '',
        'line_nr' => 10,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'text' => 'Chap'
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
          'args' => [
            {
              'contents' => [
                {
                  'text' => 'de'
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
            'text_arg' => 'de'
          },
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 13,
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
              'text' => '
',
              'type' => 'rawline_arg'
            }
          ],
          'cmdname' => 'insertcopying',
          'source_info' => {
            'file_name' => '',
            'line_nr' => 15,
            'macro' => ''
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'extra' => {
        'section_number' => '1'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'file_name' => '',
        'line_nr' => 11,
        'macro' => ''
      }
    }
  ],
  'type' => 'document_root'
};

$result_texis{'no_documentlanguage_before_copying'} = '@copying
@defivar copying a b
@error{}
@end defivar
@end copying

@node Top
@top top

@node chap
@chapter Chap

@documentlanguage de

@insertcopying

';


$result_texts{'no_documentlanguage_before_copying'} = '
top
***

1 Chap
******



';

$result_sectioning{'no_documentlanguage_before_copying'} = {
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
                    'normalized' => 'chap'
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
$result_sectioning{'no_documentlanguage_before_copying'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'no_documentlanguage_before_copying'}{'extra'}{'section_childs'}[0];
$result_sectioning{'no_documentlanguage_before_copying'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'no_documentlanguage_before_copying'}{'extra'}{'section_childs'}[0];
$result_sectioning{'no_documentlanguage_before_copying'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'no_documentlanguage_before_copying'}{'extra'}{'section_childs'}[0];
$result_sectioning{'no_documentlanguage_before_copying'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'no_documentlanguage_before_copying'};

$result_nodes{'no_documentlanguage_before_copying'} = [
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
              'prev' => {},
              'up' => {}
            },
            'normalized' => 'chap'
          }
        }
      },
      'normalized' => 'Top'
    }
  },
  {}
];
$result_nodes{'no_documentlanguage_before_copying'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'no_documentlanguage_before_copying'}[0];
$result_nodes{'no_documentlanguage_before_copying'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'no_documentlanguage_before_copying'}[0];
$result_nodes{'no_documentlanguage_before_copying'}[1] = $result_nodes{'no_documentlanguage_before_copying'}[0]{'extra'}{'node_directions'}{'next'};

$result_menus{'no_documentlanguage_before_copying'} = [
  {
    'extra' => {
      'normalized' => 'Top'
    }
  },
  {
    'extra' => {
      'normalized' => 'chap'
    }
  }
];

$result_errors{'no_documentlanguage_before_copying'} = [];


$result_floats{'no_documentlanguage_before_copying'} = {};


$result_indices_sort_strings{'no_documentlanguage_before_copying'} = {
  'vr' => [
    'a of copying'
  ]
};



$result_converted{'plaintext'}->{'no_documentlanguage_before_copying'} = 'top
***

1 Chap
******

 -- Instanzvariable of copying: a b
     error→

';

1;
