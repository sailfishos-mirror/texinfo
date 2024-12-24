use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'itemx_in_itemize_enumerate_in_table'} = {
  'contents' => [
    {
      'contents' => [
        {
          'cmdname' => 'table',
          'contents' => [
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => 'strong',
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
                              'text' => 'item'
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
                        'line_nr' => 2
                      }
                    }
                  ],
                  'type' => 'table_term'
                },
                {
                  'contents' => [
                    {
                      'text' => '
',
                      'type' => 'empty_line'
                    },
                    {
                      'contents' => [
                        {
                          'text' => 'In item, nested itemize
'
                        }
                      ],
                      'type' => 'paragraph'
                    },
                    {
                      'cmdname' => 'itemize',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'contents' => [
                                {
                                  'cmdname' => 'bullet',
                                  'info' => {
                                    'inserted' => 1
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
                              'cmdname' => 'itemx',
                              'contents' => [
                                {
                                  'contents' => [
                                    {
                                      'text' => 'in nested itemize itemx'
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
                                'line_nr' => 6
                              }
                            }
                          ],
                          'type' => 'before_item'
                        },
                        {
                          'cmdname' => 'end',
                          'contents' => [
                            {
                              'contents' => [
                                {
                                  'text' => 'itemize'
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
                            'text_arg' => 'itemize'
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
                      'extra' => {
                        'command_as_argument' => {}
                      },
                      'source_info' => {
                        'line_nr' => 5
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
                          'contents' => [
                            {
                              'cmdname' => 'itemx',
                              'contents' => [
                                {
                                  'contents' => [
                                    {
                                      'text' => 'in nested enumerate itemx'
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
                                'line_nr' => 10
                              }
                            }
                          ],
                          'type' => 'before_item'
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
                            'line_nr' => 11
                          }
                        }
                      ],
                      'extra' => {
                        'enumerate_specification' => '1'
                      },
                      'source_info' => {
                        'line_nr' => 9
                      }
                    },
                    {
                      'text' => '
',
                      'type' => 'empty_line'
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
                'line_nr' => 13
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
            'line_nr' => 1
          }
        }
      ],
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'itemx_in_itemize_enumerate_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'extra'}{'command_as_argument'} = $result_trees{'itemx_in_itemize_enumerate_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'itemx_in_itemize_enumerate_in_table'}{'contents'}[0]{'contents'}[0]{'extra'}{'command_as_argument'} = $result_trees{'itemx_in_itemize_enumerate_in_table'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0];

$result_texis{'itemx_in_itemize_enumerate_in_table'} = '@table @strong
@item item

In item, nested itemize
@itemize
@itemx in nested itemize itemx
@end itemize

@enumerate
@itemx in nested enumerate itemx
@end enumerate

@end table
';


$result_texts{'itemx_in_itemize_enumerate_in_table'} = 'item

In item, nested itemize
in nested itemize itemx

in nested enumerate itemx

';

$result_errors{'itemx_in_itemize_enumerate_in_table'} = [
  {
    'error_line' => '@itemx outside of table or list
',
    'line_nr' => 6,
    'text' => '@itemx outside of table or list',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: @itemize has text but no @item
',
    'line_nr' => 5,
    'text' => '@itemize has text but no @item',
    'type' => 'warning'
  },
  {
    'error_line' => '@itemx outside of table or list
',
    'line_nr' => 10,
    'text' => '@itemx outside of table or list',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: @enumerate has text but no @item
',
    'line_nr' => 9,
    'text' => '@enumerate has text but no @item',
    'type' => 'warning'
  }
];


$result_floats{'itemx_in_itemize_enumerate_in_table'} = {};



$result_converted{'plaintext'}->{'itemx_in_itemize_enumerate_in_table'} = '*item*

     In item, nested itemize
     in nested itemize itemx

     in nested enumerate itemx

';


$result_converted{'xml'}->{'itemx_in_itemize_enumerate_in_table'} = '<table commandarg="strong" spaces=" " endspaces=" ">
<tableentry><tableterm><item spaces=" "><itemformat command="strong">item</itemformat></item>
</tableterm><tableitem>
<para>In item, nested itemize
</para><itemize commandarg="bullet" automaticcommandarg="on" endspaces=" "><itemprepend><formattingcommand command="bullet" automatic="on"/></itemprepend>
<beforefirstitem>in nested itemize itemx</beforefirstitem></itemize>

<enumerate first="1" endspaces=" ">
<beforefirstitem>in nested enumerate itemx</beforefirstitem></enumerate>

</tableitem></tableentry></table>
';

1;
