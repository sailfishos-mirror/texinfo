use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'empty_commands'} = {
  'contents' => [
    {
      'contents' => [
        {
          'cmdname' => 'titlefont',
          'contents' => [
            {
              'type' => 'brace_container'
            }
          ],
          'extra' => {},
          'source_info' => {
            'line_nr' => 1
          }
        },
        {
          'text' => '
'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'cmdname' => 'uref',
              'contents' => [
                {
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'line_nr' => 3
              }
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => 'abbr',
              'contents' => [
                {
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'line_nr' => 3
              }
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => 'email',
              'contents' => [
                {
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'line_nr' => 3
              }
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => 'code',
              'contents' => [
                {
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 3
              }
            },
            {
              'cmdname' => 'footnote',
              'contents' => [
                {
                  'type' => 'brace_command_context'
                }
              ],
              'extra' => {},
              'source_info' => {
                'line_nr' => 3
              }
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => '~',
              'contents' => [
                {
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 3
              }
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => 'dotless',
              'contents' => [
                {
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 3
              }
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => 'verb',
              'contents' => [
                {
                  'type' => 'brace_container'
                }
              ],
              'info' => {
                'delimiter' => ';'
              },
              'source_info' => {
                'line_nr' => 3
              }
            },
            {
              'text' => '
'
            }
          ],
          'type' => 'paragraph'
        }
      ],
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};

$result_texis{'empty_commands'} = '@titlefont{}

@uref{} @abbr{} @email{} @code{}@footnote{} @~{} @dotless{} @verb{;;}
';


$result_texts{'empty_commands'} = '

    ~  
';

$result_errors{'empty_commands'} = [
  {
    'error_line' => 'warning: @abbr missing first argument
',
    'line_nr' => 3,
    'text' => '@abbr missing first argument',
    'type' => 'warning'
  }
];


$result_floats{'empty_commands'} = {};



$result_converted{'plaintext'}->{'empty_commands'} = '
‘’(1) ̃

   ---------- Footnotes ----------

   (1) 
';


$result_converted{'html_text'}->{'empty_commands'} = '

<p> <abbr class="abbr"></abbr>  <a class="footnote" id="DOCF1" href="#FOOT1"><sup>1</sup></a> &#771;  
</p><div class="footnotes-segment">
<hr>
<h4 class="footnotes-heading">Footnotes</h4>

<h5 class="footnote-body-heading"><a id="FOOT1" href="#DOCF1">(1)</a></h5>

</div>
';


$result_converted{'latex_text'}->{'empty_commands'} = '

   \\texttt{}\\footnote{} \\~{}  
';


$result_converted{'docbook'}->{'empty_commands'} = '

<para><ulink url=""></ulink>   <literal></literal><footnote></footnote> &#771;  <literal></literal>
</para>';

1;
