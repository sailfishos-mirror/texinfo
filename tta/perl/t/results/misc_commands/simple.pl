use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'simple'} = '*document_root C1
 *before_node_section C1
  *@defindex C1 l1
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |misc_args:A{idx}
   *line_arg C1
    {idx}
';


$result_texis{'simple'} = '@defindex idx';


$result_texts{'simple'} = '';

$result_errors{'simple'} = [];


$result_indices{'simple'} = 'cp
fn C
idx
ky C
pg C
tp C
vr C
';

1;
