use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'comment_first_on_itemize_line'} = {
  'contents' => [
    {
      'contents' => [
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
                    'comment_at_end' => {
                      'cmdname' => 'c',
                      'contents' => [
                        {
                          'text' => ' comment on itemize line
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
              'cmdname' => 'item',
              'contents' => [
                {
                  'text' => ' ',
                  'type' => 'ignorable_spaces_after_command'
                },
                {
                  'contents' => [
                    {
                      'text' => 'first
'
                    }
                  ],
                  'type' => 'paragraph'
                }
              ],
              'extra' => {
                'item_number' => 1
              },
              'source_info' => {
                'line_nr' => 2
              }
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
$result_trees{'comment_first_on_itemize_line'}{'contents'}[0]{'contents'}[0]{'extra'}{'command_as_argument'} = $result_trees{'comment_first_on_itemize_line'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0];

$result_texis{'comment_first_on_itemize_line'} = '@itemize @c comment on itemize line
@item first
@end itemize
';


$result_texts{'comment_first_on_itemize_line'} = 'first
';

$result_errors{'comment_first_on_itemize_line'} = [];


$result_floats{'comment_first_on_itemize_line'} = {};



$result_converted{'plaintext'}->{'comment_first_on_itemize_line'} = '   • first
';


$result_converted{'html_text'}->{'comment_first_on_itemize_line'} = '<ul class="itemize mark-bullet">
<li>first
</li></ul>
';


$result_converted{'xml'}->{'comment_first_on_itemize_line'} = '<itemize commandarg="bullet" automaticcommandarg="on" spaces=" " endspaces=" "><itemprepend><formattingcommand command="bullet" automatic="on"/></itemprepend><!-- c comment on itemize line -->
<listitem><prepend>&bullet;</prepend> <para>first
</para></listitem></itemize>
';

1;
