use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'node_in_copying_not_closed'} = '*document_root C3
 *before_node_section C1
  *0 @copying C5 l1
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   {empty_line:\\n}
   *paragraph C1
    {This is an unterminatted copyright notice\\n}
   {empty_line:\\n}
   {empty_line:\\n}
 *1 @node C1 l6 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E2]
 |is_target:{1}
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *2 @top C3 l7 {Top section}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E1]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E2]
  ||section_level:{-1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top section}
  {empty_line:\\n}
  *@insertcopying C1 l9
  |EXTRA
  |global_command_number:{1}
   {rawline_arg:\\n}
';


$result_texis{'node_in_copying_not_closed'} = '@copying

This is an unterminatted copyright notice


@node Top
@top Top section

@insertcopying
';


$result_texts{'node_in_copying_not_closed'} = 'Top section
***********

';

$result_sectioning{'node_in_copying_not_closed'} = {
  'extra' => {
    'section_childs' => [
      {
        'cmdname' => 'top',
        'extra' => {
          'associated_node' => {
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'Top'
            }
          },
          'section_level' => 0,
          'sectioning_root' => {}
        }
      }
    ],
    'section_level' => -1
  }
};
$result_sectioning{'node_in_copying_not_closed'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'node_in_copying_not_closed'};

$result_nodes{'node_in_copying_not_closed'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'associated_section' => {
        'cmdname' => 'top',
        'extra' => {}
      },
      'normalized' => 'Top'
    }
  }
];

$result_menus{'node_in_copying_not_closed'} = [
  {
    'extra' => {
      'normalized' => 'Top'
    }
  }
];

$result_errors{'node_in_copying_not_closed'} = [
  {
    'error_line' => '@node seen before @end copying
',
    'line_nr' => 6,
    'text' => '@node seen before @end copying',
    'type' => 'error'
  }
];


$result_floats{'node_in_copying_not_closed'} = {};


1;
