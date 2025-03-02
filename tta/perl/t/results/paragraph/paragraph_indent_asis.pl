use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'paragraph_indent_asis'} = {
  'contents' => [
    {
      'contents' => [
        {
          'cmdname' => 'paragraphindent',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'asis'
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
              'asis'
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
          'text' => '  ',
          'type' => 'spaces_before_paragraph'
        },
        {
          'contents' => [
            {
              'text' => 'para
'
            },
            {
              'text' => '  fff
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
              'text' => '  ',
              'type' => 'spaces_before_paragraph'
            },
            {
              'contents' => [
                {
                  'text' => 'in quotation
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
                'line_nr' => 8
              }
            }
          ],
          'source_info' => {
            'line_nr' => 6
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};

$result_texis{'paragraph_indent_asis'} = '@paragraphindent asis

  para
  fff

@quotation
  in quotation
@end quotation

';


$result_texts{'paragraph_indent_asis'} = '
para
  fff

in quotation

';

$result_errors{'paragraph_indent_asis'} = [];


$result_floats{'paragraph_indent_asis'} = {};



$result_converted{'plaintext'}->{'paragraph_indent_asis'} = '  para fff

       in quotation

';


$result_converted{'html_text'}->{'paragraph_indent_asis'} = '
<p>para
  fff
</p>
<blockquote class="quotation">
<p>in quotation
</p></blockquote>

';

1;
