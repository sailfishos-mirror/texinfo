use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

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


$result_indices{'simple'} = {
  'index_names' => {
    'cp' => {
      'in_code' => 0,
      'name' => 'cp'
    },
    'fn' => {
      'in_code' => 1,
      'name' => 'fn'
    },
    'idx' => {
      'in_code' => 0,
      'name' => 'idx'
    },
    'ky' => {
      'in_code' => 1,
      'name' => 'ky'
    },
    'pg' => {
      'in_code' => 1,
      'name' => 'pg'
    },
    'tp' => {
      'in_code' => 1,
      'name' => 'tp'
    },
    'vr' => {
      'in_code' => 1,
      'name' => 'vr'
    }
  }
};


1;
