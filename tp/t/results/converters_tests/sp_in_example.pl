use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'sp_in_example'} = {
  'contents' => [
    {
      'contents' => [
        {
          'cmdname' => 'example',
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
                  'text' => 'Para
'
                },
                {
                  'cmdname' => 'sp',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => '1'
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
                      '1'
                    ]
                  },
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'source_info' => {
                    'line_nr' => 3
                  }
                },
                {
                  'text' => 'other para
'
                },
                {
                  'text' => 'Now lone '
                },
                {
                  'cmdname' => '@'
                },
                {
                  'text' => 'sp:
'
                },
                {
                  'text' => '
',
                  'type' => 'empty_line'
                },
                {
                  'cmdname' => 'sp',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => '1'
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
                      '1'
                    ]
                  },
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
                    'line_nr' => 9
                  }
                },
                {
                  'text' => 'Para after sp
'
                },
                {
                  'text' => '
',
                  'type' => 'empty_line'
                },
                {
                  'text' => 'A
'
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
                    'line_nr' => 13
                  }
                },
                {
                  'text' => 'B
'
                },
                {
                  'text' => '
',
                  'type' => 'empty_line'
                },
                {
                  'text' => 'sp after para
'
                },
                {
                  'cmdname' => 'sp',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => '1'
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
                      '1'
                    ]
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
              'type' => 'preformatted'
            },
            {
              'cmdname' => 'end',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'example'
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
                'text_arg' => 'example'
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
            'line_nr' => 1
          }
        }
      ],
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};

$result_texis{'sp_in_example'} = '@example
Para
@sp 1
other para
Now lone @@sp:

@sp 1

@sp 2
Para after sp

A
@sp 2
B

sp after para
@sp 1
@end example
';


$result_texts{'sp_in_example'} = 'Para

other para
Now lone @sp:





Para after sp

A


B

sp after para

';

$result_errors{'sp_in_example'} = [];


$result_floats{'sp_in_example'} = {};



$result_converted{'plaintext'}->{'sp_in_example'} = '     Para

     other para
     Now lone @sp:





     Para after sp

     A


     B

     sp after para

';


$result_converted{'html_text'}->{'sp_in_example'} = '<div class="example">
<pre class="example-preformatted">Para

other para
Now lone @sp:





Para after sp

A


B

sp after para

</pre></div>
';


$result_converted{'xml'}->{'sp_in_example'} = '<example endspaces=" ">
<pre xml:space="preserve">Para
<sp spaces=" " value="1" line="1"></sp>
other para
Now lone &arobase;sp:

<sp spaces=" " value="1" line="1"></sp>

<sp spaces=" " value="2" line="2"></sp>
Para after sp

A
<sp spaces=" " value="2" line="2"></sp>
B

sp after para
<sp spaces=" " value="1" line="1"></sp>
</pre></example>
';


$result_converted{'docbook'}->{'sp_in_example'} = '<screen>Para
other para
Now lone @sp:


Para after sp

A
B

sp after para
</screen>';


$result_converted{'latex_text'}->{'sp_in_example'} = '\\begin{Texinfoindented}
\\begin{Texinfopreformatted}%
\\ttfamily Para
\\vskip 1\\baselineskip %
other para
Now lone @sp:

\\vskip 1\\baselineskip %

\\vskip 2\\baselineskip %
Para after sp

A
\\vskip 2\\baselineskip %
B

sp after para
\\vskip 1\\baselineskip %
\\end{Texinfopreformatted}
\\end{Texinfoindented}
';

1;
