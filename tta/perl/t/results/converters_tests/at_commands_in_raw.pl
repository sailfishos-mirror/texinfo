use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'at_commands_in_raw'} = {
  'contents' => [
    {
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
        },
        {
          'cmdname' => 'macro',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => ' othermacro{}
',
                  'type' => 'macro_line'
                }
              ],
              'type' => 'arguments_line'
            },
            {
              'text' => 'Other macro
',
              'type' => 'raw'
            },
            {
              'cmdname' => 'end',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'macro'
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
                'text_arg' => 'macro'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 6
              }
            }
          ],
          'extra' => {
            'macro_name' => 'othermacro',
            'misc_args' => []
          },
          'source_info' => {
            'line_nr' => 4
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
        }
      ],
      'extra' => {
        'is_target' => 1,
        'isindex' => 1,
        'normalized' => 'chap'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 8
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
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'html',
          'contents' => [
            {
              'contents' => [
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
              'type' => 'arguments_line'
            },
            {
              'contents' => [
                {
                  'text' => '<b>in b'
                },
                {
                  'cmdname' => 'footnote',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'in footnote'
                            }
                          ],
                          'type' => 'paragraph'
                        }
                      ],
                      'type' => 'brace_command_context'
                    }
                  ],
                  'extra' => {},
                  'source_info' => {
                    'line_nr' => 12
                  }
                },
                {
                  'text' => '.</b>
'
                },
                {
                  'cmdname' => 'anchor',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'anchor in html'
                        }
                      ],
                      'type' => 'brace_arg'
                    }
                  ],
                  'extra' => {
                    'is_target' => 1,
                    'normalized' => 'anchor-in-html'
                  },
                  'source_info' => {
                    'line_nr' => 13
                  }
                },
                {
                  'text' => '
',
                  'type' => 'spaces_after_close_brace'
                }
              ],
              'type' => 'rawpreformatted'
            },
            {
              'cmdname' => 'end',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'html'
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
                'text_arg' => 'html'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 14
              }
            }
          ],
          'source_info' => {
            'line_nr' => 11
          }
        },
        {
          'contents' => [
            {
              'cmdname' => 'kbd',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'in kbd before tex'
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 15
              }
            },
            {
              'cmdname' => 'footnote',
              'contents' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'second footnote'
                        }
                      ],
                      'type' => 'paragraph'
                    }
                  ],
                  'type' => 'brace_command_context'
                }
              ],
              'extra' => {},
              'source_info' => {
                'line_nr' => 15
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
          'cmdname' => 'tex',
          'contents' => [
            {
              'contents' => [
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
              'type' => 'arguments_line'
            },
            {
              'contents' => [
                {
                  'text' => '@kbdinputstyle code
',
                  'type' => 'raw'
                },
                {
                  'text' => 'in tex@footnote{footnote in tex}
',
                  'type' => 'raw'
                },
                {
                  'text' => '@anchor{anchor in tex}
',
                  'type' => 'raw'
                },
                {
                  'text' => '@cindex entry
',
                  'type' => 'raw'
                },
                {
                  'text' => '@findex fentry1
',
                  'type' => 'raw'
                },
                {
                  'text' => '
',
                  'type' => 'raw'
                },
                {
                  'text' => '@float Figs, f1
',
                  'type' => 'raw'
                },
                {
                  'text' => 'Float
',
                  'type' => 'raw'
                },
                {
                  'text' => '@caption{Fcaption}
',
                  'type' => 'raw'
                },
                {
                  'text' => '@end float
',
                  'type' => 'raw'
                },
                {
                  'text' => '
',
                  'type' => 'raw'
                },
                {
                  'text' => '@menu
',
                  'type' => 'raw'
                },
                {
                  'text' => '* n::
',
                  'type' => 'raw'
                },
                {
                  'text' => '@end menu
',
                  'type' => 'raw'
                },
                {
                  'text' => '
',
                  'type' => 'raw'
                },
                {
                  'text' => '@acronym{FF, Fi Foo}
',
                  'type' => 'raw'
                },
                {
                  'text' => '
',
                  'type' => 'raw'
                },
                {
                  'text' => '@synindex cp fn
',
                  'type' => 'raw'
                },
                {
                  'text' => '
',
                  'type' => 'raw'
                },
                {
                  'text' => '@defindex new
',
                  'type' => 'raw'
                },
                {
                  'text' => '
',
                  'type' => 'raw'
                },
                {
                  'text' => '@definfoenclose a,:,:
',
                  'type' => 'raw'
                },
                {
                  'text' => '
',
                  'type' => 'raw'
                },
                {
                  'text' => '@alias moviecite = cite
',
                  'type' => 'raw'
                },
                {
                  'text' => '
',
                  'type' => 'raw'
                },
                {
                  'text' => '@documentlanguage fr
',
                  'type' => 'raw'
                },
                {
                  'text' => '
',
                  'type' => 'raw'
                },
                {
                  'text' => '@errormsg{mymsg}
',
                  'type' => 'raw'
                },
                {
                  'text' => '
',
                  'type' => 'raw'
                },
                {
                  'text' => '@ref{Somewhere}.
',
                  'type' => 'raw'
                },
                {
                  'text' => '
',
                  'type' => 'raw'
                },
                {
                  'text' => '@set flag soemthing
',
                  'type' => 'raw'
                },
                {
                  'text' => '
',
                  'type' => 'raw'
                },
                {
                  'text' => '@macro mymacro{}
',
                  'type' => 'raw'
                },
                {
                  'text' => 'truc
',
                  'type' => 'raw'
                },
                {
                  'text' => '@end macro
',
                  'type' => 'raw'
                },
                {
                  'text' => '
',
                  'type' => 'raw'
                },
                {
                  'text' => '@macro macroarg{arg}
',
                  'type' => 'raw'
                },
                {
                  'text' => 'Some \\arg\\.
',
                  'type' => 'raw'
                },
                {
                  'text' => '@end macro
',
                  'type' => 'raw'
                },
                {
                  'text' => '
',
                  'type' => 'raw'
                },
                {
                  'text' => '@unmacro othermacro
',
                  'type' => 'raw'
                },
                {
                  'text' => '
',
                  'type' => 'raw'
                }
              ],
              'type' => 'elided_rawpreformatted'
            },
            {
              'cmdname' => 'end',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'tex'
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
                'text_arg' => 'tex'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 61
              }
            }
          ],
          'source_info' => {
            'line_nr' => 17
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'value',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'flag'
                }
              ],
              'type' => 'brace_container'
            }
          ]
        },
        {
          'contents' => [
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
          'contents' => [
            {
              'cmdname' => 'kbd',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'in kbd after tex'
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 67
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
          'contents' => [
            {
              'cmdname' => 'xref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'anchor in html'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'anchor-in-html'
                  },
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'line_nr' => 69
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
          'contents' => [
            {
              'cmdname' => 'ref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'anchor in tex'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'anchor-in-tex'
                  },
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'line_nr' => 71
              }
            },
            {
              'text' => '.
'
            },
            {
              'cmdname' => 'findex',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'fentry2'
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
                'line_nr' => 72
              },
              'type' => 'index_entry_command'
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
          'text' => ' ',
          'type' => 'spaces_before_paragraph'
        },
        {
          'contents' => [
            {
              'text' => 'newidx entry
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
            'line_nr' => 76
          }
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
            'line_nr' => 77
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'listoffloats',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'Figs'
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
            'float_type' => 'Figs'
          },
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 79
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'cmdname' => 'acronym',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'FF'
                    }
                  ],
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'line_nr' => 81
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
          'contents' => [
            {
              'text' => 'tt.
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
          'contents' => [
            {
              'text' => 'movie name
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
          'contents' => [
            {
              'source_marks' => [
                {
                  'counter' => 1,
                  'element' => {
                    'contents' => [
                      {
                        'type' => 'brace_arg'
                      }
                    ],
                    'info' => {
                      'command_name' => 'othermacro'
                    },
                    'type' => 'macro_call'
                  },
                  'position' => 20,
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'start'
                },
                {
                  'counter' => 1,
                  'position' => 31,
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'end'
                }
              ],
              'text' => 'Macro not unmacroed Other macro.
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
          'contents' => [
            {
              'text' => 'Macros that should not be defined: . with arg.
'
            }
          ],
          'type' => 'paragraph'
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
        'line_nr' => 9
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'at_commands_in_raw'}{'contents'}[4]{'contents'}[14]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'at_commands_in_raw'}{'contents'}[4]{'contents'}[14]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'at_commands_in_raw'}{'contents'}[4]{'contents'}[16]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'at_commands_in_raw'}{'contents'}[4]{'contents'}[16]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'at_commands_in_raw'}{'contents'}[4]{'contents'}[16]{'contents'}[2]{'extra'}{'element_node'} = $result_trees{'at_commands_in_raw'}{'contents'}[3];

$result_texis{'at_commands_in_raw'} = '@node Top
@top top

@macro othermacro{}
Other macro
@end macro

@node chap
@chapter Chapter

@html
<b>in b@footnote{in footnote}.</b>
@anchor{anchor in html}
@end html
@kbd{in kbd before tex}@footnote{second footnote}.

@tex
@kbdinputstyle code
in tex@footnote{footnote in tex}
@anchor{anchor in tex}
@cindex entry
@findex fentry1

@float Figs, f1
Float
@caption{Fcaption}
@end float

@menu
* n::
@end menu

@acronym{FF, Fi Foo}

@synindex cp fn

@defindex new

@definfoenclose a,:,:

@alias moviecite = cite

@documentlanguage fr

@errormsg{mymsg}

@ref{Somewhere}.

@set flag soemthing

@macro mymacro{}
truc
@end macro

@macro macroarg{arg}
Some \\arg\\.
@end macro

@unmacro othermacro

@end tex



@value{flag}.

@kbd{in kbd after tex}.

@xref{anchor in html}.

@ref{anchor in tex}.
@findex fentry2

 newidx entry

@printindex cp
@printindex fn

@listoffloats Figs

@acronym{FF}.

tt.

movie name

Macro not unmacroed Other macro.

Macros that should not be defined: . with arg.

';


$result_texts{'at_commands_in_raw'} = 'top
***


1 Chapter
*********

<b>in b.</b>
in kbd before tex.




flag.

in kbd after tex.

anchor in html.

anchor in tex.

newidx entry



FF.

tt.

movie name

Macro not unmacroed Other macro.

Macros that should not be defined: . with arg.

';

$result_sectioning{'at_commands_in_raw'} = {
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
                    'isindex' => 1,
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
$result_sectioning{'at_commands_in_raw'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'at_commands_in_raw'}{'extra'}{'section_childs'}[0];
$result_sectioning{'at_commands_in_raw'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'at_commands_in_raw'}{'extra'}{'section_childs'}[0];
$result_sectioning{'at_commands_in_raw'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'at_commands_in_raw'}{'extra'}{'section_childs'}[0];
$result_sectioning{'at_commands_in_raw'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'at_commands_in_raw'};

$result_nodes{'at_commands_in_raw'} = [
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
            'isindex' => 1,
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
$result_nodes{'at_commands_in_raw'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'at_commands_in_raw'}[0];
$result_nodes{'at_commands_in_raw'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'at_commands_in_raw'}[0];
$result_nodes{'at_commands_in_raw'}[1] = $result_nodes{'at_commands_in_raw'}[0]{'extra'}{'node_directions'}{'next'};

$result_menus{'at_commands_in_raw'} = [
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

$result_errors{'at_commands_in_raw'} = [
  {
    'error_line' => 'warning: undefined flag: flag
',
    'line_nr' => 65,
    'text' => 'undefined flag: flag',
    'type' => 'warning'
  },
  {
    'error_line' => 'unknown command `newindex\'
',
    'line_nr' => 74,
    'text' => 'unknown command `newindex\'',
    'type' => 'error'
  },
  {
    'error_line' => 'unknown command `a\'
',
    'line_nr' => 83,
    'text' => 'unknown command `a\'',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced {
',
    'line_nr' => 83,
    'text' => 'misplaced {',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced }
',
    'line_nr' => 83,
    'text' => 'misplaced }',
    'type' => 'error'
  },
  {
    'error_line' => 'unknown command `moviecite\'
',
    'line_nr' => 85,
    'text' => 'unknown command `moviecite\'',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced {
',
    'line_nr' => 85,
    'text' => 'misplaced {',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced }
',
    'line_nr' => 85,
    'text' => 'misplaced }',
    'type' => 'error'
  },
  {
    'error_line' => 'unknown command `mymacro\'
',
    'line_nr' => 89,
    'text' => 'unknown command `mymacro\'',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced {
',
    'line_nr' => 89,
    'text' => 'misplaced {',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced }
',
    'line_nr' => 89,
    'text' => 'misplaced }',
    'type' => 'error'
  },
  {
    'error_line' => 'unknown command `macroarg\'
',
    'line_nr' => 89,
    'text' => 'unknown command `macroarg\'',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced {
',
    'line_nr' => 89,
    'text' => 'misplaced {',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced }
',
    'line_nr' => 89,
    'text' => 'misplaced }',
    'type' => 'error'
  },
  {
    'error_line' => '@ref reference to nonexistent node `anchor in tex\'
',
    'line_nr' => 71,
    'text' => '@ref reference to nonexistent node `anchor in tex\'',
    'type' => 'error'
  }
];


$result_floats{'at_commands_in_raw'} = {};


$result_indices_sort_strings{'at_commands_in_raw'} = {
  'fn' => [
    'fentry2'
  ]
};



$result_converted{'plaintext'}->{'at_commands_in_raw'} = 'top
***

1 Chapter
*********

<b>in b(1).</b>
   ‘in kbd before tex’(2).

   {No value for \'flag\'}
   .

   ‘in kbd after tex’.

   See anchor in html.

   anchor in tex.

   newidx entry

* Menu:

* fentry2:                               chap.                 (line 16)

   FF.

   tt.

   movie name

   Macro not unmacroed Other macro.

   Macros that should not be defined: .  with arg.

   ---------- Footnotes ----------

   (1) in footnote

   (2) second footnote

';


$result_converted{'html_text'}->{'at_commands_in_raw'} = '<div class="top-level-extent" id="Top">
<div class="nav-panel">
<p>
[<a href="#chap" title="Index" rel="index">Index</a>]</p>
</div>
<h1 class="top" id="top"><span>top<a class="copiable-link" href="#top"> &para;</a></span></h1>


<ul class="mini-toc">
<li><a href="#chap" accesskey="1">Chapter</a></li>
</ul>
<hr>
<div class="chapter-level-extent" id="chap">
<div class="nav-panel">
<p>
[<a href="#chap" title="Index" rel="index">Index</a>]</p>
</div>
<h2 class="chapter" id="Chapter"><span>1 Chapter<a class="copiable-link" href="#Chapter"> &para;</a></span></h2>

<b>in b<a class="footnote" id="DOCF1" href="#FOOT1"><sup>1</sup></a>.</b>
<a class="anchor" id="anchor-in-html"></a><p><kbd class="kbd">in kbd before tex</kbd><a class="footnote" id="DOCF2" href="#FOOT2"><sup>2</sup></a>.
</p>



{No value for &lsquo;flag&rsquo;}<p>.
</p>
<p><kbd class="kbd">in kbd after tex</kbd>.
</p>
<p>See <a class="xref" href="#anchor-in-html">anchor in html</a>.
</p>
<p>&lsquo;anchor in tex&rsquo;.
<a class="index-entry-id" id="index-fentry2"></a>
</p>
<p>newidx entry
</p>
<div class="printindex fn-printindex">
<table class="index-entries-printindex fn-entries-printindex">
<tr><th class="index-letter-header-printindex fn-letter-header-printindex" colspan="2" id="chap_fn_letter-F">F</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-fentry2"><code>fentry2</code></a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
</table>
</div>


<p><abbr class="acronym">FF</abbr>.
</p>
<p>tt.
</p>
<p>movie name
</p>
<p>Macro not unmacroed Other macro.
</p>
<p>Macros that should not be defined: . with arg.
</p>
</div>
</div>
<div class="footnotes-segment">
<hr>
<h4 class="footnotes-heading">Footnotes</h4>

<h5 class="footnote-body-heading"><a id="FOOT1" href="#DOCF1">(1)</a></h5>
<p>in footnote</p>
<h5 class="footnote-body-heading"><a id="FOOT2" href="#DOCF2">(2)</a></h5>
<p>second footnote</p>
</div>
';


$result_converted{'xml'}->{'at_commands_in_raw'} = '<node identifier="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">chap</nodenext></node>
<top spaces=" "><sectiontitle>top</sectiontitle>

<macro name="othermacro" line=" othermacro{}" endspaces=" ">
Other macro
</macro>

</top>
<node identifier="chap" spaces=" "><nodename>chap</nodename><nodeprev automatic="on">Top</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>Chapter</sectiontitle>

<b>in b<footnote><para>in footnote</para></footnote>.</b>
<anchor identifier="anchor-in-html">anchor in html</anchor>
<para><kbd>in kbd before tex</kbd><footnote><para>second footnote</para></footnote>.
</para>
<tex endspaces=" ">
@kbdinputstyle code
in tex@footnote{footnote in tex}
@anchor{anchor in tex}
@cindex entry
@findex fentry1

@float Figs, f1
Float
@caption{Fcaption}
@end float

@menu
* n::
@end menu

@acronym{FF, Fi Foo}

@synindex cp fn

@defindex new

@definfoenclose a,:,:

@alias moviecite = cite

@documentlanguage fr

@errormsg{mymsg}

@ref{Somewhere}.

@set flag soemthing

@macro mymacro{}
truc
@end macro

@macro macroarg{arg}
Some \\arg\\.
@end macro

@unmacro othermacro

</tex>



<para>.
</para>
<para><kbd>in kbd after tex</kbd>.
</para>
<para><xref label="anchor-in-html"><xrefnodename>anchor in html</xrefnodename></xref>.
</para>
<para><ref label="anchor-in-tex"><xrefnodename>anchor in tex</xrefnodename></ref>.
<findex index="fn" spaces=" "><indexterm index="fn" number="1">fentry2</indexterm></findex>
</para>
 <para>newidx entry
</para>
<printindex spaces=" " value="cp" line="cp"></printindex>
<printindex spaces=" " value="fn" line="fn"></printindex>

<listoffloats type="Figs" spaces=" ">Figs</listoffloats>

<para><acronym><acronymword>FF</acronymword></acronym>.
</para>
<para>tt.
</para>
<para>movie name
</para>
<para>Macro not unmacroed Other macro.
</para>
<para>Macros that should not be defined: . with arg.
</para>
</chapter>
';


$result_converted{'docbook'}->{'at_commands_in_raw'} = '<chapter label="1" id="chap">
<title>Chapter</title>

<b>in b<footnote><para>in footnote</para></footnote>.</b>
<anchor id="anchor-in-html"/><para><userinput>in kbd before tex</userinput><footnote><para>second footnote</para></footnote>.
</para>



<para>.
</para>
<para><userinput>in kbd after tex</userinput>.
</para>
<para>See <link linkend="anchor-in-html">anchor in html</link>.
</para>
<para><link linkend="anchor-in-tex">anchor in tex</link>.
<indexterm role="fn"><primary>fentry2</primary></indexterm>
</para>
<para>newidx entry
</para>
<index role="cp"></index>
<index role="fn"></index>


<para><acronym>FF</acronym>.
</para>
<para>tt.
</para>
<para>movie name
</para>
<para>Macro not unmacroed Other macro.
</para>
<para>Macros that should not be defined: . with arg.
</para>
</chapter>
';


$result_converted{'latex_text'}->{'at_commands_in_raw'} = '\\label{anchor:Top}%
\\chapter{{Chapter}}
\\label{anchor:chap}%

<b>in b\\footnote{in footnote}.</b>
\\label{anchor:anchor-in-html}%
\\Texinfocommandstyletextkbd{in kbd before tex}\\footnote{second footnote}.




\\{No value for `flag\'\\}.

\\Texinfocommandstyletextkbd{in kbd after tex}.

See \\hyperref[anchor:anchor-in-html]{[anchor in html], page~\\pageref*{anchor:anchor-in-html}}.

anchor in tex.
\\index[fn]{fentry2@\\texttt{fentry2}}%

 newidx entry

\\printindex[fn]


FF.

tt.

movie name

Macro not unmacroed Other macro.

Macros that should not be defined: . with arg.

';

1;
