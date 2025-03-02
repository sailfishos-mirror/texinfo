use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'anchor_in_command'} = '*document_root C2
 *before_node_section
 *0 @node C3 l1 {Top}
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
  *paragraph C2
   *1 @strong C1 l3
    *brace_container C8
     {aaa }
     *2 @TeX C1 l3
      *brace_container
     { }
     *3 @emph C1 l3
      *brace_container C1
       {in emph}
     { after \\n}
     *@c C1
      {rawline_arg: emph @emph{emph2 @anchor{anchor in emph} }}.\\n}
     {emph }
     *4 @emph C1 l5
      *brace_container C2
       {emph2 }
       *5 @anchor C1 l5
       |EXTRA
       |is_target:{1}
       |normalized:{anchor-in-emph}
        *brace_arg C1
         {anchor in emph}
   {.\\n}
';


$result_texis{'anchor_in_command'} = '@node Top

@strong{aaa @TeX{} @emph{in emph} after 
@c emph @emph{emph2 @anchor{anchor in emph} }}.
emph @emph{emph2 @anchor{anchor in emph}}}.
';


$result_texts{'anchor_in_command'} = '
aaa TeX in emph after 
emph emph2 .
';

$result_nodes{'anchor_in_command'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'normalized' => 'Top'
    }
  }
];

$result_menus{'anchor_in_command'} = [
  {
    'extra' => {
      'normalized' => 'Top'
    }
  }
];

$result_errors{'anchor_in_command'} = [];


$result_floats{'anchor_in_command'} = {};



$result_converted{'info'}->{'anchor_in_command'} = 'This is , produced from .


File: ,  Node: Top,  Up: (dir)

*aaa TeX _in emph_ after emph _emph2 _*.


Tag Table:
Node: Top27
Ref: anchor in emph97

End Tag Table


Local Variables:
coding: utf-8
End:
';

1;
