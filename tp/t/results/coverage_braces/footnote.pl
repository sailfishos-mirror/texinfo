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
              'parent' => {},
              'text' => 'text'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'in footnote.
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
                      'contents' => [
                        {
                          'args' => [
                            {
                              'contents' => [
                                {
                                  'parent' => {},
                                  'text' => 'in footnote r'
                                }
                              ],
                              'parent' => {},
                              'type' => 'brace_command_arg'
                            }
                          ],
                          'cmdname' => 'r',
                          'parent' => {},
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 3,
                            'macro' => ''
                          }
                        },
                        {
                          'parent' => {},
                          'text' => '. '
                        }
                      ],
                      'parent' => {},
                      'type' => 'paragraph'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_context'
                }
              ],
              'cmdname' => 'footnote',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 1,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => ' after footnote.'
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
        }
      ],
      'parent' => {},
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'footnote'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'footnote'}{'contents'}[0]{'contents'}[0];
$result_trees{'footnote'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'footnote'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'footnote'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'footnote'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'footnote'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'footnote'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'footnote'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'footnote'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'footnote'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'footnote'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'footnote'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'footnote'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[2];
$result_trees{'footnote'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'footnote'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[2];
$result_trees{'footnote'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'footnote'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'footnote'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'footnote'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'footnote'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'footnote'}{'contents'}[0]{'contents'}[0];
$result_trees{'footnote'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'footnote'}{'contents'}[0]{'contents'}[0];
$result_trees{'footnote'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'footnote'}{'contents'}[0];
$result_trees{'footnote'}{'contents'}[0]{'parent'} = $result_trees{'footnote'};

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

1;
