use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'commands_in_flushright'} = {
  'contents' => [
    {
      'contents' => [
        {
          'cmdname' => 'flushright',
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
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'cmdname' => 'group',
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
                      'text' => 'in group
'
                    }
                  ],
                  'type' => 'paragraph'
                },
                {
                  'cmdname' => 'end',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'group'
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
                    'text_arg' => 'group'
                  },
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'source_info' => {
                    'line_nr' => 5
                  }
                }
              ],
              'source_info' => {
                'line_nr' => 3
              }
            },
            {
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'cmdname' => 'quotation',
              'contents' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'type'
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
                  'type' => 'arguments_line'
                },
                {
                  'contents' => [
                    {
                      'text' => 'in quotation
'
                    }
                  ],
                  'type' => 'paragraph'
                },
                {
                  'cmdname' => 'end',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'quotation'
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
                    'text_arg' => 'quotation'
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
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 7
              }
            },
            {
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'cmdname' => 'enumerate',
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
                  'cmdname' => 'item',
                  'contents' => [
                    {
                      'text' => ' ',
                      'type' => 'ignorable_spaces_after_command'
                    },
                    {
                      'contents' => [
                        {
                          'text' => 'item
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
                    'item_number' => 1
                  },
                  'source_info' => {
                    'line_nr' => 12
                  }
                },
                {
                  'cmdname' => 'item',
                  'contents' => [
                    {
                      'text' => ' ',
                      'type' => 'ignorable_spaces_after_command'
                    },
                    {
                      'contents' => [
                        {
                          'text' => 'other item
'
                        }
                      ],
                      'type' => 'paragraph'
                    }
                  ],
                  'extra' => {
                    'item_number' => 2
                  },
                  'source_info' => {
                    'line_nr' => 14
                  }
                },
                {
                  'cmdname' => 'end',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'enumerate'
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
                    'text_arg' => 'enumerate'
                  },
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'source_info' => {
                    'line_nr' => 15
                  }
                }
              ],
              'extra' => {
                'enumerate_specification' => '1'
              },
              'source_info' => {
                'line_nr' => 11
              }
            },
            {
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'cmdname' => 'table',
              'contents' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'cmdname' => 'emph',
                          'source_info' => {
                            'line_nr' => 17
                          }
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
                  'type' => 'arguments_line'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'cmdname' => 'item',
                          'contents' => [
                            {
                              'contents' => [
                                {
                                  'text' => 'table item'
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
                            'line_nr' => 18
                          }
                        },
                        {
                          'cmdname' => 'itemx',
                          'contents' => [
                            {
                              'contents' => [
                                {
                                  'text' => 'table itemx'
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
                            'line_nr' => 19
                          }
                        }
                      ],
                      'type' => 'table_term'
                    },
                    {
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'Table text
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
                              'text' => 'Text.
'
                            }
                          ],
                          'type' => 'paragraph'
                        }
                      ],
                      'type' => 'table_definition'
                    }
                  ],
                  'type' => 'table_entry'
                },
                {
                  'cmdname' => 'end',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'table'
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
                    'text_arg' => 'table'
                  },
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'source_info' => {
                    'line_nr' => 23
                  }
                }
              ],
              'extra' => {
                'command_as_argument' => {}
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
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'cmdname' => 'multitable',
              'contents' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'cmdname' => 'columnfractions',
                          'contents' => [
                            {
                              'contents' => [
                                {
                                  'text' => '0.5 0.5'
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
                              '0.5',
                              '0.5'
                            ]
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
                          'cmdname' => 'item',
                          'contents' => [
                            {
                              'text' => ' ',
                              'type' => 'ignorable_spaces_after_command'
                            },
                            {
                              'contents' => [
                                {
                                  'text' => 'col1 '
                                }
                              ],
                              'type' => 'paragraph'
                            }
                          ],
                          'extra' => {
                            'cell_number' => 1
                          },
                          'source_info' => {
                            'line_nr' => 26
                          }
                        },
                        {
                          'cmdname' => 'tab',
                          'contents' => [
                            {
                              'text' => ' ',
                              'type' => 'ignorable_spaces_after_command'
                            },
                            {
                              'contents' => [
                                {
                                  'text' => 'col2
'
                                }
                              ],
                              'type' => 'paragraph'
                            }
                          ],
                          'extra' => {
                            'cell_number' => 2
                          },
                          'source_info' => {
                            'line_nr' => 26
                          }
                        }
                      ],
                      'extra' => {
                        'row_number' => 1
                      },
                      'type' => 'row'
                    },
                    {
                      'contents' => [
                        {
                          'cmdname' => 'item',
                          'contents' => [
                            {
                              'text' => ' ',
                              'type' => 'ignorable_spaces_after_command'
                            },
                            {
                              'contents' => [
                                {
                                  'text' => 'text
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
                                  'text' => 'in multitable
'
                                }
                              ],
                              'type' => 'paragraph'
                            }
                          ],
                          'extra' => {
                            'cell_number' => 1
                          },
                          'source_info' => {
                            'line_nr' => 27
                          }
                        },
                        {
                          'cmdname' => 'tab',
                          'contents' => [
                            {
                              'text' => ' 
',
                              'type' => 'ignorable_spaces_after_command'
                            },
                            {
                              'text' => '
',
                              'type' => 'empty_line'
                            },
                            {
                              'contents' => [
                                {
                                  'text' => 'text col2
'
                                }
                              ],
                              'type' => 'paragraph'
                            }
                          ],
                          'extra' => {
                            'cell_number' => 2
                          },
                          'source_info' => {
                            'line_nr' => 30
                          }
                        }
                      ],
                      'extra' => {
                        'row_number' => 2
                      },
                      'type' => 'row'
                    }
                  ],
                  'type' => 'multitable_body'
                },
                {
                  'cmdname' => 'end',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'multitable'
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
                    'text_arg' => 'multitable'
                  },
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'source_info' => {
                    'line_nr' => 33
                  }
                }
              ],
              'extra' => {
                'columnfractions' => {},
                'max_columns' => 2
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 25
              }
            },
            {
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'cmdname' => 'float',
              'contents' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'label'
                        }
                      ],
                      'type' => 'block_line_arg'
                    },
                    {
                      'contents' => [
                        {
                          'text' => 'type'
                        }
                      ],
                      'info' => {
                        'spaces_after_argument' => {
                          'text' => '
'
                        },
                        'spaces_before_argument' => {
                          'text' => ' '
                        }
                      },
                      'type' => 'block_line_arg'
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
                  'contents' => [
                    {
                      'text' => 'in float
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
                  'cmdname' => 'caption',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'in caption'
                            }
                          ],
                          'type' => 'paragraph'
                        }
                      ],
                      'type' => 'brace_command_context'
                    }
                  ],
                  'extra' => {
                    'float' => {}
                  },
                  'source_info' => {
                    'line_nr' => 39
                  }
                },
                {
                  'text' => '
',
                  'type' => 'spaces_after_close_brace'
                },
                {
                  'cmdname' => 'end',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'float'
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
                    'text_arg' => 'float'
                  },
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'source_info' => {
                    'line_nr' => 40
                  }
                }
              ],
              'extra' => {
                'caption' => {},
                'float_type' => 'label',
                'is_target' => 1,
                'normalized' => 'type'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 35
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
                  'text' => 'Sp:
'
                }
              ],
              'type' => 'paragraph'
            },
            {
              'cmdname' => 'sp',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => '2'
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
                  '2'
                ]
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 43
              }
            },
            {
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'cmdname' => 'smallexample',
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
                      'text' => 'in example
'
                    }
                  ],
                  'type' => 'preformatted'
                },
                {
                  'cmdname' => 'end',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'smallexample'
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
                    'text_arg' => 'smallexample'
                  },
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'source_info' => {
                    'line_nr' => 47
                  }
                }
              ],
              'source_info' => {
                'line_nr' => 45
              }
            },
            {
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'cmdname' => 'format',
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
                      'text' => 'in format
'
                    }
                  ],
                  'type' => 'preformatted'
                },
                {
                  'cmdname' => 'end',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'format'
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
                    'text_arg' => 'format'
                  },
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'source_info' => {
                    'line_nr' => 51
                  }
                }
              ],
              'source_info' => {
                'line_nr' => 49
              }
            },
            {
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'cmdname' => 'flushleft',
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
                      'text' => 'in flushleft
'
                    }
                  ],
                  'type' => 'paragraph'
                },
                {
                  'cmdname' => 'end',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'flushleft'
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
                    'text_arg' => 'flushleft'
                  },
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'source_info' => {
                    'line_nr' => 55
                  }
                }
              ],
              'source_info' => {
                'line_nr' => 53
              }
            },
            {
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'cmdname' => 'center',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'in center'
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
                'line_nr' => 57
              }
            },
            {
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'cmdname' => 'end',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'flushright'
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
                'text_arg' => 'flushright'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 59
              }
            }
          ],
          'source_info' => {
            'line_nr' => 1
          }
        }
      ],
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'commands_in_flushright'}{'contents'}[0]{'contents'}[0]{'contents'}[8]{'extra'}{'command_as_argument'} = $result_trees{'commands_in_flushright'}{'contents'}[0]{'contents'}[0]{'contents'}[8]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'commands_in_flushright'}{'contents'}[0]{'contents'}[0]{'contents'}[10]{'extra'}{'columnfractions'} = $result_trees{'commands_in_flushright'}{'contents'}[0]{'contents'}[0]{'contents'}[10]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'commands_in_flushright'}{'contents'}[0]{'contents'}[0]{'contents'}[12]{'contents'}[4]{'extra'}{'float'} = $result_trees{'commands_in_flushright'}{'contents'}[0]{'contents'}[0]{'contents'}[12];
$result_trees{'commands_in_flushright'}{'contents'}[0]{'contents'}[0]{'contents'}[12]{'extra'}{'caption'} = $result_trees{'commands_in_flushright'}{'contents'}[0]{'contents'}[0]{'contents'}[12]{'contents'}[4];

$result_texis{'commands_in_flushright'} = '@flushright

@group
in group
@end group

@quotation type
in quotation
@end quotation

@enumerate
@item item

@item other item
@end enumerate

@table @emph
@item table item
@itemx table itemx
Table text

Text.
@end table

@multitable @columnfractions 0.5 0.5
@item col1 @tab col2
@item text

in multitable
@tab 

text col2
@end multitable

@float label, type

in float

@caption{in caption}
@end float

Sp:
@sp 2

@smallexample
in example
@end smallexample

@format
in format
@end format

@flushleft
in flushleft
@end flushleft

@center in center

@end flushright
';


$result_texts{'commands_in_flushright'} = '
in group

type
in quotation

1. item

2. other item

table item
table itemx
Table text

Text.

col1 col2
text

in multitable

text col2

label, type

in float


Sp:



in example

in format

in flushleft

in center

';

$result_errors{'commands_in_flushright'} = [];


$result_floats{'commands_in_flushright'} = {
  'label' => [
    {
      'cmdname' => 'float',
      'extra' => {
        'caption' => {
          'cmdname' => 'caption',
          'extra' => {
            'float' => {}
          }
        },
        'float_number' => '1',
        'float_type' => 'label',
        'normalized' => 'type'
      }
    }
  ]
};
$result_floats{'commands_in_flushright'}{'label'}[0]{'extra'}{'caption'}{'extra'}{'float'} = $result_floats{'commands_in_flushright'}{'label'}[0];



$result_converted{'plaintext'}->{'commands_in_flushright'} = '                                                               in group

     type:                                                            in quotation

  1.                                                                    item

  2.                                                              other item

_table item_
_table itemx_
                                                             Table text

                                                                  Text.

                             col1                                 col2
                             text                            text col2

                    in multitable

in float

label 1: in caption

                                                                    Sp:


     in example

in format

in flushleft

                               in center

';


$result_converted{'html_text'}->{'commands_in_flushright'} = '<div class="flushright">
<div class="group"><p class="flushright-paragraph">in group
</p></div>
<blockquote class="quotation">
<p class="flushright-paragraph"><b class="b">type:</b> in quotation
</p></blockquote>

<ol class="enumerate">
<li> item

</li><li> other item
</li></ol>

<dl class="table">
<dt><em class="emph">table item</em></dt>
<dt><em class="emph">table itemx</em></dt>
<dd><p class="flushright-paragraph">Table text
</p>
<p class="flushright-paragraph">Text.
</p></dd>
</dl>

<table class="multitable">
<tbody><tr><td width="50%">col1</td><td width="50%">col2</td></tr>
<tr><td width="50%">text

<p class="flushright-paragraph">in multitable
</p></td><td width="50%">text col2</td></tr>
</tbody>
</table>

<div class="float" id="type">

<p>in float
</p>
<div class="caption"><p><strong class="strong">label 1: </strong>in caption</p></div></div>
<p class="flushright-paragraph">Sp:
</p><br>
<br>

<div class="example smallexample">
<pre class="example-preformatted">in example
</pre></div>

<div class="format">
<pre class="format-preformatted">in format
</pre></div>

<div class="flushleft"><p class="flushleft-paragraph">in flushleft
</p></div>
<div class="center">in center
</div>
</div>';

1;
