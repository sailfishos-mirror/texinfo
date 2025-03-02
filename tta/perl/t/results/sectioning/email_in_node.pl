use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'email_in_node'} = '*document_root C2
 *before_node_section
 *0 @node C1 l1
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |normalized:{a-c-}
  *arguments_line C1
   *line_arg C5
   |INFO
   |spaces_after_argument:
    |{\\n}
    *1 @email C1 l1
     *brace_arg C1
     |INFO
     |spaces_after_argument:
      |{ }
     |spaces_before_argument:
      |{ }
      {a}
    { }
    *2 @email C2 l1
     *brace_arg C1
     |INFO
     |spaces_after_argument:
      |{ }
      {c}
     *brace_arg C1
     |INFO
     |spaces_before_argument:
      |{ }
      {d}
    { }
    *3 @email C2 l1
     *brace_arg
     |INFO
     |spaces_before_argument:
      |{ }
     *brace_arg C1
     |INFO
     |spaces_before_argument:
      |{ }
      {e}
';


$result_texis{'email_in_node'} = '@node @email{ a } @email{c , d} @email{ , e}
';


$result_texts{'email_in_node'} = '';

$result_nodes{'email_in_node'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'normalized' => 'a-c-'
    }
  }
];

$result_menus{'email_in_node'} = [
  {
    'extra' => {
      'normalized' => 'a-c-'
    }
  }
];

$result_errors{'email_in_node'} = [];


$result_floats{'email_in_node'} = {};


1;
