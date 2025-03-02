use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'inline_in_node'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'cmdname' => 'settitle',
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => 'inlineraw',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'html'
                            }
                          ],
                          'type' => 'brace_arg'
                        },
                        {
                          'contents' => [
                            {
                              'text' => '<strong class="ttitle">'
                            }
                          ],
                          'type' => 'brace_arg'
                        }
                      ],
                      'extra' => {
                        'expand_index' => 1,
                        'format' => 'html'
                      },
                      'source_info' => {
                        'line_nr' => 1
                      }
                    },
                    {
                      'text' => 'Title'
                    },
                    {
                      'cmdname' => 'inlineraw',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'html'
                            }
                          ],
                          'type' => 'brace_arg'
                        },
                        {
                          'contents' => [
                            {
                              'text' => '</strong>'
                            }
                          ],
                          'type' => 'brace_arg'
                        }
                      ],
                      'extra' => {
                        'expand_index' => 1,
                        'format' => 'html'
                      },
                      'source_info' => {
                        'line_nr' => 1
                      }
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
        'line_nr' => 3
      }
    },
    {
      'cmdname' => 'top',
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
      'source_info' => {
        'line_nr' => 4
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
                  'cmdname' => 'inlineraw',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'html'
                        }
                      ],
                      'type' => 'brace_arg'
                    },
                    {
                      'contents' => [
                        {
                          'text' => '<code class="tnode">'
                        }
                      ],
                      'type' => 'brace_arg'
                    }
                  ],
                  'extra' => {
                    'expand_index' => 1,
                    'format' => 'html'
                  },
                  'source_info' => {
                    'line_nr' => 6
                  }
                },
                {
                  'text' => 'One'
                },
                {
                  'cmdname' => 'inlineraw',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'html'
                        }
                      ],
                      'type' => 'brace_arg'
                    },
                    {
                      'contents' => [
                        {
                          'text' => '</code>'
                        }
                      ],
                      'type' => 'brace_arg'
                    }
                  ],
                  'extra' => {
                    'expand_index' => 1,
                    'format' => 'html'
                  },
                  'source_info' => {
                    'line_nr' => 6
                  }
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
        'normalized' => 'htmlOnehtml'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 6
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
                  'cmdname' => 'inlineraw',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'html'
                        }
                      ],
                      'type' => 'brace_arg'
                    },
                    {
                      'contents' => [
                        {
                          'text' => '<span class="test">'
                        }
                      ],
                      'type' => 'brace_arg'
                    }
                  ],
                  'extra' => {
                    'expand_index' => 1,
                    'format' => 'html'
                  },
                  'source_info' => {
                    'line_nr' => 7
                  }
                },
                {
                  'text' => 'One'
                },
                {
                  'cmdname' => 'inlineraw',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'html'
                        }
                      ],
                      'type' => 'brace_arg'
                    },
                    {
                      'contents' => [
                        {
                          'text' => '</span>'
                        }
                      ],
                      'type' => 'brace_arg'
                    }
                  ],
                  'extra' => {
                    'expand_index' => 1,
                    'format' => 'html'
                  },
                  'source_info' => {
                    'line_nr' => 7
                  }
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
      'extra' => {
        'section_number' => '1'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 7
      }
    }
  ],
  'type' => 'document_root'
};

$result_texis{'inline_in_node'} = '@settitle @inlineraw{html,<strong class="ttitle">}Title@inlineraw{html,</strong>}

@node Top
@top

@node @inlineraw{html,<code class="tnode">}One@inlineraw{html,</code>}
@chapter @inlineraw{html,<span class="test">}One@inlineraw{html,</span>}

';


$result_texts{'inline_in_node'} = '

1 <span class="test">One</span>
*******************************

';

$result_sectioning{'inline_in_node'} = {
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
                    'normalized' => 'htmlOnehtml'
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
$result_sectioning{'inline_in_node'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'inline_in_node'}{'extra'}{'section_childs'}[0];
$result_sectioning{'inline_in_node'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'inline_in_node'}{'extra'}{'section_childs'}[0];
$result_sectioning{'inline_in_node'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'inline_in_node'}{'extra'}{'section_childs'}[0];
$result_sectioning{'inline_in_node'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'inline_in_node'};

$result_nodes{'inline_in_node'} = [
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
            'normalized' => 'htmlOnehtml'
          }
        }
      },
      'normalized' => 'Top'
    }
  },
  {}
];
$result_nodes{'inline_in_node'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'inline_in_node'}[0];
$result_nodes{'inline_in_node'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'inline_in_node'}[0];
$result_nodes{'inline_in_node'}[1] = $result_nodes{'inline_in_node'}[0]{'extra'}{'node_directions'}{'next'};

$result_menus{'inline_in_node'} = [
  {
    'extra' => {
      'normalized' => 'Top'
    }
  },
  {
    'extra' => {
      'normalized' => 'htmlOnehtml'
    }
  }
];

$result_errors{'inline_in_node'} = [];


$result_floats{'inline_in_node'} = {};


1;
