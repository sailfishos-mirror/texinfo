use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'punctuation'} = '*document_root C1
 *before_node_section C12
  {empty_line:\\n}
  *paragraph C1
   {Dot. Exclam! Question? Dot.  Exclam!  Question?  GAAA.\\n}
  {empty_line:\\n}
  *paragraph C4
   {End of lines Dot.\\n}
   {Exclam!\\n}
   {Question?\\n}
   {End.\\n}
  {empty_line:\\n}
  *paragraph C5
   {End of lines and spaces\\n}
   {Dot.\\n}
   {Exclam!\\n}
   {Question?\\n}
   {End.\\n}
  {empty_line:\\n}
  *paragraph C1
   {With paren.) paren.)  Symb.)"\'] Symb.)"\']  End.\\n}
  {empty_line:\\n}
  *paragraph C3
   {End of lines paren.)\\n}
   {Symb.)"\']\\n}
   {End.\\n}
  {empty_line:\\n}
  *paragraph C3
   {End of lines and spaces paren.)\\n}
   {Symb.)"\']\\n}
   {End.\\n}
';


$result_texis{'punctuation'} = '
Dot. Exclam! Question? Dot.  Exclam!  Question?  GAAA.

End of lines Dot.
Exclam!
Question?
End.

End of lines and spaces
Dot.
Exclam!
Question?
End.

With paren.) paren.)  Symb.)"\'] Symb.)"\']  End.

End of lines paren.)
Symb.)"\']
End.

End of lines and spaces paren.)
Symb.)"\']
End.
';


$result_texts{'punctuation'} = '
Dot. Exclam! Question? Dot.  Exclam!  Question?  GAAA.

End of lines Dot.
Exclam!
Question?
End.

End of lines and spaces
Dot.
Exclam!
Question?
End.

With paren.) paren.)  Symb.)"\'] Symb.)"\']  End.

End of lines paren.)
Symb.)"\']
End.

End of lines and spaces paren.)
Symb.)"\']
End.
';

$result_errors{'punctuation'} = [];



$result_converted{'plaintext'}->{'punctuation'} = 'Dot.  Exclam!  Question?  Dot.  Exclam!  Question?  GAAA.

   End of lines Dot.  Exclam!  Question?  End.

   End of lines and spaces Dot.  Exclam!  Question?  End.

   With paren.)  paren.)  Symb.)"\']  Symb.)"\']  End.

   End of lines paren.)  Symb.)"\']  End.

   End of lines and spaces paren.)  Symb.)"\']  End.
';

1;
