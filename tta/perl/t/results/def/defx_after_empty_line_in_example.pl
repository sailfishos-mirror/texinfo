use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'defx_after_empty_line_in_example'} = '*document_root C1
 *before_node_section C1
  *0 @example C3 l1
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *1 @deffn C4 l2
   |INFO
   |spaces_before_argument:
    |{ }
    *def_line C1 l2
    |EXTRA
    |def_command:{deffn}
    |def_index_element:
     |*def_name C1
      |*def_line_arg C1
       |*3 @var C1
        |*brace_container C1
         |{i}
    |index_entry:I{fn,1}
    |original_def_cmdname:{deffn}
     *block_line_arg C7
     |INFO
     |spaces_after_argument:
      |{\\n}
      *def_category C1
       *def_line_arg C1
        {fset}
      {spaces: }
      *def_name C1
       *def_line_arg C1
        *2 @var C1 l2
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
    *inter_def_item C1
     *preformatted C4
      {empty_line:\\n}
      *@c C1
       {rawline_arg: c\\n}
      *@comment C1
       {rawline_arg: comment\\n}
      {empty_line:\\n}
    *@deffnx C1 l7
    |INFO
    |spaces_before_argument:
     |{ }
    |EXTRA
    |def_command:{deffn}
    |def_index_element:
     |*def_name C1
      |*def_line_arg C1
       |{bidulr}
    |index_entry:I{fn,2}
    |original_def_cmdname:{deffnx}
     *line_arg C5
     |INFO
     |spaces_after_argument:
      |{\\n}
      *def_category C1
       *bracketed_arg C1 l7
        {truc}
      {spaces: }
      *def_name C1
       *def_line_arg C1
        {bidulr}
      {spaces: }
      *def_arg C1
       *def_line_arg C1
        {machin...}
    *@end C1 l8
    |INFO
    |spaces_before_argument:
     |{ }
    |EXTRA
    |text_arg:{deffn}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {deffn}
   *@end C1 l9
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{example}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {example}
';


$result_texis{'defx_after_empty_line_in_example'} = '@example
@deffn fset @var{i} a g

@c c
@comment comment

@deffnx {truc} bidulr machin...
@end deffn
@end example
';


$result_texts{'defx_after_empty_line_in_example'} = 'fset: i a g


truc: bidulr machin...
';

$result_errors{'defx_after_empty_line_in_example'} = [
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
    'line_nr' => 7,
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  }
];


$result_indices_sort_strings{'defx_after_empty_line_in_example'} = 'fn:
 bidulr
 i
';


$result_converted{'plaintext'}->{'defx_after_empty_line_in_example'} = '      -- fset: I a g


      -- truc: bidulr machin...
';

1;
