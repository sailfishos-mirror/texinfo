use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'footnote'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'text' => 'text'
            },
            {
              'cmdname' => 'footnote',
              'contents' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'in footnote.
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
                          'cmdname' => 'r',
                          'contents' => [
                            {
                              'contents' => [
                                {
                                  'text' => 'in footnote r'
                                }
                              ],
                              'type' => 'brace_container'
                            }
                          ],
                          'source_info' => {
                            'line_nr' => 3
                          }
                        },
                        {
                          'text' => '. '
                        }
                      ],
                      'type' => 'paragraph'
                    }
                  ],
                  'type' => 'brace_command_context'
                }
              ],
              'extra' => {},
              'source_info' => {
                'line_nr' => 1
              }
            },
            {
              'text' => ' after footnote.'
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

$result_texis{'footnote'} = 'text@footnote{in footnote.

@r{in footnote r}. } after footnote.';


$result_texts{'footnote'} = 'text after footnote.';

$result_errors{'footnote'} = [];


$result_floats{'footnote'} = {};



$result_converted{'plaintext'}->{'footnote'} = 'text(1) after footnote.

   ---------- Footnotes ----------

   (1) in footnote.

   in footnote r.

';


$result_converted{'html_text'}->{'footnote'} = '<p>text<a class="footnote" id="DOCF1" href="#FOOT1"><sup>1</sup></a> after footnote.</p><div class="footnotes-segment">
<hr>
<h4 class="footnotes-heading">Footnotes</h4>

<h5 class="footnote-body-heading"><a id="FOOT1" href="#DOCF1">(1)</a></h5>
<p>in footnote.
</p>
<p><span class="r">in footnote r</span>. </p>
</div>
';


$result_converted{'latex_text'}->{'footnote'} = 'text\\footnote{in footnote.

\\textnormal{in footnote r}. } after footnote.';


$result_converted{'docbook'}->{'footnote'} = '<para>text<footnote><para>in footnote.
</para>
<para>in footnote r. </para></footnote> after footnote.</para>';

1;
