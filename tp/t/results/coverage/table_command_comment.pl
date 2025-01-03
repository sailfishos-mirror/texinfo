use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'table_command_comment'} = {
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
                      'cmdname' => 'code',
                      'source_info' => {
                        'line_nr' => 1
                      }
                    }
                  ],
                  'info' => {
                    'comment_at_end' => {
                      'cmdname' => 'c',
                      'contents' => [
                        {
                          'text' => ' in comment
',
                          'type' => 'rawline_arg'
                        }
                      ]
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
                'line_nr' => 3
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
$result_trees{'table_command_comment'}{'contents'}[0]{'contents'}[0]{'extra'}{'command_as_argument'} = $result_trees{'table_command_comment'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0];

$result_texis{'table_command_comment'} = '@table @code@c in comment
@item item
@end table';


$result_texts{'table_command_comment'} = 'item
';

$result_errors{'table_command_comment'} = [];


$result_floats{'table_command_comment'} = {};



$result_converted{'plaintext'}->{'table_command_comment'} = '‘item’
';


$result_converted{'html_text'}->{'table_command_comment'} = '<dl class="table">
<dt><code class="code">item</code></dt>
</dl>
';


$result_converted{'xml'}->{'table_command_comment'} = '<table commandarg="code" spaces=" " endspaces=" "><!-- c in comment -->
<tableentry><tableterm><item spaces=" "><itemformat command="code">item</itemformat></item>
</tableterm></tableentry></table>';


$result_converted{'latex_text'}->{'table_command_comment'} = '\\begin{description}
\\item[{\\parbox[b]{\\linewidth}{%
\\texttt{item}}}]
\\end{description}
';


$result_converted{'docbook'}->{'table_command_comment'} = '<variablelist><varlistentry><term><literal>item</literal>
</term></varlistentry></variablelist>';

1;
