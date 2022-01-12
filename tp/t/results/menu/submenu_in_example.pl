use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'submenu_in_example'} = {
  'contents' => [
    {
      'contents' => [],
      'parent' => {},
      'type' => 'before_node_section'
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
      'contents' => [
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'example',
          'contents' => [
            {
              'extra' => {
                'command' => {}
              },
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line_after_command'
            },
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => '
',
                  'type' => 'empty_line'
                },
                {
                  'parent' => {},
                  'text' => 'in example
'
                },
                {
                  'parent' => {},
                  'text' => '
',
                  'type' => 'empty_line'
                }
              ],
              'parent' => {},
              'type' => 'preformatted'
            },
            {
              'cmdname' => 'menu',
              'contents' => [
                {
                  'extra' => {
                    'command' => {}
                  },
                  'parent' => {},
                  'text' => '
',
                  'type' => 'empty_line_after_command'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'in submenu
'
                        },
                        {
                          'parent' => {},
                          'text' => '
',
                          'type' => 'empty_line'
                        }
                      ],
                      'parent' => {},
                      'type' => 'preformatted'
                    }
                  ],
                  'parent' => {},
                  'type' => 'menu_comment'
                },
                {
                  'cmdname' => 'menu',
                  'contents' => [
                    {
                      'extra' => {
                        'command' => {}
                      },
                      'parent' => {},
                      'text' => '
',
                      'type' => 'empty_line_after_command'
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'menu'
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
                      'cmdname' => 'end',
                      'extra' => {
                        'command_argument' => 'menu',
                        'spaces_before_argument' => ' ',
                        'text_arg' => 'menu'
                      },
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 11,
                        'macro' => ''
                      },
                      'parent' => {}
                    }
                  ],
                  'extra' => {
                    'end_command' => {}
                  },
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 10,
                    'macro' => ''
                  },
                  'parent' => {}
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => '
',
                          'type' => 'empty_line'
                        }
                      ],
                      'parent' => {},
                      'type' => 'preformatted'
                    }
                  ],
                  'parent' => {},
                  'type' => 'menu_comment'
                },
                {
                  'cmdname' => 'menu',
                  'contents' => [
                    {
                      'extra' => {
                        'command' => {}
                      },
                      'parent' => {},
                      'text' => '
',
                      'type' => 'empty_line_after_command'
                    },
                    {
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'in submenu
'
                            }
                          ],
                          'parent' => {},
                          'type' => 'preformatted'
                        }
                      ],
                      'parent' => {},
                      'type' => 'menu_comment'
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'menu'
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
                      'cmdname' => 'end',
                      'extra' => {
                        'command_argument' => 'menu',
                        'spaces_before_argument' => ' ',
                        'text_arg' => 'menu'
                      },
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 15,
                        'macro' => ''
                      },
                      'parent' => {}
                    }
                  ],
                  'extra' => {
                    'end_command' => {}
                  },
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 13,
                    'macro' => ''
                  },
                  'parent' => {}
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => '
',
                          'type' => 'empty_line'
                        }
                      ],
                      'parent' => {},
                      'type' => 'preformatted'
                    }
                  ],
                  'parent' => {},
                  'type' => 'menu_comment'
                },
                {
                  'cmdname' => 'menu',
                  'contents' => [
                    {
                      'extra' => {
                        'command' => {}
                      },
                      'parent' => {},
                      'text' => '
',
                      'type' => 'empty_line_after_command'
                    },
                    {
                      'contents' => [
                        {
                          'cmdname' => 'quotation',
                          'contents' => [
                            {
                              'extra' => {
                                'command' => {}
                              },
                              'parent' => {},
                              'text' => '
',
                              'type' => 'empty_line_after_command'
                            },
                            {
                              'contents' => [
                                {
                                  'parent' => {},
                                  'text' => 'A quot---ation in submenu
'
                                }
                              ],
                              'parent' => {},
                              'type' => 'preformatted'
                            },
                            {
                              'args' => [
                                {
                                  'contents' => [
                                    {
                                      'parent' => {},
                                      'text' => 'quotation'
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
                              'cmdname' => 'end',
                              'extra' => {
                                'command_argument' => 'quotation',
                                'spaces_before_argument' => ' ',
                                'text_arg' => 'quotation'
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
                            'end_command' => {}
                          },
                          'line_nr' => {
                            'file_name' => '',
                            'line_nr' => 18,
                            'macro' => ''
                          },
                          'parent' => {}
                        }
                      ],
                      'parent' => {},
                      'type' => 'menu_comment'
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'menu'
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
                      'cmdname' => 'end',
                      'extra' => {
                        'command_argument' => 'menu',
                        'spaces_before_argument' => ' ',
                        'text_arg' => 'menu'
                      },
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 21,
                        'macro' => ''
                      },
                      'parent' => {}
                    }
                  ],
                  'extra' => {
                    'end_command' => {}
                  },
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 17,
                    'macro' => ''
                  },
                  'parent' => {}
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => '
',
                          'type' => 'empty_line'
                        }
                      ],
                      'parent' => {},
                      'type' => 'preformatted'
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'subheading in menu'
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
                      'cmdname' => 'subheading',
                      'extra' => {
                        'spaces_before_argument' => ' '
                      },
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 23,
                        'macro' => ''
                      },
                      'parent' => {}
                    },
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => '
',
                          'type' => 'empty_line'
                        }
                      ],
                      'parent' => {},
                      'type' => 'preformatted'
                    },
                    {
                      'cmdname' => 'enumerate',
                      'contents' => [
                        {
                          'extra' => {
                            'command' => {}
                          },
                          'parent' => {},
                          'text' => '
',
                          'type' => 'empty_line_after_command'
                        },
                        {
                          'cmdname' => 'item',
                          'contents' => [
                            {
                              'contents' => [
                                {
                                  'parent' => {},
                                  'text' => 'e--numerate
'
                                }
                              ],
                              'parent' => {},
                              'type' => 'preformatted'
                            }
                          ],
                          'extra' => {
                            'item_number' => 1,
                            'spaces_before_argument' => ' '
                          },
                          'line_nr' => {
                            'file_name' => '',
                            'line_nr' => 26,
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
                                  'text' => 'enumerate'
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
                          'cmdname' => 'end',
                          'extra' => {
                            'command_argument' => 'enumerate',
                            'spaces_before_argument' => ' ',
                            'text_arg' => 'enumerate'
                          },
                          'line_nr' => {
                            'file_name' => '',
                            'line_nr' => 27,
                            'macro' => ''
                          },
                          'parent' => {}
                        }
                      ],
                      'extra' => {
                        'end_command' => {},
                        'enumerate_specification' => '1'
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
                          'parent' => {},
                          'text' => '
',
                          'type' => 'empty_line'
                        }
                      ],
                      'parent' => {},
                      'type' => 'preformatted'
                    }
                  ],
                  'parent' => {},
                  'type' => 'menu_comment'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'menu'
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
                  'cmdname' => 'end',
                  'extra' => {
                    'command_argument' => 'menu',
                    'spaces_before_argument' => ' ',
                    'text_arg' => 'menu'
                  },
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 29,
                    'macro' => ''
                  },
                  'parent' => {}
                }
              ],
              'extra' => {
                'end_command' => {}
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 7,
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
                      'text' => 'example'
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
              'cmdname' => 'end',
              'extra' => {
                'command_argument' => 'example',
                'spaces_before_argument' => ' ',
                'text_arg' => 'example'
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 30,
                'macro' => ''
              },
              'parent' => {}
            }
          ],
          'extra' => {
            'end_command' => {}
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 3,
            'macro' => ''
          },
          'parent' => {}
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
            'normalized' => 'Top'
          }
        ],
        'normalized' => 'Top',
        'spaces_before_argument' => ' '
      },
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 1,
        'macro' => ''
      },
      'parent' => {}
    }
  ],
  'type' => 'document_root'
};
$result_trees{'submenu_in_example'}{'contents'}[0]{'parent'} = $result_trees{'submenu_in_example'};
$result_trees{'submenu_in_example'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'submenu_in_example'}{'contents'}[1]{'args'}[0];
$result_trees{'submenu_in_example'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'submenu_in_example'}{'contents'}[1];
$result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'submenu_in_example'}{'contents'}[1];
$result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'extra'}{'command'} = $result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1];
$result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1];
$result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[1];
$result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[1];
$result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[1];
$result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1];
$result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'extra'}{'command'} = $result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2];
$result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2];
$result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[1]{'contents'}[0];
$result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[1]{'contents'}[0];
$result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[1];
$result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2];
$result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[2]{'contents'}[0]{'extra'}{'command'} = $result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[2];
$result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[2];
$result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[2]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[2]{'contents'}[1];
$result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[2];
$result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[2]{'extra'}{'end_command'} = $result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[2]{'contents'}[1];
$result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2];
$result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[3]{'contents'}[0];
$result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[3];
$result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[3]{'parent'} = $result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2];
$result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[4]{'contents'}[0]{'extra'}{'command'} = $result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[4];
$result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[4];
$result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[4]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[4]{'contents'}[1]{'contents'}[0];
$result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[4]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[4]{'contents'}[1];
$result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[4];
$result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[4]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[4]{'contents'}[2]{'args'}[0];
$result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[4]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[4]{'contents'}[2];
$result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[4]{'contents'}[2]{'parent'} = $result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[4];
$result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[4]{'extra'}{'end_command'} = $result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[4]{'contents'}[2];
$result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[4]{'parent'} = $result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2];
$result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[5]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[5]{'contents'}[0];
$result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[5]{'contents'}[0]{'parent'} = $result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[5];
$result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[5]{'parent'} = $result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2];
$result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[6]{'contents'}[0]{'extra'}{'command'} = $result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[6];
$result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[6]{'contents'}[0]{'parent'} = $result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[6];
$result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[6]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'extra'}{'command'} = $result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[6]{'contents'}[1]{'contents'}[0];
$result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[6]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[6]{'contents'}[1]{'contents'}[0];
$result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[6]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[6]{'contents'}[1]{'contents'}[0]{'contents'}[1];
$result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[6]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[6]{'contents'}[1]{'contents'}[0];
$result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[6]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[6]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[6]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[6]{'contents'}[1]{'contents'}[0]{'contents'}[2];
$result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[6]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[6]{'contents'}[1]{'contents'}[0];
$result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[6]{'contents'}[1]{'contents'}[0]{'extra'}{'end_command'} = $result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[6]{'contents'}[1]{'contents'}[0]{'contents'}[2];
$result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[6]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[6]{'contents'}[1];
$result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[6]{'contents'}[1]{'parent'} = $result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[6];
$result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[6]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[6]{'contents'}[2]{'args'}[0];
$result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[6]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[6]{'contents'}[2];
$result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[6]{'contents'}[2]{'parent'} = $result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[6];
$result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[6]{'extra'}{'end_command'} = $result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[6]{'contents'}[2];
$result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[6]{'parent'} = $result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2];
$result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[7]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[7]{'contents'}[0];
$result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[7]{'contents'}[0]{'parent'} = $result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[7];
$result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[7]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[7]{'contents'}[1]{'args'}[0];
$result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[7]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[7]{'contents'}[1];
$result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[7]{'contents'}[1]{'parent'} = $result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[7];
$result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[7]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[7]{'contents'}[2];
$result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[7]{'contents'}[2]{'parent'} = $result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[7];
$result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[7]{'contents'}[3]{'contents'}[0]{'extra'}{'command'} = $result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[7]{'contents'}[3];
$result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[7]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[7]{'contents'}[3];
$result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[7]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[7]{'contents'}[3]{'contents'}[1]{'contents'}[0];
$result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[7]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[7]{'contents'}[3]{'contents'}[1];
$result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[7]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[7]{'contents'}[3];
$result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[7]{'contents'}[3]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[7]{'contents'}[3]{'contents'}[2]{'args'}[0];
$result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[7]{'contents'}[3]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[7]{'contents'}[3]{'contents'}[2];
$result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[7]{'contents'}[3]{'contents'}[2]{'parent'} = $result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[7]{'contents'}[3];
$result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[7]{'contents'}[3]{'extra'}{'end_command'} = $result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[7]{'contents'}[3]{'contents'}[2];
$result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[7]{'contents'}[3]{'parent'} = $result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[7];
$result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[7]{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[7]{'contents'}[4];
$result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[7]{'contents'}[4]{'parent'} = $result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[7];
$result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[7]{'parent'} = $result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2];
$result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[8]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[8]{'args'}[0];
$result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[8]{'args'}[0]{'parent'} = $result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[8];
$result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[8]{'parent'} = $result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2];
$result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'extra'}{'end_command'} = $result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[8];
$result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1];
$result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[3]{'args'}[0];
$result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[3];
$result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1];
$result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'extra'}{'end_command'} = $result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'contents'}[3];
$result_trees{'submenu_in_example'}{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'submenu_in_example'}{'contents'}[1];
$result_trees{'submenu_in_example'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'submenu_in_example'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'submenu_in_example'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'submenu_in_example'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'submenu_in_example'}{'contents'}[1]{'parent'} = $result_trees{'submenu_in_example'};

$result_texis{'submenu_in_example'} = '@node Top

@example

in example

@menu
in submenu

@menu
@end menu

@menu
in submenu
@end menu

@menu
@quotation
A quot---ation in submenu
@end quotation
@end menu

@subheading subheading in menu

@enumerate
@item e--numerate
@end enumerate

@end menu
@end example
';


$result_texts{'submenu_in_example'} = '

in example

in submenu


in submenu

A quot---ation in submenu

subheading in menu
------------------

1. e--numerate

';

$result_nodes{'submenu_in_example'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  }
};

$result_menus{'submenu_in_example'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  }
};

$result_errors{'submenu_in_example'} = [
  {
    'error_line' => ':7: warning: @menu in invalid context
',
    'file_name' => '',
    'line_nr' => 7,
    'macro' => '',
    'text' => '@menu in invalid context',
    'type' => 'warning'
  },
  {
    'error_line' => ':10: warning: @menu in invalid context
',
    'file_name' => '',
    'line_nr' => 10,
    'macro' => '',
    'text' => '@menu in invalid context',
    'type' => 'warning'
  },
  {
    'error_line' => ':13: warning: @menu in invalid context
',
    'file_name' => '',
    'line_nr' => 13,
    'macro' => '',
    'text' => '@menu in invalid context',
    'type' => 'warning'
  },
  {
    'error_line' => ':17: warning: @menu in invalid context
',
    'file_name' => '',
    'line_nr' => 17,
    'macro' => '',
    'text' => '@menu in invalid context',
    'type' => 'warning'
  }
];


$result_floats{'submenu_in_example'} = {};



$result_converted{'plaintext'}->{'submenu_in_example'} = '
     in example

* Menu:

     in submenu

* Menu:


* Menu:

     in submenu

* Menu:

          A quot—ation in submenu

     subheading in menu
     ------------------


       1. e–numerate

';


$result_converted{'html'}->{'submenu_in_example'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, http://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Untitled Document</title>

<meta name="description" content="Untitled Document">
<meta name="keywords" content="Untitled Document">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="viewport" content="width=device-width,initial-scale=1">

<link href="#Top" rel="start" title="Top">
<style type="text/css">
<!--
div.example {margin-left: 3.2em}
pre.menu-comment-preformatted {font-family: serif}
-->
</style>


</head>

<body lang="en">
<h1 class="node" id="Top">Top</h1>

<div class="example">
<pre class="example-preformatted">

in example

</pre><table class="menu" border="0" cellspacing="0"><tr><td>
<pre class="menu-comment-preformatted">in submenu

</pre><pre class="menu-comment-preformatted">

</pre><table class="menu" border="0" cellspacing="0"><tr><td>
<pre class="menu-comment-preformatted">in submenu
</pre></td></tr></table>
<pre class="menu-comment-preformatted">

</pre><table class="menu" border="0" cellspacing="0"><tr><td>
<blockquote class="quotation">
<pre class="menu-comment-preformatted">A quot---ation in submenu
</pre></blockquote>
</td></tr></table>
<pre class="menu-comment-preformatted">

</pre><strong id="subheading-in-menu">subheading in menu</strong>
<pre class="menu-comment-preformatted">

</pre><ol class="enumerate">
<li> <pre class="menu-comment-preformatted">e--numerate
</pre></li></ol>
<pre class="menu-comment-preformatted">

</pre></td></tr></table>
</div>



</body>
</html>
';

$result_converted_errors{'html'}->{'submenu_in_example'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];



$result_converted{'xml'}->{'submenu_in_example'} = '<node name="Top" spaces=" "><nodename>Top</nodename></node>

<example endspaces=" ">
<pre xml:space="preserve">
in example

</pre><menu endspaces=" ">
<menucomment><pre xml:space="preserve">in submenu

</pre></menucomment><menu endspaces=" ">
</menu>
<menucomment><pre xml:space="preserve">
</pre></menucomment><menu endspaces=" ">
<menucomment><pre xml:space="preserve">in submenu
</pre></menucomment></menu>
<menucomment><pre xml:space="preserve">
</pre></menucomment><menu endspaces=" ">
<menucomment><quotation endspaces=" ">
<pre xml:space="preserve">A quot---ation in submenu
</pre></quotation>
</menucomment></menu>
<menucomment><pre xml:space="preserve">
</pre><subheading spaces=" ">subheading in menu</subheading>
<pre xml:space="preserve">
</pre><enumerate first="1" endspaces=" ">
<listitem spaces=" "><pre xml:space="preserve">e--numerate
</pre></listitem></enumerate>
<pre xml:space="preserve">
</pre></menucomment></menu>
</example>
';

1;
