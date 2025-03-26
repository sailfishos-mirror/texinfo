use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'punctuation_commands'} = '*document_root C1
 *before_node_section C14
  {empty_line:\\n}
  *paragraph C13
   {Dot}
   *@.
   { Exclam}
   *@!
   { Question}
   *@?
   { Dot}
   *@.
   {  Exclam}
   *@!
   {  Question}
   *@?
   {  GAAA.\\n}
  {empty_line:\\n}
  *paragraph C5
   {Enddots}
   *@enddots C1 l4
    *brace_container
   { Enddots}
   *@enddots C1 l4
    *brace_container
   {  GBBB.\\n}
  {empty_line:\\n}
  *paragraph C13
   {End of lines Dot}
   *@.
   {\\n}
   {Exclam}
   *@!
   {\\n}
   {Question}
   *@?
   {\\n}
   {Enddots}
   *@enddots C1 l9
    *brace_container
   {\\n}
   {End.\\n}
  {empty_line:\\n}
  *paragraph C14
   {End of lines and spaces\\n}
   {Dot}
   *@.
   {\\n}
   {Exclam}
   *@!
   {\\n}
   {Question}
   *@?
   {\\n}
   {Enddots}
   *@enddots C1 l16
    *brace_container
   {\\n}
   {End.\\n}
  {empty_line:\\n}
  *paragraph C9
   {With paren}
   *@.
   {) paren}
   *@.
   {)  Symb}
   *@.
   {)"\'] Symb}
   *@.
   {)"\']  End.\\n}
  {empty_line:\\n}
  *paragraph C7
   {End of lines paren}
   *@.
   {)\\n}
   {Symb}
   *@.
   {)"\']\\n}
   {End.\\n}
  {empty_line:\\n}
  *paragraph C7
   {End of lines and spaces paren}
   *@.
   {)\\n}
   {Symb}
   *@.
   {)"\']\\n}
   {End.\\n}
';


$result_texis{'punctuation_commands'} = '
Dot@. Exclam@! Question@? Dot@.  Exclam@!  Question@?  GAAA.

Enddots@enddots{} Enddots@enddots{}  GBBB.

End of lines Dot@.
Exclam@!
Question@?
Enddots@enddots{}
End.

End of lines and spaces
Dot@.
Exclam@!
Question@?
Enddots@enddots{}
End.

With paren@.) paren@.)  Symb@.)"\'] Symb@.)"\']  End.

End of lines paren@.)
Symb@.)"\']
End.

End of lines and spaces paren@.)
Symb@.)"\']
End.
';


$result_texts{'punctuation_commands'} = '
Dot. Exclam! Question? Dot.  Exclam!  Question?  GAAA.

Enddots... Enddots...  GBBB.

End of lines Dot.
Exclam!
Question?
Enddots...
End.

End of lines and spaces
Dot.
Exclam!
Question?
Enddots...
End.

With paren.) paren.)  Symb.)"\'] Symb.)"\']  End.

End of lines paren.)
Symb.)"\']
End.

End of lines and spaces paren.)
Symb.)"\']
End.
';

$result_errors{'punctuation_commands'} = [];



$result_converted{'plaintext'}->{'punctuation_commands'} = 'Dot.  Exclam!  Question?  Dot.  Exclam!  Question?  GAAA.

   Enddots...  Enddots...  GBBB.

   End of lines Dot.  Exclam!  Question?  Enddots...  End.

   End of lines and spaces Dot.  Exclam!  Question?  Enddots...  End.

   With paren.)  paren.)  Symb.)"\']  Symb.)"\']  End.

   End of lines paren.)  Symb.)"\']  End.

   End of lines and spaces paren.)  Symb.)"\']  End.
';

1;
