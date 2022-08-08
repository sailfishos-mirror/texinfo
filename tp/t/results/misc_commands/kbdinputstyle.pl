use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'kbdinputstyle'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'parent' => {},
              'text' => 'codekbdmacro',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => '@code{in code out of example @code{in nested code}}.
',
              'type' => 'raw'
            },
            {
              'parent' => {},
              'text' => '@kbd{kbd out of example}.
',
              'type' => 'raw'
            },
            {
              'parent' => {},
              'text' => '@code{kbd @kbd{in code}}.
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
              'text' => 'in example
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
              'text' => '@code{in code in example @code{in nested code}}.
',
              'type' => 'raw'
            },
            {
              'parent' => {},
              'text' => '@kbd{kbd in example}.
',
              'type' => 'raw'
            },
            {
              'parent' => {},
              'text' => '@code{kbd @kbd{in code} in example}.
',
              'type' => 'raw'
            },
            {
              'parent' => {},
              'text' => '@end example',
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
            'arg_line' => ' codekbdmacro
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
          'contents' => [
            {
              'cmdname' => '@',
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => 'kbdinputstyle code
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
                  'text' => 'code'
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
          'cmdname' => 'kbdinputstyle',
          'extra' => {
            'misc_args' => [
              'code'
            ],
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 16,
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
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'in code out of example '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'in nested code'
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
                        'line_nr' => 18,
                        'macro' => 'codekbdmacro'
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
                'line_nr' => 18,
                'macro' => 'codekbdmacro'
              }
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
                      'text' => 'kbd out of example'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'kbd',
              'contents' => [],
              'extra' => {
                'code' => 1
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 18,
                'macro' => 'codekbdmacro'
              }
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
                      'text' => 'kbd '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'in code'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'kbd',
                      'contents' => [],
                      'extra' => {
                        'code' => 1
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 18,
                        'macro' => 'codekbdmacro'
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
                'line_nr' => 18,
                'macro' => 'codekbdmacro'
              }
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
          'contents' => [
            {
              'parent' => {},
              'text' => 'in example
'
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
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
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'in code in example '
                        },
                        {
                          'args' => [
                            {
                              'contents' => [
                                {
                                  'parent' => {},
                                  'text' => 'in nested code'
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
                            'line_nr' => 18,
                            'macro' => 'codekbdmacro'
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
                    'line_nr' => 18,
                    'macro' => 'codekbdmacro'
                  }
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
                          'text' => 'kbd in example'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'kbd',
                  'contents' => [],
                  'extra' => {
                    'code' => 1
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 18,
                    'macro' => 'codekbdmacro'
                  }
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
                          'text' => 'kbd '
                        },
                        {
                          'args' => [
                            {
                              'contents' => [
                                {
                                  'parent' => {},
                                  'text' => 'in code'
                                }
                              ],
                              'parent' => {},
                              'type' => 'brace_command_arg'
                            }
                          ],
                          'cmdname' => 'kbd',
                          'contents' => [],
                          'extra' => {
                            'code' => 1
                          },
                          'parent' => {},
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 18,
                            'macro' => 'codekbdmacro'
                          }
                        },
                        {
                          'parent' => {},
                          'text' => ' in example'
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
                    'line_nr' => 18,
                    'macro' => 'codekbdmacro'
                  }
                },
                {
                  'parent' => {},
                  'text' => '.
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
                'line_nr' => 18,
                'macro' => 'codekbdmacro'
              }
            }
          ],
          'extra' => {
            'end_command' => {}
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 18,
            'macro' => 'codekbdmacro'
          }
        },
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'cmdname' => '@',
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => 'kbdinputstyle example
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
          'cmdname' => 'kbdinputstyle',
          'extra' => {
            'misc_args' => [
              'example'
            ],
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 22,
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
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'in code out of example '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'in nested code'
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
                        'line_nr' => 24,
                        'macro' => 'codekbdmacro'
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
                'line_nr' => 24,
                'macro' => 'codekbdmacro'
              }
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
                      'text' => 'kbd out of example'
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
                'line_nr' => 24,
                'macro' => 'codekbdmacro'
              }
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
                      'text' => 'kbd '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'in code'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'kbd',
                      'contents' => [],
                      'extra' => {
                        'code' => 1
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 24,
                        'macro' => 'codekbdmacro'
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
                'line_nr' => 24,
                'macro' => 'codekbdmacro'
              }
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
          'contents' => [
            {
              'parent' => {},
              'text' => 'in example
'
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
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
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'in code in example '
                        },
                        {
                          'args' => [
                            {
                              'contents' => [
                                {
                                  'parent' => {},
                                  'text' => 'in nested code'
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
                            'line_nr' => 24,
                            'macro' => 'codekbdmacro'
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
                    'line_nr' => 24,
                    'macro' => 'codekbdmacro'
                  }
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
                          'text' => 'kbd in example'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'kbd',
                  'contents' => [],
                  'extra' => {
                    'code' => 1
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 24,
                    'macro' => 'codekbdmacro'
                  }
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
                          'text' => 'kbd '
                        },
                        {
                          'args' => [
                            {
                              'contents' => [
                                {
                                  'parent' => {},
                                  'text' => 'in code'
                                }
                              ],
                              'parent' => {},
                              'type' => 'brace_command_arg'
                            }
                          ],
                          'cmdname' => 'kbd',
                          'contents' => [],
                          'extra' => {
                            'code' => 1
                          },
                          'parent' => {},
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 24,
                            'macro' => 'codekbdmacro'
                          }
                        },
                        {
                          'parent' => {},
                          'text' => ' in example'
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
                    'line_nr' => 24,
                    'macro' => 'codekbdmacro'
                  }
                },
                {
                  'parent' => {},
                  'text' => '.
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
                'line_nr' => 24,
                'macro' => 'codekbdmacro'
              }
            }
          ],
          'extra' => {
            'end_command' => {}
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 24,
            'macro' => 'codekbdmacro'
          }
        },
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'cmdname' => '@',
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => 'kbdinputstyle distinct
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
                  'text' => 'distinct'
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
          'cmdname' => 'kbdinputstyle',
          'extra' => {
            'misc_args' => [
              'distinct'
            ],
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 28,
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
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'in code out of example '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'in nested code'
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
                        'line_nr' => 30,
                        'macro' => 'codekbdmacro'
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
                'line_nr' => 30,
                'macro' => 'codekbdmacro'
              }
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
                      'text' => 'kbd out of example'
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
                'line_nr' => 30,
                'macro' => 'codekbdmacro'
              }
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
                      'text' => 'kbd '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'in code'
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
                        'line_nr' => 30,
                        'macro' => 'codekbdmacro'
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
                'line_nr' => 30,
                'macro' => 'codekbdmacro'
              }
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
          'contents' => [
            {
              'parent' => {},
              'text' => 'in example
'
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
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
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'in code in example '
                        },
                        {
                          'args' => [
                            {
                              'contents' => [
                                {
                                  'parent' => {},
                                  'text' => 'in nested code'
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
                            'line_nr' => 30,
                            'macro' => 'codekbdmacro'
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
                    'line_nr' => 30,
                    'macro' => 'codekbdmacro'
                  }
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
                          'text' => 'kbd in example'
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
                    'line_nr' => 30,
                    'macro' => 'codekbdmacro'
                  }
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
                          'text' => 'kbd '
                        },
                        {
                          'args' => [
                            {
                              'contents' => [
                                {
                                  'parent' => {},
                                  'text' => 'in code'
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
                            'line_nr' => 30,
                            'macro' => 'codekbdmacro'
                          }
                        },
                        {
                          'parent' => {},
                          'text' => ' in example'
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
                    'line_nr' => 30,
                    'macro' => 'codekbdmacro'
                  }
                },
                {
                  'parent' => {},
                  'text' => '.
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
                'line_nr' => 30,
                'macro' => 'codekbdmacro'
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
            'macro' => 'codekbdmacro'
          }
        }
      ],
      'parent' => {},
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[0]{'contents'}[7]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[0]{'contents'}[8]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[0]{'contents'}[9]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[0]{'contents'}[10]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[3];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[3];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[5]{'args'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[5];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[6]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'args'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'args'}[0]{'contents'}[1];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'args'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[7]{'contents'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[7];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[7]{'contents'}[1]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[7];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[7]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[7]{'contents'}[2]{'args'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[7]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[7]{'contents'}[2];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[7]{'contents'}[2]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[7];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[7]{'contents'}[3]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[7];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[7]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[7]{'contents'}[4]{'args'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[7]{'contents'}[4]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[7]{'contents'}[4]{'args'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[7]{'contents'}[4]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[7]{'contents'}[4]{'args'}[0]{'contents'}[1];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[7]{'contents'}[4]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[7]{'contents'}[4]{'args'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[7]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[7]{'contents'}[4];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[7]{'contents'}[4]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[7];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[7]{'contents'}[5]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[7];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[7]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[8]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[9]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[9];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[9]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'extra'}{'command'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[10];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[10];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[10]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[10]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[10]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[10]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[10]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[10]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[1];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[10]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[10]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[10]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[10]{'contents'}[1]{'contents'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[10]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[10]{'contents'}[1];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[10]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[10]{'contents'}[1];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[10]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[10]{'contents'}[1]{'contents'}[2]{'args'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[10]{'contents'}[1]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[10]{'contents'}[1]{'contents'}[2];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[10]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[10]{'contents'}[1];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[10]{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[10]{'contents'}[1];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[10]{'contents'}[1]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[10]{'contents'}[1]{'contents'}[4]{'args'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[10]{'contents'}[1]{'contents'}[4]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[10]{'contents'}[1]{'contents'}[4]{'args'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[10]{'contents'}[1]{'contents'}[4]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[10]{'contents'}[1]{'contents'}[4]{'args'}[0]{'contents'}[1];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[10]{'contents'}[1]{'contents'}[4]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[10]{'contents'}[1]{'contents'}[4]{'args'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[10]{'contents'}[1]{'contents'}[4]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[10]{'contents'}[1]{'contents'}[4]{'args'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[10]{'contents'}[1]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[10]{'contents'}[1]{'contents'}[4];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[10]{'contents'}[1]{'contents'}[4]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[10]{'contents'}[1];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[10]{'contents'}[1]{'contents'}[5]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[10]{'contents'}[1];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[10]{'contents'}[1]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[10];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[10]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[10]{'contents'}[2]{'args'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[10]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[10]{'contents'}[2];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[10]{'contents'}[2]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[10];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[10]{'extra'}{'end_command'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[10]{'contents'}[2];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[10]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[11]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[12];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[12]{'contents'}[1]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[12];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[12]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[13]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[14]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[14]{'args'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[14]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[14];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[14]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[15]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0]{'contents'}[1];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[16]{'contents'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[16];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[16]{'contents'}[1]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[16];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[16]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[16]{'contents'}[2]{'args'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[16]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[16]{'contents'}[2];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[16]{'contents'}[2]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[16];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[16]{'contents'}[3]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[16];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[16]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[16]{'contents'}[4]{'args'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[16]{'contents'}[4]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[16]{'contents'}[4]{'args'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[16]{'contents'}[4]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[16]{'contents'}[4]{'args'}[0]{'contents'}[1];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[16]{'contents'}[4]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[16]{'contents'}[4]{'args'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[16]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[16]{'contents'}[4];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[16]{'contents'}[4]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[16];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[16]{'contents'}[5]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[16];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[16]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[17]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[18];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[18]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[19]{'contents'}[0]{'extra'}{'command'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[19];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[19]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[19];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[19]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[19]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[19]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[19]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[19]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[19]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[1];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[19]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[19]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[19]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[19]{'contents'}[1]{'contents'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[19]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[19]{'contents'}[1];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[19]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[19]{'contents'}[1];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[19]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[19]{'contents'}[1]{'contents'}[2]{'args'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[19]{'contents'}[1]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[19]{'contents'}[1]{'contents'}[2];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[19]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[19]{'contents'}[1];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[19]{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[19]{'contents'}[1];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[19]{'contents'}[1]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[19]{'contents'}[1]{'contents'}[4]{'args'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[19]{'contents'}[1]{'contents'}[4]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[19]{'contents'}[1]{'contents'}[4]{'args'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[19]{'contents'}[1]{'contents'}[4]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[19]{'contents'}[1]{'contents'}[4]{'args'}[0]{'contents'}[1];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[19]{'contents'}[1]{'contents'}[4]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[19]{'contents'}[1]{'contents'}[4]{'args'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[19]{'contents'}[1]{'contents'}[4]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[19]{'contents'}[1]{'contents'}[4]{'args'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[19]{'contents'}[1]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[19]{'contents'}[1]{'contents'}[4];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[19]{'contents'}[1]{'contents'}[4]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[19]{'contents'}[1];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[19]{'contents'}[1]{'contents'}[5]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[19]{'contents'}[1];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[19]{'contents'}[1]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[19];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[19]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[19]{'contents'}[2]{'args'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[19]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[19]{'contents'}[2];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[19]{'contents'}[2]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[19];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[19]{'extra'}{'end_command'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[19]{'contents'}[2];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[19]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[20]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[21]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[21];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[21]{'contents'}[1]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[21];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[21]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[22]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[23]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[23]{'args'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[23]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[23];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[23]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[24]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[25]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[25]{'contents'}[0]{'args'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[25]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[25]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[25]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[25]{'contents'}[0]{'args'}[0]{'contents'}[1];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[25]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[25]{'contents'}[0]{'args'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[25]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[25]{'contents'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[25]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[25];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[25]{'contents'}[1]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[25];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[25]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[25]{'contents'}[2]{'args'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[25]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[25]{'contents'}[2];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[25]{'contents'}[2]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[25];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[25]{'contents'}[3]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[25];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[25]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[25]{'contents'}[4]{'args'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[25]{'contents'}[4]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[25]{'contents'}[4]{'args'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[25]{'contents'}[4]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[25]{'contents'}[4]{'args'}[0]{'contents'}[1];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[25]{'contents'}[4]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[25]{'contents'}[4]{'args'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[25]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[25]{'contents'}[4];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[25]{'contents'}[4]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[25];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[25]{'contents'}[5]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[25];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[25]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[26]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[27]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[27];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[27]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[28]{'contents'}[0]{'extra'}{'command'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[28];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[28]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[28];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[28]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[28]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[28]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[28]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[28]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[28]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[1];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[28]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[28]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[28]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[28]{'contents'}[1]{'contents'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[28]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[28]{'contents'}[1];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[28]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[28]{'contents'}[1];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[28]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[28]{'contents'}[1]{'contents'}[2]{'args'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[28]{'contents'}[1]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[28]{'contents'}[1]{'contents'}[2];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[28]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[28]{'contents'}[1];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[28]{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[28]{'contents'}[1];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[28]{'contents'}[1]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[28]{'contents'}[1]{'contents'}[4]{'args'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[28]{'contents'}[1]{'contents'}[4]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[28]{'contents'}[1]{'contents'}[4]{'args'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[28]{'contents'}[1]{'contents'}[4]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[28]{'contents'}[1]{'contents'}[4]{'args'}[0]{'contents'}[1];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[28]{'contents'}[1]{'contents'}[4]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[28]{'contents'}[1]{'contents'}[4]{'args'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[28]{'contents'}[1]{'contents'}[4]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[28]{'contents'}[1]{'contents'}[4]{'args'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[28]{'contents'}[1]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[28]{'contents'}[1]{'contents'}[4];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[28]{'contents'}[1]{'contents'}[4]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[28]{'contents'}[1];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[28]{'contents'}[1]{'contents'}[5]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[28]{'contents'}[1];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[28]{'contents'}[1]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[28];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[28]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[28]{'contents'}[2]{'args'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[28]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[28]{'contents'}[2];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[28]{'contents'}[2]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[28];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[28]{'extra'}{'end_command'} = $result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[28]{'contents'}[2];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'contents'}[28]{'parent'} = $result_trees{'kbdinputstyle'}{'contents'}[0];
$result_trees{'kbdinputstyle'}{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle'};

$result_texis{'kbdinputstyle'} = '@macro codekbdmacro
@code{in code out of example @code{in nested code}}.
@kbd{kbd out of example}.
@code{kbd @kbd{in code}}.

in example
@example
@code{in code in example @code{in nested code}}.
@kbd{kbd in example}.
@code{kbd @kbd{in code} in example}.
@end example
@end macro

@@kbdinputstyle code

@kbdinputstyle code

@code{in code out of example @code{in nested code}}.
@kbd{kbd out of example}.
@code{kbd @kbd{in code}}.

in example
@example
@code{in code in example @code{in nested code}}.
@kbd{kbd in example}.
@code{kbd @kbd{in code} in example}.
@end example

@@kbdinputstyle example

@kbdinputstyle example

@code{in code out of example @code{in nested code}}.
@kbd{kbd out of example}.
@code{kbd @kbd{in code}}.

in example
@example
@code{in code in example @code{in nested code}}.
@kbd{kbd in example}.
@code{kbd @kbd{in code} in example}.
@end example

@@kbdinputstyle distinct

@kbdinputstyle distinct

@code{in code out of example @code{in nested code}}.
@kbd{kbd out of example}.
@code{kbd @kbd{in code}}.

in example
@example
@code{in code in example @code{in nested code}}.
@kbd{kbd in example}.
@code{kbd @kbd{in code} in example}.
@end example
';


$result_texts{'kbdinputstyle'} = '
@kbdinputstyle code


in code out of example in nested code.
kbd out of example.
kbd in code.

in example
in code in example in nested code.
kbd in example.
kbd in code in example.

@kbdinputstyle example


in code out of example in nested code.
kbd out of example.
kbd in code.

in example
in code in example in nested code.
kbd in example.
kbd in code in example.

@kbdinputstyle distinct


in code out of example in nested code.
kbd out of example.
kbd in code.

in example
in code in example in nested code.
kbd in example.
kbd in code in example.
';

$result_errors{'kbdinputstyle'} = [];


$result_floats{'kbdinputstyle'} = {};



$result_converted{'plaintext'}->{'kbdinputstyle'} = '@kbdinputstyle code

   ‘in code out of example in nested code’.  ‘kbd out of example’.  ‘kbd
in code’.

   in example
     in code in example in nested code.
     kbd in example.
     kbd in code in example.

   @kbdinputstyle example

   ‘in code out of example in nested code’.  ‘kbd out of example’.  ‘kbd
in code’.

   in example
     in code in example in nested code.
     kbd in example.
     kbd in code in example.

   @kbdinputstyle distinct

   ‘in code out of example in nested code’.  ‘kbd out of example’.  ‘kbd
in code’.

   in example
     in code in example in nested code.
     kbd in example.
     kbd in code in example.
';


$result_converted{'html_text'}->{'kbdinputstyle'} = '
<p>@kbdinputstyle code
</p>

<p><code class="code">in code out of example <code class="code">in nested code</code></code>.
<code class="code as-code-kbd">kbd out of example</code>.
<code class="code">kbd <code class="code as-code-kbd">in code</code></code>.
</p>
<p>in example
</p><div class="example">
<pre class="example-preformatted"><code class="code">in code in example <code class="code">in nested code</code></code>.
<code class="code as-code-kbd">kbd in example</code>.
<code class="code">kbd <code class="code as-code-kbd">in code</code> in example</code>.
</pre></div>

<p>@kbdinputstyle example
</p>

<p><code class="code">in code out of example <code class="code">in nested code</code></code>.
<kbd class="kbd">kbd out of example</kbd>.
<code class="code">kbd <code class="code as-code-kbd">in code</code></code>.
</p>
<p>in example
</p><div class="example">
<pre class="example-preformatted"><code class="code">in code in example <code class="code">in nested code</code></code>.
<code class="code as-code-kbd">kbd in example</code>.
<code class="code">kbd <code class="code as-code-kbd">in code</code> in example</code>.
</pre></div>

<p>@kbdinputstyle distinct
</p>

<p><code class="code">in code out of example <code class="code">in nested code</code></code>.
<kbd class="kbd">kbd out of example</kbd>.
<code class="code">kbd <kbd class="kbd">in code</kbd></code>.
</p>
<p>in example
</p><div class="example">
<pre class="example-preformatted"><code class="code">in code in example <code class="code">in nested code</code></code>.
<kbd class="kbd">kbd in example</kbd>.
<code class="code">kbd <kbd class="kbd">in code</kbd> in example</code>.
</pre></div>
';


$result_converted{'latex'}->{'kbdinputstyle'} = '
@kbdinputstyle code


\\texttt{in code out of example \\texttt{in nested code}}.
\\texttt{kbd out of example}.
\\texttt{kbd \\texttt{in code}}.

in example
\\begin{GNUTexinfopreformatted}
\\leftskip=2em \\parskip=0pt \\parindent=0pt \\ttfamily%
\\texttt{in code in example \\texttt{in nested code}}.
\\texttt{kbd in example}.
\\texttt{kbd \\texttt{in code} in example}.
\\end{GNUTexinfopreformatted}

@kbdinputstyle example


\\texttt{in code out of example \\texttt{in nested code}}.
{\\ttfamily\\textsl{kbd out of example}}.
\\texttt{kbd {\\ttfamily\\textsl{in code}}}.

in example
\\begin{GNUTexinfopreformatted}
\\leftskip=2em \\parskip=0pt \\parindent=0pt \\ttfamily%
\\texttt{in code in example \\texttt{in nested code}}.
\\texttt{kbd in example}.
\\texttt{kbd \\texttt{in code} in example}.
\\end{GNUTexinfopreformatted}

@kbdinputstyle distinct


\\texttt{in code out of example \\texttt{in nested code}}.
{\\ttfamily\\textsl{kbd out of example}}.
\\texttt{kbd {\\ttfamily\\textsl{in code}}}.

in example
\\begin{GNUTexinfopreformatted}
\\leftskip=2em \\parskip=0pt \\parindent=0pt \\ttfamily%
\\texttt{in code in example \\texttt{in nested code}}.
{\\ttfamily\\textsl{kbd in example}}.
\\texttt{kbd {\\ttfamily\\textsl{in code}} in example}.
\\end{GNUTexinfopreformatted}
';

1;
