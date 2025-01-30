use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'printindex_set_direction'} = {
  'contents' => [
    {
      'contents' => [
        {
          'type' => 'preamble_before_content'
        }
      ],
      'type' => 'before_node_section'
    },
    {
      'cmdname' => 'node',
      'contents' => [
        {
          'contents' => [
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
          'type' => 'arguments_line'
        }
      ],
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
        'line_nr' => 1
      }
    },
    {
      'cmdname' => 'top',
      'contents' => [
        {
          'contents' => [
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
          'type' => 'arguments_line'
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
        'line_nr' => 2
      }
    },
    {
      'cmdname' => 'node',
      'contents' => [
        {
          'contents' => [
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
          'type' => 'arguments_line'
        }
      ],
      'extra' => {
        'is_target' => 1,
        'normalized' => 'Chapter'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 4
      }
    },
    {
      'cmdname' => 'chapter',
      'contents' => [
        {
          'contents' => [
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
          'type' => 'arguments_line'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'cindex',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'CC'
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
          'extra' => {
            'element_node' => {},
            'index_entry' => [
              'cp',
              1
            ]
          },
          'info' => {
            'command_name' => 'cindex',
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 7
          },
          'type' => 'index_entry_command'
        },
        {
          'cmdname' => 'vindex',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'VV'
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
          'extra' => {
            'element_node' => {},
            'index_entry' => [
              'vr',
              1
            ]
          },
          'info' => {
            'command_name' => 'vindex',
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 8
          },
          'type' => 'index_entry_command'
        },
        {
          'cmdname' => 'findex',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'FF'
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
          'extra' => {
            'element_node' => {},
            'index_entry' => [
              'fn',
              1
            ]
          },
          'info' => {
            'command_name' => 'findex',
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 9
          },
          'type' => 'index_entry_command'
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
        'line_nr' => 5
      }
    },
    {
      'cmdname' => 'node',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'Vindex'
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
          'type' => 'arguments_line'
        }
      ],
      'extra' => {
        'is_target' => 1,
        'isindex' => 1,
        'normalized' => 'Vindex'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 11
      }
    },
    {
      'cmdname' => 'appendix',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'Vindex'
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
          'type' => 'arguments_line'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'printindex',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'vr'
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
          'extra' => {
            'misc_args' => [
              'vr'
            ]
          },
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 14
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'extra' => {
        'section_number' => 'A'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 12
      }
    },
    {
      'cmdname' => 'node',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'Cindex'
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
          'type' => 'arguments_line'
        }
      ],
      'extra' => {
        'is_target' => 1,
        'isindex' => 1,
        'normalized' => 'Cindex'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 16
      }
    },
    {
      'cmdname' => 'appendix',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'Cindex'
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
          'type' => 'arguments_line'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'printindex',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'cp'
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
          'extra' => {
            'misc_args' => [
              'cp'
            ]
          },
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 19
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'extra' => {
        'section_number' => 'B'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 17
      }
    },
    {
      'cmdname' => 'node',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'Findex'
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
          'type' => 'arguments_line'
        }
      ],
      'extra' => {
        'is_target' => 1,
        'isindex' => 1,
        'normalized' => 'Findex'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 21
      }
    },
    {
      'cmdname' => 'appendix',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'Findex'
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
          'type' => 'arguments_line'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'printindex',
          'contents' => [
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
            'line_nr' => 24
          }
        }
      ],
      'extra' => {
        'section_number' => 'C'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 22
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'printindex_set_direction'}{'contents'}[4]{'contents'}[2]{'extra'}{'element_node'} = $result_trees{'printindex_set_direction'}{'contents'}[3];
$result_trees{'printindex_set_direction'}{'contents'}[4]{'contents'}[3]{'extra'}{'element_node'} = $result_trees{'printindex_set_direction'}{'contents'}[3];
$result_trees{'printindex_set_direction'}{'contents'}[4]{'contents'}[4]{'extra'}{'element_node'} = $result_trees{'printindex_set_direction'}{'contents'}[3];

$result_texis{'printindex_set_direction'} = '@node Top
@top top

@node Chapter
@chapter chap

@cindex CC
@vindex VV
@findex FF

@node Vindex
@appendix Vindex

@printindex vr

@node Cindex
@appendix Cindex

@printindex cp

@node Findex
@appendix Findex

@printindex fn
';


$result_texts{'printindex_set_direction'} = 'top
***

1 chap
******


Appendix A Vindex
*****************


Appendix B Cindex
*****************


Appendix C Findex
*****************

';

$result_sectioning{'printindex_set_direction'} = {
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
                    'normalized' => 'Chapter'
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
              'cmdname' => 'appendix',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'isindex' => 1,
                    'normalized' => 'Vindex'
                  }
                },
                'section_directions' => {
                  'prev' => {},
                  'up' => {}
                },
                'section_level' => 1,
                'section_number' => 'A',
                'toplevel_directions' => {
                  'prev' => {},
                  'up' => {}
                }
              }
            },
            {
              'cmdname' => 'appendix',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'isindex' => 1,
                    'normalized' => 'Cindex'
                  }
                },
                'section_directions' => {
                  'prev' => {},
                  'up' => {}
                },
                'section_level' => 1,
                'section_number' => 'B',
                'toplevel_directions' => {
                  'prev' => {},
                  'up' => {}
                }
              }
            },
            {
              'cmdname' => 'appendix',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'isindex' => 1,
                    'normalized' => 'Findex'
                  }
                },
                'section_directions' => {
                  'prev' => {},
                  'up' => {}
                },
                'section_level' => 1,
                'section_number' => 'C',
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
$result_sectioning{'printindex_set_direction'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'printindex_set_direction'}{'extra'}{'section_childs'}[0];
$result_sectioning{'printindex_set_direction'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'printindex_set_direction'}{'extra'}{'section_childs'}[0];
$result_sectioning{'printindex_set_direction'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'printindex_set_direction'}{'extra'}{'section_childs'}[0];
$result_sectioning{'printindex_set_direction'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'printindex_set_direction'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'printindex_set_direction'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'printindex_set_direction'}{'extra'}{'section_childs'}[0];
$result_sectioning{'printindex_set_direction'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'printindex_set_direction'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'printindex_set_direction'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'printindex_set_direction'}{'extra'}{'section_childs'}[0];
$result_sectioning{'printindex_set_direction'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[2]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'printindex_set_direction'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1];
$result_sectioning{'printindex_set_direction'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[2]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'printindex_set_direction'}{'extra'}{'section_childs'}[0];
$result_sectioning{'printindex_set_direction'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[2]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'printindex_set_direction'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1];
$result_sectioning{'printindex_set_direction'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[2]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'printindex_set_direction'}{'extra'}{'section_childs'}[0];
$result_sectioning{'printindex_set_direction'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[3]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'printindex_set_direction'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[2];
$result_sectioning{'printindex_set_direction'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[3]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'printindex_set_direction'}{'extra'}{'section_childs'}[0];
$result_sectioning{'printindex_set_direction'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[3]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'printindex_set_direction'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[2];
$result_sectioning{'printindex_set_direction'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[3]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'printindex_set_direction'}{'extra'}{'section_childs'}[0];
$result_sectioning{'printindex_set_direction'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'printindex_set_direction'};

$result_nodes{'printindex_set_direction'} = [
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
                    'cmdname' => 'appendix',
                    'extra' => {
                      'section_number' => 'A'
                    }
                  },
                  'isindex' => 1,
                  'node_directions' => {
                    'next' => {
                      'cmdname' => 'node',
                      'extra' => {
                        'associated_section' => {
                          'cmdname' => 'appendix',
                          'extra' => {
                            'section_number' => 'B'
                          }
                        },
                        'isindex' => 1,
                        'node_directions' => {
                          'next' => {
                            'cmdname' => 'node',
                            'extra' => {
                              'associated_section' => {
                                'cmdname' => 'appendix',
                                'extra' => {
                                  'section_number' => 'C'
                                }
                              },
                              'isindex' => 1,
                              'node_directions' => {
                                'prev' => {},
                                'up' => {}
                              },
                              'normalized' => 'Findex'
                            }
                          },
                          'prev' => {},
                          'up' => {}
                        },
                        'normalized' => 'Cindex'
                      }
                    },
                    'prev' => {},
                    'up' => {}
                  },
                  'normalized' => 'Vindex'
                }
              },
              'prev' => {},
              'up' => {}
            },
            'normalized' => 'Chapter'
          }
        }
      },
      'normalized' => 'Top'
    }
  },
  {},
  {},
  {},
  {}
];
$result_nodes{'printindex_set_direction'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'printindex_set_direction'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'printindex_set_direction'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'printindex_set_direction'}[0];
$result_nodes{'printindex_set_direction'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'printindex_set_direction'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'printindex_set_direction'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'printindex_set_direction'}[0];
$result_nodes{'printindex_set_direction'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'printindex_set_direction'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'printindex_set_direction'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'printindex_set_direction'}[0];
$result_nodes{'printindex_set_direction'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'printindex_set_direction'}[0];
$result_nodes{'printindex_set_direction'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'printindex_set_direction'}[0];
$result_nodes{'printindex_set_direction'}[1] = $result_nodes{'printindex_set_direction'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'printindex_set_direction'}[2] = $result_nodes{'printindex_set_direction'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'printindex_set_direction'}[3] = $result_nodes{'printindex_set_direction'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'printindex_set_direction'}[4] = $result_nodes{'printindex_set_direction'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};

$result_menus{'printindex_set_direction'} = [
  {
    'extra' => {
      'normalized' => 'Top'
    }
  },
  {
    'extra' => {
      'normalized' => 'Chapter'
    }
  },
  {
    'extra' => {
      'normalized' => 'Vindex'
    }
  },
  {
    'extra' => {
      'normalized' => 'Cindex'
    }
  },
  {
    'extra' => {
      'normalized' => 'Findex'
    }
  }
];

$result_errors{'printindex_set_direction'} = [];


$result_floats{'printindex_set_direction'} = {};


$result_indices_sort_strings{'printindex_set_direction'} = {
  'cp' => [
    'CC'
  ],
  'fn' => [
    'FF'
  ],
  'vr' => [
    'VV'
  ]
};


$result_converted_errors{'file_html'}->{'printindex_set_direction'} = [
  {
    'error_line' => 'warning: not setting an unknown direction: NewDirection
',
    'text' => 'not setting an unknown direction: NewDirection',
    'type' => 'warning'
  }
];


1;
