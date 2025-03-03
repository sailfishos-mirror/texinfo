use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'space_before_end'} = '*document_root C1
 *before_node_section C5
  *0 @tex C3 l1
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *rawpreformatted C2
    {in tex\\n}
    {    }
   *@end C1 l3
   |INFO
   |spaces_before_argument:
    |{  }
   |EXTRA
   |text_arg:{tex}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {tex}
  {empty_line:\\n}
  *1 @verbatim C4 l5
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   {raw:in verbatim\\n}
   {raw:    }
   *@end C1 l7
   |INFO
   |spaces_before_argument:
    |{  }
   |EXTRA
   |text_arg:{verbatim}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {verbatim}
  {empty_line:\\n}
  *2 @html C4 l9
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *elided_rawpreformatted C1
    {raw:in html\\n}
   {   }
   *@end C1 l11
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{html}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {html}
';


$result_texis{'space_before_end'} = '@tex
in tex
    @end  tex

@verbatim
in verbatim
    @end  verbatim

@html
in html
   @end html
';


$result_texts{'space_before_end'} = 'in tex
    
in verbatim
    
';

$result_errors{'space_before_end'} = [
  {
    'error_line' => 'warning: @end verbatim should only appear at the beginning of a line
',
    'line_nr' => 7,
    'text' => '@end verbatim should only appear at the beginning of a line',
    'type' => 'warning'
  }
];



$result_converted{'plaintext'}->{'space_before_end'} = 'in verbatim
    

';


$result_converted{'xml'}->{'space_before_end'} = '<tex endspaces="  ">
in tex
    </tex>

<verbatim xml:space="preserve" endspaces="  ">
in verbatim
    </verbatim>

<html endspaces=" ">
in html
   </html>
';

1;
