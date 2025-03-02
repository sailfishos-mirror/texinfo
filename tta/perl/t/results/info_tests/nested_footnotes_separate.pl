use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'nested_footnotes_separate'} = '*document_root C2
 *before_node_section C1
  *@footnotestyle C1 l1
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |misc_args:A{separate}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {separate}
 *0 @node C3 l2 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
  {empty_line:\\n}
  *paragraph C3
   {F}
   *1 @footnote C1 l4
   |EXTRA
   |global_command_number:{2}
    *brace_command_context C3
     *paragraph C1
      {F1\\n}
     {empty_line:\\n}
     *paragraph C3
      {V}
      *2 @footnote C1 l6
      |EXTRA
      |global_command_number:{1}
       *brace_command_context C1
        *paragraph C1
         {F2}
      {\\n}
   {\\n}
';


$result_texis{'nested_footnotes_separate'} = '@footnotestyle separate
@node Top

F@footnote{F1

V@footnote{F2}
}
';


$result_texts{'nested_footnotes_separate'} = '
F
';

$result_errors{'nested_footnotes_separate'} = [
  {
    'error_line' => 'warning: @footnote should not appear anywhere inside @footnote
',
    'line_nr' => 6,
    'text' => '@footnote should not appear anywhere inside @footnote',
    'type' => 'warning'
  }
];


$result_floats{'nested_footnotes_separate'} = {};



$result_converted{'info'}->{'nested_footnotes_separate'} = 'This is , produced from .


File: ,  Node: Top,  Up: (dir)

F(1) (*note Top-Footnote-1::)


File: ,  Node: Top-Footnotes,  Up: Top

   (1) F1

   V(2) (*note Top-Footnotes-Footnote-2::)

   (2) F2


Tag Table:
Node: Top27
Node: Top-Footnotes92
Ref: Top-Footnote-1134
Ref: Top-Footnote-2189

End Tag Table


Local Variables:
coding: utf-8
End:
';

1;
