use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text);

use utf8;

$result_trees{'subentries'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'subentries.info'
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
            'text_arg' => 'subentries.info'
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
        'line_nr' => 3,
        'macro' => ''
      },
      'parent' => {}
    },
    {
      'args' => [
        {
          'contents' => [],
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
      'extra' => {},
      'level' => 0,
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 4,
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
              'text' => 'chapter index'
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
        'isindex' => 1,
        'node_content' => [
          {}
        ],
        'nodes_manuals' => [
          {
            'node_content' => [
              {}
            ],
            'normalized' => 'chapter-index'
          }
        ],
        'normalized' => 'chapter-index',
        'spaces_before_argument' => ' '
      },
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 6,
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
              'text' => 'Index'
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
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'a---a'
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
          'cmdname' => 'cindex',
          'extra' => {
            'index_entry' => {
              'command' => {},
              'content' => [],
              'content_normalized' => [],
              'in_code' => 0,
              'index_at_command' => 'cindex',
              'index_name' => 'cp',
              'index_type_command' => 'cindex',
              'key' => 'a--a',
              'node' => {},
              'number' => 1
            },
            'spaces_before_argument' => ' '
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 9,
            'macro' => ''
          },
          'parent' => {},
          'type' => 'index_entry_command'
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'b---b'
                }
              ],
              'extra' => {
                'spaces_after_argument' => ' '
              },
              'parent' => {},
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'cindex',
          'extra' => {
            'index_entry' => {
              'command' => {},
              'content' => [],
              'content_normalized' => [],
              'in_code' => 0,
              'index_at_command' => 'cindex',
              'index_name' => 'cp',
              'index_type_command' => 'cindex',
              'key' => 'b--b',
              'node' => {},
              'number' => 2
            },
            'spaces_before_argument' => ' ',
            'subentry' => {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'c---c'
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
              'cmdname' => 'subentry',
              'extra' => {
                'level' => 1,
                'spaces_before_argument' => ' '
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 10,
                'macro' => ''
              },
              'parent' => {}
            }
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 10,
            'macro' => ''
          },
          'parent' => {},
          'type' => 'index_entry_command'
        },
        {},
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'd---dd'
                }
              ],
              'extra' => {
                'spaces_after_argument' => ' '
              },
              'parent' => {},
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'cindex',
          'extra' => {
            'index_entry' => {
              'command' => {},
              'content' => [],
              'content_normalized' => [],
              'in_code' => 0,
              'index_at_command' => 'cindex',
              'index_name' => 'cp',
              'index_type_command' => 'cindex',
              'key' => 'd--dd',
              'node' => {},
              'number' => 3
            },
            'spaces_before_argument' => ' ',
            'subentry' => {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'e---ee'
                    }
                  ],
                  'extra' => {
                    'spaces_after_argument' => ' '
                  },
                  'parent' => {},
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'subentry',
              'extra' => {
                'level' => 1,
                'spaces_before_argument' => ' ',
                'subentry' => {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'f---ff'
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
                  'cmdname' => 'subentry',
                  'extra' => {
                    'level' => 2,
                    'spaces_before_argument' => ' '
                  },
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 11,
                    'macro' => ''
                  },
                  'parent' => {}
                }
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 11,
                'macro' => ''
              },
              'parent' => {}
            }
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 11,
            'macro' => ''
          },
          'parent' => {},
          'type' => 'index_entry_command'
        },
        {},
        {},
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'g---gg'
                }
              ],
              'extra' => {
                'spaces_after_argument' => ' '
              },
              'parent' => {},
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'cindex',
          'extra' => {
            'index_entry' => {
              'command' => {},
              'content' => [],
              'content_normalized' => [],
              'in_code' => 0,
              'index_at_command' => 'cindex',
              'index_name' => 'cp',
              'index_type_command' => 'cindex',
              'key' => 'g--gg',
              'node' => {},
              'number' => 4
            },
            'spaces_before_argument' => ' ',
            'subentry' => {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'h---hh jjj'
                    }
                  ],
                  'extra' => {
                    'spaces_after_argument' => ' '
                  },
                  'parent' => {},
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'subentry',
              'extra' => {
                'level' => 1,
                'spaces_before_argument' => ' ',
                'subentry' => {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'k---kk'
                        }
                      ],
                      'extra' => {
                        'spaces_after_argument' => ' '
                      },
                      'parent' => {},
                      'type' => 'line_arg'
                    }
                  ],
                  'cmdname' => 'subentry',
                  'extra' => {
                    'level' => 2,
                    'spaces_before_argument' => ' ',
                    'subentry' => {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'l---ll'
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
                      'cmdname' => 'subentry',
                      'extra' => {
                        'level' => 3,
                        'spaces_before_argument' => ' '
                      },
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 12,
                        'macro' => ''
                      },
                      'parent' => {}
                    }
                  },
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 12,
                    'macro' => ''
                  },
                  'parent' => {}
                }
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 12,
                'macro' => ''
              },
              'parent' => {}
            }
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 12,
            'macro' => ''
          },
          'parent' => {},
          'type' => 'index_entry_command'
        },
        {},
        {},
        {},
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
                  'text' => 'f---aa'
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
          'cmdname' => 'findex',
          'extra' => {
            'index_entry' => {
              'command' => {},
              'content' => [],
              'content_normalized' => [],
              'in_code' => 1,
              'index_at_command' => 'findex',
              'index_name' => 'fn',
              'index_type_command' => 'findex',
              'key' => 'f---aa',
              'node' => {},
              'number' => 1
            },
            'spaces_before_argument' => ' '
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 14,
            'macro' => ''
          },
          'parent' => {},
          'type' => 'index_entry_command'
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'f---bb'
                }
              ],
              'extra' => {
                'spaces_after_argument' => ' '
              },
              'parent' => {},
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'findex',
          'extra' => {
            'index_entry' => {
              'command' => {},
              'content' => [],
              'content_normalized' => [],
              'in_code' => 1,
              'index_at_command' => 'findex',
              'index_name' => 'fn',
              'index_type_command' => 'findex',
              'key' => 'f---bb',
              'node' => {},
              'number' => 2
            },
            'spaces_before_argument' => ' ',
            'subentry' => {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'f---cc'
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
              'cmdname' => 'subentry',
              'extra' => {
                'level' => 1,
                'spaces_before_argument' => ' '
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 15,
                'macro' => ''
              },
              'parent' => {}
            }
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 15,
            'macro' => ''
          },
          'parent' => {},
          'type' => 'index_entry_command'
        },
        {},
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'f---ddd'
                }
              ],
              'extra' => {
                'spaces_after_argument' => ' '
              },
              'parent' => {},
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'findex',
          'extra' => {
            'index_entry' => {
              'command' => {},
              'content' => [],
              'content_normalized' => [],
              'in_code' => 1,
              'index_at_command' => 'findex',
              'index_name' => 'fn',
              'index_type_command' => 'findex',
              'key' => 'f---ddd',
              'node' => {},
              'number' => 3
            },
            'spaces_before_argument' => ' ',
            'subentry' => {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'f---eee'
                    }
                  ],
                  'extra' => {
                    'spaces_after_argument' => ' '
                  },
                  'parent' => {},
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'subentry',
              'extra' => {
                'level' => 1,
                'spaces_before_argument' => ' ',
                'subentry' => {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'ffff'
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
                  'cmdname' => 'subentry',
                  'extra' => {
                    'level' => 2,
                    'spaces_before_argument' => ' '
                  },
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 16,
                    'macro' => ''
                  },
                  'parent' => {}
                }
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 16,
                'macro' => ''
              },
              'parent' => {}
            }
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 16,
            'macro' => ''
          },
          'parent' => {},
          'type' => 'index_entry_command'
        },
        {},
        {},
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'f---ggg'
                }
              ],
              'extra' => {
                'spaces_after_argument' => ' '
              },
              'parent' => {},
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'findex',
          'extra' => {
            'index_entry' => {
              'command' => {},
              'content' => [],
              'content_normalized' => [],
              'in_code' => 1,
              'index_at_command' => 'findex',
              'index_name' => 'fn',
              'index_type_command' => 'findex',
              'key' => 'f---ggg',
              'node' => {},
              'number' => 4
            },
            'spaces_before_argument' => ' ',
            'subentry' => {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'f---hhh fjjj'
                    }
                  ],
                  'extra' => {
                    'spaces_after_argument' => ' '
                  },
                  'parent' => {},
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'subentry',
              'extra' => {
                'level' => 1,
                'spaces_before_argument' => ' ',
                'subentry' => {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'f---kkk'
                        }
                      ],
                      'extra' => {
                        'spaces_after_argument' => ' '
                      },
                      'parent' => {},
                      'type' => 'line_arg'
                    }
                  ],
                  'cmdname' => 'subentry',
                  'extra' => {
                    'level' => 2,
                    'spaces_before_argument' => ' ',
                    'subentry' => {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'f---lll'
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
                      'cmdname' => 'subentry',
                      'extra' => {
                        'level' => 3,
                        'spaces_before_argument' => ' '
                      },
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 17,
                        'macro' => ''
                      },
                      'parent' => {}
                    }
                  },
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 17,
                    'macro' => ''
                  },
                  'parent' => {}
                }
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 17,
                'macro' => ''
              },
              'parent' => {}
            }
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 17,
            'macro' => ''
          },
          'parent' => {},
          'type' => 'index_entry_command'
        },
        {},
        {},
        {},
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
                  'text' => 'cp'
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
          'cmdname' => 'printindex',
          'extra' => {
            'misc_args' => [
              'cp'
            ],
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
                  'text' => 'fn'
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
          'cmdname' => 'printindex',
          'extra' => {
            'misc_args' => [
              'fn'
            ],
            'spaces_before_argument' => ' '
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 20,
            'macro' => ''
          },
          'parent' => {}
        }
      ],
      'extra' => {
        'spaces_before_argument' => ' '
      },
      'level' => 1,
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 7,
        'macro' => ''
      },
      'number' => 1,
      'parent' => {}
    }
  ],
  'type' => 'document_root'
};
$result_trees{'subentries'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'subentries'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'subentries'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'subentries'}{'contents'}[0]{'contents'}[0];
$result_trees{'subentries'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'subentries'}{'contents'}[0];
$result_trees{'subentries'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'subentries'}{'contents'}[0];
$result_trees{'subentries'}{'contents'}[0]{'parent'} = $result_trees{'subentries'};
$result_trees{'subentries'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'subentries'}{'contents'}[1]{'args'}[0];
$result_trees{'subentries'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'subentries'}{'contents'}[1];
$result_trees{'subentries'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'subentries'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'subentries'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'subentries'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'subentries'}{'contents'}[1]{'parent'} = $result_trees{'subentries'};
$result_trees{'subentries'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'subentries'}{'contents'}[2];
$result_trees{'subentries'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'subentries'}{'contents'}[2];
$result_trees{'subentries'}{'contents'}[2]{'parent'} = $result_trees{'subentries'};
$result_trees{'subentries'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'subentries'}{'contents'}[3]{'args'}[0];
$result_trees{'subentries'}{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'subentries'}{'contents'}[3];
$result_trees{'subentries'}{'contents'}[3]{'extra'}{'node_content'}[0] = $result_trees{'subentries'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'subentries'}{'contents'}[3]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'subentries'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'subentries'}{'contents'}[3]{'parent'} = $result_trees{'subentries'};
$result_trees{'subentries'}{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'subentries'}{'contents'}[4]{'args'}[0];
$result_trees{'subentries'}{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'subentries'}{'contents'}[4];
$result_trees{'subentries'}{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'subentries'}{'contents'}[4];
$result_trees{'subentries'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'subentries'}{'contents'}[4]{'contents'}[1]{'args'}[0];
$result_trees{'subentries'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'subentries'}{'contents'}[4]{'contents'}[1];
$result_trees{'subentries'}{'contents'}[4]{'contents'}[1]{'extra'}{'index_entry'}{'command'} = $result_trees{'subentries'}{'contents'}[4]{'contents'}[1];
$result_trees{'subentries'}{'contents'}[4]{'contents'}[1]{'extra'}{'index_entry'}{'content'} = $result_trees{'subentries'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'subentries'}{'contents'}[4]{'contents'}[1]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'subentries'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'subentries'}{'contents'}[4]{'contents'}[1]{'extra'}{'index_entry'}{'node'} = $result_trees{'subentries'}{'contents'}[3];
$result_trees{'subentries'}{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'subentries'}{'contents'}[4];
$result_trees{'subentries'}{'contents'}[4]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'subentries'}{'contents'}[4]{'contents'}[2]{'args'}[0];
$result_trees{'subentries'}{'contents'}[4]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'subentries'}{'contents'}[4]{'contents'}[2];
$result_trees{'subentries'}{'contents'}[4]{'contents'}[2]{'extra'}{'index_entry'}{'command'} = $result_trees{'subentries'}{'contents'}[4]{'contents'}[2];
$result_trees{'subentries'}{'contents'}[4]{'contents'}[2]{'extra'}{'index_entry'}{'content'} = $result_trees{'subentries'}{'contents'}[4]{'contents'}[2]{'args'}[0]{'contents'};
$result_trees{'subentries'}{'contents'}[4]{'contents'}[2]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'subentries'}{'contents'}[4]{'contents'}[2]{'args'}[0]{'contents'};
$result_trees{'subentries'}{'contents'}[4]{'contents'}[2]{'extra'}{'index_entry'}{'node'} = $result_trees{'subentries'}{'contents'}[3];
$result_trees{'subentries'}{'contents'}[4]{'contents'}[2]{'extra'}{'subentry'}{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'subentries'}{'contents'}[4]{'contents'}[2]{'extra'}{'subentry'}{'args'}[0];
$result_trees{'subentries'}{'contents'}[4]{'contents'}[2]{'extra'}{'subentry'}{'args'}[0]{'parent'} = $result_trees{'subentries'}{'contents'}[4]{'contents'}[2]{'extra'}{'subentry'};
$result_trees{'subentries'}{'contents'}[4]{'contents'}[2]{'extra'}{'subentry'}{'parent'} = $result_trees{'subentries'}{'contents'}[4];
$result_trees{'subentries'}{'contents'}[4]{'contents'}[2]{'parent'} = $result_trees{'subentries'}{'contents'}[4];
$result_trees{'subentries'}{'contents'}[4]{'contents'}[3] = $result_trees{'subentries'}{'contents'}[4]{'contents'}[2]{'extra'}{'subentry'};
$result_trees{'subentries'}{'contents'}[4]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'subentries'}{'contents'}[4]{'contents'}[4]{'args'}[0];
$result_trees{'subentries'}{'contents'}[4]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'subentries'}{'contents'}[4]{'contents'}[4];
$result_trees{'subentries'}{'contents'}[4]{'contents'}[4]{'extra'}{'index_entry'}{'command'} = $result_trees{'subentries'}{'contents'}[4]{'contents'}[4];
$result_trees{'subentries'}{'contents'}[4]{'contents'}[4]{'extra'}{'index_entry'}{'content'} = $result_trees{'subentries'}{'contents'}[4]{'contents'}[4]{'args'}[0]{'contents'};
$result_trees{'subentries'}{'contents'}[4]{'contents'}[4]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'subentries'}{'contents'}[4]{'contents'}[4]{'args'}[0]{'contents'};
$result_trees{'subentries'}{'contents'}[4]{'contents'}[4]{'extra'}{'index_entry'}{'node'} = $result_trees{'subentries'}{'contents'}[3];
$result_trees{'subentries'}{'contents'}[4]{'contents'}[4]{'extra'}{'subentry'}{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'subentries'}{'contents'}[4]{'contents'}[4]{'extra'}{'subentry'}{'args'}[0];
$result_trees{'subentries'}{'contents'}[4]{'contents'}[4]{'extra'}{'subentry'}{'args'}[0]{'parent'} = $result_trees{'subentries'}{'contents'}[4]{'contents'}[4]{'extra'}{'subentry'};
$result_trees{'subentries'}{'contents'}[4]{'contents'}[4]{'extra'}{'subentry'}{'extra'}{'subentry'}{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'subentries'}{'contents'}[4]{'contents'}[4]{'extra'}{'subentry'}{'extra'}{'subentry'}{'args'}[0];
$result_trees{'subentries'}{'contents'}[4]{'contents'}[4]{'extra'}{'subentry'}{'extra'}{'subentry'}{'args'}[0]{'parent'} = $result_trees{'subentries'}{'contents'}[4]{'contents'}[4]{'extra'}{'subentry'}{'extra'}{'subentry'};
$result_trees{'subentries'}{'contents'}[4]{'contents'}[4]{'extra'}{'subentry'}{'extra'}{'subentry'}{'parent'} = $result_trees{'subentries'}{'contents'}[4];
$result_trees{'subentries'}{'contents'}[4]{'contents'}[4]{'extra'}{'subentry'}{'parent'} = $result_trees{'subentries'}{'contents'}[4];
$result_trees{'subentries'}{'contents'}[4]{'contents'}[4]{'parent'} = $result_trees{'subentries'}{'contents'}[4];
$result_trees{'subentries'}{'contents'}[4]{'contents'}[5] = $result_trees{'subentries'}{'contents'}[4]{'contents'}[4]{'extra'}{'subentry'};
$result_trees{'subentries'}{'contents'}[4]{'contents'}[6] = $result_trees{'subentries'}{'contents'}[4]{'contents'}[4]{'extra'}{'subentry'}{'extra'}{'subentry'};
$result_trees{'subentries'}{'contents'}[4]{'contents'}[7]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'subentries'}{'contents'}[4]{'contents'}[7]{'args'}[0];
$result_trees{'subentries'}{'contents'}[4]{'contents'}[7]{'args'}[0]{'parent'} = $result_trees{'subentries'}{'contents'}[4]{'contents'}[7];
$result_trees{'subentries'}{'contents'}[4]{'contents'}[7]{'extra'}{'index_entry'}{'command'} = $result_trees{'subentries'}{'contents'}[4]{'contents'}[7];
$result_trees{'subentries'}{'contents'}[4]{'contents'}[7]{'extra'}{'index_entry'}{'content'} = $result_trees{'subentries'}{'contents'}[4]{'contents'}[7]{'args'}[0]{'contents'};
$result_trees{'subentries'}{'contents'}[4]{'contents'}[7]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'subentries'}{'contents'}[4]{'contents'}[7]{'args'}[0]{'contents'};
$result_trees{'subentries'}{'contents'}[4]{'contents'}[7]{'extra'}{'index_entry'}{'node'} = $result_trees{'subentries'}{'contents'}[3];
$result_trees{'subentries'}{'contents'}[4]{'contents'}[7]{'extra'}{'subentry'}{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'subentries'}{'contents'}[4]{'contents'}[7]{'extra'}{'subentry'}{'args'}[0];
$result_trees{'subentries'}{'contents'}[4]{'contents'}[7]{'extra'}{'subentry'}{'args'}[0]{'parent'} = $result_trees{'subentries'}{'contents'}[4]{'contents'}[7]{'extra'}{'subentry'};
$result_trees{'subentries'}{'contents'}[4]{'contents'}[7]{'extra'}{'subentry'}{'extra'}{'subentry'}{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'subentries'}{'contents'}[4]{'contents'}[7]{'extra'}{'subentry'}{'extra'}{'subentry'}{'args'}[0];
$result_trees{'subentries'}{'contents'}[4]{'contents'}[7]{'extra'}{'subentry'}{'extra'}{'subentry'}{'args'}[0]{'parent'} = $result_trees{'subentries'}{'contents'}[4]{'contents'}[7]{'extra'}{'subentry'}{'extra'}{'subentry'};
$result_trees{'subentries'}{'contents'}[4]{'contents'}[7]{'extra'}{'subentry'}{'extra'}{'subentry'}{'extra'}{'subentry'}{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'subentries'}{'contents'}[4]{'contents'}[7]{'extra'}{'subentry'}{'extra'}{'subentry'}{'extra'}{'subentry'}{'args'}[0];
$result_trees{'subentries'}{'contents'}[4]{'contents'}[7]{'extra'}{'subentry'}{'extra'}{'subentry'}{'extra'}{'subentry'}{'args'}[0]{'parent'} = $result_trees{'subentries'}{'contents'}[4]{'contents'}[7]{'extra'}{'subentry'}{'extra'}{'subentry'}{'extra'}{'subentry'};
$result_trees{'subentries'}{'contents'}[4]{'contents'}[7]{'extra'}{'subentry'}{'extra'}{'subentry'}{'extra'}{'subentry'}{'parent'} = $result_trees{'subentries'}{'contents'}[4];
$result_trees{'subentries'}{'contents'}[4]{'contents'}[7]{'extra'}{'subentry'}{'extra'}{'subentry'}{'parent'} = $result_trees{'subentries'}{'contents'}[4];
$result_trees{'subentries'}{'contents'}[4]{'contents'}[7]{'extra'}{'subentry'}{'parent'} = $result_trees{'subentries'}{'contents'}[4];
$result_trees{'subentries'}{'contents'}[4]{'contents'}[7]{'parent'} = $result_trees{'subentries'}{'contents'}[4];
$result_trees{'subentries'}{'contents'}[4]{'contents'}[8] = $result_trees{'subentries'}{'contents'}[4]{'contents'}[7]{'extra'}{'subentry'};
$result_trees{'subentries'}{'contents'}[4]{'contents'}[9] = $result_trees{'subentries'}{'contents'}[4]{'contents'}[7]{'extra'}{'subentry'}{'extra'}{'subentry'};
$result_trees{'subentries'}{'contents'}[4]{'contents'}[10] = $result_trees{'subentries'}{'contents'}[4]{'contents'}[7]{'extra'}{'subentry'}{'extra'}{'subentry'}{'extra'}{'subentry'};
$result_trees{'subentries'}{'contents'}[4]{'contents'}[11]{'parent'} = $result_trees{'subentries'}{'contents'}[4];
$result_trees{'subentries'}{'contents'}[4]{'contents'}[12]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'subentries'}{'contents'}[4]{'contents'}[12]{'args'}[0];
$result_trees{'subentries'}{'contents'}[4]{'contents'}[12]{'args'}[0]{'parent'} = $result_trees{'subentries'}{'contents'}[4]{'contents'}[12];
$result_trees{'subentries'}{'contents'}[4]{'contents'}[12]{'extra'}{'index_entry'}{'command'} = $result_trees{'subentries'}{'contents'}[4]{'contents'}[12];
$result_trees{'subentries'}{'contents'}[4]{'contents'}[12]{'extra'}{'index_entry'}{'content'} = $result_trees{'subentries'}{'contents'}[4]{'contents'}[12]{'args'}[0]{'contents'};
$result_trees{'subentries'}{'contents'}[4]{'contents'}[12]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'subentries'}{'contents'}[4]{'contents'}[12]{'args'}[0]{'contents'};
$result_trees{'subentries'}{'contents'}[4]{'contents'}[12]{'extra'}{'index_entry'}{'node'} = $result_trees{'subentries'}{'contents'}[3];
$result_trees{'subentries'}{'contents'}[4]{'contents'}[12]{'parent'} = $result_trees{'subentries'}{'contents'}[4];
$result_trees{'subentries'}{'contents'}[4]{'contents'}[13]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'subentries'}{'contents'}[4]{'contents'}[13]{'args'}[0];
$result_trees{'subentries'}{'contents'}[4]{'contents'}[13]{'args'}[0]{'parent'} = $result_trees{'subentries'}{'contents'}[4]{'contents'}[13];
$result_trees{'subentries'}{'contents'}[4]{'contents'}[13]{'extra'}{'index_entry'}{'command'} = $result_trees{'subentries'}{'contents'}[4]{'contents'}[13];
$result_trees{'subentries'}{'contents'}[4]{'contents'}[13]{'extra'}{'index_entry'}{'content'} = $result_trees{'subentries'}{'contents'}[4]{'contents'}[13]{'args'}[0]{'contents'};
$result_trees{'subentries'}{'contents'}[4]{'contents'}[13]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'subentries'}{'contents'}[4]{'contents'}[13]{'args'}[0]{'contents'};
$result_trees{'subentries'}{'contents'}[4]{'contents'}[13]{'extra'}{'index_entry'}{'node'} = $result_trees{'subentries'}{'contents'}[3];
$result_trees{'subentries'}{'contents'}[4]{'contents'}[13]{'extra'}{'subentry'}{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'subentries'}{'contents'}[4]{'contents'}[13]{'extra'}{'subentry'}{'args'}[0];
$result_trees{'subentries'}{'contents'}[4]{'contents'}[13]{'extra'}{'subentry'}{'args'}[0]{'parent'} = $result_trees{'subentries'}{'contents'}[4]{'contents'}[13]{'extra'}{'subentry'};
$result_trees{'subentries'}{'contents'}[4]{'contents'}[13]{'extra'}{'subentry'}{'parent'} = $result_trees{'subentries'}{'contents'}[4];
$result_trees{'subentries'}{'contents'}[4]{'contents'}[13]{'parent'} = $result_trees{'subentries'}{'contents'}[4];
$result_trees{'subentries'}{'contents'}[4]{'contents'}[14] = $result_trees{'subentries'}{'contents'}[4]{'contents'}[13]{'extra'}{'subentry'};
$result_trees{'subentries'}{'contents'}[4]{'contents'}[15]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'subentries'}{'contents'}[4]{'contents'}[15]{'args'}[0];
$result_trees{'subentries'}{'contents'}[4]{'contents'}[15]{'args'}[0]{'parent'} = $result_trees{'subentries'}{'contents'}[4]{'contents'}[15];
$result_trees{'subentries'}{'contents'}[4]{'contents'}[15]{'extra'}{'index_entry'}{'command'} = $result_trees{'subentries'}{'contents'}[4]{'contents'}[15];
$result_trees{'subentries'}{'contents'}[4]{'contents'}[15]{'extra'}{'index_entry'}{'content'} = $result_trees{'subentries'}{'contents'}[4]{'contents'}[15]{'args'}[0]{'contents'};
$result_trees{'subentries'}{'contents'}[4]{'contents'}[15]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'subentries'}{'contents'}[4]{'contents'}[15]{'args'}[0]{'contents'};
$result_trees{'subentries'}{'contents'}[4]{'contents'}[15]{'extra'}{'index_entry'}{'node'} = $result_trees{'subentries'}{'contents'}[3];
$result_trees{'subentries'}{'contents'}[4]{'contents'}[15]{'extra'}{'subentry'}{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'subentries'}{'contents'}[4]{'contents'}[15]{'extra'}{'subentry'}{'args'}[0];
$result_trees{'subentries'}{'contents'}[4]{'contents'}[15]{'extra'}{'subentry'}{'args'}[0]{'parent'} = $result_trees{'subentries'}{'contents'}[4]{'contents'}[15]{'extra'}{'subentry'};
$result_trees{'subentries'}{'contents'}[4]{'contents'}[15]{'extra'}{'subentry'}{'extra'}{'subentry'}{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'subentries'}{'contents'}[4]{'contents'}[15]{'extra'}{'subentry'}{'extra'}{'subentry'}{'args'}[0];
$result_trees{'subentries'}{'contents'}[4]{'contents'}[15]{'extra'}{'subentry'}{'extra'}{'subentry'}{'args'}[0]{'parent'} = $result_trees{'subentries'}{'contents'}[4]{'contents'}[15]{'extra'}{'subentry'}{'extra'}{'subentry'};
$result_trees{'subentries'}{'contents'}[4]{'contents'}[15]{'extra'}{'subentry'}{'extra'}{'subentry'}{'parent'} = $result_trees{'subentries'}{'contents'}[4];
$result_trees{'subentries'}{'contents'}[4]{'contents'}[15]{'extra'}{'subentry'}{'parent'} = $result_trees{'subentries'}{'contents'}[4];
$result_trees{'subentries'}{'contents'}[4]{'contents'}[15]{'parent'} = $result_trees{'subentries'}{'contents'}[4];
$result_trees{'subentries'}{'contents'}[4]{'contents'}[16] = $result_trees{'subentries'}{'contents'}[4]{'contents'}[15]{'extra'}{'subentry'};
$result_trees{'subentries'}{'contents'}[4]{'contents'}[17] = $result_trees{'subentries'}{'contents'}[4]{'contents'}[15]{'extra'}{'subentry'}{'extra'}{'subentry'};
$result_trees{'subentries'}{'contents'}[4]{'contents'}[18]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'subentries'}{'contents'}[4]{'contents'}[18]{'args'}[0];
$result_trees{'subentries'}{'contents'}[4]{'contents'}[18]{'args'}[0]{'parent'} = $result_trees{'subentries'}{'contents'}[4]{'contents'}[18];
$result_trees{'subentries'}{'contents'}[4]{'contents'}[18]{'extra'}{'index_entry'}{'command'} = $result_trees{'subentries'}{'contents'}[4]{'contents'}[18];
$result_trees{'subentries'}{'contents'}[4]{'contents'}[18]{'extra'}{'index_entry'}{'content'} = $result_trees{'subentries'}{'contents'}[4]{'contents'}[18]{'args'}[0]{'contents'};
$result_trees{'subentries'}{'contents'}[4]{'contents'}[18]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'subentries'}{'contents'}[4]{'contents'}[18]{'args'}[0]{'contents'};
$result_trees{'subentries'}{'contents'}[4]{'contents'}[18]{'extra'}{'index_entry'}{'node'} = $result_trees{'subentries'}{'contents'}[3];
$result_trees{'subentries'}{'contents'}[4]{'contents'}[18]{'extra'}{'subentry'}{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'subentries'}{'contents'}[4]{'contents'}[18]{'extra'}{'subentry'}{'args'}[0];
$result_trees{'subentries'}{'contents'}[4]{'contents'}[18]{'extra'}{'subentry'}{'args'}[0]{'parent'} = $result_trees{'subentries'}{'contents'}[4]{'contents'}[18]{'extra'}{'subentry'};
$result_trees{'subentries'}{'contents'}[4]{'contents'}[18]{'extra'}{'subentry'}{'extra'}{'subentry'}{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'subentries'}{'contents'}[4]{'contents'}[18]{'extra'}{'subentry'}{'extra'}{'subentry'}{'args'}[0];
$result_trees{'subentries'}{'contents'}[4]{'contents'}[18]{'extra'}{'subentry'}{'extra'}{'subentry'}{'args'}[0]{'parent'} = $result_trees{'subentries'}{'contents'}[4]{'contents'}[18]{'extra'}{'subentry'}{'extra'}{'subentry'};
$result_trees{'subentries'}{'contents'}[4]{'contents'}[18]{'extra'}{'subentry'}{'extra'}{'subentry'}{'extra'}{'subentry'}{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'subentries'}{'contents'}[4]{'contents'}[18]{'extra'}{'subentry'}{'extra'}{'subentry'}{'extra'}{'subentry'}{'args'}[0];
$result_trees{'subentries'}{'contents'}[4]{'contents'}[18]{'extra'}{'subentry'}{'extra'}{'subentry'}{'extra'}{'subentry'}{'args'}[0]{'parent'} = $result_trees{'subentries'}{'contents'}[4]{'contents'}[18]{'extra'}{'subentry'}{'extra'}{'subentry'}{'extra'}{'subentry'};
$result_trees{'subentries'}{'contents'}[4]{'contents'}[18]{'extra'}{'subentry'}{'extra'}{'subentry'}{'extra'}{'subentry'}{'parent'} = $result_trees{'subentries'}{'contents'}[4];
$result_trees{'subentries'}{'contents'}[4]{'contents'}[18]{'extra'}{'subentry'}{'extra'}{'subentry'}{'parent'} = $result_trees{'subentries'}{'contents'}[4];
$result_trees{'subentries'}{'contents'}[4]{'contents'}[18]{'extra'}{'subentry'}{'parent'} = $result_trees{'subentries'}{'contents'}[4];
$result_trees{'subentries'}{'contents'}[4]{'contents'}[18]{'parent'} = $result_trees{'subentries'}{'contents'}[4];
$result_trees{'subentries'}{'contents'}[4]{'contents'}[19] = $result_trees{'subentries'}{'contents'}[4]{'contents'}[18]{'extra'}{'subentry'};
$result_trees{'subentries'}{'contents'}[4]{'contents'}[20] = $result_trees{'subentries'}{'contents'}[4]{'contents'}[18]{'extra'}{'subentry'}{'extra'}{'subentry'};
$result_trees{'subentries'}{'contents'}[4]{'contents'}[21] = $result_trees{'subentries'}{'contents'}[4]{'contents'}[18]{'extra'}{'subentry'}{'extra'}{'subentry'}{'extra'}{'subentry'};
$result_trees{'subentries'}{'contents'}[4]{'contents'}[22]{'parent'} = $result_trees{'subentries'}{'contents'}[4];
$result_trees{'subentries'}{'contents'}[4]{'contents'}[23]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'subentries'}{'contents'}[4]{'contents'}[23]{'args'}[0];
$result_trees{'subentries'}{'contents'}[4]{'contents'}[23]{'args'}[0]{'parent'} = $result_trees{'subentries'}{'contents'}[4]{'contents'}[23];
$result_trees{'subentries'}{'contents'}[4]{'contents'}[23]{'parent'} = $result_trees{'subentries'}{'contents'}[4];
$result_trees{'subentries'}{'contents'}[4]{'contents'}[24]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'subentries'}{'contents'}[4]{'contents'}[24]{'args'}[0];
$result_trees{'subentries'}{'contents'}[4]{'contents'}[24]{'args'}[0]{'parent'} = $result_trees{'subentries'}{'contents'}[4]{'contents'}[24];
$result_trees{'subentries'}{'contents'}[4]{'contents'}[24]{'parent'} = $result_trees{'subentries'}{'contents'}[4];
$result_trees{'subentries'}{'contents'}[4]{'parent'} = $result_trees{'subentries'};

$result_texis{'subentries'} = '@setfilename subentries.info

@node Top
@top

@node chapter index
@chapter Index

@cindex a---a
@cindex b---b @subentry c---c
@cindex d---dd @subentry e---ee @subentry f---ff
@cindex g---gg @subentry h---hh jjj @subentry k---kk @subentry l---ll

@findex f---aa
@findex f---bb @subentry f---cc
@findex f---ddd @subentry f---eee @subentry ffff
@findex f---ggg @subentry f---hhh fjjj @subentry f---kkk @subentry f---lll

@printindex cp
@printindex fn
';


$result_texts{'subentries'} = '

1 Index
*******



';

$result_sectioning{'subentries'} = {
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
        }
      },
      'level' => 0,
      'section_childs' => [
        {
          'cmdname' => 'chapter',
          'extra' => {
            'associated_node' => {
              'cmdname' => 'node',
              'extra' => {
                'isindex' => 1,
                'normalized' => 'chapter-index',
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
$result_sectioning{'subentries'}{'section_childs'}[0]{'section_childs'}[0]{'section_up'} = $result_sectioning{'subentries'}{'section_childs'}[0];
$result_sectioning{'subentries'}{'section_childs'}[0]{'section_childs'}[0]{'toplevel_prev'} = $result_sectioning{'subentries'}{'section_childs'}[0];
$result_sectioning{'subentries'}{'section_childs'}[0]{'section_childs'}[0]{'toplevel_up'} = $result_sectioning{'subentries'}{'section_childs'}[0];
$result_sectioning{'subentries'}{'section_childs'}[0]{'section_up'} = $result_sectioning{'subentries'};

$result_nodes{'subentries'} = {
  'cmdname' => 'node',
  'extra' => {
    'associated_section' => {
      'cmdname' => 'top',
      'extra' => {},
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
      'isindex' => 1,
      'normalized' => 'chapter-index',
      'spaces_before_argument' => ' '
    },
    'node_prev' => {},
    'node_up' => {}
  }
};
$result_nodes{'subentries'}{'node_next'}{'node_prev'} = $result_nodes{'subentries'};
$result_nodes{'subentries'}{'node_next'}{'node_up'} = $result_nodes{'subentries'};

$result_menus{'subentries'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top',
    'spaces_before_argument' => ' '
  }
};

$result_errors{'subentries'} = [
  {
    'error_line' => ':12: no more than two levels of index subentry are allowed
',
    'file_name' => '',
    'line_nr' => 12,
    'macro' => '',
    'text' => 'no more than two levels of index subentry are allowed',
    'type' => 'error'
  },
  {
    'error_line' => ':17: no more than two levels of index subentry are allowed
',
    'file_name' => '',
    'line_nr' => 17,
    'macro' => '',
    'text' => 'no more than two levels of index subentry are allowed',
    'type' => 'error'
  }
];


$result_floats{'subentries'} = {};



$result_converted{'docbook'}->{'subentries'} = '
<chapter label="" id="Top">
<title></title>

</chapter>
<chapter label="1" id="chapter-index">
<title>Index</title>

<indexterm role="cp"><primary>a&#8212;a</primary></indexterm>
<indexterm role="cp"><primary>b&#8212;b</primary><secondary>c&#8212;c</secondary></indexterm><indexterm role="cp"><primary>d&#8212;dd</primary><secondary>e&#8212;ee</secondary><tertiary>f&#8212;ff</tertiary></indexterm><indexterm role="cp"><primary>g&#8212;gg</primary><secondary>h&#8212;hh jjj</secondary><tertiary>k&#8212;kk</tertiary><tertiary>l&#8212;ll</tertiary></indexterm>
<indexterm role="fn"><primary>f---aa</primary></indexterm>
<indexterm role="fn"><primary>f---bb</primary><secondary>f---cc</secondary></indexterm><indexterm role="fn"><primary>f---ddd</primary><secondary>f---eee</secondary><tertiary>ffff</tertiary></indexterm><indexterm role="fn"><primary>f---ggg</primary><secondary>f---hhh fjjj</secondary><tertiary>f---kkk</tertiary><tertiary>f---lll</tertiary></indexterm>
<index role="cp"></index>
<index role="fn"></index>
</chapter>
';


$result_converted{'info'}->{'subentries'} = 'This is subentries.info, produced from .


File: subentries.info,  Node: Top,  Next: chapter index,  Up: (dir)

* Menu:

* chapter index::


File: subentries.info,  Node: chapter index,  Prev: Top,  Up: Top

1 Index
*******

 [index ]
* Menu:

* a--a:                                  chapter index.         (line 6)
* b--b, c--c:                            chapter index.         (line 6)
* d--dd, e--ee, f--ff:                   chapter index.         (line 6)
* g--gg, h--hh jjj, k--kk, l--ll:        chapter index.         (line 6)

 [index ]
* Menu:

* f---aa:                                chapter index.         (line 6)
* f---bb, f---cc:                        chapter index.         (line 6)
* f---ddd, f---eee, ffff:                chapter index.         (line 6)
* f---ggg, f---hhh fjjj, f---kkk, f---lll: chapter index.       (line 6)



Tag Table:
Node: Top42
Node: chapter index141

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'plaintext'}->{'subentries'} = '1 Index
*******

* Menu:

* a--a:                                  chapter index.         (line 3)
* b--b, c--c:                            chapter index.         (line 3)
* d--dd, e--ee, f--ff:                   chapter index.         (line 3)
* g--gg, h--hh jjj, k--kk, l--ll:        chapter index.         (line 3)

* Menu:

* f---aa:                                chapter index.         (line 3)
* f---bb, f---cc:                        chapter index.         (line 3)
* f---ddd, f---eee, ffff:                chapter index.         (line 3)
* f---ggg, f---hhh fjjj, f---kkk, f---lll: chapter index.       (line 3)

';


$result_converted{'html_text'}->{'subentries'} = '
<div class="top" id="Top">
<div class="header">
<p>
 &nbsp; [<a href="#chapter-index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="SEC_Top"></span>
<ul class="section-toc">
<li><a href="#chapter-index" accesskey="1">Index</a></li>
</ul>
<hr>
<div class="chapter" id="chapter-index">
<div class="header">
<p>
 &nbsp; [<a href="#chapter-index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Index"></span><h2 class="chapter">1 Index</h2>

<span id="index-a_002d_002d_002da"></span>
<span id="index-b_002d_002d_002db"></span>
<span id="index-d_002d_002d_002ddd"></span>
<span id="index-g_002d_002d_002dgg"></span>

<span id="index-f_002d_002d_002daa"></span>
<span id="index-f_002d_002d_002dbb"></span>
<span id="index-f_002d_002d_002dddd"></span>
<span id="index-f_002d_002d_002dggg"></span>

<table><tr><th valign="top">Jump to: &nbsp; </th><td><a class="summary-letter" href="#t_h_cp_letter-A"><b>A</b></a>
 &nbsp; 
<a class="summary-letter" href="#t_h_cp_letter-B"><b>B</b></a>
 &nbsp; 
<a class="summary-letter" href="#t_h_cp_letter-D"><b>D</b></a>
 &nbsp; 
<a class="summary-letter" href="#t_h_cp_letter-G"><b>G</b></a>
 &nbsp; 
</td></tr></table>
<table class="index-cp" border="0">
<tr><td></td><th align="left">Index Entry</th><td>&nbsp;</td><th align="left"> Section</th></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="t_h_cp_letter-A">A</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-a_002d_002d_002da">a&mdash;a</a>:</td><td>&nbsp;</td><td valign="top"><a href="#chapter-index">chapter index</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="t_h_cp_letter-B">B</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-b_002d_002d_002db">b&mdash;b, c&mdash;c</a>:</td><td>&nbsp;</td><td valign="top"><a href="#chapter-index">chapter index</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="t_h_cp_letter-D">D</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-d_002d_002d_002ddd">d&mdash;dd, e&mdash;ee, f&mdash;ff</a>:</td><td>&nbsp;</td><td valign="top"><a href="#chapter-index">chapter index</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="t_h_cp_letter-G">G</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-g_002d_002d_002dgg">g&mdash;gg, h&mdash;hh jjj, k&mdash;kk, l&mdash;ll</a>:</td><td>&nbsp;</td><td valign="top"><a href="#chapter-index">chapter index</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
</table>
<table><tr><th valign="top">Jump to: &nbsp; </th><td><a class="summary-letter" href="#t_h_cp_letter-A"><b>A</b></a>
 &nbsp; 
<a class="summary-letter" href="#t_h_cp_letter-B"><b>B</b></a>
 &nbsp; 
<a class="summary-letter" href="#t_h_cp_letter-D"><b>D</b></a>
 &nbsp; 
<a class="summary-letter" href="#t_h_cp_letter-G"><b>G</b></a>
 &nbsp; 
</td></tr></table>
<table><tr><th valign="top">Jump to: &nbsp; </th><td><a class="summary-letter" href="#t_h_fn_letter-F"><b>F</b></a>
 &nbsp; 
</td></tr></table>
<table class="index-fn" border="0">
<tr><td></td><th align="left">Index Entry</th><td>&nbsp;</td><th align="left"> Section</th></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="t_h_fn_letter-F">F</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-f_002d_002d_002daa"><code>f---aa</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#chapter-index">chapter index</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-f_002d_002d_002dbb"><code>f---bb, f---cc</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#chapter-index">chapter index</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-f_002d_002d_002dddd"><code>f---ddd, f---eee, ffff</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#chapter-index">chapter index</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-f_002d_002d_002dggg"><code>f---ggg, f---hhh fjjj, f---kkk, f---lll</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#chapter-index">chapter index</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
</table>
<table><tr><th valign="top">Jump to: &nbsp; </th><td><a class="summary-letter" href="#t_h_fn_letter-F"><b>F</b></a>
 &nbsp; 
</td></tr></table>
</div>
</div>
';

1;
