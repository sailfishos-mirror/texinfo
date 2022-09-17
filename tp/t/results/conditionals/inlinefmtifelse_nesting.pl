use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'inlinefmtifelse_nesting'} = {
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
                      'text' => 'info'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'parent' => {},
                  'type' => 'elided'
                },
                {
                  'contents' => [
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'text'
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
                    }
                  ],
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'inlinefmtifelse',
              'extra' => {
                'expand_index' => 2,
                'format' => 'info'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 1,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '
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
$result_trees{'inlinefmtifelse_nesting'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inlinefmtifelse_nesting'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'inlinefmtifelse_nesting'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'inlinefmtifelse_nesting'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'inlinefmtifelse_nesting'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[1]{'parent'} = $result_trees{'inlinefmtifelse_nesting'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'inlinefmtifelse_nesting'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[2]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inlinefmtifelse_nesting'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'inlinefmtifelse_nesting'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[2]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'inlinefmtifelse_nesting'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[2]{'contents'}[0];
$result_trees{'inlinefmtifelse_nesting'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[2]{'contents'}[0]{'parent'} = $result_trees{'inlinefmtifelse_nesting'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[2];
$result_trees{'inlinefmtifelse_nesting'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[2]{'parent'} = $result_trees{'inlinefmtifelse_nesting'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'inlinefmtifelse_nesting'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'inlinefmtifelse_nesting'}{'contents'}[0]{'contents'}[0];
$result_trees{'inlinefmtifelse_nesting'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'inlinefmtifelse_nesting'}{'contents'}[0]{'contents'}[0];
$result_trees{'inlinefmtifelse_nesting'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'inlinefmtifelse_nesting'}{'contents'}[0];
$result_trees{'inlinefmtifelse_nesting'}{'contents'}[0]{'parent'} = $result_trees{'inlinefmtifelse_nesting'};

$result_texis{'inlinefmtifelse_nesting'} = '@inlinefmtifelse{info,, @emph{text}}
';


$result_texts{'inlinefmtifelse_nesting'} = 'text
';

$result_errors{'inlinefmtifelse_nesting'} = [];


$result_floats{'inlinefmtifelse_nesting'} = {};


1;
