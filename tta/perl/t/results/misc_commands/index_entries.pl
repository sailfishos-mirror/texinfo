use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'index_entries'} = '*document_root C1
 *before_node_section C5
  *0 index_entry_command@cindex C1 l1
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |index_entry:I{cp,1}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {cindex entry}
  {empty_line:\\n}
  *@defindex C1 l3
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |misc_args:A{truc}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {truc}
  {empty_line:\\n}
  *1 index_entry_command@trucindex C1 l5
  |INFO
  |command_name:{trucindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |index_entry:I{truc,1}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {index truc}
';


$result_texis{'index_entries'} = '@cindex cindex entry

@defindex truc

@trucindex index truc
';


$result_texts{'index_entries'} = '

';

$result_errors{'index_entries'} = [
  {
    'error_line' => 'warning: entry for index `cp\' outside of any node
',
    'line_nr' => 1,
    'text' => 'entry for index `cp\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `truc\' outside of any node
',
    'line_nr' => 5,
    'text' => 'entry for index `truc\' outside of any node',
    'type' => 'warning'
  }
];


$result_indices{'index_entries'} = 'cp
fn C
ky C
pg C
tp C
truc
vr C
';

$result_indices_sort_strings{'index_entries'} = {
  'cp' => [
    'cindex entry'
  ],
  'truc' => [
    'index truc'
  ]
};


1;
