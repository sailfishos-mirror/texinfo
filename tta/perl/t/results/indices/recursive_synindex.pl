use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'recursive_synindex'} = '*document_root C1
 *before_node_section C4
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
  *@defindex C1 l2
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |misc_args:A{bbb}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {bbb}
  *@synindex C1 l3
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |misc_args:A{aaa|bbb}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {aaa bbb}
  *@synindex C1 l4
  |INFO
  |spaces_before_argument:
   |{ }
   *line_arg C1
    {bbb aaa}
';


$result_texis{'recursive_synindex'} = '@defindex aaa
@defindex bbb
@synindex aaa bbb
@synindex bbb aaa';


$result_texts{'recursive_synindex'} = '';

$result_errors{'recursive_synindex'} = [
  {
    'error_line' => 'warning: @synindex leads to a merging of bbb in itself, ignoring
',
    'line_nr' => 4,
    'text' => '@synindex leads to a merging of bbb in itself, ignoring',
    'type' => 'warning'
  }
];


$result_indices{'recursive_synindex'} = {
  'index_names' => {
    'aaa' => {
      'in_code' => 0,
      'merged_in' => 'bbb',
      'name' => 'aaa'
    },
    'bbb' => {
      'in_code' => 0,
      'name' => 'bbb'
    },
    'cp' => {
      'in_code' => 0,
      'name' => 'cp'
    },
    'fn' => {
      'in_code' => 1,
      'name' => 'fn'
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
