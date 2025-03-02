use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'expanded_tex'} = '*document_root C1
 *before_node_section C1
  *paragraph C3
   {aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\\n}
   *0 @tex C3 l2
    *arguments_line C1
     *block_line_arg
     |INFO
     |spaces_after_argument:
      |{\\n}
    *rawpreformatted C3
     {TTT\\n}
     {GGG\\n}
     {HHH\\n}
    *@end C1 l6
    |INFO
    |spaces_before_argument:
     |{ }
    |EXTRA
    |text_arg:{tex}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {tex}
   {bbbbbbbbb1 bbbbbbbbbbb2 bbbbbbbbbb3 bbbbbbbbbbbbbb4.\\n}
';


$result_texis{'expanded_tex'} = 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
@tex
TTT
GGG
HHH
@end tex
bbbbbbbbb1 bbbbbbbbbbb2 bbbbbbbbbb3 bbbbbbbbbbbbbb4.
';


$result_texts{'expanded_tex'} = 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
TTT
GGG
HHH
bbbbbbbbb1 bbbbbbbbbbb2 bbbbbbbbbb3 bbbbbbbbbbbbbb4.
';

$result_errors{'expanded_tex'} = [];


$result_floats{'expanded_tex'} = {};



$result_converted{'plaintext'}->{'expanded_tex'} = 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa TTT
GGG
HHH
bbbbbbbbb1 bbbbbbbbbbb2 bbbbbbbbbb3
bbbbbbbbbbbbbb4.
';

1;
