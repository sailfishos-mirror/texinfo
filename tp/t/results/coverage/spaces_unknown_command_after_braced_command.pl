use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'spaces_unknown_command_after_braced_command'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'cmdname' => 'code',
              'extra' => {
                'spaces' => ' '
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
              'cmdname' => '~',
              'extra' => {
                'spaces' => ' '
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 3,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '
'
            },
            {
              'parent' => {},
              'text' => ' e
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
$result_trees{'spaces_unknown_command_after_braced_command'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'spaces_unknown_command_after_braced_command'}{'contents'}[0]{'contents'}[0];
$result_trees{'spaces_unknown_command_after_braced_command'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'spaces_unknown_command_after_braced_command'}{'contents'}[0]{'contents'}[0];
$result_trees{'spaces_unknown_command_after_braced_command'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'spaces_unknown_command_after_braced_command'}{'contents'}[0];
$result_trees{'spaces_unknown_command_after_braced_command'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'spaces_unknown_command_after_braced_command'}{'contents'}[0];
$result_trees{'spaces_unknown_command_after_braced_command'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'spaces_unknown_command_after_braced_command'}{'contents'}[0]{'contents'}[2];
$result_trees{'spaces_unknown_command_after_braced_command'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'spaces_unknown_command_after_braced_command'}{'contents'}[0]{'contents'}[2];
$result_trees{'spaces_unknown_command_after_braced_command'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'spaces_unknown_command_after_braced_command'}{'contents'}[0]{'contents'}[2];
$result_trees{'spaces_unknown_command_after_braced_command'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'spaces_unknown_command_after_braced_command'}{'contents'}[0];
$result_trees{'spaces_unknown_command_after_braced_command'}{'contents'}[0]{'parent'} = $result_trees{'spaces_unknown_command_after_braced_command'};

$result_texis{'spaces_unknown_command_after_braced_command'} = '@code  

@~ 
 e
';


$result_texts{'spaces_unknown_command_after_braced_command'} = ' 

~
 e
';

$result_errors{'spaces_unknown_command_after_braced_command'} = [
  {
    'error_line' => '@code expected braces
',
    'file_name' => '',
    'line_nr' => 1,
    'macro' => '',
    'text' => '@code expected braces',
    'type' => 'error'
  },
  {
    'error_line' => 'unknown command `unknown\'
',
    'file_name' => '',
    'line_nr' => 1,
    'macro' => '',
    'text' => 'unknown command `unknown\'',
    'type' => 'error'
  },
  {
    'error_line' => '@~ expected braces
',
    'file_name' => '',
    'line_nr' => 3,
    'macro' => '',
    'text' => '@~ expected braces',
    'type' => 'error'
  },
  {
    'error_line' => 'unknown command `notexisting\'
',
    'file_name' => '',
    'line_nr' => 3,
    'macro' => '',
    'text' => 'unknown command `notexisting\'',
    'type' => 'error'
  }
];


$result_floats{'spaces_unknown_command_after_braced_command'} = {};


1;
