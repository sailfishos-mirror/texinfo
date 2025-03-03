use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'inhibit_punctuation'} = '*document_root C1
 *before_node_section C1
  *paragraph C23
   {foo vs.}
   *@:
   { bar.\\n}
   {colon :}
   *@:
   {And something else.\\n}
   {semi colon ;}
   *@:
   {.\\n}
   {And ? ?}
   *@:
   {. ?}
   *@:
   {\\n}
   {Now ! !}
   *@:
   *@@
   { !}
   *@:
   {\\n}
   {but , ,}
   *@:
   {\\n}
';


$result_texis{'inhibit_punctuation'} = 'foo vs.@: bar.
colon :@:And something else.
semi colon ;@:.
And ? ?@:. ?@:
Now ! !@:@@ !@:
but , ,@:
';


$result_texts{'inhibit_punctuation'} = 'foo vs. bar.
colon :And something else.
semi colon ;.
And ? ?. ?
Now ! !@ !
but , ,
';

$result_errors{'inhibit_punctuation'} = [];



$result_converted{'plaintext'}->{'inhibit_punctuation'} = 'foo vs. bar.  colon :And something else.  semi colon ;.  And ?  ?.  ?
Now !  !@ ! but , ,
';

1;
