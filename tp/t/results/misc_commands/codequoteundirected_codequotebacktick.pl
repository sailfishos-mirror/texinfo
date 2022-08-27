use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'codequoteundirected_codequotebacktick'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => 'quotes',
                  'type' => 'macro_name'
                }
              ],
              'cmdname' => 'macro',
              'contents' => [
                {
                  'parent' => {},
                  'text' => '``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{} @*
',
                  'type' => 'raw'
                },
                {
                  'parent' => {},
                  'text' => 'code: @code{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
',
                  'type' => 'raw'
                },
                {
                  'parent' => {},
                  'text' => 'asis: @asis{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
',
                  'type' => 'raw'
                },
                {
                  'parent' => {},
                  'text' => 'strong: @strong{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
',
                  'type' => 'raw'
                },
                {
                  'parent' => {},
                  'text' => 'kbd: @kbd{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
',
                  'type' => 'raw'
                },
                {
                  'parent' => {},
                  'text' => 'samp: @samp{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*',
                  'type' => 'raw'
                },
                {
                  'parent' => {},
                  'text' => '
',
                  'type' => 'last_raw_newline'
                }
              ],
              'extra' => {
                'arg_line' => ' quotes
'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 1,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line_after_command'
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
                  'parent' => {},
                  'text' => 'allquotes',
                  'type' => 'macro_name'
                }
              ],
              'cmdname' => 'macro',
              'contents' => [
                {
                  'parent' => {},
                  'text' => '@quotes{}
',
                  'type' => 'raw'
                },
                {
                  'parent' => {},
                  'text' => '
',
                  'type' => 'raw'
                },
                {
                  'parent' => {},
                  'text' => '@example
',
                  'type' => 'raw'
                },
                {
                  'parent' => {},
                  'text' => '@@codequoteundirected on
',
                  'type' => 'raw'
                },
                {
                  'parent' => {},
                  'text' => '@@codequotebacktick on
',
                  'type' => 'raw'
                },
                {
                  'parent' => {},
                  'text' => '@end example
',
                  'type' => 'raw'
                },
                {
                  'parent' => {},
                  'text' => '@codequoteundirected
',
                  'type' => 'raw'
                },
                {
                  'parent' => {},
                  'text' => '@codequotebacktick
',
                  'type' => 'raw'
                },
                {
                  'parent' => {},
                  'text' => '@quotes{}
',
                  'type' => 'raw'
                },
                {
                  'parent' => {},
                  'text' => '
',
                  'type' => 'raw'
                },
                {
                  'parent' => {},
                  'text' => '@example
',
                  'type' => 'raw'
                },
                {
                  'parent' => {},
                  'text' => '@@codequoteundirected off
',
                  'type' => 'raw'
                },
                {
                  'parent' => {},
                  'text' => '@@codequotebacktick off
',
                  'type' => 'raw'
                },
                {
                  'parent' => {},
                  'text' => '@end example
',
                  'type' => 'raw'
                },
                {
                  'parent' => {},
                  'text' => '@codequoteundirected off
',
                  'type' => 'raw'
                },
                {
                  'parent' => {},
                  'text' => '@codequotebacktick off
',
                  'type' => 'raw'
                },
                {
                  'parent' => {},
                  'text' => '@quotes{}',
                  'type' => 'raw'
                },
                {
                  'parent' => {},
                  'text' => '
',
                  'type' => 'last_raw_newline'
                }
              ],
              'extra' => {
                'arg_line' => ' allquotes
'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 10,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line_after_command'
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'cmdname' => 'copying',
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
                      'text' => '``simple-double--three---four----\'\' `simple\' quotedblleft: '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'quotedblleft',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 31,
                        'macro' => 'quotes'
                      }
                    },
                    {
                      'parent' => {},
                      'text' => ' '
                    },
                    {
                      'cmdname' => '*',
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => '
'
                    },
                    {
                      'parent' => {},
                      'text' => 'code: '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => '``simple-double--three---four----\'\' `simple\' quotedblleft: '
                            },
                            {
                              'args' => [
                                {
                                  'contents' => [],
                                  'parent' => {},
                                  'type' => 'brace_command_arg'
                                }
                              ],
                              'cmdname' => 'quotedblleft',
                              'contents' => [],
                              'parent' => {},
                              'source_info' => {
                                'file_name' => '',
                                'line_nr' => 31,
                                'macro' => 'quotes'
                              }
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'code',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 31,
                        'macro' => 'quotes'
                      }
                    },
                    {
                      'parent' => {},
                      'text' => ' '
                    },
                    {
                      'cmdname' => '*',
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => '
'
                    },
                    {
                      'parent' => {},
                      'text' => 'asis: '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => '``simple-double--three---four----\'\' `simple\' quotedblleft: '
                            },
                            {
                              'args' => [
                                {
                                  'contents' => [],
                                  'parent' => {},
                                  'type' => 'brace_command_arg'
                                }
                              ],
                              'cmdname' => 'quotedblleft',
                              'contents' => [],
                              'parent' => {},
                              'source_info' => {
                                'file_name' => '',
                                'line_nr' => 31,
                                'macro' => 'quotes'
                              }
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'asis',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 31,
                        'macro' => 'quotes'
                      }
                    },
                    {
                      'parent' => {},
                      'text' => ' '
                    },
                    {
                      'cmdname' => '*',
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => '
'
                    },
                    {
                      'parent' => {},
                      'text' => 'strong: '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => '``simple-double--three---four----\'\' `simple\' quotedblleft: '
                            },
                            {
                              'args' => [
                                {
                                  'contents' => [],
                                  'parent' => {},
                                  'type' => 'brace_command_arg'
                                }
                              ],
                              'cmdname' => 'quotedblleft',
                              'contents' => [],
                              'parent' => {},
                              'source_info' => {
                                'file_name' => '',
                                'line_nr' => 31,
                                'macro' => 'quotes'
                              }
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'strong',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 31,
                        'macro' => 'quotes'
                      }
                    },
                    {
                      'parent' => {},
                      'text' => ' '
                    },
                    {
                      'cmdname' => '*',
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => '
'
                    },
                    {
                      'parent' => {},
                      'text' => 'kbd: '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => '``simple-double--three---four----\'\' `simple\' quotedblleft: '
                            },
                            {
                              'args' => [
                                {
                                  'contents' => [],
                                  'parent' => {},
                                  'type' => 'brace_command_arg'
                                }
                              ],
                              'cmdname' => 'quotedblleft',
                              'contents' => [],
                              'parent' => {},
                              'source_info' => {
                                'file_name' => '',
                                'line_nr' => 31,
                                'macro' => 'quotes'
                              }
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'kbd',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 31,
                        'macro' => 'quotes'
                      }
                    },
                    {
                      'parent' => {},
                      'text' => ' '
                    },
                    {
                      'cmdname' => '*',
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => '
'
                    },
                    {
                      'parent' => {},
                      'text' => 'samp: '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => '``simple-double--three---four----\'\' `simple\' quotedblleft: '
                            },
                            {
                              'args' => [
                                {
                                  'contents' => [],
                                  'parent' => {},
                                  'type' => 'brace_command_arg'
                                }
                              ],
                              'cmdname' => 'quotedblleft',
                              'contents' => [],
                              'parent' => {},
                              'source_info' => {
                                'file_name' => '',
                                'line_nr' => 31,
                                'macro' => 'quotes'
                              }
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'samp',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 31,
                        'macro' => 'quotes'
                      }
                    },
                    {
                      'parent' => {},
                      'text' => ' '
                    },
                    {
                      'cmdname' => '*',
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => '
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
                          'cmdname' => '@',
                          'parent' => {}
                        },
                        {
                          'parent' => {},
                          'text' => 'codequoteundirected on
'
                        },
                        {
                          'cmdname' => '@',
                          'parent' => {}
                        },
                        {
                          'parent' => {},
                          'text' => 'codequotebacktick on
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
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 31,
                        'macro' => 'allquotes'
                      }
                    }
                  ],
                  'extra' => {
                    'end_command' => {}
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 31,
                    'macro' => 'allquotes'
                  }
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
                  'cmdname' => 'codequoteundirected',
                  'extra' => {
                    'missing_argument' => 1
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 31,
                    'macro' => 'allquotes'
                  }
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
                  'cmdname' => 'codequotebacktick',
                  'extra' => {
                    'missing_argument' => 1
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 31,
                    'macro' => 'allquotes'
                  }
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => '``simple-double--three---four----\'\' `simple\' quotedblleft: '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'quotedblleft',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 31,
                        'macro' => 'quotes'
                      }
                    },
                    {
                      'parent' => {},
                      'text' => ' '
                    },
                    {
                      'cmdname' => '*',
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => '
'
                    },
                    {
                      'parent' => {},
                      'text' => 'code: '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => '``simple-double--three---four----\'\' `simple\' quotedblleft: '
                            },
                            {
                              'args' => [
                                {
                                  'contents' => [],
                                  'parent' => {},
                                  'type' => 'brace_command_arg'
                                }
                              ],
                              'cmdname' => 'quotedblleft',
                              'contents' => [],
                              'parent' => {},
                              'source_info' => {
                                'file_name' => '',
                                'line_nr' => 31,
                                'macro' => 'quotes'
                              }
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'code',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 31,
                        'macro' => 'quotes'
                      }
                    },
                    {
                      'parent' => {},
                      'text' => ' '
                    },
                    {
                      'cmdname' => '*',
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => '
'
                    },
                    {
                      'parent' => {},
                      'text' => 'asis: '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => '``simple-double--three---four----\'\' `simple\' quotedblleft: '
                            },
                            {
                              'args' => [
                                {
                                  'contents' => [],
                                  'parent' => {},
                                  'type' => 'brace_command_arg'
                                }
                              ],
                              'cmdname' => 'quotedblleft',
                              'contents' => [],
                              'parent' => {},
                              'source_info' => {
                                'file_name' => '',
                                'line_nr' => 31,
                                'macro' => 'quotes'
                              }
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'asis',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 31,
                        'macro' => 'quotes'
                      }
                    },
                    {
                      'parent' => {},
                      'text' => ' '
                    },
                    {
                      'cmdname' => '*',
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => '
'
                    },
                    {
                      'parent' => {},
                      'text' => 'strong: '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => '``simple-double--three---four----\'\' `simple\' quotedblleft: '
                            },
                            {
                              'args' => [
                                {
                                  'contents' => [],
                                  'parent' => {},
                                  'type' => 'brace_command_arg'
                                }
                              ],
                              'cmdname' => 'quotedblleft',
                              'contents' => [],
                              'parent' => {},
                              'source_info' => {
                                'file_name' => '',
                                'line_nr' => 31,
                                'macro' => 'quotes'
                              }
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'strong',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 31,
                        'macro' => 'quotes'
                      }
                    },
                    {
                      'parent' => {},
                      'text' => ' '
                    },
                    {
                      'cmdname' => '*',
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => '
'
                    },
                    {
                      'parent' => {},
                      'text' => 'kbd: '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => '``simple-double--three---four----\'\' `simple\' quotedblleft: '
                            },
                            {
                              'args' => [
                                {
                                  'contents' => [],
                                  'parent' => {},
                                  'type' => 'brace_command_arg'
                                }
                              ],
                              'cmdname' => 'quotedblleft',
                              'contents' => [],
                              'parent' => {},
                              'source_info' => {
                                'file_name' => '',
                                'line_nr' => 31,
                                'macro' => 'quotes'
                              }
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'kbd',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 31,
                        'macro' => 'quotes'
                      }
                    },
                    {
                      'parent' => {},
                      'text' => ' '
                    },
                    {
                      'cmdname' => '*',
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => '
'
                    },
                    {
                      'parent' => {},
                      'text' => 'samp: '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => '``simple-double--three---four----\'\' `simple\' quotedblleft: '
                            },
                            {
                              'args' => [
                                {
                                  'contents' => [],
                                  'parent' => {},
                                  'type' => 'brace_command_arg'
                                }
                              ],
                              'cmdname' => 'quotedblleft',
                              'contents' => [],
                              'parent' => {},
                              'source_info' => {
                                'file_name' => '',
                                'line_nr' => 31,
                                'macro' => 'quotes'
                              }
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'samp',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 31,
                        'macro' => 'quotes'
                      }
                    },
                    {
                      'parent' => {},
                      'text' => ' '
                    },
                    {
                      'cmdname' => '*',
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => '
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
                          'cmdname' => '@',
                          'parent' => {}
                        },
                        {
                          'parent' => {},
                          'text' => 'codequoteundirected off
'
                        },
                        {
                          'cmdname' => '@',
                          'parent' => {}
                        },
                        {
                          'parent' => {},
                          'text' => 'codequotebacktick off
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
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 31,
                        'macro' => 'allquotes'
                      }
                    }
                  ],
                  'extra' => {
                    'end_command' => {}
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 31,
                    'macro' => 'allquotes'
                  }
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
                  'cmdname' => 'codequoteundirected',
                  'extra' => {
                    'misc_args' => [
                      'off'
                    ],
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 31,
                    'macro' => 'allquotes'
                  }
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
                  'cmdname' => 'codequotebacktick',
                  'extra' => {
                    'misc_args' => [
                      'off'
                    ],
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 31,
                    'macro' => 'allquotes'
                  }
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => '``simple-double--three---four----\'\' `simple\' quotedblleft: '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'quotedblleft',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 31,
                        'macro' => 'quotes'
                      }
                    },
                    {
                      'parent' => {},
                      'text' => ' '
                    },
                    {
                      'cmdname' => '*',
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => '
'
                    },
                    {
                      'parent' => {},
                      'text' => 'code: '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => '``simple-double--three---four----\'\' `simple\' quotedblleft: '
                            },
                            {
                              'args' => [
                                {
                                  'contents' => [],
                                  'parent' => {},
                                  'type' => 'brace_command_arg'
                                }
                              ],
                              'cmdname' => 'quotedblleft',
                              'contents' => [],
                              'parent' => {},
                              'source_info' => {
                                'file_name' => '',
                                'line_nr' => 31,
                                'macro' => 'quotes'
                              }
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'code',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 31,
                        'macro' => 'quotes'
                      }
                    },
                    {
                      'parent' => {},
                      'text' => ' '
                    },
                    {
                      'cmdname' => '*',
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => '
'
                    },
                    {
                      'parent' => {},
                      'text' => 'asis: '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => '``simple-double--three---four----\'\' `simple\' quotedblleft: '
                            },
                            {
                              'args' => [
                                {
                                  'contents' => [],
                                  'parent' => {},
                                  'type' => 'brace_command_arg'
                                }
                              ],
                              'cmdname' => 'quotedblleft',
                              'contents' => [],
                              'parent' => {},
                              'source_info' => {
                                'file_name' => '',
                                'line_nr' => 31,
                                'macro' => 'quotes'
                              }
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'asis',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 31,
                        'macro' => 'quotes'
                      }
                    },
                    {
                      'parent' => {},
                      'text' => ' '
                    },
                    {
                      'cmdname' => '*',
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => '
'
                    },
                    {
                      'parent' => {},
                      'text' => 'strong: '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => '``simple-double--three---four----\'\' `simple\' quotedblleft: '
                            },
                            {
                              'args' => [
                                {
                                  'contents' => [],
                                  'parent' => {},
                                  'type' => 'brace_command_arg'
                                }
                              ],
                              'cmdname' => 'quotedblleft',
                              'contents' => [],
                              'parent' => {},
                              'source_info' => {
                                'file_name' => '',
                                'line_nr' => 31,
                                'macro' => 'quotes'
                              }
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'strong',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 31,
                        'macro' => 'quotes'
                      }
                    },
                    {
                      'parent' => {},
                      'text' => ' '
                    },
                    {
                      'cmdname' => '*',
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => '
'
                    },
                    {
                      'parent' => {},
                      'text' => 'kbd: '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => '``simple-double--three---four----\'\' `simple\' quotedblleft: '
                            },
                            {
                              'args' => [
                                {
                                  'contents' => [],
                                  'parent' => {},
                                  'type' => 'brace_command_arg'
                                }
                              ],
                              'cmdname' => 'quotedblleft',
                              'contents' => [],
                              'parent' => {},
                              'source_info' => {
                                'file_name' => '',
                                'line_nr' => 31,
                                'macro' => 'quotes'
                              }
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'kbd',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 31,
                        'macro' => 'quotes'
                      }
                    },
                    {
                      'parent' => {},
                      'text' => ' '
                    },
                    {
                      'cmdname' => '*',
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => '
'
                    },
                    {
                      'parent' => {},
                      'text' => 'samp: '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => '``simple-double--three---four----\'\' `simple\' quotedblleft: '
                            },
                            {
                              'args' => [
                                {
                                  'contents' => [],
                                  'parent' => {},
                                  'type' => 'brace_command_arg'
                                }
                              ],
                              'cmdname' => 'quotedblleft',
                              'contents' => [],
                              'parent' => {},
                              'source_info' => {
                                'file_name' => '',
                                'line_nr' => 31,
                                'macro' => 'quotes'
                              }
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'samp',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 31,
                        'macro' => 'quotes'
                      }
                    },
                    {
                      'parent' => {},
                      'text' => ' '
                    },
                    {
                      'cmdname' => '*',
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => '
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
                          'text' => 'copying'
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
                    'command_argument' => 'copying',
                    'spaces_before_argument' => ' ',
                    'text_arg' => 'copying'
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 32,
                    'macro' => ''
                  }
                }
              ],
              'extra' => {
                'end_command' => {}
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 30,
                'macro' => ''
              }
            },
            {
              'cmdname' => 'titlepage',
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
                      'text' => 'Titlepage
'
                    }
                  ],
                  'parent' => {},
                  'type' => 'paragraph'
                },
                {
                  'args' => [
                    {
                      'parent' => {},
                      'text' => '
',
                      'type' => 'misc_arg'
                    }
                  ],
                  'cmdname' => 'insertcopying',
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 35,
                    'macro' => ''
                  }
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'titlepage'
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
                    'command_argument' => 'titlepage',
                    'spaces_before_argument' => ' ',
                    'text_arg' => 'titlepage'
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 36,
                    'macro' => ''
                  }
                }
              ],
              'extra' => {
                'end_command' => {}
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 33,
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
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line'
            }
          ],
          'parent' => {},
          'type' => 'preamble_before_content'
        }
      ],
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
      'parent' => {},
      'source_info' => {
        'file_name' => '',
        'line_nr' => 39,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'test quotes'
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
        }
      ],
      'extra' => {
        'spaces_before_argument' => ' '
      },
      'parent' => {},
      'source_info' => {
        'file_name' => '',
        'line_nr' => 40,
        'macro' => ''
      }
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
      'parent' => {},
      'source_info' => {
        'file_name' => '',
        'line_nr' => 42,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'Chapter'
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
              'text' => '``simple-double--three---four----\'\' `simple\' quotedblleft: '
            },
            {
              'args' => [
                {
                  'contents' => [],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'quotedblleft',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 45,
                'macro' => 'quotes'
              }
            },
            {
              'parent' => {},
              'text' => ' '
            },
            {
              'cmdname' => '*',
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '
'
            },
            {
              'parent' => {},
              'text' => 'code: '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => '``simple-double--three---four----\'\' `simple\' quotedblleft: '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'quotedblleft',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 45,
                        'macro' => 'quotes'
                      }
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'code',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 45,
                'macro' => 'quotes'
              }
            },
            {
              'parent' => {},
              'text' => ' '
            },
            {
              'cmdname' => '*',
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '
'
            },
            {
              'parent' => {},
              'text' => 'asis: '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => '``simple-double--three---four----\'\' `simple\' quotedblleft: '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'quotedblleft',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 45,
                        'macro' => 'quotes'
                      }
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'asis',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 45,
                'macro' => 'quotes'
              }
            },
            {
              'parent' => {},
              'text' => ' '
            },
            {
              'cmdname' => '*',
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '
'
            },
            {
              'parent' => {},
              'text' => 'strong: '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => '``simple-double--three---four----\'\' `simple\' quotedblleft: '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'quotedblleft',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 45,
                        'macro' => 'quotes'
                      }
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'strong',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 45,
                'macro' => 'quotes'
              }
            },
            {
              'parent' => {},
              'text' => ' '
            },
            {
              'cmdname' => '*',
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '
'
            },
            {
              'parent' => {},
              'text' => 'kbd: '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => '``simple-double--three---four----\'\' `simple\' quotedblleft: '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'quotedblleft',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 45,
                        'macro' => 'quotes'
                      }
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'kbd',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 45,
                'macro' => 'quotes'
              }
            },
            {
              'parent' => {},
              'text' => ' '
            },
            {
              'cmdname' => '*',
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '
'
            },
            {
              'parent' => {},
              'text' => 'samp: '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => '``simple-double--three---four----\'\' `simple\' quotedblleft: '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'quotedblleft',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 45,
                        'macro' => 'quotes'
                      }
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'samp',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 45,
                'macro' => 'quotes'
              }
            },
            {
              'parent' => {},
              'text' => ' '
            },
            {
              'cmdname' => '*',
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '
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
                  'cmdname' => '@',
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => 'codequoteundirected on
'
                },
                {
                  'cmdname' => '@',
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => 'codequotebacktick on
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
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 45,
                'macro' => 'allquotes'
              }
            }
          ],
          'extra' => {
            'end_command' => {}
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 45,
            'macro' => 'allquotes'
          }
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
          'cmdname' => 'codequoteundirected',
          'extra' => {
            'missing_argument' => 1
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 45,
            'macro' => 'allquotes'
          }
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
          'cmdname' => 'codequotebacktick',
          'extra' => {
            'missing_argument' => 1
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 45,
            'macro' => 'allquotes'
          }
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => '``simple-double--three---four----\'\' `simple\' quotedblleft: '
            },
            {
              'args' => [
                {
                  'contents' => [],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'quotedblleft',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 45,
                'macro' => 'quotes'
              }
            },
            {
              'parent' => {},
              'text' => ' '
            },
            {
              'cmdname' => '*',
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '
'
            },
            {
              'parent' => {},
              'text' => 'code: '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => '``simple-double--three---four----\'\' `simple\' quotedblleft: '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'quotedblleft',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 45,
                        'macro' => 'quotes'
                      }
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'code',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 45,
                'macro' => 'quotes'
              }
            },
            {
              'parent' => {},
              'text' => ' '
            },
            {
              'cmdname' => '*',
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '
'
            },
            {
              'parent' => {},
              'text' => 'asis: '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => '``simple-double--three---four----\'\' `simple\' quotedblleft: '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'quotedblleft',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 45,
                        'macro' => 'quotes'
                      }
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'asis',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 45,
                'macro' => 'quotes'
              }
            },
            {
              'parent' => {},
              'text' => ' '
            },
            {
              'cmdname' => '*',
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '
'
            },
            {
              'parent' => {},
              'text' => 'strong: '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => '``simple-double--three---four----\'\' `simple\' quotedblleft: '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'quotedblleft',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 45,
                        'macro' => 'quotes'
                      }
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'strong',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 45,
                'macro' => 'quotes'
              }
            },
            {
              'parent' => {},
              'text' => ' '
            },
            {
              'cmdname' => '*',
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '
'
            },
            {
              'parent' => {},
              'text' => 'kbd: '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => '``simple-double--three---four----\'\' `simple\' quotedblleft: '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'quotedblleft',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 45,
                        'macro' => 'quotes'
                      }
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'kbd',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 45,
                'macro' => 'quotes'
              }
            },
            {
              'parent' => {},
              'text' => ' '
            },
            {
              'cmdname' => '*',
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '
'
            },
            {
              'parent' => {},
              'text' => 'samp: '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => '``simple-double--three---four----\'\' `simple\' quotedblleft: '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'quotedblleft',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 45,
                        'macro' => 'quotes'
                      }
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'samp',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 45,
                'macro' => 'quotes'
              }
            },
            {
              'parent' => {},
              'text' => ' '
            },
            {
              'cmdname' => '*',
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '
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
                  'cmdname' => '@',
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => 'codequoteundirected off
'
                },
                {
                  'cmdname' => '@',
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => 'codequotebacktick off
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
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 45,
                'macro' => 'allquotes'
              }
            }
          ],
          'extra' => {
            'end_command' => {}
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 45,
            'macro' => 'allquotes'
          }
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
          'cmdname' => 'codequoteundirected',
          'extra' => {
            'misc_args' => [
              'off'
            ],
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 45,
            'macro' => 'allquotes'
          }
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
          'cmdname' => 'codequotebacktick',
          'extra' => {
            'misc_args' => [
              'off'
            ],
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 45,
            'macro' => 'allquotes'
          }
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => '``simple-double--three---four----\'\' `simple\' quotedblleft: '
            },
            {
              'args' => [
                {
                  'contents' => [],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'quotedblleft',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 45,
                'macro' => 'quotes'
              }
            },
            {
              'parent' => {},
              'text' => ' '
            },
            {
              'cmdname' => '*',
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '
'
            },
            {
              'parent' => {},
              'text' => 'code: '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => '``simple-double--three---four----\'\' `simple\' quotedblleft: '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'quotedblleft',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 45,
                        'macro' => 'quotes'
                      }
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'code',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 45,
                'macro' => 'quotes'
              }
            },
            {
              'parent' => {},
              'text' => ' '
            },
            {
              'cmdname' => '*',
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '
'
            },
            {
              'parent' => {},
              'text' => 'asis: '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => '``simple-double--three---four----\'\' `simple\' quotedblleft: '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'quotedblleft',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 45,
                        'macro' => 'quotes'
                      }
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'asis',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 45,
                'macro' => 'quotes'
              }
            },
            {
              'parent' => {},
              'text' => ' '
            },
            {
              'cmdname' => '*',
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '
'
            },
            {
              'parent' => {},
              'text' => 'strong: '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => '``simple-double--three---four----\'\' `simple\' quotedblleft: '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'quotedblleft',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 45,
                        'macro' => 'quotes'
                      }
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'strong',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 45,
                'macro' => 'quotes'
              }
            },
            {
              'parent' => {},
              'text' => ' '
            },
            {
              'cmdname' => '*',
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '
'
            },
            {
              'parent' => {},
              'text' => 'kbd: '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => '``simple-double--three---four----\'\' `simple\' quotedblleft: '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'quotedblleft',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 45,
                        'macro' => 'quotes'
                      }
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'kbd',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 45,
                'macro' => 'quotes'
              }
            },
            {
              'parent' => {},
              'text' => ' '
            },
            {
              'cmdname' => '*',
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '
'
            },
            {
              'parent' => {},
              'text' => 'samp: '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => '``simple-double--three---four----\'\' `simple\' quotedblleft: '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'quotedblleft',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 45,
                        'macro' => 'quotes'
                      }
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'samp',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 45,
                'macro' => 'quotes'
              }
            },
            {
              'parent' => {},
              'text' => ' '
            },
            {
              'cmdname' => '*',
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '
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
                  'text' => '``simple-double--three---four----\'\' `simple\' quotedblleft: '
                },
                {
                  'args' => [
                    {
                      'contents' => [],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'quotedblleft',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 48,
                    'macro' => 'quotes'
                  }
                },
                {
                  'parent' => {},
                  'text' => ' '
                },
                {
                  'cmdname' => '*',
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => '
'
                },
                {
                  'parent' => {},
                  'text' => 'code: '
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => '``simple-double--three---four----\'\' `simple\' quotedblleft: '
                        },
                        {
                          'args' => [
                            {
                              'contents' => [],
                              'parent' => {},
                              'type' => 'brace_command_arg'
                            }
                          ],
                          'cmdname' => 'quotedblleft',
                          'contents' => [],
                          'parent' => {},
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 48,
                            'macro' => 'quotes'
                          }
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'code',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 48,
                    'macro' => 'quotes'
                  }
                },
                {
                  'parent' => {},
                  'text' => ' '
                },
                {
                  'cmdname' => '*',
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => '
'
                },
                {
                  'parent' => {},
                  'text' => 'asis: '
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => '``simple-double--three---four----\'\' `simple\' quotedblleft: '
                        },
                        {
                          'args' => [
                            {
                              'contents' => [],
                              'parent' => {},
                              'type' => 'brace_command_arg'
                            }
                          ],
                          'cmdname' => 'quotedblleft',
                          'contents' => [],
                          'parent' => {},
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 48,
                            'macro' => 'quotes'
                          }
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'asis',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 48,
                    'macro' => 'quotes'
                  }
                },
                {
                  'parent' => {},
                  'text' => ' '
                },
                {
                  'cmdname' => '*',
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => '
'
                },
                {
                  'parent' => {},
                  'text' => 'strong: '
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => '``simple-double--three---four----\'\' `simple\' quotedblleft: '
                        },
                        {
                          'args' => [
                            {
                              'contents' => [],
                              'parent' => {},
                              'type' => 'brace_command_arg'
                            }
                          ],
                          'cmdname' => 'quotedblleft',
                          'contents' => [],
                          'parent' => {},
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 48,
                            'macro' => 'quotes'
                          }
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'strong',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 48,
                    'macro' => 'quotes'
                  }
                },
                {
                  'parent' => {},
                  'text' => ' '
                },
                {
                  'cmdname' => '*',
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => '
'
                },
                {
                  'parent' => {},
                  'text' => 'kbd: '
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => '``simple-double--three---four----\'\' `simple\' quotedblleft: '
                        },
                        {
                          'args' => [
                            {
                              'contents' => [],
                              'parent' => {},
                              'type' => 'brace_command_arg'
                            }
                          ],
                          'cmdname' => 'quotedblleft',
                          'contents' => [],
                          'parent' => {},
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 48,
                            'macro' => 'quotes'
                          }
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'kbd',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 48,
                    'macro' => 'quotes'
                  }
                },
                {
                  'parent' => {},
                  'text' => ' '
                },
                {
                  'cmdname' => '*',
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => '
'
                },
                {
                  'parent' => {},
                  'text' => 'samp: '
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => '``simple-double--three---four----\'\' `simple\' quotedblleft: '
                        },
                        {
                          'args' => [
                            {
                              'contents' => [],
                              'parent' => {},
                              'type' => 'brace_command_arg'
                            }
                          ],
                          'cmdname' => 'quotedblleft',
                          'contents' => [],
                          'parent' => {},
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 48,
                            'macro' => 'quotes'
                          }
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'samp',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 48,
                    'macro' => 'quotes'
                  }
                },
                {
                  'parent' => {},
                  'text' => ' '
                },
                {
                  'cmdname' => '*',
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => '
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
                      'cmdname' => '@',
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => 'codequoteundirected on
'
                    },
                    {
                      'cmdname' => '@',
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => 'codequotebacktick on
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
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 48,
                    'macro' => 'allquotes'
                  }
                }
              ],
              'extra' => {
                'end_command' => {}
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 48,
                'macro' => 'allquotes'
              }
            },
            {
              'contents' => [
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
                  'cmdname' => 'codequoteundirected',
                  'extra' => {
                    'missing_argument' => 1
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 48,
                    'macro' => 'allquotes'
                  }
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
                  'cmdname' => 'codequotebacktick',
                  'extra' => {
                    'missing_argument' => 1
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 48,
                    'macro' => 'allquotes'
                  }
                },
                {
                  'parent' => {},
                  'text' => '``simple-double--three---four----\'\' `simple\' quotedblleft: '
                },
                {
                  'args' => [
                    {
                      'contents' => [],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'quotedblleft',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 48,
                    'macro' => 'quotes'
                  }
                },
                {
                  'parent' => {},
                  'text' => ' '
                },
                {
                  'cmdname' => '*',
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => '
'
                },
                {
                  'parent' => {},
                  'text' => 'code: '
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => '``simple-double--three---four----\'\' `simple\' quotedblleft: '
                        },
                        {
                          'args' => [
                            {
                              'contents' => [],
                              'parent' => {},
                              'type' => 'brace_command_arg'
                            }
                          ],
                          'cmdname' => 'quotedblleft',
                          'contents' => [],
                          'parent' => {},
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 48,
                            'macro' => 'quotes'
                          }
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'code',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 48,
                    'macro' => 'quotes'
                  }
                },
                {
                  'parent' => {},
                  'text' => ' '
                },
                {
                  'cmdname' => '*',
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => '
'
                },
                {
                  'parent' => {},
                  'text' => 'asis: '
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => '``simple-double--three---four----\'\' `simple\' quotedblleft: '
                        },
                        {
                          'args' => [
                            {
                              'contents' => [],
                              'parent' => {},
                              'type' => 'brace_command_arg'
                            }
                          ],
                          'cmdname' => 'quotedblleft',
                          'contents' => [],
                          'parent' => {},
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 48,
                            'macro' => 'quotes'
                          }
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'asis',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 48,
                    'macro' => 'quotes'
                  }
                },
                {
                  'parent' => {},
                  'text' => ' '
                },
                {
                  'cmdname' => '*',
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => '
'
                },
                {
                  'parent' => {},
                  'text' => 'strong: '
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => '``simple-double--three---four----\'\' `simple\' quotedblleft: '
                        },
                        {
                          'args' => [
                            {
                              'contents' => [],
                              'parent' => {},
                              'type' => 'brace_command_arg'
                            }
                          ],
                          'cmdname' => 'quotedblleft',
                          'contents' => [],
                          'parent' => {},
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 48,
                            'macro' => 'quotes'
                          }
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'strong',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 48,
                    'macro' => 'quotes'
                  }
                },
                {
                  'parent' => {},
                  'text' => ' '
                },
                {
                  'cmdname' => '*',
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => '
'
                },
                {
                  'parent' => {},
                  'text' => 'kbd: '
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => '``simple-double--three---four----\'\' `simple\' quotedblleft: '
                        },
                        {
                          'args' => [
                            {
                              'contents' => [],
                              'parent' => {},
                              'type' => 'brace_command_arg'
                            }
                          ],
                          'cmdname' => 'quotedblleft',
                          'contents' => [],
                          'parent' => {},
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 48,
                            'macro' => 'quotes'
                          }
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'kbd',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 48,
                    'macro' => 'quotes'
                  }
                },
                {
                  'parent' => {},
                  'text' => ' '
                },
                {
                  'cmdname' => '*',
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => '
'
                },
                {
                  'parent' => {},
                  'text' => 'samp: '
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => '``simple-double--three---four----\'\' `simple\' quotedblleft: '
                        },
                        {
                          'args' => [
                            {
                              'contents' => [],
                              'parent' => {},
                              'type' => 'brace_command_arg'
                            }
                          ],
                          'cmdname' => 'quotedblleft',
                          'contents' => [],
                          'parent' => {},
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 48,
                            'macro' => 'quotes'
                          }
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'samp',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 48,
                    'macro' => 'quotes'
                  }
                },
                {
                  'parent' => {},
                  'text' => ' '
                },
                {
                  'cmdname' => '*',
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => '
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
                      'cmdname' => '@',
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => 'codequoteundirected off
'
                    },
                    {
                      'cmdname' => '@',
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => 'codequotebacktick off
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
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 48,
                    'macro' => 'allquotes'
                  }
                }
              ],
              'extra' => {
                'end_command' => {}
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 48,
                'macro' => 'allquotes'
              }
            },
            {
              'contents' => [
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
                  'cmdname' => 'codequoteundirected',
                  'extra' => {
                    'misc_args' => [
                      'off'
                    ],
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 48,
                    'macro' => 'allquotes'
                  }
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
                  'cmdname' => 'codequotebacktick',
                  'extra' => {
                    'misc_args' => [
                      'off'
                    ],
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 48,
                    'macro' => 'allquotes'
                  }
                },
                {
                  'parent' => {},
                  'text' => '``simple-double--three---four----\'\' `simple\' quotedblleft: '
                },
                {
                  'args' => [
                    {
                      'contents' => [],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'quotedblleft',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 48,
                    'macro' => 'quotes'
                  }
                },
                {
                  'parent' => {},
                  'text' => ' '
                },
                {
                  'cmdname' => '*',
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => '
'
                },
                {
                  'parent' => {},
                  'text' => 'code: '
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => '``simple-double--three---four----\'\' `simple\' quotedblleft: '
                        },
                        {
                          'args' => [
                            {
                              'contents' => [],
                              'parent' => {},
                              'type' => 'brace_command_arg'
                            }
                          ],
                          'cmdname' => 'quotedblleft',
                          'contents' => [],
                          'parent' => {},
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 48,
                            'macro' => 'quotes'
                          }
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'code',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 48,
                    'macro' => 'quotes'
                  }
                },
                {
                  'parent' => {},
                  'text' => ' '
                },
                {
                  'cmdname' => '*',
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => '
'
                },
                {
                  'parent' => {},
                  'text' => 'asis: '
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => '``simple-double--three---four----\'\' `simple\' quotedblleft: '
                        },
                        {
                          'args' => [
                            {
                              'contents' => [],
                              'parent' => {},
                              'type' => 'brace_command_arg'
                            }
                          ],
                          'cmdname' => 'quotedblleft',
                          'contents' => [],
                          'parent' => {},
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 48,
                            'macro' => 'quotes'
                          }
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'asis',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 48,
                    'macro' => 'quotes'
                  }
                },
                {
                  'parent' => {},
                  'text' => ' '
                },
                {
                  'cmdname' => '*',
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => '
'
                },
                {
                  'parent' => {},
                  'text' => 'strong: '
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => '``simple-double--three---four----\'\' `simple\' quotedblleft: '
                        },
                        {
                          'args' => [
                            {
                              'contents' => [],
                              'parent' => {},
                              'type' => 'brace_command_arg'
                            }
                          ],
                          'cmdname' => 'quotedblleft',
                          'contents' => [],
                          'parent' => {},
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 48,
                            'macro' => 'quotes'
                          }
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'strong',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 48,
                    'macro' => 'quotes'
                  }
                },
                {
                  'parent' => {},
                  'text' => ' '
                },
                {
                  'cmdname' => '*',
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => '
'
                },
                {
                  'parent' => {},
                  'text' => 'kbd: '
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => '``simple-double--three---four----\'\' `simple\' quotedblleft: '
                        },
                        {
                          'args' => [
                            {
                              'contents' => [],
                              'parent' => {},
                              'type' => 'brace_command_arg'
                            }
                          ],
                          'cmdname' => 'quotedblleft',
                          'contents' => [],
                          'parent' => {},
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 48,
                            'macro' => 'quotes'
                          }
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'kbd',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 48,
                    'macro' => 'quotes'
                  }
                },
                {
                  'parent' => {},
                  'text' => ' '
                },
                {
                  'cmdname' => '*',
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => '
'
                },
                {
                  'parent' => {},
                  'text' => 'samp: '
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => '``simple-double--three---four----\'\' `simple\' quotedblleft: '
                        },
                        {
                          'args' => [
                            {
                              'contents' => [],
                              'parent' => {},
                              'type' => 'brace_command_arg'
                            }
                          ],
                          'cmdname' => 'quotedblleft',
                          'contents' => [],
                          'parent' => {},
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 48,
                            'macro' => 'quotes'
                          }
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'samp',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 48,
                    'macro' => 'quotes'
                  }
                },
                {
                  'parent' => {},
                  'text' => ' '
                },
                {
                  'cmdname' => '*',
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => '
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
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 49,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'end_command' => {}
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 47,
            'macro' => ''
          }
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
      'parent' => {},
      'source_info' => {
        'file_name' => '',
        'line_nr' => 43,
        'macro' => ''
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[6]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[3];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[3];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[3];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[2]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[3];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[3]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[3];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[4]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[3];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[5]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[3];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[6]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[3];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[7]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[3];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[8]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[3];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[9]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[3];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[10]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[3];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[11]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[3];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[12]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[3];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[13]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[3];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[14]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[3];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[15]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[3];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[16]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[3];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[17]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[3];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[0]{'extra'}{'command'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1]{'contents'}[4]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1]{'contents'}[5]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1]{'contents'}[6]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1]{'contents'}[6]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1]{'contents'}[6]{'args'}[0]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1]{'contents'}[6]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1]{'contents'}[6]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1]{'contents'}[6];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1]{'contents'}[6]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1]{'contents'}[7]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1]{'contents'}[8]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1]{'contents'}[9]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1]{'contents'}[10]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1]{'contents'}[11]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1]{'contents'}[11]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1]{'contents'}[11]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1]{'contents'}[11]{'args'}[0]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1]{'contents'}[11]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1]{'contents'}[11]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1]{'contents'}[11]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1]{'contents'}[11];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1]{'contents'}[11]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1]{'contents'}[12]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1]{'contents'}[13]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1]{'contents'}[14]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1]{'contents'}[15]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1]{'contents'}[16]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1]{'contents'}[16]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1]{'contents'}[16]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1]{'contents'}[16]{'args'}[0]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1]{'contents'}[16]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1]{'contents'}[16]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1]{'contents'}[16]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1]{'contents'}[16];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1]{'contents'}[16]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1]{'contents'}[17]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1]{'contents'}[18]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1]{'contents'}[19]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1]{'contents'}[20]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1]{'contents'}[21]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1]{'contents'}[21]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1]{'contents'}[21]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1]{'contents'}[21]{'args'}[0]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1]{'contents'}[21]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1]{'contents'}[21]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1]{'contents'}[21]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1]{'contents'}[21];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1]{'contents'}[21]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1]{'contents'}[22]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1]{'contents'}[23]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1]{'contents'}[24]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1]{'contents'}[25]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1]{'contents'}[26]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1]{'contents'}[26]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1]{'contents'}[26]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1]{'contents'}[26]{'args'}[0]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1]{'contents'}[26]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1]{'contents'}[26]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1]{'contents'}[26]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1]{'contents'}[26];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1]{'contents'}[26]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1]{'contents'}[27]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1]{'contents'}[28]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1]{'contents'}[29]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[1]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[2]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[3]{'contents'}[0]{'extra'}{'command'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[3];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[3];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[3]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[3]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[3]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[3]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[3]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[3]{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[3]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[3];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[3]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[3]{'contents'}[2]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[3]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[3]{'contents'}[2];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[3]{'contents'}[2]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[3];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[3]{'extra'}{'end_command'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[3]{'contents'}[2];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[3]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[4];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[4]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[5];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[5]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6]{'contents'}[1]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6]{'contents'}[2]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6]{'contents'}[3]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6]{'contents'}[4]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6]{'contents'}[5]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6]{'contents'}[6]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6]{'contents'}[6]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6]{'contents'}[6]{'args'}[0]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6]{'contents'}[6]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6]{'contents'}[6]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6]{'contents'}[6];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6]{'contents'}[6]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6]{'contents'}[7]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6]{'contents'}[8]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6]{'contents'}[9]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6]{'contents'}[10]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6]{'contents'}[11]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6]{'contents'}[11]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6]{'contents'}[11]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6]{'contents'}[11]{'args'}[0]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6]{'contents'}[11]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6]{'contents'}[11]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6]{'contents'}[11]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6]{'contents'}[11];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6]{'contents'}[11]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6]{'contents'}[12]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6]{'contents'}[13]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6]{'contents'}[14]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6]{'contents'}[15]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6]{'contents'}[16]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6]{'contents'}[16]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6]{'contents'}[16]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6]{'contents'}[16]{'args'}[0]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6]{'contents'}[16]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6]{'contents'}[16]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6]{'contents'}[16]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6]{'contents'}[16];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6]{'contents'}[16]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6]{'contents'}[17]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6]{'contents'}[18]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6]{'contents'}[19]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6]{'contents'}[20]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6]{'contents'}[21]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6]{'contents'}[21]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6]{'contents'}[21]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6]{'contents'}[21]{'args'}[0]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6]{'contents'}[21]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6]{'contents'}[21]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6]{'contents'}[21]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6]{'contents'}[21];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6]{'contents'}[21]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6]{'contents'}[22]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6]{'contents'}[23]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6]{'contents'}[24]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6]{'contents'}[25]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6]{'contents'}[26]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6]{'contents'}[26]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6]{'contents'}[26]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6]{'contents'}[26]{'args'}[0]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6]{'contents'}[26]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6]{'contents'}[26]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6]{'contents'}[26]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6]{'contents'}[26];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6]{'contents'}[26]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6]{'contents'}[27]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6]{'contents'}[28]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6]{'contents'}[29]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[6]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[7]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[8]{'contents'}[0]{'extra'}{'command'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[8];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[8]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[8];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[8]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[8]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[8]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[8]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[8]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[8]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[8]{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[8]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[8]{'contents'}[1]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[8];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[8]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[8]{'contents'}[2]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[8]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[8]{'contents'}[2];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[8]{'contents'}[2]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[8];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[8]{'extra'}{'end_command'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[8]{'contents'}[2];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[8]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[9]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[9]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[9]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[9];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[9]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[10]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[10]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[10]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[10];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[10]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11]{'contents'}[1]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11]{'contents'}[2]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11]{'contents'}[3]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11]{'contents'}[4]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11]{'contents'}[5]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11]{'contents'}[6]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11]{'contents'}[6]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11]{'contents'}[6]{'args'}[0]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11]{'contents'}[6]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11]{'contents'}[6]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11]{'contents'}[6];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11]{'contents'}[6]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11]{'contents'}[7]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11]{'contents'}[8]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11]{'contents'}[9]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11]{'contents'}[10]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11]{'contents'}[11]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11]{'contents'}[11]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11]{'contents'}[11]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11]{'contents'}[11]{'args'}[0]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11]{'contents'}[11]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11]{'contents'}[11]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11]{'contents'}[11]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11]{'contents'}[11];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11]{'contents'}[11]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11]{'contents'}[12]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11]{'contents'}[13]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11]{'contents'}[14]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11]{'contents'}[15]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11]{'contents'}[16]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11]{'contents'}[16]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11]{'contents'}[16]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11]{'contents'}[16]{'args'}[0]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11]{'contents'}[16]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11]{'contents'}[16]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11]{'contents'}[16]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11]{'contents'}[16];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11]{'contents'}[16]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11]{'contents'}[17]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11]{'contents'}[18]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11]{'contents'}[19]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11]{'contents'}[20]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11]{'contents'}[21]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11]{'contents'}[21]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11]{'contents'}[21]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11]{'contents'}[21]{'args'}[0]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11]{'contents'}[21]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11]{'contents'}[21]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11]{'contents'}[21]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11]{'contents'}[21];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11]{'contents'}[21]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11]{'contents'}[22]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11]{'contents'}[23]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11]{'contents'}[24]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11]{'contents'}[25]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11]{'contents'}[26]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11]{'contents'}[26]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11]{'contents'}[26]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11]{'contents'}[26]{'args'}[0]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11]{'contents'}[26]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11]{'contents'}[26]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11]{'contents'}[26]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11]{'contents'}[26];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11]{'contents'}[26]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11]{'contents'}[27]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11]{'contents'}[28]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11]{'contents'}[29]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[11]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[12]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[12]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[12]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[12];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[12]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'extra'}{'end_command'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'contents'}[12];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[7]{'contents'}[0]{'extra'}{'command'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[7];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[7]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[7];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[7]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[7]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[7]{'contents'}[1]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[7];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[7]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[7]{'contents'}[2];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[7]{'contents'}[2]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[7];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[7]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[7]{'contents'}[3]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[7]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[7]{'contents'}[3];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[7]{'contents'}[3]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[7];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[7]{'extra'}{'end_command'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[7]{'contents'}[3];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[7]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[8]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'contents'}[9]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'};
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[1]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[1]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'};
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[2]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[2];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[2];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[2]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'};
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[3]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[3];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[3]{'extra'}{'node_content'}[0] = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[3]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[3]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'};
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1]{'contents'}[4]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1]{'contents'}[5]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1]{'contents'}[6]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1]{'contents'}[6]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1]{'contents'}[6]{'args'}[0]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1]{'contents'}[6]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1]{'contents'}[6]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1]{'contents'}[6];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1]{'contents'}[6]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1]{'contents'}[7]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1]{'contents'}[8]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1]{'contents'}[9]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1]{'contents'}[10]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1]{'contents'}[11]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1]{'contents'}[11]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1]{'contents'}[11]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1]{'contents'}[11]{'args'}[0]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1]{'contents'}[11]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1]{'contents'}[11]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1]{'contents'}[11]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1]{'contents'}[11];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1]{'contents'}[11]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1]{'contents'}[12]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1]{'contents'}[13]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1]{'contents'}[14]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1]{'contents'}[15]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1]{'contents'}[16]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1]{'contents'}[16]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1]{'contents'}[16]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1]{'contents'}[16]{'args'}[0]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1]{'contents'}[16]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1]{'contents'}[16]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1]{'contents'}[16]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1]{'contents'}[16];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1]{'contents'}[16]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1]{'contents'}[17]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1]{'contents'}[18]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1]{'contents'}[19]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1]{'contents'}[20]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1]{'contents'}[21]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1]{'contents'}[21]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1]{'contents'}[21]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1]{'contents'}[21]{'args'}[0]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1]{'contents'}[21]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1]{'contents'}[21]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1]{'contents'}[21]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1]{'contents'}[21];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1]{'contents'}[21]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1]{'contents'}[22]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1]{'contents'}[23]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1]{'contents'}[24]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1]{'contents'}[25]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1]{'contents'}[26]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1]{'contents'}[26]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1]{'contents'}[26]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1]{'contents'}[26]{'args'}[0]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1]{'contents'}[26]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1]{'contents'}[26]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1]{'contents'}[26]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1]{'contents'}[26];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1]{'contents'}[26]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1]{'contents'}[27]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1]{'contents'}[28]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1]{'contents'}[29]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[2]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'extra'}{'command'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[3];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[3];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[3]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[3]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[3]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[3]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[3];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[3]{'contents'}[2];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[3];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[3]{'extra'}{'end_command'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[3]{'contents'}[2];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[3]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[4];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[4]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[5];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[5]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6]{'contents'}[1]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6]{'contents'}[2]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6]{'contents'}[3]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6]{'contents'}[4]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6]{'contents'}[5]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6]{'contents'}[6]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6]{'contents'}[6]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6]{'contents'}[6]{'args'}[0]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6]{'contents'}[6]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6]{'contents'}[6]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6]{'contents'}[6];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6]{'contents'}[6]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6]{'contents'}[7]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6]{'contents'}[8]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6]{'contents'}[9]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6]{'contents'}[10]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6]{'contents'}[11]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6]{'contents'}[11]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6]{'contents'}[11]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6]{'contents'}[11]{'args'}[0]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6]{'contents'}[11]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6]{'contents'}[11]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6]{'contents'}[11]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6]{'contents'}[11];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6]{'contents'}[11]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6]{'contents'}[12]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6]{'contents'}[13]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6]{'contents'}[14]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6]{'contents'}[15]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6]{'contents'}[16]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6]{'contents'}[16]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6]{'contents'}[16]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6]{'contents'}[16]{'args'}[0]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6]{'contents'}[16]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6]{'contents'}[16]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6]{'contents'}[16]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6]{'contents'}[16];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6]{'contents'}[16]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6]{'contents'}[17]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6]{'contents'}[18]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6]{'contents'}[19]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6]{'contents'}[20]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6]{'contents'}[21]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6]{'contents'}[21]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6]{'contents'}[21]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6]{'contents'}[21]{'args'}[0]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6]{'contents'}[21]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6]{'contents'}[21]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6]{'contents'}[21]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6]{'contents'}[21];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6]{'contents'}[21]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6]{'contents'}[22]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6]{'contents'}[23]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6]{'contents'}[24]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6]{'contents'}[25]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6]{'contents'}[26]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6]{'contents'}[26]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6]{'contents'}[26]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6]{'contents'}[26]{'args'}[0]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6]{'contents'}[26]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6]{'contents'}[26]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6]{'contents'}[26]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6]{'contents'}[26];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6]{'contents'}[26]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6]{'contents'}[27]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6]{'contents'}[28]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6]{'contents'}[29]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[6]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[7]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[8]{'contents'}[0]{'extra'}{'command'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[8];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[8]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[8];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[8]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[8]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[8]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[8]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[8];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[8]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[8]{'contents'}[2]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[8]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[8]{'contents'}[2];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[8]{'contents'}[2]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[8];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[8]{'extra'}{'end_command'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[8]{'contents'}[2];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[8]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[9]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[9]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[9]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[9];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[9]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[10]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[10]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[10]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[10];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[10]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11]{'contents'}[2]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11]{'contents'}[3]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11]{'contents'}[4]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11]{'contents'}[5]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11]{'contents'}[6]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11]{'contents'}[6]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11]{'contents'}[6]{'args'}[0]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11]{'contents'}[6]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11]{'contents'}[6]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11]{'contents'}[6];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11]{'contents'}[6]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11]{'contents'}[7]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11]{'contents'}[8]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11]{'contents'}[9]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11]{'contents'}[10]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11]{'contents'}[11]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11]{'contents'}[11]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11]{'contents'}[11]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11]{'contents'}[11]{'args'}[0]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11]{'contents'}[11]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11]{'contents'}[11]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11]{'contents'}[11]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11]{'contents'}[11];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11]{'contents'}[11]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11]{'contents'}[12]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11]{'contents'}[13]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11]{'contents'}[14]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11]{'contents'}[15]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11]{'contents'}[16]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11]{'contents'}[16]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11]{'contents'}[16]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11]{'contents'}[16]{'args'}[0]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11]{'contents'}[16]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11]{'contents'}[16]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11]{'contents'}[16]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11]{'contents'}[16];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11]{'contents'}[16]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11]{'contents'}[17]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11]{'contents'}[18]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11]{'contents'}[19]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11]{'contents'}[20]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11]{'contents'}[21]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11]{'contents'}[21]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11]{'contents'}[21]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11]{'contents'}[21]{'args'}[0]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11]{'contents'}[21]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11]{'contents'}[21]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11]{'contents'}[21]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11]{'contents'}[21];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11]{'contents'}[21]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11]{'contents'}[22]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11]{'contents'}[23]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11]{'contents'}[24]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11]{'contents'}[25]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11]{'contents'}[26]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11]{'contents'}[26]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11]{'contents'}[26]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11]{'contents'}[26]{'args'}[0]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11]{'contents'}[26]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11]{'contents'}[26]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11]{'contents'}[26]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11]{'contents'}[26];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11]{'contents'}[26]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11]{'contents'}[27]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11]{'contents'}[28]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11]{'contents'}[29]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[11]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[12]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[0]{'extra'}{'command'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1]{'contents'}[4]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1]{'contents'}[5]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1]{'contents'}[6]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1]{'contents'}[6]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1]{'contents'}[6]{'args'}[0]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1]{'contents'}[6]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1]{'contents'}[6]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1]{'contents'}[6];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1]{'contents'}[6]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1]{'contents'}[7]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1]{'contents'}[8]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1]{'contents'}[9]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1]{'contents'}[10]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1]{'contents'}[11]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1]{'contents'}[11]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1]{'contents'}[11]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1]{'contents'}[11]{'args'}[0]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1]{'contents'}[11]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1]{'contents'}[11]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1]{'contents'}[11]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1]{'contents'}[11];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1]{'contents'}[11]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1]{'contents'}[12]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1]{'contents'}[13]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1]{'contents'}[14]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1]{'contents'}[15]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1]{'contents'}[16]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1]{'contents'}[16]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1]{'contents'}[16]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1]{'contents'}[16]{'args'}[0]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1]{'contents'}[16]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1]{'contents'}[16]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1]{'contents'}[16]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1]{'contents'}[16];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1]{'contents'}[16]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1]{'contents'}[17]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1]{'contents'}[18]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1]{'contents'}[19]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1]{'contents'}[20]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1]{'contents'}[21]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1]{'contents'}[21]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1]{'contents'}[21]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1]{'contents'}[21]{'args'}[0]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1]{'contents'}[21]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1]{'contents'}[21]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1]{'contents'}[21]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1]{'contents'}[21];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1]{'contents'}[21]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1]{'contents'}[22]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1]{'contents'}[23]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1]{'contents'}[24]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1]{'contents'}[25]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1]{'contents'}[26]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1]{'contents'}[26]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1]{'contents'}[26]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1]{'contents'}[26]{'args'}[0]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1]{'contents'}[26]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1]{'contents'}[26]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1]{'contents'}[26]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1]{'contents'}[26];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1]{'contents'}[26]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1]{'contents'}[27]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1]{'contents'}[28]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1]{'contents'}[29]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1]{'contents'}[30]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[1]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[2]{'contents'}[0]{'extra'}{'command'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[2];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[2];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[2]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[2]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[2]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[2]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[2]{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[2]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[2];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[2]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[2]{'contents'}[2]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[2]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[2]{'contents'}[2];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[2];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[2]{'extra'}{'end_command'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[2]{'contents'}[2];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[2]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3]{'contents'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3]{'contents'}[2]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3]{'contents'}[3];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3]{'contents'}[3]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3]{'contents'}[4]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3]{'contents'}[5]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3]{'contents'}[6]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3]{'contents'}[7]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3]{'contents'}[8]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3]{'contents'}[8]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3]{'contents'}[8]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3]{'contents'}[8]{'args'}[0]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3]{'contents'}[8]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3]{'contents'}[8]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3]{'contents'}[8]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3]{'contents'}[8];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3]{'contents'}[8]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3]{'contents'}[9]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3]{'contents'}[10]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3]{'contents'}[11]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3]{'contents'}[12]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3]{'contents'}[13]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3]{'contents'}[13]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3]{'contents'}[13]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3]{'contents'}[13]{'args'}[0]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3]{'contents'}[13]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3]{'contents'}[13]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3]{'contents'}[13]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3]{'contents'}[13];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3]{'contents'}[13]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3]{'contents'}[14]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3]{'contents'}[15]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3]{'contents'}[16]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3]{'contents'}[17]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3]{'contents'}[18]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3]{'contents'}[18]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3]{'contents'}[18]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3]{'contents'}[18]{'args'}[0]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3]{'contents'}[18]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3]{'contents'}[18]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3]{'contents'}[18]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3]{'contents'}[18];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3]{'contents'}[18]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3]{'contents'}[19]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3]{'contents'}[20]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3]{'contents'}[21]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3]{'contents'}[22]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3]{'contents'}[23]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3]{'contents'}[23]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3]{'contents'}[23]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3]{'contents'}[23]{'args'}[0]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3]{'contents'}[23]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3]{'contents'}[23]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3]{'contents'}[23]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3]{'contents'}[23];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3]{'contents'}[23]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3]{'contents'}[24]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3]{'contents'}[25]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3]{'contents'}[26]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3]{'contents'}[27]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3]{'contents'}[28]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3]{'contents'}[28]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3]{'contents'}[28]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3]{'contents'}[28]{'args'}[0]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3]{'contents'}[28]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3]{'contents'}[28]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3]{'contents'}[28]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3]{'contents'}[28];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3]{'contents'}[28]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3]{'contents'}[29]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3]{'contents'}[30]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3]{'contents'}[31]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3]{'contents'}[32]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[3]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[4]{'contents'}[0]{'extra'}{'command'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[4];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[4];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[4]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[4]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[4]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[4]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[4]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[4]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[4]{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[4]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[4];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[4]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[4]{'contents'}[2]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[4]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[4]{'contents'}[2];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[4]{'contents'}[2]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[4];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[4]{'extra'}{'end_command'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[4]{'contents'}[2];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[4]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5]{'contents'}[0]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5]{'contents'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5]{'contents'}[1]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5]{'contents'}[1]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5]{'contents'}[2]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5]{'contents'}[3];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5]{'contents'}[3]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5]{'contents'}[4]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5]{'contents'}[5]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5]{'contents'}[6]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5]{'contents'}[7]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5]{'contents'}[8]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5]{'contents'}[8]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5]{'contents'}[8]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5]{'contents'}[8]{'args'}[0]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5]{'contents'}[8]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5]{'contents'}[8]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5]{'contents'}[8]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5]{'contents'}[8];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5]{'contents'}[8]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5]{'contents'}[9]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5]{'contents'}[10]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5]{'contents'}[11]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5]{'contents'}[12]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5]{'contents'}[13]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5]{'contents'}[13]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5]{'contents'}[13]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5]{'contents'}[13]{'args'}[0]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5]{'contents'}[13]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5]{'contents'}[13]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5]{'contents'}[13]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5]{'contents'}[13];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5]{'contents'}[13]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5]{'contents'}[14]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5]{'contents'}[15]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5]{'contents'}[16]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5]{'contents'}[17]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5]{'contents'}[18]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5]{'contents'}[18]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5]{'contents'}[18]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5]{'contents'}[18]{'args'}[0]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5]{'contents'}[18]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5]{'contents'}[18]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5]{'contents'}[18]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5]{'contents'}[18];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5]{'contents'}[18]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5]{'contents'}[19]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5]{'contents'}[20]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5]{'contents'}[21]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5]{'contents'}[22]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5]{'contents'}[23]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5]{'contents'}[23]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5]{'contents'}[23]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5]{'contents'}[23]{'args'}[0]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5]{'contents'}[23]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5]{'contents'}[23]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5]{'contents'}[23]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5]{'contents'}[23];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5]{'contents'}[23]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5]{'contents'}[24]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5]{'contents'}[25]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5]{'contents'}[26]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5]{'contents'}[27]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5]{'contents'}[28]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5]{'contents'}[28]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5]{'contents'}[28]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5]{'contents'}[28]{'args'}[0]{'contents'}[1];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5]{'contents'}[28]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5]{'contents'}[28]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5]{'contents'}[28]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5]{'contents'}[28];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5]{'contents'}[28]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5]{'contents'}[29]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5]{'contents'}[30]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5]{'contents'}[31]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[5]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[6]{'args'}[0];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[6];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[6]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'extra'}{'end_command'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'contents'}[6];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[13]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'contents'}[14]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4];
$result_trees{'codequoteundirected_codequotebacktick'}{'contents'}[4]{'parent'} = $result_trees{'codequoteundirected_codequotebacktick'};

$result_texis{'codequoteundirected_codequotebacktick'} = '@macro quotes
``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{} @*
code: @code{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
asis: @asis{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
strong: @strong{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
kbd: @kbd{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
samp: @samp{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
@end macro

@macro allquotes
@quotes{}

@example
@@codequoteundirected on
@@codequotebacktick on
@end example
@codequoteundirected
@codequotebacktick
@quotes{}

@example
@@codequoteundirected off
@@codequotebacktick off
@end example
@codequoteundirected off
@codequotebacktick off
@quotes{}
@end macro

@copying
``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{} @*
code: @code{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
asis: @asis{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
strong: @strong{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
kbd: @kbd{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
samp: @samp{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*

@example
@@codequoteundirected on
@@codequotebacktick on
@end example
@codequoteundirected
@codequotebacktick
``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{} @*
code: @code{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
asis: @asis{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
strong: @strong{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
kbd: @kbd{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
samp: @samp{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*

@example
@@codequoteundirected off
@@codequotebacktick off
@end example
@codequoteundirected off
@codequotebacktick off
``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{} @*
code: @code{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
asis: @asis{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
strong: @strong{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
kbd: @kbd{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
samp: @samp{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
@end copying
@titlepage
Titlepage
@insertcopying
@end titlepage


@node Top 
@top test quotes

@node chap
@chapter Chapter

``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{} @*
code: @code{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
asis: @asis{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
strong: @strong{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
kbd: @kbd{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
samp: @samp{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*

@example
@@codequoteundirected on
@@codequotebacktick on
@end example
@codequoteundirected
@codequotebacktick
``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{} @*
code: @code{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
asis: @asis{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
strong: @strong{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
kbd: @kbd{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
samp: @samp{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*

@example
@@codequoteundirected off
@@codequotebacktick off
@end example
@codequoteundirected off
@codequotebacktick off
``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{} @*
code: @code{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
asis: @asis{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
strong: @strong{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
kbd: @kbd{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
samp: @samp{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*

@example
``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{} @*
code: @code{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
asis: @asis{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
strong: @strong{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
kbd: @kbd{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
samp: @samp{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*

@example
@@codequoteundirected on
@@codequotebacktick on
@end example
@codequoteundirected
@codequotebacktick
``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{} @*
code: @code{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
asis: @asis{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
strong: @strong{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
kbd: @kbd{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
samp: @samp{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*

@example
@@codequoteundirected off
@@codequotebacktick off
@end example
@codequoteundirected off
@codequotebacktick off
``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{} @*
code: @code{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
asis: @asis{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
strong: @strong{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
kbd: @kbd{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
samp: @samp{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
@end example

';


$result_texts{'codequoteundirected_codequotebacktick'} = '



test quotes
***********

1 Chapter
*********

"simple-double-three--four---" `simple\' quotedblleft: " 

code: ``simple-double--three---four----\'\' `simple\' quotedblleft: " 

asis: "simple-double-three--four---" `simple\' quotedblleft: " 

strong: "simple-double-three--four---" `simple\' quotedblleft: " 

kbd: ``simple-double--three---four----\'\' `simple\' quotedblleft: " 

samp: ``simple-double--three---four----\'\' `simple\' quotedblleft: " 


@codequoteundirected on
@codequotebacktick on
"simple-double-three--four---" `simple\' quotedblleft: " 

code: ``simple-double--three---four----\'\' `simple\' quotedblleft: " 

asis: "simple-double-three--four---" `simple\' quotedblleft: " 

strong: "simple-double-three--four---" `simple\' quotedblleft: " 

kbd: ``simple-double--three---four----\'\' `simple\' quotedblleft: " 

samp: ``simple-double--three---four----\'\' `simple\' quotedblleft: " 


@codequoteundirected off
@codequotebacktick off
"simple-double-three--four---" `simple\' quotedblleft: " 

code: ``simple-double--three---four----\'\' `simple\' quotedblleft: " 

asis: "simple-double-three--four---" `simple\' quotedblleft: " 

strong: "simple-double-three--four---" `simple\' quotedblleft: " 

kbd: ``simple-double--three---four----\'\' `simple\' quotedblleft: " 

samp: ``simple-double--three---four----\'\' `simple\' quotedblleft: " 


``simple-double--three---four----\'\' `simple\' quotedblleft: " 

code: ``simple-double--three---four----\'\' `simple\' quotedblleft: " 

asis: ``simple-double--three---four----\'\' `simple\' quotedblleft: " 

strong: ``simple-double--three---four----\'\' `simple\' quotedblleft: " 

kbd: ``simple-double--three---four----\'\' `simple\' quotedblleft: " 

samp: ``simple-double--three---four----\'\' `simple\' quotedblleft: " 


@codequoteundirected on
@codequotebacktick on
``simple-double--three---four----\'\' `simple\' quotedblleft: " 

code: ``simple-double--three---four----\'\' `simple\' quotedblleft: " 

asis: ``simple-double--three---four----\'\' `simple\' quotedblleft: " 

strong: ``simple-double--three---four----\'\' `simple\' quotedblleft: " 

kbd: ``simple-double--three---four----\'\' `simple\' quotedblleft: " 

samp: ``simple-double--three---four----\'\' `simple\' quotedblleft: " 


@codequoteundirected off
@codequotebacktick off
``simple-double--three---four----\'\' `simple\' quotedblleft: " 

code: ``simple-double--three---four----\'\' `simple\' quotedblleft: " 

asis: ``simple-double--three---four----\'\' `simple\' quotedblleft: " 

strong: ``simple-double--three---four----\'\' `simple\' quotedblleft: " 

kbd: ``simple-double--three---four----\'\' `simple\' quotedblleft: " 

samp: ``simple-double--three---four----\'\' `simple\' quotedblleft: " 


';

$result_sectioning{'codequoteundirected_codequotebacktick'} = {
  'structure' => {
    'section_childs' => [
      {
        'cmdname' => 'top',
        'extra' => {
          'associated_node' => {
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'Top'
            },
            'structure' => {}
          }
        },
        'structure' => {
          'section_childs' => [
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => 'chap'
                  },
                  'structure' => {}
                }
              },
              'structure' => {
                'section_level' => 1,
                'section_number' => 1,
                'section_up' => {},
                'toplevel_prev' => {},
                'toplevel_up' => {}
              }
            }
          ],
          'section_level' => 0,
          'section_up' => {}
        }
      }
    ],
    'section_level' => -1
  }
};
$result_sectioning{'codequoteundirected_codequotebacktick'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'codequoteundirected_codequotebacktick'}{'structure'}{'section_childs'}[0];
$result_sectioning{'codequoteundirected_codequotebacktick'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_prev'} = $result_sectioning{'codequoteundirected_codequotebacktick'}{'structure'}{'section_childs'}[0];
$result_sectioning{'codequoteundirected_codequotebacktick'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_up'} = $result_sectioning{'codequoteundirected_codequotebacktick'}{'structure'}{'section_childs'}[0];
$result_sectioning{'codequoteundirected_codequotebacktick'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'codequoteundirected_codequotebacktick'};

$result_nodes{'codequoteundirected_codequotebacktick'} = {
  'cmdname' => 'node',
  'extra' => {
    'associated_section' => {
      'cmdname' => 'top',
      'extra' => {},
      'structure' => {}
    },
    'normalized' => 'Top'
  },
  'structure' => {
    'node_next' => {
      'cmdname' => 'node',
      'extra' => {
        'associated_section' => {
          'cmdname' => 'chapter',
          'extra' => {},
          'structure' => {
            'section_number' => 1
          }
        },
        'normalized' => 'chap'
      },
      'structure' => {
        'node_prev' => {},
        'node_up' => {}
      }
    }
  }
};
$result_nodes{'codequoteundirected_codequotebacktick'}{'structure'}{'node_next'}{'structure'}{'node_prev'} = $result_nodes{'codequoteundirected_codequotebacktick'};
$result_nodes{'codequoteundirected_codequotebacktick'}{'structure'}{'node_next'}{'structure'}{'node_up'} = $result_nodes{'codequoteundirected_codequotebacktick'};

$result_menus{'codequoteundirected_codequotebacktick'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  },
  'structure' => {}
};

$result_errors{'codequoteundirected_codequotebacktick'} = [
  {
    'error_line' => '@codequoteundirected missing argument (possibly involving @allquotes)
',
    'file_name' => '',
    'line_nr' => 31,
    'macro' => 'allquotes',
    'text' => '@codequoteundirected missing argument',
    'type' => 'error'
  },
  {
    'error_line' => '@codequotebacktick missing argument (possibly involving @allquotes)
',
    'file_name' => '',
    'line_nr' => 31,
    'macro' => 'allquotes',
    'text' => '@codequotebacktick missing argument',
    'type' => 'error'
  },
  {
    'error_line' => '@codequoteundirected missing argument (possibly involving @allquotes)
',
    'file_name' => '',
    'line_nr' => 45,
    'macro' => 'allquotes',
    'text' => '@codequoteundirected missing argument',
    'type' => 'error'
  },
  {
    'error_line' => '@codequotebacktick missing argument (possibly involving @allquotes)
',
    'file_name' => '',
    'line_nr' => 45,
    'macro' => 'allquotes',
    'text' => '@codequotebacktick missing argument',
    'type' => 'error'
  },
  {
    'error_line' => '@codequoteundirected missing argument (possibly involving @allquotes)
',
    'file_name' => '',
    'line_nr' => 48,
    'macro' => 'allquotes',
    'text' => '@codequoteundirected missing argument',
    'type' => 'error'
  },
  {
    'error_line' => '@codequotebacktick missing argument (possibly involving @allquotes)
',
    'file_name' => '',
    'line_nr' => 48,
    'macro' => 'allquotes',
    'text' => '@codequotebacktick missing argument',
    'type' => 'error'
  }
];


$result_floats{'codequoteundirected_codequotebacktick'} = {};



$result_converted{'plaintext'}->{'codequoteundirected_codequotebacktick'} = 'test quotes
***********

1 Chapter
*********

“simple-double–three—four—-” ‘simple’ quotedblleft: “
code: ‘``simple-double--three---four----\'\' `simple\' quotedblleft: “’
asis: “simple-double–three—four—-” ‘simple’ quotedblleft: “
strong: *“simple-double–three—four—-” ‘simple’ quotedblleft: “*
kbd: ‘``simple-double--three---four----\'\' `simple\' quotedblleft: “’
samp: ‘``simple-double--three---four----\'\' `simple\' quotedblleft: “’

     @codequoteundirected on
     @codequotebacktick on
   “simple-double–three—four—-” ‘simple’ quotedblleft: “
code: ‘``simple-double--three---four----\'\' `simple\' quotedblleft: “’
asis: “simple-double–three—four—-” ‘simple’ quotedblleft: “
strong: *“simple-double–three—four—-” ‘simple’ quotedblleft: “*
kbd: ‘``simple-double--three---four----\'\' `simple\' quotedblleft: “’
samp: ‘``simple-double--three---four----\'\' `simple\' quotedblleft: “’

     @codequoteundirected off
     @codequotebacktick off
   “simple-double–three—four—-” ‘simple’ quotedblleft: “
code: ‘``simple-double--three---four----\'\' `simple\' quotedblleft: “’
asis: “simple-double–three—four—-” ‘simple’ quotedblleft: “
strong: *“simple-double–three—four—-” ‘simple’ quotedblleft: “*
kbd: ‘``simple-double--three---four----\'\' `simple\' quotedblleft: “’
samp: ‘``simple-double--three---four----\'\' `simple\' quotedblleft: “’

     ``simple-double--three---four----\'\' `simple\' quotedblleft: “

     code: ``simple-double--three---four----\'\' `simple\' quotedblleft: “

     asis: ``simple-double--three---four----\'\' `simple\' quotedblleft: “

     strong: *``simple-double--three---four----\'\' `simple\' quotedblleft: “*

     kbd: ``simple-double--three---four----\'\' `simple\' quotedblleft: “

     samp: ‘``simple-double--three---four----\'\' `simple\' quotedblleft: “’


          @codequoteundirected on
          @codequotebacktick on
     ``simple-double--three---four----\'\' `simple\' quotedblleft: “

     code: ``simple-double--three---four----\'\' `simple\' quotedblleft: “

     asis: ``simple-double--three---four----\'\' `simple\' quotedblleft: “

     strong: *``simple-double--three---four----\'\' `simple\' quotedblleft: “*

     kbd: ``simple-double--three---four----\'\' `simple\' quotedblleft: “

     samp: ‘``simple-double--three---four----\'\' `simple\' quotedblleft: “’


          @codequoteundirected off
          @codequotebacktick off
     ``simple-double--three---four----\'\' `simple\' quotedblleft: “

     code: ``simple-double--three---four----\'\' `simple\' quotedblleft: “

     asis: ``simple-double--three---four----\'\' `simple\' quotedblleft: “

     strong: *``simple-double--three---four----\'\' `simple\' quotedblleft: “*

     kbd: ``simple-double--three---four----\'\' `simple\' quotedblleft: “

     samp: ‘``simple-double--three---four----\'\' `simple\' quotedblleft: “’


';


$result_converted{'html_text'}->{'codequoteundirected_codequotebacktick'} = '



<div class="top-level-extent" id="Top">
<div class="nav-panel">
<p>
 &nbsp; </p>
</div>
<h1 class="top" id="test-quotes">test quotes</h1>

<ul class="mini-toc">
<li><a href="#chap" accesskey="1">Chapter</a></li>
</ul>
<hr>
<div class="chapter-level-extent" id="chap">
<div class="nav-panel">
<p>
 &nbsp; </p>
</div>
<h2 class="chapter" id="Chapter">1 Chapter</h2>

<p>&ldquo;simple-double&ndash;three&mdash;four&mdash;-&rdquo; &lsquo;simple&rsquo; quotedblleft: &ldquo; <br>
code: <code class="code">``simple-double--three---four----\'\' `simple\' quotedblleft: &ldquo;</code> <br>
asis: &ldquo;simple-double&ndash;three&mdash;four&mdash;-&rdquo; &lsquo;simple&rsquo; quotedblleft: &ldquo; <br>
strong: <strong class="strong">&ldquo;simple-double&ndash;three&mdash;four&mdash;-&rdquo; &lsquo;simple&rsquo; quotedblleft: &ldquo;</strong> <br>
kbd: <kbd class="kbd">``simple-double--three---four----\'\' `simple\' quotedblleft: &ldquo;</kbd> <br>
samp: &lsquo;<samp class="samp">``simple-double--three---four----\'\' `simple\' quotedblleft: &ldquo;</samp>&rsquo; <br>
</p>
<div class="example">
<pre class="example-preformatted">@codequoteundirected on
@codequotebacktick on
</pre></div>
<p>&ldquo;simple-double&ndash;three&mdash;four&mdash;-&rdquo; &lsquo;simple&rsquo; quotedblleft: &ldquo; <br>
code: <code class="code">``simple-double--three---four----\'\' `simple\' quotedblleft: &ldquo;</code> <br>
asis: &ldquo;simple-double&ndash;three&mdash;four&mdash;-&rdquo; &lsquo;simple&rsquo; quotedblleft: &ldquo; <br>
strong: <strong class="strong">&ldquo;simple-double&ndash;three&mdash;four&mdash;-&rdquo; &lsquo;simple&rsquo; quotedblleft: &ldquo;</strong> <br>
kbd: <kbd class="kbd">``simple-double--three---four----\'\' `simple\' quotedblleft: &ldquo;</kbd> <br>
samp: &lsquo;<samp class="samp">``simple-double--three---four----\'\' `simple\' quotedblleft: &ldquo;</samp>&rsquo; <br>
</p>
<div class="example">
<pre class="example-preformatted">@codequoteundirected off
@codequotebacktick off
</pre></div>
<p>&ldquo;simple-double&ndash;three&mdash;four&mdash;-&rdquo; &lsquo;simple&rsquo; quotedblleft: &ldquo; <br>
code: <code class="code">``simple-double--three---four----\'\' `simple\' quotedblleft: &ldquo;</code> <br>
asis: &ldquo;simple-double&ndash;three&mdash;four&mdash;-&rdquo; &lsquo;simple&rsquo; quotedblleft: &ldquo; <br>
strong: <strong class="strong">&ldquo;simple-double&ndash;three&mdash;four&mdash;-&rdquo; &lsquo;simple&rsquo; quotedblleft: &ldquo;</strong> <br>
kbd: <kbd class="kbd">``simple-double--three---four----\'\' `simple\' quotedblleft: &ldquo;</kbd> <br>
samp: &lsquo;<samp class="samp">``simple-double--three---four----\'\' `simple\' quotedblleft: &ldquo;</samp>&rsquo; <br>
</p>
<div class="example">
<pre class="example-preformatted">``simple-double--three---four----\'\' `simple\' quotedblleft: &ldquo; 

code: <code class="code">``simple-double--three---four----\'\' `simple\' quotedblleft: &ldquo;</code> 

asis: ``simple-double--three---four----\'\' `simple\' quotedblleft: &ldquo; 

strong: <strong class="strong">``simple-double--three---four----\'\' `simple\' quotedblleft: &ldquo;</strong> 

kbd: <kbd class="kbd">``simple-double--three---four----\'\' `simple\' quotedblleft: &ldquo;</kbd> 

samp: &lsquo;<samp class="samp">``simple-double--three---four----\'\' `simple\' quotedblleft: &ldquo;</samp>&rsquo; 


</pre><div class="example">
<pre class="example-preformatted">@codequoteundirected on
@codequotebacktick on
</pre></div>
<pre class="example-preformatted">``simple-double--three---four----\'\' `simple\' quotedblleft: &ldquo; 

code: <code class="code">``simple-double--three---four----\'\' `simple\' quotedblleft: &ldquo;</code> 

asis: ``simple-double--three---four----\'\' `simple\' quotedblleft: &ldquo; 

strong: <strong class="strong">``simple-double--three---four----\'\' `simple\' quotedblleft: &ldquo;</strong> 

kbd: <kbd class="kbd">``simple-double--three---four----\'\' `simple\' quotedblleft: &ldquo;</kbd> 

samp: &lsquo;<samp class="samp">``simple-double--three---four----\'\' `simple\' quotedblleft: &ldquo;</samp>&rsquo; 


</pre><div class="example">
<pre class="example-preformatted">@codequoteundirected off
@codequotebacktick off
</pre></div>
<pre class="example-preformatted">``simple-double--three---four----\'\' `simple\' quotedblleft: &ldquo; 

code: <code class="code">``simple-double--three---four----\'\' `simple\' quotedblleft: &ldquo;</code> 

asis: ``simple-double--three---four----\'\' `simple\' quotedblleft: &ldquo; 

strong: <strong class="strong">``simple-double--three---four----\'\' `simple\' quotedblleft: &ldquo;</strong> 

kbd: <kbd class="kbd">``simple-double--three---four----\'\' `simple\' quotedblleft: &ldquo;</kbd> 

samp: &lsquo;<samp class="samp">``simple-double--three---four----\'\' `simple\' quotedblleft: &ldquo;</samp>&rsquo; 

</pre></div>

</div>
</div>
';


$result_converted{'latex'}->{'codequoteundirected_codequotebacktick'} = '



\\begin{document}

\\GNUTexinfofrontmatter
\\begin{titlepage}
\\begingroup
\\newskip\\titlepagetopglue \\titlepagetopglue = 1.5in
\\newskip\\titlepagebottomglue \\titlepagebottomglue = 2pc
\\setlength{\\parindent}{0pt}
% Leave some space at the very top of the page.
    \\vglue\\titlepagetopglue
Titlepage
``simple-double--three---four----\'\' `simple\' quotedblleft: \\textquotedblleft{} \\leavevmode{}\\\\
code: \\texttt{{`}{`}simple-double{-}{-}three{-}{-}{-}four{-}{-}{-}-{\'}{\'} `simple\' quotedblleft:\\ \\textquotedblleft{}} \\leavevmode{}\\\\
asis: ``simple-double--three---four----\'\' `simple\' quotedblleft: \\textquotedblleft{} \\leavevmode{}\\\\
strong: \\textbf{``simple-double--three---four----\'\' `simple\' quotedblleft: \\textquotedblleft{}} \\leavevmode{}\\\\
kbd: \\GNUTexinfocommandstyletextkbd{{`}{`}simple-double{-}{-}three{-}{-}{-}four{-}{-}{-}-{\'}{\'} `simple\' quotedblleft:\\ \\textquotedblleft{}} \\leavevmode{}\\\\
samp: `\\texttt{{`}{`}simple-double{-}{-}three{-}{-}{-}four{-}{-}{-}-{\'}{\'} `simple\' quotedblleft:\\ \\textquotedblleft{}}\' \\leavevmode{}\\\\

\\begin{GNUTexinfopreformatted}
\\leftskip=2em\\relax\\ttfamily%
@codequoteundirected on
@codequotebacktick on
\\end{GNUTexinfopreformatted}
``simple-double--three---four----\'\' `simple\' quotedblleft: \\textquotedblleft{} \\leavevmode{}\\\\
code: \\texttt{{`}{`}simple-double{-}{-}three{-}{-}{-}four{-}{-}{-}-{\'}{\'} `simple\' quotedblleft:\\ \\textquotedblleft{}} \\leavevmode{}\\\\
asis: ``simple-double--three---four----\'\' `simple\' quotedblleft: \\textquotedblleft{} \\leavevmode{}\\\\
strong: \\textbf{``simple-double--three---four----\'\' `simple\' quotedblleft: \\textquotedblleft{}} \\leavevmode{}\\\\
kbd: \\GNUTexinfocommandstyletextkbd{{`}{`}simple-double{-}{-}three{-}{-}{-}four{-}{-}{-}-{\'}{\'} `simple\' quotedblleft:\\ \\textquotedblleft{}} \\leavevmode{}\\\\
samp: `\\texttt{{`}{`}simple-double{-}{-}three{-}{-}{-}four{-}{-}{-}-{\'}{\'} `simple\' quotedblleft:\\ \\textquotedblleft{}}\' \\leavevmode{}\\\\

\\begin{GNUTexinfopreformatted}
\\leftskip=2em\\relax\\ttfamily%
@codequoteundirected off
@codequotebacktick off
\\end{GNUTexinfopreformatted}
``simple-double--three---four----\'\' `simple\' quotedblleft: \\textquotedblleft{} \\leavevmode{}\\\\
code: \\texttt{{`}{`}simple-double{-}{-}three{-}{-}{-}four{-}{-}{-}-{\'}{\'} `simple\' quotedblleft:\\ \\textquotedblleft{}} \\leavevmode{}\\\\
asis: ``simple-double--three---four----\'\' `simple\' quotedblleft: \\textquotedblleft{} \\leavevmode{}\\\\
strong: \\textbf{``simple-double--three---four----\'\' `simple\' quotedblleft: \\textquotedblleft{}} \\leavevmode{}\\\\
kbd: \\GNUTexinfocommandstyletextkbd{{`}{`}simple-double{-}{-}three{-}{-}{-}four{-}{-}{-}-{\'}{\'} `simple\' quotedblleft:\\ \\textquotedblleft{}} \\leavevmode{}\\\\
samp: `\\texttt{{`}{`}simple-double{-}{-}three{-}{-}{-}four{-}{-}{-}-{\'}{\'} `simple\' quotedblleft:\\ \\textquotedblleft{}}\' \\leavevmode{}\\\\
\\endgroup
\\end{titlepage}
\\GNUTexinfosetsingleheader{}%
\\GNUTexinfomainmatter
\\label{anchor:Top}%
\\chapter{{Chapter}}
\\label{anchor:chap}%

``simple-double--three---four----\'\' `simple\' quotedblleft: \\textquotedblleft{} \\leavevmode{}\\\\
code: \\texttt{{`}{`}simple-double{-}{-}three{-}{-}{-}four{-}{-}{-}-{\'}{\'} `simple\' quotedblleft:\\ \\textquotedblleft{}} \\leavevmode{}\\\\
asis: ``simple-double--three---four----\'\' `simple\' quotedblleft: \\textquotedblleft{} \\leavevmode{}\\\\
strong: \\textbf{``simple-double--three---four----\'\' `simple\' quotedblleft: \\textquotedblleft{}} \\leavevmode{}\\\\
kbd: \\GNUTexinfocommandstyletextkbd{{`}{`}simple-double{-}{-}three{-}{-}{-}four{-}{-}{-}-{\'}{\'} `simple\' quotedblleft:\\ \\textquotedblleft{}} \\leavevmode{}\\\\
samp: `\\texttt{{`}{`}simple-double{-}{-}three{-}{-}{-}four{-}{-}{-}-{\'}{\'} `simple\' quotedblleft:\\ \\textquotedblleft{}}\' \\leavevmode{}\\\\

\\begin{GNUTexinfopreformatted}
\\leftskip=2em\\relax\\ttfamily%
@codequoteundirected on
@codequotebacktick on
\\end{GNUTexinfopreformatted}
``simple-double--three---four----\'\' `simple\' quotedblleft: \\textquotedblleft{} \\leavevmode{}\\\\
code: \\texttt{{`}{`}simple-double{-}{-}three{-}{-}{-}four{-}{-}{-}-{\'}{\'} `simple\' quotedblleft:\\ \\textquotedblleft{}} \\leavevmode{}\\\\
asis: ``simple-double--three---four----\'\' `simple\' quotedblleft: \\textquotedblleft{} \\leavevmode{}\\\\
strong: \\textbf{``simple-double--three---four----\'\' `simple\' quotedblleft: \\textquotedblleft{}} \\leavevmode{}\\\\
kbd: \\GNUTexinfocommandstyletextkbd{{`}{`}simple-double{-}{-}three{-}{-}{-}four{-}{-}{-}-{\'}{\'} `simple\' quotedblleft:\\ \\textquotedblleft{}} \\leavevmode{}\\\\
samp: `\\texttt{{`}{`}simple-double{-}{-}three{-}{-}{-}four{-}{-}{-}-{\'}{\'} `simple\' quotedblleft:\\ \\textquotedblleft{}}\' \\leavevmode{}\\\\

\\begin{GNUTexinfopreformatted}
\\leftskip=2em\\relax\\ttfamily%
@codequoteundirected off
@codequotebacktick off
\\end{GNUTexinfopreformatted}
``simple-double--three---four----\'\' `simple\' quotedblleft: \\textquotedblleft{} \\leavevmode{}\\\\
code: \\texttt{{`}{`}simple-double{-}{-}three{-}{-}{-}four{-}{-}{-}-{\'}{\'} `simple\' quotedblleft:\\ \\textquotedblleft{}} \\leavevmode{}\\\\
asis: ``simple-double--three---four----\'\' `simple\' quotedblleft: \\textquotedblleft{} \\leavevmode{}\\\\
strong: \\textbf{``simple-double--three---four----\'\' `simple\' quotedblleft: \\textquotedblleft{}} \\leavevmode{}\\\\
kbd: \\GNUTexinfocommandstyletextkbd{{`}{`}simple-double{-}{-}three{-}{-}{-}four{-}{-}{-}-{\'}{\'} `simple\' quotedblleft:\\ \\textquotedblleft{}} \\leavevmode{}\\\\
samp: `\\texttt{{`}{`}simple-double{-}{-}three{-}{-}{-}four{-}{-}{-}-{\'}{\'} `simple\' quotedblleft:\\ \\textquotedblleft{}}\' \\leavevmode{}\\\\

\\begin{GNUTexinfopreformatted}
\\leftskip=2em\\relax\\ttfamily%
{`}{`}simple-double{-}{-}three{-}{-}{-}four{-}{-}{-}-{\'}{\'} `simple\' quotedblleft:\\ \\textquotedblleft{}\\ \\leavevmode{}\\\\
code:\\ \\texttt{{`}{`}simple-double{-}{-}three{-}{-}{-}four{-}{-}{-}-{\'}{\'} `simple\' quotedblleft:\\ \\textquotedblleft{}}\\ \\leavevmode{}\\\\
asis:\\ {`}{`}simple-double{-}{-}three{-}{-}{-}four{-}{-}{-}-{\'}{\'} `simple\' quotedblleft:\\ \\textquotedblleft{}\\ \\leavevmode{}\\\\
strong:\\ \\textbf{{`}{`}simple-double{-}{-}three{-}{-}{-}four{-}{-}{-}-{\'}{\'} `simple\' quotedblleft:\\ \\textquotedblleft{}}\\ \\leavevmode{}\\\\
kbd:\\ \\GNUTexinfocommandstyletextkbd{{`}{`}simple-double{-}{-}three{-}{-}{-}four{-}{-}{-}-{\'}{\'} `simple\' quotedblleft:\\ \\textquotedblleft{}}\\ \\leavevmode{}\\\\
samp:\\ `\\texttt{{`}{`}simple-double{-}{-}three{-}{-}{-}four{-}{-}{-}-{\'}{\'} `simple\' quotedblleft:\\ \\textquotedblleft{}}\'\\ \\leavevmode{}\\\\

\\end{GNUTexinfopreformatted}
\\begin{GNUTexinfopreformatted}
\\leftskip=2em\\relax\\ttfamily%
@codequoteundirected on
@codequotebacktick on
\\end{GNUTexinfopreformatted}
\\begin{GNUTexinfopreformatted}
\\leftskip=2em\\relax\\ttfamily%
{`}{`}simple-double{-}{-}three{-}{-}{-}four{-}{-}{-}-{\'}{\'} `simple\' quotedblleft:\\ \\textquotedblleft{}\\ \\leavevmode{}\\\\
code:\\ \\texttt{{`}{`}simple-double{-}{-}three{-}{-}{-}four{-}{-}{-}-{\'}{\'} `simple\' quotedblleft:\\ \\textquotedblleft{}}\\ \\leavevmode{}\\\\
asis:\\ {`}{`}simple-double{-}{-}three{-}{-}{-}four{-}{-}{-}-{\'}{\'} `simple\' quotedblleft:\\ \\textquotedblleft{}\\ \\leavevmode{}\\\\
strong:\\ \\textbf{{`}{`}simple-double{-}{-}three{-}{-}{-}four{-}{-}{-}-{\'}{\'} `simple\' quotedblleft:\\ \\textquotedblleft{}}\\ \\leavevmode{}\\\\
kbd:\\ \\GNUTexinfocommandstyletextkbd{{`}{`}simple-double{-}{-}three{-}{-}{-}four{-}{-}{-}-{\'}{\'} `simple\' quotedblleft:\\ \\textquotedblleft{}}\\ \\leavevmode{}\\\\
samp:\\ `\\texttt{{`}{`}simple-double{-}{-}three{-}{-}{-}four{-}{-}{-}-{\'}{\'} `simple\' quotedblleft:\\ \\textquotedblleft{}}\'\\ \\leavevmode{}\\\\

\\end{GNUTexinfopreformatted}
\\begin{GNUTexinfopreformatted}
\\leftskip=2em\\relax\\ttfamily%
@codequoteundirected off
@codequotebacktick off
\\end{GNUTexinfopreformatted}
\\begin{GNUTexinfopreformatted}
\\leftskip=2em\\relax\\ttfamily%
{`}{`}simple-double{-}{-}three{-}{-}{-}four{-}{-}{-}-{\'}{\'} `simple\' quotedblleft:\\ \\textquotedblleft{}\\ \\leavevmode{}\\\\
code:\\ \\texttt{{`}{`}simple-double{-}{-}three{-}{-}{-}four{-}{-}{-}-{\'}{\'} `simple\' quotedblleft:\\ \\textquotedblleft{}}\\ \\leavevmode{}\\\\
asis:\\ {`}{`}simple-double{-}{-}three{-}{-}{-}four{-}{-}{-}-{\'}{\'} `simple\' quotedblleft:\\ \\textquotedblleft{}\\ \\leavevmode{}\\\\
strong:\\ \\textbf{{`}{`}simple-double{-}{-}three{-}{-}{-}four{-}{-}{-}-{\'}{\'} `simple\' quotedblleft:\\ \\textquotedblleft{}}\\ \\leavevmode{}\\\\
kbd:\\ \\GNUTexinfocommandstyletextkbd{{`}{`}simple-double{-}{-}three{-}{-}{-}four{-}{-}{-}-{\'}{\'} `simple\' quotedblleft:\\ \\textquotedblleft{}}\\ \\leavevmode{}\\\\
samp:\\ `\\texttt{{`}{`}simple-double{-}{-}three{-}{-}{-}four{-}{-}{-}-{\'}{\'} `simple\' quotedblleft:\\ \\textquotedblleft{}}\'\\ \\leavevmode{}\\\\
\\end{GNUTexinfopreformatted}

';


$result_converted{'docbook_doc'}->{'codequoteundirected_codequotebacktick'} = '<?xml version="1.0"?>
<!DOCTYPE book PUBLIC "-//OASIS//DTD DocBook XML V4.5//EN" "http://www.oasis-open.org/docbook/xml/4.5/docbookx.dtd" [
  <!ENTITY tex "TeX">
  <!ENTITY latex "LaTeX">
]>
<book lang="en">
<title>test quotes</title>
<bookinfo><title>test quotes</title>
<legalnotice><para>&#8220;simple-double&#8211;three&#8212;four&#8212;-&#8221; &#8216;simple&#8217; quotedblleft: &#8220; 

code: <literal>``simple-double--three---four----\'\' `simple\' quotedblleft: &#8220;</literal> 

asis: &#8220;simple-double&#8211;three&#8212;four&#8212;-&#8221; &#8216;simple&#8217; quotedblleft: &#8220; 

strong: <emphasis role="bold">&#8220;simple-double&#8211;three&#8212;four&#8212;-&#8221; &#8216;simple&#8217; quotedblleft: &#8220;</emphasis> 

kbd: <userinput>``simple-double--three---four----\'\' `simple\' quotedblleft: &#8220;</userinput> 

samp: &#8216;<literal>``simple-double--three---four----\'\' `simple\' quotedblleft: &#8220;</literal>&#8217; 

</para>
<screen>@codequoteundirected on
@codequotebacktick on
</screen><para>&#8220;simple-double&#8211;three&#8212;four&#8212;-&#8221; &#8216;simple&#8217; quotedblleft: &#8220; 

code: <literal>``simple-double--three---four----\'\' `simple\' quotedblleft: &#8220;</literal> 

asis: &#8220;simple-double&#8211;three&#8212;four&#8212;-&#8221; &#8216;simple&#8217; quotedblleft: &#8220; 

strong: <emphasis role="bold">&#8220;simple-double&#8211;three&#8212;four&#8212;-&#8221; &#8216;simple&#8217; quotedblleft: &#8220;</emphasis> 

kbd: <userinput>``simple-double--three---four----\'\' `simple\' quotedblleft: &#8220;</userinput> 

samp: &#8216;<literal>``simple-double--three---four----\'\' `simple\' quotedblleft: &#8220;</literal>&#8217; 

</para>
<screen>@codequoteundirected off
@codequotebacktick off
</screen><para>&#8220;simple-double&#8211;three&#8212;four&#8212;-&#8221; &#8216;simple&#8217; quotedblleft: &#8220; 

code: <literal>``simple-double--three---four----\'\' `simple\' quotedblleft: &#8220;</literal> 

asis: &#8220;simple-double&#8211;three&#8212;four&#8212;-&#8221; &#8216;simple&#8217; quotedblleft: &#8220; 

strong: <emphasis role="bold">&#8220;simple-double&#8211;three&#8212;four&#8212;-&#8221; &#8216;simple&#8217; quotedblleft: &#8220;</emphasis> 

kbd: <userinput>``simple-double--three---four----\'\' `simple\' quotedblleft: &#8220;</userinput> 

samp: &#8216;<literal>``simple-double--three---four----\'\' `simple\' quotedblleft: &#8220;</literal>&#8217; 

</para></legalnotice></bookinfo>
<chapter label="1" id="chap">
<title>Chapter</title>

<para>&#8220;simple-double&#8211;three&#8212;four&#8212;-&#8221; &#8216;simple&#8217; quotedblleft: &#8220; 

code: <literal>``simple-double--three---four----\'\' `simple\' quotedblleft: &#8220;</literal> 

asis: &#8220;simple-double&#8211;three&#8212;four&#8212;-&#8221; &#8216;simple&#8217; quotedblleft: &#8220; 

strong: <emphasis role="bold">&#8220;simple-double&#8211;three&#8212;four&#8212;-&#8221; &#8216;simple&#8217; quotedblleft: &#8220;</emphasis> 

kbd: <userinput>``simple-double--three---four----\'\' `simple\' quotedblleft: &#8220;</userinput> 

samp: &#8216;<literal>``simple-double--three---four----\'\' `simple\' quotedblleft: &#8220;</literal>&#8217; 

</para>
<screen>@codequoteundirected on
@codequotebacktick on
</screen><para>&#8220;simple-double&#8211;three&#8212;four&#8212;-&#8221; &#8216;simple&#8217; quotedblleft: &#8220; 

code: <literal>``simple-double--three---four----\'\' `simple\' quotedblleft: &#8220;</literal> 

asis: &#8220;simple-double&#8211;three&#8212;four&#8212;-&#8221; &#8216;simple&#8217; quotedblleft: &#8220; 

strong: <emphasis role="bold">&#8220;simple-double&#8211;three&#8212;four&#8212;-&#8221; &#8216;simple&#8217; quotedblleft: &#8220;</emphasis> 

kbd: <userinput>``simple-double--three---four----\'\' `simple\' quotedblleft: &#8220;</userinput> 

samp: &#8216;<literal>``simple-double--three---four----\'\' `simple\' quotedblleft: &#8220;</literal>&#8217; 

</para>
<screen>@codequoteundirected off
@codequotebacktick off
</screen><para>&#8220;simple-double&#8211;three&#8212;four&#8212;-&#8221; &#8216;simple&#8217; quotedblleft: &#8220; 

code: <literal>``simple-double--three---four----\'\' `simple\' quotedblleft: &#8220;</literal> 

asis: &#8220;simple-double&#8211;three&#8212;four&#8212;-&#8221; &#8216;simple&#8217; quotedblleft: &#8220; 

strong: <emphasis role="bold">&#8220;simple-double&#8211;three&#8212;four&#8212;-&#8221; &#8216;simple&#8217; quotedblleft: &#8220;</emphasis> 

kbd: <userinput>``simple-double--three---four----\'\' `simple\' quotedblleft: &#8220;</userinput> 

samp: &#8216;<literal>``simple-double--three---four----\'\' `simple\' quotedblleft: &#8220;</literal>&#8217; 

</para>
<screen>``simple-double--three---four----\'\' `simple\' quotedblleft: &#8220; 

code: <literal>``simple-double--three---four----\'\' `simple\' quotedblleft: &#8220;</literal> 

asis: ``simple-double--three---four----\'\' `simple\' quotedblleft: &#8220; 

strong: <emphasis role="bold">``simple-double--three---four----\'\' `simple\' quotedblleft: &#8220;</emphasis> 

kbd: <userinput>``simple-double--three---four----\'\' `simple\' quotedblleft: &#8220;</userinput> 

samp: &#8216;<literal>``simple-double--three---four----\'\' `simple\' quotedblleft: &#8220;</literal>&#8217; 


</screen><screen>@codequoteundirected on
@codequotebacktick on
</screen><screen>``simple-double--three---four----\'\' `simple\' quotedblleft: &#8220; 

code: <literal>``simple-double--three---four----\'\' `simple\' quotedblleft: &#8220;</literal> 

asis: ``simple-double--three---four----\'\' `simple\' quotedblleft: &#8220; 

strong: <emphasis role="bold">``simple-double--three---four----\'\' `simple\' quotedblleft: &#8220;</emphasis> 

kbd: <userinput>``simple-double--three---four----\'\' `simple\' quotedblleft: &#8220;</userinput> 

samp: &#8216;<literal>``simple-double--three---four----\'\' `simple\' quotedblleft: &#8220;</literal>&#8217; 


</screen><screen>@codequoteundirected off
@codequotebacktick off
</screen><screen>``simple-double--three---four----\'\' `simple\' quotedblleft: &#8220; 

code: <literal>``simple-double--three---four----\'\' `simple\' quotedblleft: &#8220;</literal> 

asis: ``simple-double--three---four----\'\' `simple\' quotedblleft: &#8220; 

strong: <emphasis role="bold">``simple-double--three---four----\'\' `simple\' quotedblleft: &#8220;</emphasis> 

kbd: <userinput>``simple-double--three---four----\'\' `simple\' quotedblleft: &#8220;</userinput> 

samp: &#8216;<literal>``simple-double--three---four----\'\' `simple\' quotedblleft: &#8220;</literal>&#8217; 

</screen>
</chapter>
</book>
';

1;
