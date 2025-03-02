use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'verbatim_in_smallformat'} = '*document_root C1
 *before_node_section C2
  *preamble_before_content
  *0 @smallformat C3 l1
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *1 @verbatim C3 l2
    *arguments_line C1
     *block_line_arg
     |INFO
     |spaces_after_argument:
      |{\\n}
    {raw:... still verbatim, but in a smaller font ...\\n}
    *@end C1 l4
    |INFO
    |spaces_before_argument:
     |{ }
    |EXTRA
    |text_arg:{verbatim}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {verbatim}
   *@end C1 l5
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{smallformat}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {smallformat}
';


$result_texis{'verbatim_in_smallformat'} = '@smallformat
@verbatim
... still verbatim, but in a smaller font ...
@end verbatim
@end smallformat
';


$result_texts{'verbatim_in_smallformat'} = '... still verbatim, but in a smaller font ...
';

$result_errors{'verbatim_in_smallformat'} = [];


$result_floats{'verbatim_in_smallformat'} = {};



$result_converted{'latex_text'}->{'verbatim_in_smallformat'} = '\\begin{document}
\\begin{verbatim}
... still verbatim, but in a smaller font ...
\\end{verbatim}
';

1;
