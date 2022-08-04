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
          'contents' => [],
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
        'isindex' => 1,
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
        'line_nr' => 1,
        'macro' => ''
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
      'cmdname' => 'top',
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
              'text' => 'xzcompilationxdmbufferxmsubsequentmxCtxaxxmcommandsmadvancemfrommthere.  
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
                              'text' => 'C-u'
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
                        'line_nr' => 5,
                        'macro' => ''
                      }
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'w',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 5,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => ' starts again from the beginning
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
                  'text' => 'compilation-next-error'
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
          'cmdname' => 'findex',
          'extra' => {
            'index_entry' => {
              'command' => {},
              'content' => [],
              'content_normalized' => [],
              'in_code' => 1,
              'index_at_command' => 'findex',
              'index_ignore_chars' => {},
              'index_name' => 'fn',
              'index_type_command' => 'findex',
              'node' => {},
              'number' => 1
            },
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 7,
            'macro' => ''
          },
          'type' => 'index_entry_command'
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'Compilation mode also defines the keys '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'SPC'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'key',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 8,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => ' and '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'DEL'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'key',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 8,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => ' to
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
                  'text' => 'fn'
                }
              ],
              'parent' => {},
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'printindex',
          'extra' => {
            'misc_args' => [
              'fn'
            ],
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 10,
            'macro' => ''
          }
        }
      ],
      'extra' => {},
      'parent' => {},
      'source_info' => {
        'file_name' => '',
        'line_nr' => 2,
        'macro' => ''
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'w_lines_count'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'w_lines_count'}{'contents'}[0];
$result_trees{'w_lines_count'}{'contents'}[0]{'parent'} = $result_trees{'w_lines_count'};
$result_trees{'w_lines_count'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'w_lines_count'}{'contents'}[1]{'args'}[0];
$result_trees{'w_lines_count'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'w_lines_count'}{'contents'}[1];
$result_trees{'w_lines_count'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'w_lines_count'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'w_lines_count'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'w_lines_count'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'w_lines_count'}{'contents'}[1]{'parent'} = $result_trees{'w_lines_count'};
$result_trees{'w_lines_count'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'w_lines_count'}{'contents'}[2];
$result_trees{'w_lines_count'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'w_lines_count'}{'contents'}[2];
$result_trees{'w_lines_count'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'w_lines_count'}{'contents'}[2]{'contents'}[1];
$result_trees{'w_lines_count'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'w_lines_count'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'w_lines_count'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'w_lines_count'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'w_lines_count'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'w_lines_count'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'w_lines_count'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'w_lines_count'}{'contents'}[2]{'contents'}[1]{'contents'}[1];
$result_trees{'w_lines_count'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'w_lines_count'}{'contents'}[2]{'contents'}[1];
$result_trees{'w_lines_count'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'w_lines_count'}{'contents'}[2]{'contents'}[1];
$result_trees{'w_lines_count'}{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'w_lines_count'}{'contents'}[2];
$result_trees{'w_lines_count'}{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'w_lines_count'}{'contents'}[2];
$result_trees{'w_lines_count'}{'contents'}[2]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'w_lines_count'}{'contents'}[2]{'contents'}[3]{'args'}[0];
$result_trees{'w_lines_count'}{'contents'}[2]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'w_lines_count'}{'contents'}[2]{'contents'}[3];
$result_trees{'w_lines_count'}{'contents'}[2]{'contents'}[3]{'extra'}{'index_entry'}{'command'} = $result_trees{'w_lines_count'}{'contents'}[2]{'contents'}[3];
$result_trees{'w_lines_count'}{'contents'}[2]{'contents'}[3]{'extra'}{'index_entry'}{'content'} = $result_trees{'w_lines_count'}{'contents'}[2]{'contents'}[3]{'args'}[0]{'contents'};
$result_trees{'w_lines_count'}{'contents'}[2]{'contents'}[3]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'w_lines_count'}{'contents'}[2]{'contents'}[3]{'args'}[0]{'contents'};
$result_trees{'w_lines_count'}{'contents'}[2]{'contents'}[3]{'extra'}{'index_entry'}{'node'} = $result_trees{'w_lines_count'}{'contents'}[1];
$result_trees{'w_lines_count'}{'contents'}[2]{'contents'}[3]{'parent'} = $result_trees{'w_lines_count'}{'contents'}[2];
$result_trees{'w_lines_count'}{'contents'}[2]{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'w_lines_count'}{'contents'}[2]{'contents'}[4];
$result_trees{'w_lines_count'}{'contents'}[2]{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'w_lines_count'}{'contents'}[2]{'contents'}[4]{'contents'}[1]{'args'}[0];
$result_trees{'w_lines_count'}{'contents'}[2]{'contents'}[4]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'w_lines_count'}{'contents'}[2]{'contents'}[4]{'contents'}[1];
$result_trees{'w_lines_count'}{'contents'}[2]{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'w_lines_count'}{'contents'}[2]{'contents'}[4];
$result_trees{'w_lines_count'}{'contents'}[2]{'contents'}[4]{'contents'}[2]{'parent'} = $result_trees{'w_lines_count'}{'contents'}[2]{'contents'}[4];
$result_trees{'w_lines_count'}{'contents'}[2]{'contents'}[4]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'w_lines_count'}{'contents'}[2]{'contents'}[4]{'contents'}[3]{'args'}[0];
$result_trees{'w_lines_count'}{'contents'}[2]{'contents'}[4]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'w_lines_count'}{'contents'}[2]{'contents'}[4]{'contents'}[3];
$result_trees{'w_lines_count'}{'contents'}[2]{'contents'}[4]{'contents'}[3]{'parent'} = $result_trees{'w_lines_count'}{'contents'}[2]{'contents'}[4];
$result_trees{'w_lines_count'}{'contents'}[2]{'contents'}[4]{'contents'}[4]{'parent'} = $result_trees{'w_lines_count'}{'contents'}[2]{'contents'}[4];
$result_trees{'w_lines_count'}{'contents'}[2]{'contents'}[4]{'parent'} = $result_trees{'w_lines_count'}{'contents'}[2];
$result_trees{'w_lines_count'}{'contents'}[2]{'contents'}[5]{'parent'} = $result_trees{'w_lines_count'}{'contents'}[2];
$result_trees{'w_lines_count'}{'contents'}[2]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'w_lines_count'}{'contents'}[2]{'contents'}[6]{'args'}[0];
$result_trees{'w_lines_count'}{'contents'}[2]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'w_lines_count'}{'contents'}[2]{'contents'}[6];
$result_trees{'w_lines_count'}{'contents'}[2]{'contents'}[6]{'parent'} = $result_trees{'w_lines_count'}{'contents'}[2];
$result_trees{'w_lines_count'}{'contents'}[2]{'parent'} = $result_trees{'w_lines_count'};

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
  'structure' => {
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
          }
        },
        'structure' => {
          'section_level' => 0,
          'section_up' => {}
        }
      }
    ],
    'section_level' => -1
  }
};
$result_sectioning{'w_lines_count'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'w_lines_count'};

$result_nodes{'w_lines_count'} = {
  'cmdname' => 'node',
  'extra' => {
    'associated_section' => {
      'cmdname' => 'top',
      'extra' => {},
      'structure' => {}
    },
    'isindex' => 1,
    'normalized' => 'Top'
  }
};

$result_menus{'w_lines_count'} = {
  'cmdname' => 'node',
  'extra' => {
    'isindex' => 1,
    'normalized' => 'Top'
  }
};

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
<code class="code"><span class="w-nolinebreak-text">C-u</span></code><!-- /@w --> starts again from the beginning
</p>
<a class="index-entry-id" id="index-compilation_002dnext_002derror"></a>
<p>Compilation mode also defines the keys <kbd class="key">SPC</kbd> and <kbd class="key">DEL</kbd> to
</p>
<div class="printindex fn-printindex">
<table class="fn-entries-printindex" border="0">
<tr><td></td><th align="left">Index Entry</th><td>&nbsp;</td><th align="left"> Section</th></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="t_i_fn_letter-C">C</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-compilation_002dnext_002derror"><code>compilation-next-error</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Top">Top</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
</table>
</div>
</div>
';

1;
