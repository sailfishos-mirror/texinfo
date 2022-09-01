use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'nested'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'type the characters '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'l o g o u t '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'RET'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'key',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 1,
                        'macro' => ''
                      }
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'kbd',
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
              'text' => '.'
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
$result_trees{'nested'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested'}{'contents'}[0]{'contents'}[0];
$result_trees{'nested'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'nested'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'nested'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'nested'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[1];
$result_trees{'nested'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'nested'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'nested'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'nested'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'nested'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'nested'}{'contents'}[0]{'contents'}[0];
$result_trees{'nested'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'nested'}{'contents'}[0]{'contents'}[0];
$result_trees{'nested'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested'}{'contents'}[0];
$result_trees{'nested'}{'contents'}[0]{'parent'} = $result_trees{'nested'};

$result_texis{'nested'} = 'type the characters @kbd{l o g o u t @key{RET}}.';


$result_texts{'nested'} = 'type the characters l o g o u t RET.';

$result_errors{'nested'} = [];


$result_floats{'nested'} = {};



$result_converted{'plaintext'}->{'nested'} = 'type the characters ‘l o g o u t <RET>’.
';


$result_converted{'html_text'}->{'nested'} = '<p>type the characters <kbd class="kbd">l o g o u t <kbd class="key">RET</kbd></kbd>.</p>';


$result_converted{'latex_text'}->{'nested'} = 'type the characters \\GNUTexinfocommandstyletextkbd{l o g o u t \\texttt{RET}}.';

1;
