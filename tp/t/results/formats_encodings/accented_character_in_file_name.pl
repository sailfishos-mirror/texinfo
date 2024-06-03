use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'accented_character_in_file_name'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => '\\input texinfo.tex
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
                      'text' => "os\x{e9}_utf8.info"
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
              'cmdname' => 'setfilename',
              'extra' => {
                'text_arg' => "os\x{e9}_utf8.info"
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'file_name' => 'osÃ©_utf8.texi',
                'line_nr' => 3
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
        'file_name' => 'osÃ©_utf8.texi',
        'line_nr' => 5
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'text' => "T\x{f4}p"
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
        'file_name' => 'osÃ©_utf8.texi',
        'line_nr' => 6
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'text' => "Chapt\x{ea}ur"
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
        'normalized' => 'Chapt_00eaur'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'file_name' => 'osÃ©_utf8.texi',
        'line_nr' => 8
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'text' => "Chapte\x{f9}r"
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
          'source_marks' => [
            {
              'counter' => 1,
              'element' => {
                'args' => [
                  {
                    'contents' => [
                      {
                        'text' => "T\x{db}T"
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
                'cmdname' => 'ifset',
                'contents' => [
                  {
                    'text' => "isset T\x{db}T
",
                    'type' => 'raw'
                  },
                  {
                    'args' => [
                      {
                        'contents' => [
                          {
                            'text' => 'ifset'
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
                      'text_arg' => 'ifset'
                    },
                    'info' => {
                      'spaces_before_argument' => {
                        'text' => ' '
                      }
                    },
                    'source_info' => {
                      'file_name' => 'osÃ©_utf8.texi',
                      'line_nr' => 13
                    }
                  }
                ],
                'info' => {
                  'spaces_before_argument' => {
                    'text' => ' '
                  }
                },
                'source_info' => {
                  'file_name' => 'osÃ©_utf8.texi',
                  'line_nr' => 11
                }
              },
              'position' => 1,
              'sourcemark_type' => 'ignored_conditional_block'
            }
          ],
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
          'contents' => [
            {
              'text' => "value v\x{f9}r "
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => "v\x{f9}r"
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'cmdname' => 'value'
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
                  'text' => "included_ak\x{e7}ent\x{ea}d.texi"
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
          'cmdname' => 'include',
          'extra' => {
            'text_arg' => "included_ak\x{e7}ent\x{ea}d.texi"
          },
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'file_name' => 'osÃ©_utf8.texi',
            'line_nr' => 17
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
                  'text' => "an_\x{ef}mage"
                }
              ],
              'type' => 'brace_arg'
            },
            {
              'type' => 'brace_arg'
            },
            {
              'type' => 'brace_arg'
            },
            {
              'contents' => [
                {
                  'text' => "\x{f6}ld"
                }
              ],
              'type' => 'brace_arg'
            }
          ],
          'cmdname' => 'image',
          'extra' => {
            'input_encoding_name' => 'utf-8'
          },
          'source_info' => {
            'file_name' => 'osÃ©_utf8.texi',
            'line_nr' => 19
          }
        },
        {
          'text' => '
'
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'text' => 'an_'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'args' => [
                            {
                              'contents' => [
                                {
                                  'text' => 'i'
                                }
                              ],
                              'type' => 'brace_container'
                            }
                          ],
                          'cmdname' => 'dotless',
                          'source_info' => {
                            'file_name' => 'osÃ©_utf8.texi',
                            'line_nr' => 20
                          }
                        }
                      ],
                      'type' => 'brace_container'
                    }
                  ],
                  'cmdname' => '"',
                  'source_info' => {
                    'file_name' => 'osÃ©_utf8.texi',
                    'line_nr' => 20
                  }
                },
                {
                  'text' => 'mage'
                }
              ],
              'type' => 'brace_arg'
            },
            {
              'type' => 'brace_arg'
            },
            {
              'type' => 'brace_arg'
            },
            {
              'contents' => [
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'text' => 'o'
                        }
                      ],
                      'type' => 'following_arg'
                    }
                  ],
                  'cmdname' => '"',
                  'source_info' => {
                    'file_name' => 'osÃ©_utf8.texi',
                    'line_nr' => 20
                  }
                },
                {
                  'text' => 'ld'
                }
              ],
              'type' => 'brace_arg'
            }
          ],
          'cmdname' => 'image',
          'extra' => {
            'input_encoding_name' => 'utf-8'
          },
          'source_info' => {
            'file_name' => 'osÃ©_utf8.texi',
            'line_nr' => 20
          }
        },
        {
          'text' => '
'
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
                  'text' => "txt_\x{e7}image"
                }
              ],
              'type' => 'brace_arg'
            }
          ],
          'cmdname' => 'image',
          'extra' => {
            'input_encoding_name' => 'utf-8'
          },
          'source_info' => {
            'file_name' => 'osÃ©_utf8.texi',
            'line_nr' => 22
          }
        },
        {
          'text' => '
'
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
                  'text' => "d\x{ee}rectory/im\x{e0}ge"
                }
              ],
              'type' => 'brace_arg'
            },
            {
              'type' => 'brace_arg'
            },
            {
              'type' => 'brace_arg'
            },
            {
              'contents' => [
                {
                  'text' => "\x{e2}lt"
                }
              ],
              'type' => 'brace_arg'
            },
            {
              'contents' => [
                {
                  'text' => ".\x{ea}xt"
                }
              ],
              'type' => 'brace_arg'
            }
          ],
          'cmdname' => 'image',
          'extra' => {
            'input_encoding_name' => 'utf-8'
          },
          'source_info' => {
            'file_name' => 'osÃ©_utf8.texi',
            'line_nr' => 24
          }
        },
        {
          'text' => '
'
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
                  'text' => "not_exist\x{ef}ng.t\x{e9}xi"
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
          'cmdname' => 'include',
          'extra' => {
            'text_arg' => "not_exist\x{ef}ng.t\x{e9}xi"
          },
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'file_name' => 'osÃ©_utf8.texi',
            'line_nr' => 26
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
                  'text' => "included_ak\x{e7}ent\x{ea}d.texi"
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
          'cmdname' => 'verbatiminclude',
          'extra' => {
            'input_encoding_name' => 'utf-8',
            'text_arg' => "included_ak\x{e7}ent\x{ea}d.texi"
          },
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'file_name' => 'osÃ©_utf8.texi',
            'line_nr' => 28
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
                  'text' => "vi_not_exist\x{ef}ng.t\x{e9}xi"
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
          'cmdname' => 'verbatiminclude',
          'extra' => {
            'input_encoding_name' => 'utf-8',
            'text_arg' => "vi_not_exist\x{ef}ng.t\x{e9}xi"
          },
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'file_name' => 'osÃ©_utf8.texi',
            'line_nr' => 30
          }
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
        'file_name' => 'osÃ©_utf8.texi',
        'line_nr' => 9
      }
    }
  ],
  'type' => 'document_root'
};

$result_texis{'accented_character_in_file_name'} = '\\input texinfo.tex

@setfilename osé_utf8.info

@node Top
@top Tôp

@node Chaptêur
@chapter Chapteùr


value vùr @value{vùr}.

@include included_akçentêd.texi

@image{an_ïmage,,,öld}
@image{an_@"{@dotless{i}}mage,,,@"old}

@image{txt_çimage}

@image{dîrectory/imàge,,,âlt,.êxt}

@include not_existïng.téxi

@verbatiminclude included_akçentêd.texi

@verbatiminclude vi_not_existïng.téxi
';


$result_texts{'accented_character_in_file_name'} = '
Tôp
***

1 Chapteùr
**********


value vùr vùr.


an_ïmage
an_i"mage

txt_çimage

dîrectory/imàge



';

$result_sectioning{'accented_character_in_file_name'} = {
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
                    'normalized' => 'Chapt_00eaur'
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
$result_sectioning{'accented_character_in_file_name'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'accented_character_in_file_name'}{'extra'}{'section_childs'}[0];
$result_sectioning{'accented_character_in_file_name'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'accented_character_in_file_name'}{'extra'}{'section_childs'}[0];
$result_sectioning{'accented_character_in_file_name'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'accented_character_in_file_name'}{'extra'}{'section_childs'}[0];
$result_sectioning{'accented_character_in_file_name'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'accented_character_in_file_name'};

$result_nodes{'accented_character_in_file_name'} = [
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
            'normalized' => 'Chapt_00eaur'
          }
        }
      },
      'normalized' => 'Top'
    }
  },
  {}
];
$result_nodes{'accented_character_in_file_name'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'accented_character_in_file_name'}[0];
$result_nodes{'accented_character_in_file_name'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'accented_character_in_file_name'}[0];
$result_nodes{'accented_character_in_file_name'}[1] = $result_nodes{'accented_character_in_file_name'}[0]{'extra'}{'node_directions'}{'next'};

$result_menus{'accented_character_in_file_name'} = [
  {
    'extra' => {
      'normalized' => 'Top'
    }
  },
  {
    'extra' => {
      'normalized' => 'Chapt_00eaur'
    }
  }
];

$result_errors{'accented_character_in_file_name'} = [
  {
    'error_line' => "warning: undefined flag: v\x{f9}r
",
    'file_name' => 'osÃ©_utf8.texi',
    'line_nr' => 15,
    'text' => "undefined flag: v\x{f9}r",
    'type' => 'warning'
  },
  {
    'error_line' => "\@include: could not find included_ak\x{e7}ent\x{ea}d.texi
",
    'file_name' => 'osÃ©_utf8.texi',
    'line_nr' => 17,
    'text' => "\@include: could not find included_ak\x{e7}ent\x{ea}d.texi",
    'type' => 'error'
  },
  {
    'error_line' => "\@include: could not find not_exist\x{ef}ng.t\x{e9}xi
",
    'file_name' => 'osÃ©_utf8.texi',
    'line_nr' => 26,
    'text' => "\@include: could not find not_exist\x{ef}ng.t\x{e9}xi",
    'type' => 'error'
  }
];


$result_floats{'accented_character_in_file_name'} = {};


$result_converted_errors{'file_html'}->{'accented_character_in_file_name'} = [
  {
    'error_line' => "warning: \@image file `an_\x{ef}mage' (for HTML) not found, using `an_\x{ef}mage.jpg'
",
    'file_name' => 'osÃ©_utf8.texi',
    'line_nr' => 19,
    'text' => "\@image file `an_\x{ef}mage' (for HTML) not found, using `an_\x{ef}mage.jpg'",
    'type' => 'warning'
  },
  {
    'error_line' => "warning: \@image file `an_\x{ef}mage' (for HTML) not found, using `an_\x{ef}mage.jpg'
",
    'file_name' => 'osÃ©_utf8.texi',
    'line_nr' => 20,
    'text' => "\@image file `an_\x{ef}mage' (for HTML) not found, using `an_\x{ef}mage.jpg'",
    'type' => 'warning'
  },
  {
    'error_line' => "warning: \@image file `txt_\x{e7}image' (for HTML) not found, using `txt_\x{e7}image.jpg'
",
    'file_name' => 'osÃ©_utf8.texi',
    'line_nr' => 22,
    'text' => "\@image file `txt_\x{e7}image' (for HTML) not found, using `txt_\x{e7}image.jpg'",
    'type' => 'warning'
  },
  {
    'error_line' => "warning: \@image file `d\x{ee}rectory/im\x{e0}ge' (for HTML) not found, using `d\x{ee}rectory/im\x{e0}ge.\x{ea}xt'
",
    'file_name' => 'osÃ©_utf8.texi',
    'line_nr' => 24,
    'text' => "\@image file `d\x{ee}rectory/im\x{e0}ge' (for HTML) not found, using `d\x{ee}rectory/im\x{e0}ge.\x{ea}xt'",
    'type' => 'warning'
  },
  {
    'error_line' => "\@verbatiminclude: could not find included_ak\x{e7}ent\x{ea}d.texi
",
    'file_name' => 'osÃ©_utf8.texi',
    'line_nr' => 28,
    'text' => "\@verbatiminclude: could not find included_ak\x{e7}ent\x{ea}d.texi",
    'type' => 'error'
  },
  {
    'error_line' => "\@verbatiminclude: could not find vi_not_exist\x{ef}ng.t\x{e9}xi
",
    'file_name' => 'osÃ©_utf8.texi',
    'line_nr' => 30,
    'text' => "\@verbatiminclude: could not find vi_not_exist\x{ef}ng.t\x{e9}xi",
    'type' => 'error'
  }
];


$result_converted_errors{'file_info'}->{'accented_character_in_file_name'} = [
  {
    'error_line' => "warning: could not find \@image file `txt_\x{e7}image.txt' nor alternate text
",
    'file_name' => 'osÃ©_utf8.texi',
    'line_nr' => 22,
    'text' => "could not find \@image file `txt_\x{e7}image.txt' nor alternate text",
    'type' => 'warning'
  },
  {
    'error_line' => "\@verbatiminclude: could not find included_ak\x{e7}ent\x{ea}d.texi
",
    'file_name' => 'osÃ©_utf8.texi',
    'line_nr' => 28,
    'text' => "\@verbatiminclude: could not find included_ak\x{e7}ent\x{ea}d.texi",
    'type' => 'error'
  },
  {
    'error_line' => "\@verbatiminclude: could not find vi_not_exist\x{ef}ng.t\x{e9}xi
",
    'file_name' => 'osÃ©_utf8.texi',
    'line_nr' => 30,
    'text' => "\@verbatiminclude: could not find vi_not_exist\x{ef}ng.t\x{e9}xi",
    'type' => 'error'
  }
];


1;
