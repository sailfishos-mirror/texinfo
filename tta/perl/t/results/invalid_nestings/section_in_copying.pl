use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'section_in_copying'} = '*document_root C2
 *before_node_section C1
  *0 @copying C4 l1
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   {empty_line:\\n}
   *paragraph C1
    {in copying\\n}
   {empty_line:\\n}
 *1 @section C1 l5 {section}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_level:{2}
 |section_number:{1}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1]
  ||section_level:{1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {section}
';


$result_texis{'section_in_copying'} = '@copying

in copying

@section section
';


$result_texts{'section_in_copying'} = '1 section
=========
';

$result_sectioning{'section_in_copying'} = {
  'extra' => {
    'section_childs' => [
      {
        'cmdname' => 'section',
        'extra' => {
          'section_level' => 2,
          'section_number' => '1',
          'sectioning_root' => {}
        }
      }
    ],
    'section_level' => 1
  }
};
$result_sectioning{'section_in_copying'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'section_in_copying'};

$result_errors{'section_in_copying'} = [
  {
    'error_line' => '@section seen before @end copying
',
    'line_nr' => 5,
    'text' => '@section seen before @end copying',
    'type' => 'error'
  }
];


$result_floats{'section_in_copying'} = {};


1;
