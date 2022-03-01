use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'spaces_no_brace_after_braced_command'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'cmdname' => 'code',
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
              'text' => 'b
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
$result_trees{'spaces_no_brace_after_braced_command'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'spaces_no_brace_after_braced_command'}{'contents'}[0]{'contents'}[0];
$result_trees{'spaces_no_brace_after_braced_command'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'spaces_no_brace_after_braced_command'}{'contents'}[0]{'contents'}[0];
$result_trees{'spaces_no_brace_after_braced_command'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'spaces_no_brace_after_braced_command'}{'contents'}[0];
$result_trees{'spaces_no_brace_after_braced_command'}{'contents'}[0]{'parent'} = $result_trees{'spaces_no_brace_after_braced_command'};

$result_texis{'spaces_no_brace_after_braced_command'} = '@codeb
';


$result_texts{'spaces_no_brace_after_braced_command'} = 'b
';

$result_errors{'spaces_no_brace_after_braced_command'} = [
  {
    'error_line' => '@code expected braces
',
    'file_name' => '',
    'line_nr' => 1,
    'macro' => '',
    'text' => '@code expected braces',
    'type' => 'error'
  }
];


$result_floats{'spaces_no_brace_after_braced_command'} = {};


1;
