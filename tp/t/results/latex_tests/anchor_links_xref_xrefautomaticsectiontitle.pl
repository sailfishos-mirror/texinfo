use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text);

use utf8;

$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'anchor_links_xref_xrefautomaticsectiontitle.info'
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
          'cmdname' => 'setfilename',
          'extra' => {
            'spaces_before_argument' => ' ',
            'text_arg' => 'anchor_links_xref_xrefautomaticsectiontitle.info'
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
      'type' => 'text_root'
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'node before'
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
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'In node before
'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'anch: in node before'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'anchor',
              'contents' => [],
              'extra' => {
                'node_content' => [
                  {}
                ],
                'normalized' => 'anch_003a-in-node-before'
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 6,
                'macro' => ''
              },
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'empty_spaces_after_close_brace'
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
        },
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
            'normalized' => 'node-before'
          }
        ],
        'normalized' => 'node-before',
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
        'line_nr' => 8,
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
              'text' => 'top sectionning'
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
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'in node Top
'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'anch: in node top'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'anchor',
              'contents' => [],
              'extra' => {
                'node_content' => [
                  {}
                ],
                'normalized' => 'anch_003a-in-node-top'
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 12,
                'macro' => ''
              },
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'empty_spaces_after_close_brace'
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
        },
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
      'level' => 0,
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 9,
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
              'text' => 'after'
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
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'in node after
'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'anch: in node after'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'anchor',
              'contents' => [],
              'extra' => {
                'node_content' => [
                  {}
                ],
                'normalized' => 'anch_003a-in-node-after'
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 17,
                'macro' => ''
              },
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'empty_spaces_after_close_brace'
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
        },
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
            'normalized' => 'after'
          }
        ],
        'normalized' => 'after',
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
        'line_nr' => 19,
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
      'cmdname' => 'chapter',
      'contents' => [
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'in chap
'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'anch: in chap'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'anchor',
              'contents' => [],
              'extra' => {
                'node_content' => [
                  {}
                ],
                'normalized' => 'anch_003a-in-chap'
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 23,
                'macro' => ''
              },
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'empty_spaces_after_close_brace'
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
        },
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
                  'text' => 'on'
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
          'cmdname' => 'xrefautomaticsectiontitle',
          'extra' => {
            'misc_args' => [
              'on'
            ],
            'spaces_before_argument' => ' '
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 25,
            'macro' => ''
          },
          'parent' => {}
        },
        {
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'anch: in node before'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'xref',
              'contents' => [],
              'extra' => {
                'label' => {},
                'node_argument' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => 'anch_003a-in-node-before'
                }
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 26,
                'macro' => ''
              },
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '.
'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'anch: in node top'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'xref',
              'contents' => [],
              'extra' => {
                'label' => {},
                'node_argument' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => 'anch_003a-in-node-top'
                }
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 27,
                'macro' => ''
              },
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '.
'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'anch: in node after'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'xref',
              'contents' => [],
              'extra' => {
                'label' => {},
                'node_argument' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => 'anch_003a-in-node-after'
                }
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 28,
                'macro' => ''
              },
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '.
'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'anch: in chap'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'xref',
              'contents' => [],
              'extra' => {
                'label' => {},
                'node_argument' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => 'anch_003a-in-chap'
                }
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 29,
                'macro' => ''
              },
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '.
'
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
        },
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
                  'text' => 'off'
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
          'cmdname' => 'xrefautomaticsectiontitle',
          'extra' => {
            'misc_args' => [
              'off'
            ],
            'spaces_before_argument' => ' '
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 31,
            'macro' => ''
          },
          'parent' => {}
        },
        {
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'anch: in node before'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'xref',
              'contents' => [],
              'extra' => {
                'label' => {},
                'node_argument' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => 'anch_003a-in-node-before'
                }
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 32,
                'macro' => ''
              },
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '.
'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'anch: in node top'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'xref',
              'contents' => [],
              'extra' => {
                'label' => {},
                'node_argument' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => 'anch_003a-in-node-top'
                }
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 33,
                'macro' => ''
              },
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '.
'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'anch: in node after'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'xref',
              'contents' => [],
              'extra' => {
                'label' => {},
                'node_argument' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => 'anch_003a-in-node-after'
                }
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 34,
                'macro' => ''
              },
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '.
'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'anch: in chap'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'xref',
              'contents' => [],
              'extra' => {
                'label' => {},
                'node_argument' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => 'anch_003a-in-chap'
                }
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 35,
                'macro' => ''
              },
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '.
'
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
        }
      ],
      'extra' => {
        'spaces_before_argument' => ' '
      },
      'level' => 1,
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 20,
        'macro' => ''
      },
      'number' => 1,
      'parent' => {}
    }
  ],
  'type' => 'document_root'
};
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[0]{'contents'}[0];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[0];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[0];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[0]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'};
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[1]{'args'}[0];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[1];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[1];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[1]{'contents'}[1];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[1]{'contents'}[1]{'contents'}[1];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[1]{'contents'}[1];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[1]{'contents'}[1];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[1];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[1];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[1]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'};
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[2]{'args'}[0];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[2];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[2]{'extra'}{'node_content'}[0] = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[2]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[2]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'};
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[3]{'args'}[0];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[3];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[3];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[3]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[3]{'contents'}[1];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[3]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[3]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[3]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[3]{'contents'}[1]{'contents'}[1];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[3]{'contents'}[1]{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[3]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[3]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[3]{'contents'}[1];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[3]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[3]{'contents'}[1];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[3];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[3]{'contents'}[2]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[3];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[3]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'};
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[4]{'args'}[0];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[4];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[4];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[4]{'contents'}[1];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[4]{'contents'}[1]{'contents'}[1];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[4]{'contents'}[1];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[4]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[4]{'contents'}[1];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[4];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[4]{'contents'}[2]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[4];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[4]{'extra'}{'node_content'}[0] = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[4]{'args'}[0]{'contents'}[0];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[4]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[4]{'args'}[0]{'contents'}[0];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[4]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'};
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[5]{'args'}[0];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[5];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[5]{'extra'}{'node_content'}[0] = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[5]{'args'}[0]{'contents'}[0];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[5]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[5]{'args'}[0]{'contents'}[0];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[5]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'};
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'args'}[0];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[0]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[1];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[1]{'contents'}[1];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[1]{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[1];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[1];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[1]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[2]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[3]{'args'}[0];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[3];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[3]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[4]{'contents'}[0]{'args'}[0];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[4]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[4]{'contents'}[0];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[4]{'contents'}[0]{'extra'}{'label'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[1]{'contents'}[1]{'contents'}[1];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[4]{'contents'}[0]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[4];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[4];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[4]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[4]{'contents'}[2]{'args'}[0];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[4]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[4]{'contents'}[2];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[4]{'contents'}[2]{'extra'}{'label'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[3]{'contents'}[1]{'contents'}[1];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[4]{'contents'}[2]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[4]{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[4]{'contents'}[2]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[4];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[4]{'contents'}[3]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[4];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[4]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[4]{'contents'}[4]{'args'}[0];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[4]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[4]{'contents'}[4];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[4]{'contents'}[4]{'extra'}{'label'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[4]{'contents'}[1]{'contents'}[1];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[4]{'contents'}[4]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[4]{'contents'}[4]{'args'}[0]{'contents'}[0];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[4]{'contents'}[4]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[4];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[4]{'contents'}[5]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[4];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[4]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[4]{'contents'}[6]{'args'}[0];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[4]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[4]{'contents'}[6];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[4]{'contents'}[6]{'extra'}{'label'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[1]{'contents'}[1];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[4]{'contents'}[6]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[4]{'contents'}[6]{'args'}[0]{'contents'}[0];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[4]{'contents'}[6]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[4];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[4]{'contents'}[7]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[4];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[4]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[5]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[6]{'args'}[0];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[6];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[6]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[7]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[7]{'contents'}[0]{'args'}[0];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[7]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[7]{'contents'}[0];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[7]{'contents'}[0]{'extra'}{'label'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[1]{'contents'}[1]{'contents'}[1];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[7]{'contents'}[0]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[7]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[7]{'contents'}[0]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[7];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[7]{'contents'}[1]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[7];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[7]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[7]{'contents'}[2]{'args'}[0];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[7]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[7]{'contents'}[2];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[7]{'contents'}[2]{'extra'}{'label'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[3]{'contents'}[1]{'contents'}[1];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[7]{'contents'}[2]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[7]{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[7]{'contents'}[2]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[7];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[7]{'contents'}[3]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[7];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[7]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[7]{'contents'}[4]{'args'}[0];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[7]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[7]{'contents'}[4];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[7]{'contents'}[4]{'extra'}{'label'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[4]{'contents'}[1]{'contents'}[1];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[7]{'contents'}[4]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[7]{'contents'}[4]{'args'}[0]{'contents'}[0];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[7]{'contents'}[4]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[7];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[7]{'contents'}[5]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[7];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[7]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[7]{'contents'}[6]{'args'}[0];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[7]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[7]{'contents'}[6];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[7]{'contents'}[6]{'extra'}{'label'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[1]{'contents'}[1];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[7]{'contents'}[6]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[7]{'contents'}[6]{'args'}[0]{'contents'}[0];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[7]{'contents'}[6]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[7];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[7]{'contents'}[7]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[7];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'contents'}[7]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6];
$result_trees{'anchor_links_xref_xrefautomaticsectiontitle'}{'contents'}[6]{'parent'} = $result_trees{'anchor_links_xref_xrefautomaticsectiontitle'};

$result_texis{'anchor_links_xref_xrefautomaticsectiontitle'} = '@setfilename anchor_links_xref_xrefautomaticsectiontitle.info

@node node before

In node before
@anchor{anch: in node before}

@node Top
@top top sectionning

in node Top
@anchor{anch: in node top}

@node after

in node after
@anchor{anch: in node after}

@node chap
@chapter chap

in chap
@anchor{anch: in chap}

@xrefautomaticsectiontitle on
@xref{anch: in node before}.
@xref{anch: in node top}.
@xref{anch: in node after}.
@xref{anch: in chap}.

@xrefautomaticsectiontitle off
@xref{anch: in node before}.
@xref{anch: in node top}.
@xref{anch: in node after}.
@xref{anch: in chap}.
';


$result_texts{'anchor_links_xref_xrefautomaticsectiontitle'} = '

In node before

top sectionning
***************

in node Top


in node after

1 chap
******

in chap

anch: in node before.
anch: in node top.
anch: in node after.
anch: in chap.

anch: in node before.
anch: in node top.
anch: in node after.
anch: in chap.
';

$result_sectioning{'anchor_links_xref_xrefautomaticsectiontitle'} = {
  'level' => -1,
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
      'level' => 0,
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
          'level' => 1,
          'number' => 1,
          'section_up' => {},
          'toplevel_prev' => {},
          'toplevel_up' => {}
        }
      ],
      'section_up' => {}
    }
  ]
};
$result_sectioning{'anchor_links_xref_xrefautomaticsectiontitle'}{'section_childs'}[0]{'section_childs'}[0]{'section_up'} = $result_sectioning{'anchor_links_xref_xrefautomaticsectiontitle'}{'section_childs'}[0];
$result_sectioning{'anchor_links_xref_xrefautomaticsectiontitle'}{'section_childs'}[0]{'section_childs'}[0]{'toplevel_prev'} = $result_sectioning{'anchor_links_xref_xrefautomaticsectiontitle'}{'section_childs'}[0];
$result_sectioning{'anchor_links_xref_xrefautomaticsectiontitle'}{'section_childs'}[0]{'section_childs'}[0]{'toplevel_up'} = $result_sectioning{'anchor_links_xref_xrefautomaticsectiontitle'}{'section_childs'}[0];
$result_sectioning{'anchor_links_xref_xrefautomaticsectiontitle'}{'section_childs'}[0]{'section_up'} = $result_sectioning{'anchor_links_xref_xrefautomaticsectiontitle'};

$result_nodes{'anchor_links_xref_xrefautomaticsectiontitle'} = {
  'cmdname' => 'node',
  'extra' => {
    'associated_section' => {
      'cmdname' => 'top',
      'extra' => {
        'spaces_before_argument' => ' '
      },
      'level' => 0
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
        'level' => 1,
        'number' => 1
      },
      'normalized' => 'chap',
      'spaces_before_argument' => ' '
    },
    'node_prev' => {},
    'node_up' => {}
  }
};
$result_nodes{'anchor_links_xref_xrefautomaticsectiontitle'}{'node_next'}{'node_prev'} = $result_nodes{'anchor_links_xref_xrefautomaticsectiontitle'};
$result_nodes{'anchor_links_xref_xrefautomaticsectiontitle'}{'node_next'}{'node_up'} = $result_nodes{'anchor_links_xref_xrefautomaticsectiontitle'};

$result_menus{'anchor_links_xref_xrefautomaticsectiontitle'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top',
    'spaces_before_argument' => ' '
  }
};

$result_errors{'anchor_links_xref_xrefautomaticsectiontitle'} = [
  {
    'error_line' => ':3: warning: node `node before\' unreferenced
',
    'file_name' => '',
    'line_nr' => 3,
    'macro' => '',
    'text' => 'node `node before\' unreferenced',
    'type' => 'warning'
  },
  {
    'error_line' => ':14: warning: node `after\' unreferenced
',
    'file_name' => '',
    'line_nr' => 14,
    'macro' => '',
    'text' => 'node `after\' unreferenced',
    'type' => 'warning'
  }
];


$result_floats{'anchor_links_xref_xrefautomaticsectiontitle'} = {};



$result_converted{'latex'}->{'anchor_links_xref_xrefautomaticsectiontitle'} = '
\\label{anchor:node-before}%

In node before
\\label{anchor:anch_003a-in-node-before}%

\\label{anchor:after}%

in node after
\\label{anchor:anch_003a-in-node-after}%

\\chapter{chap}
\\label{anchor:chap}%

in chap
\\label{anchor:anch_003a-in-chap}%

See \\hyperref[anchor:anch_003a-in-node-before]{[top sectionning], page~\\pageref*{anchor:anch_003a-in-node-before}}.
See \\hyperref[anchor:anch_003a-in-node-top]{[top sectionning], page~\\pageref*{anchor:anch_003a-in-node-top}}.
See \\hyperref[anchor:anch_003a-in-node-after]{[top sectionning], page~\\pageref*{anchor:anch_003a-in-node-after}}.
See \\hyperref[anchor:anch_003a-in-chap]{[chap], page~\\pageref*{anchor:anch_003a-in-chap}}.

See \\hyperref[anchor:anch_003a-in-node-before]{[anch: in node before], page~\\pageref*{anchor:anch_003a-in-node-before}}.
See \\hyperref[anchor:anch_003a-in-node-top]{[anch: in node top], page~\\pageref*{anchor:anch_003a-in-node-top}}.
See \\hyperref[anchor:anch_003a-in-node-after]{[anch: in node after], page~\\pageref*{anchor:anch_003a-in-node-after}}.
See \\hyperref[anchor:anch_003a-in-chap]{[anch: in chap], page~\\pageref*{anchor:anch_003a-in-chap}}.
';

1;
