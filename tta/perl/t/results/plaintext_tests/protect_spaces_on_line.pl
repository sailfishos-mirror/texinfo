use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'protect_spaces_on_line'} = '*document_root C1
 *before_node_section C4
  {empty_line:\\n}
  *paragraph C5
   {Before samp. }
   *0 @samp C1 l2
    *brace_container C1
     {a}
   {. after samp, w }
   *1 @w C1 l2
    *brace_container C1
     {in   w. after dot}
   {  afterw\\n}
  {empty_line:\\n}
  *2 @quotation C3 l4
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *@exdent C1 l5
   |INFO
   |spaces_before_argument:
    |{ }
    *line_arg C5
    |INFO
    |spaces_after_argument:
     |{\\n}
     {before samp. }
     *3 @samp C1 l5
      *brace_container C1
       {a}
     {. after samp, w }
     *4 @w C1 l5
      *brace_container C1
       {in   w. after dot}
     {  afterw}
   *@end C1 l6
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{quotation}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {quotation}
';


$result_texis{'protect_spaces_on_line'} = '
Before samp. @samp{a}. after samp, w @w{in   w. after dot}  afterw

@quotation
@exdent before samp. @samp{a}. after samp, w @w{in   w. after dot}  afterw
@end quotation
';


$result_texts{'protect_spaces_on_line'} = '
Before samp. a. after samp, w in   w. after dot  afterw

before samp. a. after samp, w in   w. after dot  afterw
';

$result_errors{'protect_spaces_on_line'} = [];



$result_converted{'plaintext'}->{'protect_spaces_on_line'} = 'Before samp.  ‘a’.  after samp, w in w.  after dot afterw

before samp.  ‘a’.  after samp, w in w.  after dot afterw
';

1;
