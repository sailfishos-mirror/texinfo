use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'command_in_end'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'extra' => {
                'spaces_after_argument' => '
'
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'quotation',
          'contents' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'In quotation
'
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
                                  'parent' => {},
                                  'text' => 'quotation'
                                }
                              ],
                              'parent' => {},
                              'type' => 'brace_command_arg'
                            }
                          ],
                          'cmdname' => 'code',
                          'parent' => {},
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 3,
                            'macro' => ''
                          }
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
                    'missing_argument' => 1,
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 3,
                    'macro' => ''
                  }
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
                  'extra' => {
                    'spaces_after_argument' => '
'
                  },
                  'parent' => {},
                  'type' => 'block_line_arg'
                }
              ],
              'cmdname' => 'quotation',
              'contents' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'In quotation
'
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'q'
                            },
                            {
                              'args' => [
                                {
                                  'contents' => [
                                    {
                                      'parent' => {},
                                      'text' => 'uotation'
                                    }
                                  ],
                                  'parent' => {},
                                  'type' => 'brace_command_arg'
                                }
                              ],
                              'cmdname' => 'code',
                              'parent' => {},
                              'source_info' => {
                                'file_name' => '',
                                'line_nr' => 7,
                                'macro' => ''
                              }
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
                        'spaces_before_argument' => ' ',
                        'text_arg' => 'q'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 7,
                        'macro' => ''
                      }
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
                      'extra' => {
                        'spaces_after_argument' => '
'
                      },
                      'parent' => {},
                      'type' => 'block_line_arg'
                    }
                  ],
                  'cmdname' => 'quotation',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'In quotation
'
                        },
                        {
                          'args' => [
                            {
                              'contents' => [
                                {
                                  'parent' => {},
                                  'text' => 'qu'
                                },
                                {
                                  'args' => [
                                    {
                                      'contents' => [
                                        {
                                          'parent' => {},
                                          'text' => 'otation'
                                        }
                                      ],
                                      'parent' => {},
                                      'type' => 'brace_command_arg'
                                    }
                                  ],
                                  'cmdname' => 'code',
                                  'parent' => {},
                                  'source_info' => {
                                    'file_name' => '',
                                    'line_nr' => 11,
                                    'macro' => ''
                                  }
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
                            'spaces_before_argument' => ' ',
                            'text_arg' => 'qu'
                          },
                          'parent' => {},
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 11,
                            'macro' => ''
                          }
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
                          'extra' => {
                            'spaces_after_argument' => '
'
                          },
                          'parent' => {},
                          'type' => 'block_line_arg'
                        }
                      ],
                      'cmdname' => 'quotation',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'In quotation
'
                            },
                            {
                              'args' => [
                                {
                                  'contents' => [
                                    {
                                      'parent' => {},
                                      'text' => 'quot'
                                    },
                                    {
                                      'args' => [
                                        {
                                          'contents' => [
                                            {
                                              'parent' => {},
                                              'text' => 'atio'
                                            }
                                          ],
                                          'parent' => {},
                                          'type' => 'brace_command_arg'
                                        }
                                      ],
                                      'cmdname' => 'asis',
                                      'parent' => {},
                                      'source_info' => {
                                        'file_name' => '',
                                        'line_nr' => 15,
                                        'macro' => ''
                                      }
                                    },
                                    {
                                      'parent' => {},
                                      'text' => 'n'
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
                                'spaces_before_argument' => ' ',
                                'text_arg' => 'quotn'
                              },
                              'parent' => {},
                              'source_info' => {
                                'file_name' => '',
                                'line_nr' => 15,
                                'macro' => ''
                              }
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
                              'extra' => {
                                'spaces_after_argument' => '
'
                              },
                              'parent' => {},
                              'type' => 'block_line_arg'
                            }
                          ],
                          'cmdname' => 'quotation',
                          'contents' => [
                            {
                              'contents' => [
                                {
                                  'parent' => {},
                                  'text' => 'In quotation
'
                                }
                              ],
                              'parent' => {},
                              'type' => 'paragraph'
                            },
                            {
                              'args' => [
                                {
                                  'contents' => [
                                    {
                                      'parent' => {},
                                      'text' => 'q'
                                    },
                                    {
                                      'args' => [
                                        {
                                          'parent' => {},
                                          'type' => 'brace_command_arg'
                                        }
                                      ],
                                      'cmdname' => 'asis',
                                      'parent' => {},
                                      'source_info' => {
                                        'file_name' => '',
                                        'line_nr' => 19,
                                        'macro' => ''
                                      }
                                    },
                                    {
                                      'parent' => {},
                                      'text' => 'uotation'
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
                                'spaces_before_argument' => ' ',
                                'text_arg' => 'quotation'
                              },
                              'parent' => {},
                              'source_info' => {
                                'file_name' => '',
                                'line_nr' => 19,
                                'macro' => ''
                              }
                            }
                          ],
                          'parent' => {},
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 17,
                            'macro' => ''
                          }
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
                              'extra' => {
                                'spaces_after_argument' => '
'
                              },
                              'parent' => {},
                              'type' => 'block_line_arg'
                            }
                          ],
                          'cmdname' => 'quotation',
                          'contents' => [
                            {
                              'contents' => [
                                {
                                  'parent' => {},
                                  'text' => 'In quotation
'
                                }
                              ],
                              'parent' => {},
                              'type' => 'paragraph'
                            },
                            {
                              'args' => [
                                {
                                  'contents' => [
                                    {
                                      'parent' => {},
                                      'text' => 'qu'
                                    },
                                    {
                                      'args' => [
                                        {
                                          'parent' => {},
                                          'type' => 'brace_command_arg'
                                        }
                                      ],
                                      'cmdname' => 'asis',
                                      'parent' => {},
                                      'source_info' => {
                                        'file_name' => '',
                                        'line_nr' => 23,
                                        'macro' => ''
                                      }
                                    },
                                    {
                                      'parent' => {},
                                      'text' => 'otation'
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
                                'spaces_before_argument' => ' ',
                                'text_arg' => 'quotation'
                              },
                              'parent' => {},
                              'source_info' => {
                                'file_name' => '',
                                'line_nr' => 23,
                                'macro' => ''
                              }
                            }
                          ],
                          'parent' => {},
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 21,
                            'macro' => ''
                          }
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
                              'extra' => {
                                'spaces_after_argument' => '
'
                              },
                              'parent' => {},
                              'type' => 'block_line_arg'
                            }
                          ],
                          'cmdname' => 'quotation',
                          'contents' => [
                            {
                              'contents' => [
                                {
                                  'parent' => {},
                                  'text' => 'In quotation
'
                                }
                              ],
                              'parent' => {},
                              'type' => 'paragraph'
                            },
                            {
                              'args' => [
                                {
                                  'contents' => [
                                    {
                                      'parent' => {},
                                      'text' => 'quot'
                                    },
                                    {
                                      'args' => [
                                        {
                                          'parent' => {},
                                          'type' => 'brace_command_arg'
                                        }
                                      ],
                                      'cmdname' => 'asis',
                                      'parent' => {},
                                      'source_info' => {
                                        'file_name' => '',
                                        'line_nr' => 27,
                                        'macro' => ''
                                      }
                                    },
                                    {
                                      'parent' => {},
                                      'text' => 'ation'
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
                                'spaces_before_argument' => ' ',
                                'text_arg' => 'quotation'
                              },
                              'parent' => {},
                              'source_info' => {
                                'file_name' => '',
                                'line_nr' => 27,
                                'macro' => ''
                              }
                            }
                          ],
                          'parent' => {},
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 25,
                            'macro' => ''
                          }
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
                              'extra' => {
                                'spaces_after_argument' => '
'
                              },
                              'parent' => {},
                              'type' => 'block_line_arg'
                            }
                          ],
                          'cmdname' => 'verbatim',
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'In verbatim
',
                              'type' => 'raw'
                            },
                            {
                              'parent' => {},
                              'text' => '@end verb@code{a}tim
',
                              'type' => 'raw'
                            }
                          ],
                          'parent' => {},
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 29,
                            'macro' => ''
                          }
                        }
                      ],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 13,
                        'macro' => ''
                      }
                    }
                  ],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 9,
                    'macro' => ''
                  }
                }
              ],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 5,
                'macro' => ''
              }
            }
          ],
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 1,
            'macro' => ''
          }
        }
      ],
      'parent' => {},
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0];
$result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0];
$result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0];
$result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[1];
$result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[1];
$result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2];
$result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[0];
$result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[1];
$result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[0]{'contents'}[1];
$result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[0];
$result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2];
$result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2];
$result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2];
$result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[0];
$result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[1];
$result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[0]{'contents'}[1];
$result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[0];
$result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2];
$result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2];
$result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[2];
$result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[0];
$result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[2];
$result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[1];
$result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[1];
$result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[2];
$result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2];
$result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[3]{'parent'} = $result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2];
$result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[4];
$result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[4]{'contents'}[0];
$result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[4];
$result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[4]{'contents'}[1]{'args'}[0];
$result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[1];
$result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[4]{'contents'}[1]{'args'}[0];
$result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[4]{'contents'}[1]{'args'}[0];
$result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[4]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[4]{'contents'}[1];
$result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[4];
$result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[4]{'parent'} = $result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2];
$result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[5]{'parent'} = $result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2];
$result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[6];
$result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[6]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[6]{'contents'}[0];
$result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[6]{'contents'}[0]{'parent'} = $result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[6];
$result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[6]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[6]{'contents'}[1]{'args'}[0];
$result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[6]{'contents'}[1]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[6]{'contents'}[1]{'args'}[0]{'contents'}[1];
$result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[6]{'contents'}[1]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[6]{'contents'}[1]{'args'}[0];
$result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[6]{'contents'}[1]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[6]{'contents'}[1]{'args'}[0];
$result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[6]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[6]{'contents'}[1];
$result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[6]{'contents'}[1]{'parent'} = $result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[6];
$result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[6]{'parent'} = $result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2];
$result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[7]{'parent'} = $result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2];
$result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[8]{'args'}[0]{'parent'} = $result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[8];
$result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[8]{'contents'}[0]{'parent'} = $result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[8];
$result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[8]{'contents'}[1]{'parent'} = $result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[8];
$result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[8]{'parent'} = $result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2];
$result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2];
$result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0];
$result_trees{'command_in_end'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'command_in_end'}{'contents'}[0];
$result_trees{'command_in_end'}{'contents'}[0]{'parent'} = $result_trees{'command_in_end'};

$result_texis{'command_in_end'} = '@quotation
In quotation
@end @code{quotation}

@quotation
In quotation
@end q@code{uotation}

@quotation
In quotation
@end qu@code{otation}

@quotation
In quotation
@end quot@asis{atio}n

@quotation
In quotation
@end q@asis{}uotation

@quotation
In quotation
@end qu@asis{}otation

@quotation
In quotation
@end quot@asis{}ation

@verbatim
In verbatim
@end verb@code{a}tim
';


$result_texts{'command_in_end'} = 'In quotation

In quotation

In quotation

In quotation

In quotation

In quotation

In quotation

In verbatim
@end verb@code{a}tim
';

$result_errors{'command_in_end'} = [
  {
    'error_line' => 'bad argument to @end: @code{quotation}
',
    'file_name' => '',
    'line_nr' => 3,
    'macro' => '',
    'text' => 'bad argument to @end: @code{quotation}',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: unknown @end q
',
    'file_name' => '',
    'line_nr' => 7,
    'macro' => '',
    'text' => 'unknown @end q',
    'type' => 'warning'
  },
  {
    'error_line' => 'bad argument to @end: q@code{uotation}
',
    'file_name' => '',
    'line_nr' => 7,
    'macro' => '',
    'text' => 'bad argument to @end: q@code{uotation}',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: unknown @end qu
',
    'file_name' => '',
    'line_nr' => 11,
    'macro' => '',
    'text' => 'unknown @end qu',
    'type' => 'warning'
  },
  {
    'error_line' => 'bad argument to @end: qu@code{otation}
',
    'file_name' => '',
    'line_nr' => 11,
    'macro' => '',
    'text' => 'bad argument to @end: qu@code{otation}',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: unknown @end quotn
',
    'file_name' => '',
    'line_nr' => 15,
    'macro' => '',
    'text' => 'unknown @end quotn',
    'type' => 'warning'
  },
  {
    'error_line' => 'bad argument to @end: quot@asis{atio}n
',
    'file_name' => '',
    'line_nr' => 15,
    'macro' => '',
    'text' => 'bad argument to @end: quot@asis{atio}n',
    'type' => 'error'
  },
  {
    'error_line' => 'superfluous argument to @end quotation: @asis{}uotation
',
    'file_name' => '',
    'line_nr' => 19,
    'macro' => '',
    'text' => 'superfluous argument to @end quotation: @asis{}uotation',
    'type' => 'error'
  },
  {
    'error_line' => 'superfluous argument to @end quotation: @asis{}otation
',
    'file_name' => '',
    'line_nr' => 23,
    'macro' => '',
    'text' => 'superfluous argument to @end quotation: @asis{}otation',
    'type' => 'error'
  },
  {
    'error_line' => 'superfluous argument to @end quotation: @asis{}ation
',
    'file_name' => '',
    'line_nr' => 27,
    'macro' => '',
    'text' => 'superfluous argument to @end quotation: @asis{}ation',
    'type' => 'error'
  },
  {
    'error_line' => 'no matching `@end verbatim\'
',
    'file_name' => '',
    'line_nr' => 31,
    'macro' => '',
    'text' => 'no matching `@end verbatim\'',
    'type' => 'error'
  },
  {
    'error_line' => 'no matching `@end quotation\'
',
    'file_name' => '',
    'line_nr' => 31,
    'macro' => '',
    'text' => 'no matching `@end quotation\'',
    'type' => 'error'
  },
  {
    'error_line' => 'no matching `@end quotation\'
',
    'file_name' => '',
    'line_nr' => 31,
    'macro' => '',
    'text' => 'no matching `@end quotation\'',
    'type' => 'error'
  },
  {
    'error_line' => 'no matching `@end quotation\'
',
    'file_name' => '',
    'line_nr' => 31,
    'macro' => '',
    'text' => 'no matching `@end quotation\'',
    'type' => 'error'
  },
  {
    'error_line' => 'no matching `@end quotation\'
',
    'file_name' => '',
    'line_nr' => 31,
    'macro' => '',
    'text' => 'no matching `@end quotation\'',
    'type' => 'error'
  }
];


$result_floats{'command_in_end'} = {};


1;
