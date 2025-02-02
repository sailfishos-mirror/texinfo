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
          'cmdname' => 'quotation',
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
                  'text' => 'In quotation
'
                },
                {
                  'cmdname' => 'end',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'cmdname' => 'code',
                          'contents' => [
                            {
                              'contents' => [
                                {
                                  'text' => 'quotation'
                                }
                              ],
                              'type' => 'brace_container'
                            }
                          ],
                          'source_info' => {
                            'line_nr' => 3
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
                    'line_nr' => 3
                  }
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
              'cmdname' => 'quotation',
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
                      'text' => 'In quotation
'
                    },
                    {
                      'cmdname' => 'end',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'q'
                            },
                            {
                              'cmdname' => 'code',
                              'contents' => [
                                {
                                  'contents' => [
                                    {
                                      'text' => 'uotation'
                                    }
                                  ],
                                  'type' => 'brace_container'
                                }
                              ],
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
                      'extra' => {
                        'text_arg' => 'q'
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
                  'type' => 'paragraph'
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
                          'text' => 'In quotation
'
                        },
                        {
                          'cmdname' => 'end',
                          'contents' => [
                            {
                              'contents' => [
                                {
                                  'text' => 'qu'
                                },
                                {
                                  'cmdname' => 'code',
                                  'contents' => [
                                    {
                                      'contents' => [
                                        {
                                          'text' => 'otation'
                                        }
                                      ],
                                      'type' => 'brace_container'
                                    }
                                  ],
                                  'source_info' => {
                                    'line_nr' => 11
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
                          'extra' => {
                            'text_arg' => 'qu'
                          },
                          'info' => {
                            'spaces_before_argument' => {
                              'text' => ' '
                            }
                          },
                          'source_info' => {
                            'line_nr' => 11
                          }
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
                      'cmdname' => 'quotation',
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
                              'text' => 'In quotation
'
                            },
                            {
                              'cmdname' => 'end',
                              'contents' => [
                                {
                                  'contents' => [
                                    {
                                      'text' => 'quot'
                                    },
                                    {
                                      'cmdname' => 'asis',
                                      'contents' => [
                                        {
                                          'contents' => [
                                            {
                                              'text' => 'atio'
                                            }
                                          ],
                                          'type' => 'brace_container'
                                        }
                                      ],
                                      'source_info' => {
                                        'line_nr' => 15
                                      }
                                    },
                                    {
                                      'text' => 'n'
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
                                'text_arg' => 'quotn'
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
                          'type' => 'paragraph'
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
                                  'text' => 'In quotation
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
                                      'text' => 'q'
                                    },
                                    {
                                      'cmdname' => 'asis',
                                      'contents' => [
                                        {
                                          'type' => 'brace_container'
                                        }
                                      ],
                                      'source_info' => {
                                        'line_nr' => 19
                                      }
                                    },
                                    {
                                      'text' => 'uotation'
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
                                'line_nr' => 19
                              }
                            }
                          ],
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
                          'cmdname' => 'quotation',
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
                                  'text' => 'In quotation
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
                                      'text' => 'qu'
                                    },
                                    {
                                      'cmdname' => 'asis',
                                      'contents' => [
                                        {
                                          'type' => 'brace_container'
                                        }
                                      ],
                                      'source_info' => {
                                        'line_nr' => 23
                                      }
                                    },
                                    {
                                      'text' => 'otation'
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
                                'line_nr' => 23
                              }
                            }
                          ],
                          'source_info' => {
                            'line_nr' => 21
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
                                  'text' => 'In quotation
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
                                      'text' => 'quot'
                                    },
                                    {
                                      'cmdname' => 'asis',
                                      'contents' => [
                                        {
                                          'type' => 'brace_container'
                                        }
                                      ],
                                      'source_info' => {
                                        'line_nr' => 27
                                      }
                                    },
                                    {
                                      'text' => 'ation'
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
                                'line_nr' => 27
                              }
                            }
                          ],
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
                          'cmdname' => 'verbatim',
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
                              'text' => 'In verbatim
',
                              'type' => 'raw'
                            },
                            {
                              'text' => '@end verb@code{a}tim
',
                              'type' => 'raw'
                            }
                          ],
                          'source_info' => {
                            'line_nr' => 29
                          }
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 13
                      }
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 9
                  }
                }
              ],
              'source_info' => {
                'line_nr' => 5
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
    'error_line' => 'warning: @code should not appear in @end
',
    'line_nr' => 3,
    'text' => '@code should not appear in @end',
    'type' => 'warning'
  },
  {
    'error_line' => 'bad argument to @end: @code{quotation}
',
    'line_nr' => 3,
    'text' => 'bad argument to @end: @code{quotation}',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: @code should not appear in @end
',
    'line_nr' => 7,
    'text' => '@code should not appear in @end',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: unknown @end q
',
    'line_nr' => 7,
    'text' => 'unknown @end q',
    'type' => 'warning'
  },
  {
    'error_line' => 'bad argument to @end: q@code{uotation}
',
    'line_nr' => 7,
    'text' => 'bad argument to @end: q@code{uotation}',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: @code should not appear in @end
',
    'line_nr' => 11,
    'text' => '@code should not appear in @end',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: unknown @end qu
',
    'line_nr' => 11,
    'text' => 'unknown @end qu',
    'type' => 'warning'
  },
  {
    'error_line' => 'bad argument to @end: qu@code{otation}
',
    'line_nr' => 11,
    'text' => 'bad argument to @end: qu@code{otation}',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: @asis should not appear in @end
',
    'line_nr' => 15,
    'text' => '@asis should not appear in @end',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: unknown @end quotn
',
    'line_nr' => 15,
    'text' => 'unknown @end quotn',
    'type' => 'warning'
  },
  {
    'error_line' => 'bad argument to @end: quot@asis{atio}n
',
    'line_nr' => 15,
    'text' => 'bad argument to @end: quot@asis{atio}n',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: @asis should not appear in @end
',
    'line_nr' => 19,
    'text' => '@asis should not appear in @end',
    'type' => 'warning'
  },
  {
    'error_line' => 'bad argument to @end: q@asis{}uotation
',
    'line_nr' => 19,
    'text' => 'bad argument to @end: q@asis{}uotation',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: @asis should not appear in @end
',
    'line_nr' => 23,
    'text' => '@asis should not appear in @end',
    'type' => 'warning'
  },
  {
    'error_line' => 'bad argument to @end: qu@asis{}otation
',
    'line_nr' => 23,
    'text' => 'bad argument to @end: qu@asis{}otation',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: @asis should not appear in @end
',
    'line_nr' => 27,
    'text' => '@asis should not appear in @end',
    'type' => 'warning'
  },
  {
    'error_line' => 'bad argument to @end: quot@asis{}ation
',
    'line_nr' => 27,
    'text' => 'bad argument to @end: quot@asis{}ation',
    'type' => 'error'
  },
  {
    'error_line' => 'no matching `@end verbatim\'
',
    'line_nr' => 31,
    'text' => 'no matching `@end verbatim\'',
    'type' => 'error'
  },
  {
    'error_line' => 'no matching `@end quotation\'
',
    'line_nr' => 31,
    'text' => 'no matching `@end quotation\'',
    'type' => 'error'
  },
  {
    'error_line' => 'no matching `@end quotation\'
',
    'line_nr' => 31,
    'text' => 'no matching `@end quotation\'',
    'type' => 'error'
  },
  {
    'error_line' => 'no matching `@end quotation\'
',
    'line_nr' => 31,
    'text' => 'no matching `@end quotation\'',
    'type' => 'error'
  },
  {
    'error_line' => 'no matching `@end quotation\'
',
    'line_nr' => 31,
    'text' => 'no matching `@end quotation\'',
    'type' => 'error'
  }
];


$result_floats{'command_in_end'} = {};


1;
