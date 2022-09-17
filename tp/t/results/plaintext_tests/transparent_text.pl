use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'transparent_text'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'AA'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'in footnote'
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
              'text' => '). B ('
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'C'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'emph',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 1,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '). D.
'
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
$result_trees{'transparent_text'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'transparent_text'}{'contents'}[0]{'contents'}[0];
$result_trees{'transparent_text'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'transparent_text'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'transparent_text'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'transparent_text'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'transparent_text'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'transparent_text'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'transparent_text'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'transparent_text'}{'contents'}[0]{'contents'}[0];
$result_trees{'transparent_text'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'transparent_text'}{'contents'}[0]{'contents'}[0];
$result_trees{'transparent_text'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'transparent_text'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0];
$result_trees{'transparent_text'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'transparent_text'}{'contents'}[0]{'contents'}[0]{'contents'}[3];
$result_trees{'transparent_text'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'transparent_text'}{'contents'}[0]{'contents'}[0];
$result_trees{'transparent_text'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'transparent_text'}{'contents'}[0]{'contents'}[0];
$result_trees{'transparent_text'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'transparent_text'}{'contents'}[0];
$result_trees{'transparent_text'}{'contents'}[0]{'parent'} = $result_trees{'transparent_text'};

$result_texis{'transparent_text'} = 'AA@footnote{in footnote}). B (@emph{C}). D.
';


$result_texts{'transparent_text'} = 'AA). B (C). D.
';

$result_errors{'transparent_text'} = [];


$result_floats{'transparent_text'} = {};



$result_converted{'plaintext'}->{'transparent_text'} = 'AA(1)). B (_C_). D.

   ---------- Footnotes ----------

   (1) in footnote

';

1;
