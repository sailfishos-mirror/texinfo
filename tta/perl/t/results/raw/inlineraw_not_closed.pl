use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'inlineraw_not_closed'} = '*document_root C2
 *before_node_section C1
  *paragraph C1
   *0 @inlineraw C2 l1
   |EXTRA
   |expand_index:{1}
   |format:{html}
    *brace_arg C1
     {html}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {aa\\n}
 *1 @section C1 l2 {sec}
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
    {sec}
';


$result_texis{'inlineraw_not_closed'} = '@inlineraw{html, aa
}@section sec
';


$result_texts{'inlineraw_not_closed'} = 'aa
1 sec
=====
';

$result_sectioning{'inlineraw_not_closed'} = {
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
$result_sectioning{'inlineraw_not_closed'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'inlineraw_not_closed'};

$result_errors{'inlineraw_not_closed'} = [
  {
    'error_line' => '@section seen before @inlineraw closing brace
',
    'line_nr' => 1,
    'text' => '@section seen before @inlineraw closing brace',
    'type' => 'error'
  }
];


$result_floats{'inlineraw_not_closed'} = {};


1;
