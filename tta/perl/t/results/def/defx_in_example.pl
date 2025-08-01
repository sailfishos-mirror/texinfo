use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_sectioning_root %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'defx_in_example'} = '*document_root C1
 *before_node_section C1
  *@example C3 l1
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
   *@deffn C3 l2
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
    *def_line C1 l2
    |EXTRA
    |def_command:{deffn}
    |def_index_element:
     |* C1
      |*def_line_arg C1
       |*@var C1
        |*brace_container C1
         |{i}
    |index_entry:I{fn,1}
    |original_def_cmdname:{deffn}
     *block_line_arg C7
     |INFO
     |spaces_after_argument:
      |{spaces_after_argument:\\n}
      *def_category C1
       *def_line_arg C1
        {fset}
      {spaces: }
      *def_name C1
       *def_line_arg C1
        *@var C1 l2
         *brace_container C1
          {i}
      {spaces: }
      *def_arg C1
       *def_line_arg C1
        {a}
      {spaces: }
      *def_arg C1
       *def_line_arg C1
        {g}
    *@deffnx C1 l3
    |INFO
    |spaces_before_argument:
     |{spaces_before_argument: }
    |EXTRA
    |def_command:{deffn}
    |def_index_element:
     |* C1
      |*def_line_arg C1
       |{bidulr}
    |index_entry:I{fn,2}
    |original_def_cmdname:{deffnx}
     *line_arg C5
     |INFO
     |spaces_after_argument:
      |{spaces_after_argument:\\n}
      *def_category C1
       *bracketed_arg C1 l3
        {truc}
      {spaces: }
      *def_name C1
       *def_line_arg C1
        {bidulr}
      {spaces: }
      *def_arg C1
       *def_line_arg C1
        {machin...}
    *@end C1 l4
    |INFO
    |spaces_before_argument:
     |{spaces_before_argument: }
    |EXTRA
    |text_arg:{deffn}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{spaces_after_argument:\\n}
      {deffn}
   *@end C1 l5
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
   |EXTRA
   |text_arg:{example}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {example}
';


$result_texis{'defx_in_example'} = '@example
@deffn fset @var{i} a g
@deffnx {truc} bidulr machin...
@end deffn
@end example
';


$result_texts{'defx_in_example'} = 'fset: i a g
truc: bidulr machin...
';

$result_errors{'defx_in_example'} = [
  {
    'error_line' => 'warning: entry for index `fn\' outside of any node
',
    'line_nr' => 2,
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `fn\' outside of any node
',
    'line_nr' => 3,
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  }
];


$result_nodes_list{'defx_in_example'} = '';

$result_sections_list{'defx_in_example'} = '';

$result_sectioning_root{'defx_in_example'} = '';

$result_headings_list{'defx_in_example'} = '';

$result_indices_sort_strings{'defx_in_example'} = 'fn:
 bidulr
 i
';


$result_converted{'plaintext'}->{'defx_in_example'} = '      -- fset: I a g
      -- truc: bidulr machin...
';

1;
