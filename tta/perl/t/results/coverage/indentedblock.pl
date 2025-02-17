use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'indentedblock'} = {
  'contents' => [
    {
      'contents' => [
        {
          'cmdname' => 'indentedblock',
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
                  'text' => 'indented block
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
              'contents' => [
                {
                  'text' => 'Text
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
                      'text' => 'indentedblock'
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
                'text_arg' => 'indentedblock'
              },
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

$result_texis{'indentedblock'} = '@indentedblock
  indented block

Text
@end indentedblock
';


$result_texts{'indentedblock'} = 'indented block

Text
';

$result_errors{'indentedblock'} = [];


$result_floats{'indentedblock'} = {};



$result_converted{'plaintext'}->{'indentedblock'} = '     indented block

     Text
';


$result_converted{'html_text'}->{'indentedblock'} = '<blockquote class="indentedblock">
<p>indented block
</p>
<p>Text
</p></blockquote>
';


$result_converted{'xml'}->{'indentedblock'} = '<indentedblock endspaces=" ">
  <para>indented block
</para>
<para>Text
</para></indentedblock>
';


$result_converted{'latex_text'}->{'indentedblock'} = '\\begin{quote}
  indented block

Text
\\end{quote}
';


$result_converted{'docbook'}->{'indentedblock'} = '<para>indented block
</para>
<para>Text
</para>';

1;
