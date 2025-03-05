use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'vbar_in_index'} = '*document_root C1
 *before_node_section C3
  *preamble_before_content
  *0 index_entry_command@findex C1 l1
  |INFO
  |command_name:{findex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |index_entry:I{fn,1}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {A|B}
  *1 index_entry_command@cindex C1 l2
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
    {C|D}
';


$result_texis{'vbar_in_index'} = '@findex A|B
@cindex C|D
';


$result_texts{'vbar_in_index'} = '';

$result_errors{'vbar_in_index'} = [
  {
    'error_line' => 'warning: entry for index `fn\' outside of any node
',
    'line_nr' => 1,
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `cp\' outside of any node
',
    'line_nr' => 2,
    'text' => 'entry for index `cp\' outside of any node',
    'type' => 'warning'
  }
];


$result_indices_sort_strings{'vbar_in_index'} = 'cp:
 C|D
fn:
 A|B
';


$result_converted{'latex_text'}->{'vbar_in_index'} = '\\begin{document}
\\index[fn]{AB@\\texttt{A"|B}}%
\\index[cp]{CD@C"|D}%
';

1;
