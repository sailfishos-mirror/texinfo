use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'detailmenu_on_subnodes'} = {
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
          'cmdname' => 'menu',
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
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'text' => 'chapter'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'chapter'
                  },
                  'type' => 'menu_entry_node'
                },
                {
                  'text' => '::',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => '
'
                        }
                      ],
                      'type' => 'preformatted'
                    }
                  ],
                  'type' => 'menu_entry_description'
                }
              ],
              'source_info' => {
                'line_nr' => 5
              },
              'type' => 'menu_entry'
            },
            {
              'contents' => [
                {
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'text' => 'chapter 2'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'chapter-2'
                  },
                  'type' => 'menu_entry_node'
                },
                {
                  'text' => '::',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => '
'
                        }
                      ],
                      'type' => 'preformatted'
                    }
                  ],
                  'type' => 'menu_entry_description'
                }
              ],
              'source_info' => {
                'line_nr' => 6
              },
              'type' => 'menu_entry'
            },
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => '
',
                      'type' => 'after_menu_description_line'
                    }
                  ],
                  'type' => 'preformatted'
                }
              ],
              'type' => 'menu_comment'
            },
            {
              'cmdname' => 'detailmenu',
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
                      'text' => '* ',
                      'type' => 'menu_entry_leading_text'
                    },
                    {
                      'contents' => [
                        {
                          'text' => 'section'
                        }
                      ],
                      'extra' => {
                        'node_content' => {
                          'contents' => [
                            {}
                          ]
                        },
                        'normalized' => 'section'
                      },
                      'type' => 'menu_entry_node'
                    },
                    {
                      'text' => '::',
                      'type' => 'menu_entry_separator'
                    },
                    {
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => '
'
                            }
                          ],
                          'type' => 'preformatted'
                        }
                      ],
                      'type' => 'menu_entry_description'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 9
                  },
                  'type' => 'menu_entry'
                },
                {
                  'cmdname' => 'end',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'detailmenu'
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
                    'text_arg' => 'detailmenu'
                  },
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'source_info' => {
                    'line_nr' => 10
                  }
                }
              ],
              'extra' => {},
              'source_info' => {
                'line_nr' => 8
              }
            },
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => '
',
                      'type' => 'empty_line'
                    }
                  ],
                  'type' => 'preformatted'
                }
              ],
              'type' => 'menu_comment'
            },
            {
              'cmdname' => 'detailmenu',
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
                      'contents' => [
                        {
                          'text' => 'Chap 2
'
                        },
                        {
                          'text' => '
',
                          'type' => 'empty_line'
                        }
                      ],
                      'type' => 'preformatted'
                    }
                  ],
                  'type' => 'menu_comment'
                },
                {
                  'contents' => [
                    {
                      'text' => '* ',
                      'type' => 'menu_entry_leading_text'
                    },
                    {
                      'contents' => [
                        {
                          'text' => 'section chap 2'
                        }
                      ],
                      'extra' => {
                        'node_content' => {
                          'contents' => [
                            {}
                          ]
                        },
                        'normalized' => 'section-chap-2'
                      },
                      'type' => 'menu_entry_node'
                    },
                    {
                      'text' => '::',
                      'type' => 'menu_entry_separator'
                    },
                    {
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => '
'
                            }
                          ],
                          'type' => 'preformatted'
                        }
                      ],
                      'type' => 'menu_entry_description'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 15
                  },
                  'type' => 'menu_entry'
                },
                {
                  'contents' => [
                    {
                      'text' => '* ',
                      'type' => 'menu_entry_leading_text'
                    },
                    {
                      'contents' => [
                        {
                          'text' => 'unnumberedsec'
                        }
                      ],
                      'extra' => {
                        'node_content' => {
                          'contents' => [
                            {}
                          ]
                        },
                        'normalized' => 'unnumberedsec'
                      },
                      'type' => 'menu_entry_node'
                    },
                    {
                      'text' => '::',
                      'type' => 'menu_entry_separator'
                    },
                    {
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => '
'
                            }
                          ],
                          'type' => 'preformatted'
                        }
                      ],
                      'type' => 'menu_entry_description'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 16
                  },
                  'type' => 'menu_entry'
                },
                {
                  'cmdname' => 'end',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'detailmenu'
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
                    'text_arg' => 'detailmenu'
                  },
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'source_info' => {
                    'line_nr' => 17
                  }
                }
              ],
              'extra' => {},
              'source_info' => {
                'line_nr' => 12
              }
            },
            {
              'cmdname' => 'end',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'menu'
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
                'text_arg' => 'menu'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 18
              }
            }
          ],
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
          'type' => 'arguments_line'
        }
      ],
      'extra' => {
        'is_target' => 1,
        'normalized' => 'chapter'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 20
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
          'type' => 'arguments_line'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'menu',
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
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'text' => 'section'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'section'
                  },
                  'type' => 'menu_entry_node'
                },
                {
                  'text' => '::',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => '
'
                        }
                      ],
                      'type' => 'preformatted'
                    }
                  ],
                  'type' => 'menu_entry_description'
                }
              ],
              'source_info' => {
                'line_nr' => 24
              },
              'type' => 'menu_entry'
            },
            {
              'cmdname' => 'end',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'menu'
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
                'text_arg' => 'menu'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 25
              }
            }
          ],
          'source_info' => {
            'line_nr' => 23
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
        'line_nr' => 21
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
                  'text' => 'section'
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
        'normalized' => 'section'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 27
      }
    },
    {
      'cmdname' => 'section',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'section'
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
        'section_number' => '1.1'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 28
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
                  'text' => 'chapter 2'
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
        'normalized' => 'chapter-2'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 30
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
                  'text' => 'chapter 2'
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
          'cmdname' => 'menu',
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
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'text' => 'section chap 2'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'section-chap-2'
                  },
                  'type' => 'menu_entry_node'
                },
                {
                  'text' => '::',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => '
'
                        }
                      ],
                      'type' => 'preformatted'
                    }
                  ],
                  'type' => 'menu_entry_description'
                }
              ],
              'source_info' => {
                'line_nr' => 34
              },
              'type' => 'menu_entry'
            },
            {
              'contents' => [
                {
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'text' => 'unnumberedsec'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'unnumberedsec'
                  },
                  'type' => 'menu_entry_node'
                },
                {
                  'text' => '::',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => '
'
                        }
                      ],
                      'type' => 'preformatted'
                    }
                  ],
                  'type' => 'menu_entry_description'
                }
              ],
              'source_info' => {
                'line_nr' => 35
              },
              'type' => 'menu_entry'
            },
            {
              'cmdname' => 'end',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'menu'
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
                'text_arg' => 'menu'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 36
              }
            }
          ],
          'source_info' => {
            'line_nr' => 33
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'extra' => {
        'section_number' => '2'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 31
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
                  'text' => 'section chap 2'
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
        'normalized' => 'section-chap-2'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 38
      }
    },
    {
      'cmdname' => 'section',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'section chap 2'
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
        'section_number' => '2.1'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 39
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
                  'text' => 'unnumberedsec'
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
        'normalized' => 'unnumberedsec'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 41
      }
    },
    {
      'cmdname' => 'unnumberedsec',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'unnumberedsec'
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
      'extra' => {},
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 42
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'detailmenu_on_subnodes'}{'contents'}[2]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'detailmenu_on_subnodes'}{'contents'}[2]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'detailmenu_on_subnodes'}{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'detailmenu_on_subnodes'}{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[1]{'contents'}[0];
$result_trees{'detailmenu_on_subnodes'}{'contents'}[2]{'contents'}[2]{'contents'}[4]{'contents'}[1]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'detailmenu_on_subnodes'}{'contents'}[2]{'contents'}[2]{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'detailmenu_on_subnodes'}{'contents'}[2]{'contents'}[2]{'contents'}[6]{'contents'}[2]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'detailmenu_on_subnodes'}{'contents'}[2]{'contents'}[2]{'contents'}[6]{'contents'}[2]{'contents'}[1]{'contents'}[0];
$result_trees{'detailmenu_on_subnodes'}{'contents'}[2]{'contents'}[2]{'contents'}[6]{'contents'}[3]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'detailmenu_on_subnodes'}{'contents'}[2]{'contents'}[2]{'contents'}[6]{'contents'}[3]{'contents'}[1]{'contents'}[0];
$result_trees{'detailmenu_on_subnodes'}{'contents'}[4]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'detailmenu_on_subnodes'}{'contents'}[4]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'detailmenu_on_subnodes'}{'contents'}[8]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'detailmenu_on_subnodes'}{'contents'}[8]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'detailmenu_on_subnodes'}{'contents'}[8]{'contents'}[2]{'contents'}[2]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'detailmenu_on_subnodes'}{'contents'}[8]{'contents'}[2]{'contents'}[2]{'contents'}[1]{'contents'}[0];

$result_texis{'detailmenu_on_subnodes'} = '@node Top
@top top

@menu
* chapter::
* chapter 2::

@detailmenu
* section::
@end detailmenu

@detailmenu
Chap 2

* section chap 2::
* unnumberedsec::
@end detailmenu
@end menu

@node chapter
@chapter chapter

@menu
* section::
@end menu

@node section
@section section

@node chapter 2
@chapter chapter 2

@menu
* section chap 2::
* unnumberedsec::
@end menu

@node section chap 2
@section section chap 2

@node unnumberedsec
@unnumberedsec unnumberedsec
';


$result_texts{'detailmenu_on_subnodes'} = 'top
***

* chapter::
* chapter 2::

* section::

Chap 2

* section chap 2::
* unnumberedsec::

1 chapter
*********

* section::

1.1 section
===========

2 chapter 2
***********

* section chap 2::
* unnumberedsec::

2.1 section chap 2
==================

unnumberedsec
=============
';

$result_sectioning{'detailmenu_on_subnodes'} = {
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
                    'normalized' => 'chapter'
                  }
                },
                'section_childs' => [
                  {
                    'cmdname' => 'section',
                    'extra' => {
                      'associated_node' => {
                        'cmdname' => 'node',
                        'extra' => {
                          'normalized' => 'section'
                        }
                      },
                      'section_directions' => {
                        'up' => {}
                      },
                      'section_level' => 2,
                      'section_number' => '1.1'
                    }
                  }
                ],
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
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => 'chapter-2'
                  }
                },
                'section_childs' => [
                  {
                    'cmdname' => 'section',
                    'extra' => {
                      'associated_node' => {
                        'cmdname' => 'node',
                        'extra' => {
                          'normalized' => 'section-chap-2'
                        }
                      },
                      'section_directions' => {
                        'up' => {}
                      },
                      'section_level' => 2,
                      'section_number' => '2.1'
                    }
                  },
                  {
                    'cmdname' => 'unnumberedsec',
                    'extra' => {
                      'associated_node' => {
                        'cmdname' => 'node',
                        'extra' => {
                          'normalized' => 'unnumberedsec'
                        }
                      },
                      'section_directions' => {
                        'prev' => {},
                        'up' => {}
                      },
                      'section_level' => 2
                    }
                  }
                ],
                'section_directions' => {
                  'prev' => {},
                  'up' => {}
                },
                'section_level' => 1,
                'section_number' => '2',
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
$result_sectioning{'detailmenu_on_subnodes'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'detailmenu_on_subnodes'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'detailmenu_on_subnodes'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'detailmenu_on_subnodes'}{'extra'}{'section_childs'}[0];
$result_sectioning{'detailmenu_on_subnodes'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'detailmenu_on_subnodes'}{'extra'}{'section_childs'}[0];
$result_sectioning{'detailmenu_on_subnodes'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'detailmenu_on_subnodes'}{'extra'}{'section_childs'}[0];
$result_sectioning{'detailmenu_on_subnodes'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'detailmenu_on_subnodes'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1];
$result_sectioning{'detailmenu_on_subnodes'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'detailmenu_on_subnodes'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'section_childs'}[0];
$result_sectioning{'detailmenu_on_subnodes'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'detailmenu_on_subnodes'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1];
$result_sectioning{'detailmenu_on_subnodes'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'detailmenu_on_subnodes'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'detailmenu_on_subnodes'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'detailmenu_on_subnodes'}{'extra'}{'section_childs'}[0];
$result_sectioning{'detailmenu_on_subnodes'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'detailmenu_on_subnodes'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'detailmenu_on_subnodes'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'detailmenu_on_subnodes'}{'extra'}{'section_childs'}[0];
$result_sectioning{'detailmenu_on_subnodes'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'detailmenu_on_subnodes'};

$result_nodes{'detailmenu_on_subnodes'} = [
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
                    'cmdname' => 'chapter',
                    'extra' => {
                      'section_number' => '2'
                    }
                  },
                  'node_directions' => {
                    'prev' => {},
                    'up' => {}
                  },
                  'normalized' => 'chapter-2'
                }
              },
              'prev' => {},
              'up' => {}
            },
            'normalized' => 'chapter'
          }
        }
      },
      'normalized' => 'Top'
    }
  },
  {},
  {
    'cmdname' => 'node',
    'extra' => {
      'associated_section' => {
        'cmdname' => 'section',
        'extra' => {
          'section_number' => '1.1'
        }
      },
      'node_directions' => {
        'up' => {}
      },
      'normalized' => 'section'
    }
  },
  {},
  {
    'cmdname' => 'node',
    'extra' => {
      'associated_section' => {
        'cmdname' => 'section',
        'extra' => {
          'section_number' => '2.1'
        }
      },
      'node_directions' => {
        'next' => {
          'cmdname' => 'node',
          'extra' => {
            'associated_section' => {
              'cmdname' => 'unnumberedsec',
              'extra' => {}
            },
            'node_directions' => {
              'prev' => {},
              'up' => {}
            },
            'normalized' => 'unnumberedsec'
          }
        },
        'up' => {}
      },
      'normalized' => 'section-chap-2'
    }
  },
  {}
];
$result_nodes{'detailmenu_on_subnodes'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'detailmenu_on_subnodes'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'detailmenu_on_subnodes'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'detailmenu_on_subnodes'}[0];
$result_nodes{'detailmenu_on_subnodes'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'detailmenu_on_subnodes'}[0];
$result_nodes{'detailmenu_on_subnodes'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'detailmenu_on_subnodes'}[0];
$result_nodes{'detailmenu_on_subnodes'}[1] = $result_nodes{'detailmenu_on_subnodes'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'detailmenu_on_subnodes'}[2]{'extra'}{'node_directions'}{'up'} = $result_nodes{'detailmenu_on_subnodes'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'detailmenu_on_subnodes'}[3] = $result_nodes{'detailmenu_on_subnodes'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'detailmenu_on_subnodes'}[4]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'detailmenu_on_subnodes'}[4];
$result_nodes{'detailmenu_on_subnodes'}[4]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'detailmenu_on_subnodes'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'detailmenu_on_subnodes'}[4]{'extra'}{'node_directions'}{'up'} = $result_nodes{'detailmenu_on_subnodes'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'detailmenu_on_subnodes'}[5] = $result_nodes{'detailmenu_on_subnodes'}[4]{'extra'}{'node_directions'}{'next'};

$result_menus{'detailmenu_on_subnodes'} = [
  {
    'extra' => {
      'menus' => [
        {}
      ],
      'normalized' => 'Top'
    }
  },
  {
    'extra' => {
      'menu_directions' => {
        'next' => {
          'extra' => {
            'menu_directions' => {
              'prev' => {},
              'up' => {}
            },
            'menus' => [
              {}
            ],
            'normalized' => 'chapter-2'
          }
        },
        'up' => {}
      },
      'menus' => [
        {}
      ],
      'normalized' => 'chapter'
    }
  },
  {
    'extra' => {
      'menu_directions' => {
        'up' => {}
      },
      'normalized' => 'section'
    }
  },
  {},
  {
    'extra' => {
      'menu_directions' => {
        'next' => {
          'extra' => {
            'menu_directions' => {
              'prev' => {},
              'up' => {}
            },
            'normalized' => 'unnumberedsec'
          }
        },
        'up' => {}
      },
      'normalized' => 'section-chap-2'
    }
  },
  {}
];
$result_menus{'detailmenu_on_subnodes'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'detailmenu_on_subnodes'}[1];
$result_menus{'detailmenu_on_subnodes'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'detailmenu_on_subnodes'}[0];
$result_menus{'detailmenu_on_subnodes'}[1]{'extra'}{'menu_directions'}{'up'} = $result_menus{'detailmenu_on_subnodes'}[0];
$result_menus{'detailmenu_on_subnodes'}[2]{'extra'}{'menu_directions'}{'up'} = $result_menus{'detailmenu_on_subnodes'}[1];
$result_menus{'detailmenu_on_subnodes'}[3] = $result_menus{'detailmenu_on_subnodes'}[1]{'extra'}{'menu_directions'}{'next'};
$result_menus{'detailmenu_on_subnodes'}[4]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'detailmenu_on_subnodes'}[4];
$result_menus{'detailmenu_on_subnodes'}[4]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'detailmenu_on_subnodes'}[1]{'extra'}{'menu_directions'}{'next'};
$result_menus{'detailmenu_on_subnodes'}[4]{'extra'}{'menu_directions'}{'up'} = $result_menus{'detailmenu_on_subnodes'}[1]{'extra'}{'menu_directions'}{'next'};
$result_menus{'detailmenu_on_subnodes'}[5] = $result_menus{'detailmenu_on_subnodes'}[4]{'extra'}{'menu_directions'}{'next'};

$result_errors{'detailmenu_on_subnodes'} = [];


$result_floats{'detailmenu_on_subnodes'} = {};



$result_converted{'plaintext'}->{'detailmenu_on_subnodes'} = 'top
***

* Menu:

* chapter::
* chapter 2::

* section::

Chap 2

* section chap 2::
* unnumberedsec::

1 chapter
*********

* Menu:

* section::

1.1 section
===========

2 chapter 2
***********

* Menu:

* section chap 2::
* unnumberedsec::

2.1 section chap 2
==================

unnumberedsec
=============

';


$result_converted{'html'}->{'detailmenu_on_subnodes'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, https://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>top</title>

<meta name="description" content="top">
<meta name="keywords" content="top">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="viewport" content="width=device-width,initial-scale=1">

<link href="#Top" rel="start" title="Top">
<style type="text/css">
<!--
a.copiable-link {visibility: hidden; text-decoration: none; line-height: 0em}
pre.menu-comment-preformatted {font-family: serif}
span:hover a.copiable-link {visibility: visible}
td.menu-entry-description {vertical-align: top; padding-left: 1em}
td.menu-entry-destination {vertical-align: top}
th.menu-comment {text-align:left}
-->
</style>


</head>

<body lang="en">
<div class="top-level-extent" id="Top">
<div class="nav-panel">
<p>
Next: <a href="#chapter" accesskey="n" rel="next">chapter</a> &nbsp; </p>
</div>
<h1 class="top" id="top"><span>top<a class="copiable-link" href="#top"> &para;</a></span></h1>

<table class="menu">
<tr><td class="menu-entry-destination">&bull; <a href="#chapter" accesskey="1">chapter</a>:</td><td class="menu-entry-description">
</td></tr>
<tr><td class="menu-entry-destination">&bull; <a href="#chapter-2" accesskey="2">chapter 2</a>:</td><td class="menu-entry-description">
</td></tr>
<tr><th class="menu-comment" colspan="2"><pre class="menu-comment-preformatted">

</pre></th></tr><tr><td class="menu-entry-destination">&bull; <a href="#section" accesskey="3">section</a>:</td><td class="menu-entry-description">
</td></tr>
<tr><th class="menu-comment" colspan="2"><pre class="menu-comment-preformatted">

</pre></th></tr><tr><th class="menu-comment" colspan="2"><pre class="menu-comment-preformatted">Chap 2

</pre></th></tr><tr><td class="menu-entry-destination">&bull; <a href="#section-chap-2" accesskey="4">section chap 2</a>:</td><td class="menu-entry-description">
</td></tr>
<tr><td class="menu-entry-destination">&bull; <a href="#unnumberedsec" accesskey="5">unnumberedsec</a>:</td><td class="menu-entry-description">
</td></tr>
</table>

<hr>
<div class="chapter-level-extent" id="chapter">
<div class="nav-panel">
<p>
Next: <a href="#chapter-2" accesskey="n" rel="next">chapter 2</a>, Previous: <a href="#Top" accesskey="p" rel="prev">top</a>, Up: <a href="#Top" accesskey="u" rel="up">top</a> &nbsp; </p>
</div>
<h2 class="chapter" id="chapter-1"><span>1 chapter<a class="copiable-link" href="#chapter-1"> &para;</a></span></h2>

<table class="menu">
<tr><td class="menu-entry-destination">&bull; <a href="#section" accesskey="1">section</a>:</td><td class="menu-entry-description">
</td></tr>
</table>

<hr>
<div class="section-level-extent" id="section">
<div class="nav-panel">
<p>
Up: <a href="#chapter" accesskey="u" rel="up">chapter</a> &nbsp; </p>
</div>
<h3 class="section" id="section-1"><span>1.1 section<a class="copiable-link" href="#section-1"> &para;</a></span></h3>

<hr>
</div>
</div>
<div class="chapter-level-extent" id="chapter-2">
<div class="nav-panel">
<p>
Previous: <a href="#chapter" accesskey="p" rel="prev">chapter</a>, Up: <a href="#Top" accesskey="u" rel="up">top</a> &nbsp; </p>
</div>
<h2 class="chapter" id="chapter-2-1"><span>2 chapter 2<a class="copiable-link" href="#chapter-2-1"> &para;</a></span></h2>

<table class="menu">
<tr><td class="menu-entry-destination">&bull; <a href="#section-chap-2" accesskey="1">section chap 2</a>:</td><td class="menu-entry-description">
</td></tr>
<tr><td class="menu-entry-destination">&bull; <a href="#unnumberedsec" accesskey="2">unnumberedsec</a>:</td><td class="menu-entry-description">
</td></tr>
</table>

<hr>
<div class="section-level-extent" id="section-chap-2">
<div class="nav-panel">
<p>
Next: <a href="#unnumberedsec" accesskey="n" rel="next">unnumberedsec</a>, Up: <a href="#chapter-2" accesskey="u" rel="up">chapter 2</a> &nbsp; </p>
</div>
<h3 class="section" id="section-chap-2-1"><span>2.1 section chap 2<a class="copiable-link" href="#section-chap-2-1"> &para;</a></span></h3>

<hr>
</div>
<div class="unnumberedsec-level-extent" id="unnumberedsec">
<div class="nav-panel">
<p>
Previous: <a href="#section-chap-2" accesskey="p" rel="prev">section chap 2</a>, Up: <a href="#chapter-2" accesskey="u" rel="up">chapter 2</a> &nbsp; </p>
</div>
<h3 class="unnumberedsec" id="unnumberedsec-1"><span>unnumberedsec<a class="copiable-link" href="#unnumberedsec-1"> &para;</a></span></h3>
</div>
</div>
</div>



</body>
</html>
';


$result_converted{'xml'}->{'detailmenu_on_subnodes'} = '<node identifier="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">chapter</nodenext></node>
<top spaces=" "><sectiontitle>top</sectiontitle>

<menu endspaces=" ">
<menuentry><menuleadingtext>* </menuleadingtext><menunode>chapter</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry><menuentry><menuleadingtext>* </menuleadingtext><menunode>chapter 2</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry><menucomment><pre xml:space="preserve">
</pre></menucomment><detailmenu endspaces=" ">
<menuentry><menuleadingtext>* </menuleadingtext><menunode>section</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry></detailmenu>
<menucomment><pre xml:space="preserve">
</pre></menucomment><detailmenu endspaces=" ">
<menucomment><pre xml:space="preserve">Chap 2

</pre></menucomment><menuentry><menuleadingtext>* </menuleadingtext><menunode>section chap 2</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry><menuentry><menuleadingtext>* </menuleadingtext><menunode>unnumberedsec</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry></detailmenu>
</menu>

</top>
<node identifier="chapter" spaces=" "><nodename>chapter</nodename><nodenext automatic="on">chapter 2</nodenext><nodeprev automatic="on">Top</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>chapter</sectiontitle>

<menu endspaces=" ">
<menuentry><menuleadingtext>* </menuleadingtext><menunode>section</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry></menu>

<node identifier="section" spaces=" "><nodename>section</nodename><nodeup automatic="on">chapter</nodeup></node>
<section spaces=" "><sectiontitle>section</sectiontitle>

</section>
</chapter>
<node identifier="chapter-2" spaces=" "><nodename>chapter 2</nodename><nodeprev automatic="on">chapter</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>chapter 2</sectiontitle>

<menu endspaces=" ">
<menuentry><menuleadingtext>* </menuleadingtext><menunode>section chap 2</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry><menuentry><menuleadingtext>* </menuleadingtext><menunode>unnumberedsec</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry></menu>

<node identifier="section-chap-2" spaces=" "><nodename>section chap 2</nodename><nodenext automatic="on">unnumberedsec</nodenext><nodeup automatic="on">chapter 2</nodeup></node>
<section spaces=" "><sectiontitle>section chap 2</sectiontitle>

</section>
<node identifier="unnumberedsec" spaces=" "><nodename>unnumberedsec</nodename><nodeprev automatic="on">section chap 2</nodeprev><nodeup automatic="on">chapter 2</nodeup></node>
<unnumberedsec spaces=" "><sectiontitle>unnumberedsec</sectiontitle>
</unnumberedsec>
</chapter>
';

1;
