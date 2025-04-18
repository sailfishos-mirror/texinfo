use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'inlineraw_not_closed'} = '*document_root C2
 *before_node_section C1
  *paragraph C1
   *@inlineraw C2 l1
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
 *0 @section C1 l2 {sec}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_level:{2}
 |section_number:{1}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E0]
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

$result_errors{'inlineraw_not_closed'} = [
  {
    'error_line' => '@section seen before @inlineraw closing brace
',
    'line_nr' => 1,
    'text' => '@section seen before @inlineraw closing brace',
    'type' => 'error'
  }
];


1;
