use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'filenameconflictwithnonsplit'} = '*document_root C3
 *before_node_section C1
  *preamble_before_content
 *0 @node C1 l1
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |is_target:{1}
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @top C5 l2
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E0]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1]
  ||section_level:{-1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top}
  {empty_line:\\n}
  *2 @anchor C1 l4
  |EXTRA
  |is_target:{1}
  |normalized:{filenameconflictwithnonsplit}
   *brace_arg C1
    {filenameconflictwithnonsplit}
  {spaces_after_close_brace:\\n}
  {empty_line:\\n}
';


$result_texis{'filenameconflictwithnonsplit'} = '@node Top
@top top

@anchor{filenameconflictwithnonsplit}

';


$result_texts{'filenameconflictwithnonsplit'} = 'top
***


';

$result_sectioning{'filenameconflictwithnonsplit'} = {
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
$result_sectioning{'filenameconflictwithnonsplit'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'filenameconflictwithnonsplit'};

$result_nodes{'filenameconflictwithnonsplit'} = [
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

$result_menus{'filenameconflictwithnonsplit'} = [
  {
    'extra' => {
      'normalized' => 'Top'
    }
  }
];

$result_errors{'filenameconflictwithnonsplit'} = [];


$result_floats{'filenameconflictwithnonsplit'} = {};


1;
