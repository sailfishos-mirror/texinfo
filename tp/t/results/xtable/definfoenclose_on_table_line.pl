use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'definfoenclose_on_table_line'} = {
  'contents' => [
    {
      'contents' => [
        {
          'cmdname' => 'definfoenclose',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'phi,:,:'
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
              'phi',
              ':',
              ':'
            ]
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
                      'cmdname' => 'phi',
                      'extra' => {
                        'begin' => ':',
                        'end' => ':'
                      },
                      'info' => {
                        'command_name' => 'phi'
                      },
                      'source_info' => {
                        'line_nr' => 3
                      },
                      'type' => 'definfoenclose_command'
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
                        'line_nr' => 4
                      }
                    },
                    {
                      'cmdname' => 'itemx',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'item x'
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
                        'line_nr' => 5
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
                          'text' => 'table content.
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
                'line_nr' => 8
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
            'line_nr' => 3
          }
        }
      ],
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'definfoenclose_on_table_line'}{'contents'}[0]{'contents'}[2]{'extra'}{'command_as_argument'} = $result_trees{'definfoenclose_on_table_line'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'contents'}[0];

$result_texis{'definfoenclose_on_table_line'} = '@definfoenclose phi,:,:

@table @phi
@item item
@itemx item x

table content.
@end table
';


$result_texts{'definfoenclose_on_table_line'} = '
item
item x

table content.
';

$result_errors{'definfoenclose_on_table_line'} = [
  {
    'error_line' => 'warning: @definfoenclose is obsolete
',
    'line_nr' => 1,
    'text' => '@definfoenclose is obsolete',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @phi should not appear on @table line
',
    'line_nr' => 3,
    'text' => '@phi should not appear on @table line',
    'type' => 'warning'
  }
];


$result_floats{'definfoenclose_on_table_line'} = {};



$result_converted{'plaintext'}->{'definfoenclose_on_table_line'} = ':item:
:item x:

     table content.
';


$result_converted{'html_text'}->{'definfoenclose_on_table_line'} = '
<dl class="table">
<dt>:item:</dt>
<dt>:item x:</dt>
<dd>
<p>table content.
</p></dd>
</dl>
';


$result_converted{'xml'}->{'definfoenclose_on_table_line'} = '<definfoenclose spaces=" " command="phi" open=":" close=":" line="phi,:,:"></definfoenclose>

<table commandarg="phi" begin=":" end=":" spaces=" " endspaces=" ">
<tableentry><tableterm><item spaces=" "><itemformat command="phi" begin=":" end=":">item</itemformat></item>
<itemx spaces=" "><itemformat command="phi" begin=":" end=":">item x</itemformat></itemx>
</tableterm><tableitem>
<para>table content.
</para></tableitem></tableentry></table>
';


$result_converted{'docbook'}->{'definfoenclose_on_table_line'} = '
<variablelist><varlistentry><term>item
</term><term>item x
</term><listitem>
<para>table content.
</para></listitem></varlistentry></variablelist>';

1;
