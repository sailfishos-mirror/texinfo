use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'accent_command_punctuation'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'e'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'dotaccent',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 1,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => ' after'
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
$result_trees{'accent_command_punctuation'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'accent_command_punctuation'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'accent_command_punctuation'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'accent_command_punctuation'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'accent_command_punctuation'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'accent_command_punctuation'}{'contents'}[0]{'contents'}[0];
$result_trees{'accent_command_punctuation'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'accent_command_punctuation'}{'contents'}[0]{'contents'}[0];
$result_trees{'accent_command_punctuation'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'accent_command_punctuation'}{'contents'}[0];
$result_trees{'accent_command_punctuation'}{'contents'}[0]{'parent'} = $result_trees{'accent_command_punctuation'};

$result_texis{'accent_command_punctuation'} = '@dotaccent{e} after';


$result_texts{'accent_command_punctuation'} = 'e. after';

$result_errors{'accent_command_punctuation'} = [];


$result_floats{'accent_command_punctuation'} = {};



$result_converted{'plaintext'}->{'accent_command_punctuation'} = 'ė after
';

1;
