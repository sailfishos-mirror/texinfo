use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'footnote_no_node'} = {
  'contents' => [
    {
      'contents' => [],
      'parent' => {},
      'type' => 'before_node_section'
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'top'
            }
          ],
          'extra' => {
            'spaces_after_argument' => '
'
          },
          'parent' => {},
          'type' => 'line_arg'
        }
      ],
      'cmdname' => 'top',
      'contents' => [
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'F'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'In footnote'
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
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 3,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '.
'
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
        }
      ],
      'extra' => {
        'spaces_before_argument' => ' '
      },
      'parent' => {},
      'source_info' => {
        'file_name' => '',
        'line_nr' => 1,
        'macro' => ''
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'footnote_no_node'}{'contents'}[0]{'parent'} = $result_trees{'footnote_no_node'};
$result_trees{'footnote_no_node'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'footnote_no_node'}{'contents'}[1]{'args'}[0];
$result_trees{'footnote_no_node'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'footnote_no_node'}{'contents'}[1];
$result_trees{'footnote_no_node'}{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'footnote_no_node'}{'contents'}[1];
$result_trees{'footnote_no_node'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'footnote_no_node'}{'contents'}[1]{'contents'}[1];
$result_trees{'footnote_no_node'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'footnote_no_node'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'footnote_no_node'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'footnote_no_node'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'footnote_no_node'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'footnote_no_node'}{'contents'}[1]{'contents'}[1]{'contents'}[1];
$result_trees{'footnote_no_node'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'footnote_no_node'}{'contents'}[1]{'contents'}[1];
$result_trees{'footnote_no_node'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'footnote_no_node'}{'contents'}[1]{'contents'}[1];
$result_trees{'footnote_no_node'}{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'footnote_no_node'}{'contents'}[1];
$result_trees{'footnote_no_node'}{'contents'}[1]{'parent'} = $result_trees{'footnote_no_node'};

$result_texis{'footnote_no_node'} = '@top top

F@footnote{In footnote}.
';


$result_texts{'footnote_no_node'} = 'top
***

F.
';

$result_sectioning{'footnote_no_node'} = {
  'structure' => {
    'section_childs' => [
      {
        'cmdname' => 'top',
        'extra' => {},
        'structure' => {
          'section_level' => 0,
          'section_up' => {}
        }
      }
    ],
    'section_level' => -1
  }
};
$result_sectioning{'footnote_no_node'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'footnote_no_node'};

$result_errors{'footnote_no_node'} = [];


$result_floats{'footnote_no_node'} = {};



$result_converted{'plaintext'}->{'footnote_no_node'} = 'top
***

F(1).

   ---------- Footnotes ----------

   (1) In footnote

';


$result_converted{'html_text'}->{'footnote_no_node'} = '<div class="top-level-extent" id="top">
<h1 class="top">top</h1>

<p>F<a class="footnote" id="DOCF1" href="#FOOT1"><sup>1</sup></a>.
</p><div class="footnotes-segment">
<hr>
<h4 class="footnotes-heading">Footnotes</h4>

<h5 class="footnote-body-heading"><a id="FOOT1" href="#DOCF1">(1)</a></h5>
<p>In footnote</p>
</div>
</div>
';

1;
