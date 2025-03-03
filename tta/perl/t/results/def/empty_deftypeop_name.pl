use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'empty_deftypeop_name'} = '*document_root C1
 *before_node_section C1
  *0 @deftypeop C2 l1
  |INFO
  |spaces_before_argument:
   |{ }
   *def_line C1 l1
   |EXTRA
   |def_command:{deftypeop}
   |original_def_cmdname:{deftypeop}
    *block_line_arg C5
    |INFO
    |spaces_after_argument:
     |{\\n}
     *def_category C1
      *def_line_arg C2
       {Command}
       *1 @code C1 l1
        *brace_container C1
         {com}
     {spaces: }
     *def_class C1
      *bracketed_arg C2 l1
       {Window}
       *2 @code C1 l1
        *brace_container C1
         {int}
     {spaces: }
     *def_type C1
      *def_line_arg C2
       {expose}
       *3 @var C1 l1
        *brace_container C1
         {exp}
   *@end C1 l2
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{deftypeop}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {deftypeop}
';


$result_texis{'empty_deftypeop_name'} = '@deftypeop Command@code{com} {Window@code{int}} expose@var{exp}
@end deftypeop
';


$result_texts{'empty_deftypeop_name'} = 'Commandcom on Windowint: exposeexp 
';

$result_errors{'empty_deftypeop_name'} = [
  {
    'error_line' => 'warning: missing name for @deftypeop
',
    'line_nr' => 1,
    'text' => 'missing name for @deftypeop',
    'type' => 'warning'
  }
];


1;
