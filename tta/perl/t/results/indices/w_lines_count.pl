use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'w_lines_count'} = {
  'contents' => [
    {
      'contents' => [
        {
          'type' => 'preamble_before_content'
        }
      ],
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
        'isindex' => 1,
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
          'contents' => [
            {
              'text' => 'xzcompilationxdmbufferxmsubsequentmxCtxaxxmcommandsmadvancemfrommthere.  
'
            },
            {
              'cmdname' => 'w',
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => 'code',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'C-u'
                            }
                          ],
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 5
                      }
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 5
              }
            },
            {
              'text' => ' starts again from the beginning
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
          'cmdname' => 'findex',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'compilation-next-error'
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
            'element_node' => {},
            'index_entry' => [
              'fn',
              1
            ]
          },
          'info' => {
            'command_name' => 'findex',
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 7
          },
          'type' => 'index_entry_command'
        },
        {
          'contents' => [
            {
              'text' => 'Compilation mode also defines the keys '
            },
            {
              'cmdname' => 'key',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'SPC'
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 8
              }
            },
            {
              'text' => ' and '
            },
            {
              'cmdname' => 'key',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'DEL'
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 8
              }
            },
            {
              'text' => ' to
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
          'cmdname' => 'printindex',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'fn'
                }
              ],
              'type' => 'line_arg'
            }
          ],
          'extra' => {
            'misc_args' => [
              'fn'
            ]
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
        'line_nr' => 2
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'w_lines_count'}{'contents'}[2]{'contents'}[4]{'extra'}{'element_node'} = $result_trees{'w_lines_count'}{'contents'}[1];

$result_texis{'w_lines_count'} = '@node Top
@top

xzcompilationxdmbufferxmsubsequentmxCtxaxxmcommandsmadvancemfrommthere.  
@w{@code{C-u}} starts again from the beginning

@findex compilation-next-error
Compilation mode also defines the keys @key{SPC} and @key{DEL} to

@printindex fn';


$result_texts{'w_lines_count'} = '
xzcompilationxdmbufferxmsubsequentmxCtxaxxmcommandsmadvancemfrommthere.  
C-u starts again from the beginning

Compilation mode also defines the keys SPC and DEL to

';

$result_sectioning{'w_lines_count'} = {
  'extra' => {
    'section_childs' => [
      {
        'cmdname' => 'top',
        'extra' => {
          'associated_node' => {
            'cmdname' => 'node',
            'extra' => {
              'isindex' => 1,
              'normalized' => 'Top'
            }
          },
          'section_level' => 0,
          'sectioning_root' => {}
        }
      }
    ],
    'section_level' => -1
  }
};
$result_sectioning{'w_lines_count'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'w_lines_count'};

$result_nodes{'w_lines_count'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'associated_section' => {
        'cmdname' => 'top',
        'extra' => {}
      },
      'isindex' => 1,
      'normalized' => 'Top'
    }
  }
];

$result_menus{'w_lines_count'} = [
  {
    'extra' => {
      'normalized' => 'Top'
    }
  }
];

$result_errors{'w_lines_count'} = [];


$result_floats{'w_lines_count'} = {};


$result_indices_sort_strings{'w_lines_count'} = {
  'fn' => [
    'compilation-next-error'
  ]
};



$result_converted{'info'}->{'w_lines_count'} = 'This is , produced from .


File: ,  Node: Top,  Up: (dir)

xzcompilationxdmbufferxmsubsequentmxCtxaxxmcommandsmadvancemfrommthere.
‘C-u’ starts again from the beginning

   Compilation mode also defines the keys <SPC> and <DEL> to

 [index ]
* Menu:

* compilation-next-error:                Top.                   (line 6)


Tag Table:
Node: Top27

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'plaintext'}->{'w_lines_count'} = 'xzcompilationxdmbufferxmsubsequentmxCtxaxxmcommandsmadvancemfrommthere.
‘C-u’ starts again from the beginning

   Compilation mode also defines the keys <SPC> and <DEL> to

* Menu:

* compilation-next-error:                Top.                   (line 3)

';


$result_converted{'html_text'}->{'w_lines_count'} = '<div class="top-level-extent" id="Top">
<a class="top" id="SEC_Top"></a>
<p>xzcompilationxdmbufferxmsubsequentmxCtxaxxmcommandsmadvancemfrommthere.  
<code class="code">C-u</code><!-- /@w --> starts again from the beginning
</p>
<a class="index-entry-id" id="index-compilation_002dnext_002derror"></a>
<p>Compilation mode also defines the keys <kbd class="key">SPC</kbd> and <kbd class="key">DEL</kbd> to
</p>
<div class="printindex fn-printindex">
<table class="index-entries-printindex fn-entries-printindex">
<tr><th class="index-letter-header-printindex fn-letter-header-printindex" colspan="2" id="Top_fn_letter-C">C</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-compilation_002dnext_002derror"><code>compilation-next-error</code></a></td><td class="printindex-index-section"><a href="#Top">Top</a></td></tr>
</table>
</div>
</div>
';


$result_converted{'xml'}->{'w_lines_count'} = '<node identifier="Top" spaces=" "><nodename>Top</nodename></node>
<top><sectiontitle></sectiontitle>

<para>xzcompilationxdmbufferxmsubsequentmxCtxaxxmcommandsmadvancemfrommthere.  
<w><code>C-u</code></w> starts again from the beginning
</para>
<findex index="fn" spaces=" "><indexterm index="fn" number="1">compilation-next-error</indexterm></findex>
<para>Compilation mode also defines the keys <key>SPC</key> and <key>DEL</key> to
</para>
<printindex spaces=" " value="fn" line="fn"></printindex>
</top>
';

1;
