use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'only_comment_on_quotation_line'} = {
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
                    'comment_at_end' => {
                      'cmdname' => 'c',
                      'contents' => [
                        {
                          'text' => ' comment
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
                      'text' => 'quotation'
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
                'line_nr' => 3
              }
            }
          ],
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

$result_texis{'only_comment_on_quotation_line'} = '@quotation @c comment
In quotation
@end quotation
';


$result_texts{'only_comment_on_quotation_line'} = 'In quotation
';

$result_errors{'only_comment_on_quotation_line'} = [];


$result_floats{'only_comment_on_quotation_line'} = {};



$result_converted{'plaintext'}->{'only_comment_on_quotation_line'} = '     In quotation
';


$result_converted{'html_text'}->{'only_comment_on_quotation_line'} = '<blockquote class="quotation">
<p>In quotation
</p></blockquote>
';


$result_converted{'xml'}->{'only_comment_on_quotation_line'} = '<quotation spaces=" " endspaces=" "><!-- c comment -->
<para>In quotation
</para></quotation>
';


$result_converted{'docbook'}->{'only_comment_on_quotation_line'} = '<blockquote><para>In quotation
</para></blockquote>';

1;
