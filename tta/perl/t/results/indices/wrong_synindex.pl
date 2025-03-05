use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'wrong_synindex'} = '*document_root C1
 *before_node_section C2
  *@defindex C1 l1
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |misc_args:A{aaa}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {aaa}
  *@synindex C1 l2
  |INFO
  |spaces_before_argument:
   |{ }
   *line_arg C1
    {aaa aaa}
';


$result_texis{'wrong_synindex'} = '@defindex aaa
@synindex aaa aaa';


$result_texts{'wrong_synindex'} = '';

$result_errors{'wrong_synindex'} = [
  {
    'error_line' => 'warning: @synindex leads to a merging of aaa in itself, ignoring
',
    'line_nr' => 2,
    'text' => '@synindex leads to a merging of aaa in itself, ignoring',
    'type' => 'warning'
  }
];


$result_indices{'wrong_synindex'} = 'aaa
cp
fn C
ky C
pg C
tp C
vr C
';

1;
