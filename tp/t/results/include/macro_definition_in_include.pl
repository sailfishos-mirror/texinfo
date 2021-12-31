use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'macro_definition_in_include'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'parent' => {},
              'text' => 'themacro',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => 'in themacro',
              'type' => 'raw'
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'last_raw_newline'
            }
          ],
          'extra' => {
            'arg_line' => ' themacro
'
          },
          'line_nr' => {
            'file_name' => 'macro_included.texi',
            'line_nr' => 1,
            'macro' => ''
          },
          'parent' => {}
        },
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line_after_command'
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
              'parent' => {},
              'text' => 'Call macro
'
            },
            {
              'parent' => {},
              'text' => 'in themacro
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
$result_trees{'macro_definition_in_include'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'macro_definition_in_include'}{'contents'}[0]{'contents'}[0];
$result_trees{'macro_definition_in_include'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_definition_in_include'}{'contents'}[0]{'contents'}[0];
$result_trees{'macro_definition_in_include'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'macro_definition_in_include'}{'contents'}[0]{'contents'}[0];
$result_trees{'macro_definition_in_include'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_definition_in_include'}{'contents'}[0];
$result_trees{'macro_definition_in_include'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'macro_definition_in_include'}{'contents'}[0];
$result_trees{'macro_definition_in_include'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'macro_definition_in_include'}{'contents'}[0];
$result_trees{'macro_definition_in_include'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'macro_definition_in_include'}{'contents'}[0]{'contents'}[3];
$result_trees{'macro_definition_in_include'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'macro_definition_in_include'}{'contents'}[0]{'contents'}[3];
$result_trees{'macro_definition_in_include'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'macro_definition_in_include'}{'contents'}[0];
$result_trees{'macro_definition_in_include'}{'contents'}[0]{'parent'} = $result_trees{'macro_definition_in_include'};

$result_texis{'macro_definition_in_include'} = '@macro themacro
in themacro
@end macro

Call macro
in themacro
';


$result_texts{'macro_definition_in_include'} = '
Call macro
in themacro
';

$result_errors{'macro_definition_in_include'} = [];


$result_floats{'macro_definition_in_include'} = {};


1;
