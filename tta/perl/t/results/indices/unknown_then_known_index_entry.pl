use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'unknown_then_known_index_entry'} = '*document_root C1
 *before_node_section C2
  {spaces_before_paragraph: }
  *paragraph C3
   {someindex entry.\\n}
   *@defindex C1 l2
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |misc_args:A{some}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {some}
   *0 index_entry_command@someindex C1 l3
   |INFO
   |command_name:{someindex}
   |spaces_before_argument:
    |{ }
   |EXTRA
   |index_entry:I{some,1}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {someindex entry.}
';


$result_texis{'unknown_then_known_index_entry'} = ' someindex entry.
@defindex some
@someindex someindex entry.
';


$result_texts{'unknown_then_known_index_entry'} = 'someindex entry.
';

$result_errors{'unknown_then_known_index_entry'} = [
  {
    'error_line' => 'unknown command `someindex\'
',
    'line_nr' => 1,
    'text' => 'unknown command `someindex\'',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: entry for index `some\' outside of any node
',
    'line_nr' => 3,
    'text' => 'entry for index `some\' outside of any node',
    'type' => 'warning'
  }
];


$result_indices{'unknown_then_known_index_entry'} = 'cp
fn C
ky C
pg C
some
tp C
vr C
';

$result_indices_sort_strings{'unknown_then_known_index_entry'} = {
  'some' => [
    'someindex entry.'
  ]
};


1;
