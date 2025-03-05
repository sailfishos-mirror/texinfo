use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'print_merged_index'} = '*document_root C3
 *before_node_section C1
  *@syncodeindex C1 l1
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |misc_args:A{fn|cp}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {fn cp}
 *0 @node C1 l2 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |node_directions:D[next->E1]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @node C2 l3 {chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |isindex:{1}
 |node_directions:D[prev->E0]
 |normalized:{chap}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap}
  *@printindex C1 l4
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{1}
  |misc_args:A{fn}
   *line_arg C1
    {fn}
';


$result_texis{'print_merged_index'} = '@syncodeindex fn cp
@node Top
@node chap
@printindex fn';


$result_texts{'print_merged_index'} = '';

$result_errors{'print_merged_index'} = [
  {
    'error_line' => 'warning: printing an index `fn\' merged in another one, `cp\'
',
    'line_nr' => 4,
    'text' => 'printing an index `fn\' merged in another one, `cp\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: node `chap\' not in menu
',
    'line_nr' => 3,
    'text' => 'node `chap\' not in menu',
    'type' => 'warning'
  }
];


$result_indices{'print_merged_index'} = 'cp
fn C ->cp
ky C
pg C
tp C
vr C
';

1;
