use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'cartouche_in_quotation'} = {
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
                  'text' => 'In quotation
'
                }
              ],
              'type' => 'paragraph'
            },
            {
              'cmdname' => 'cartouche',
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
                      'text' => 'In cartouche in quotation
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
                          'text' => 'cartouche'
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
                    'text_arg' => 'cartouche'
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
                'line_nr' => 3
              }
            },
            {
              'contents' => [
                {
                  'text' => 'end quotation
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
                'line_nr' => 7
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

$result_texis{'cartouche_in_quotation'} = '@quotation
In quotation
@cartouche
In cartouche in quotation
@end cartouche
end quotation
@end quotation
';


$result_texts{'cartouche_in_quotation'} = 'In quotation
In cartouche in quotation
end quotation
';

$result_errors{'cartouche_in_quotation'} = [];


$result_floats{'cartouche_in_quotation'} = {};



$result_converted{'plaintext'}->{'cartouche_in_quotation'} = '     In quotation
     In cartouche in quotation
     end quotation
';


$result_converted{'html_text'}->{'cartouche_in_quotation'} = '<blockquote class="quotation">
<p>In quotation
</p><table class="cartouche"><tr><td>
<p>In cartouche in quotation
</p></td></tr></table>
<p>end quotation
</p></blockquote>
';


$result_converted{'xml'}->{'cartouche_in_quotation'} = '<quotation endspaces=" ">
<para>In quotation
</para><cartouche endspaces=" ">
<para>In cartouche in quotation
</para></cartouche>
<para>end quotation
</para></quotation>
';


$result_converted{'latex_text'}->{'cartouche_in_quotation'} = '\\begin{quote}
In quotation
\\begin{mdframed}[style=Texinfocartouche]
In cartouche in quotation
\\end{mdframed}
end quotation
\\end{quote}
';


$result_converted{'docbook'}->{'cartouche_in_quotation'} = '<blockquote><para>In quotation
</para><sidebar><para>In cartouche in quotation
</para></sidebar><para>end quotation
</para></blockquote>';

1;
