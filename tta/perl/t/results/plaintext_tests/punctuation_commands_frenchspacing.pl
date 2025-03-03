use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'punctuation_commands_frenchspacing'} = '*document_root C1
 *before_node_section C15
  *@frenchspacing C1 l1
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{1}
  |misc_args:A{on}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {on}
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
   *0 @enddots C1 l5
    *brace_container
   { Enddots}
   *1 @enddots C1 l5
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
   *2 @enddots C1 l10
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
   *3 @enddots C1 l17
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


$result_texis{'punctuation_commands_frenchspacing'} = '@frenchspacing on

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


$result_texts{'punctuation_commands_frenchspacing'} = '
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

$result_errors{'punctuation_commands_frenchspacing'} = [];



$result_converted{'plaintext'}->{'punctuation_commands_frenchspacing'} = 'Dot. Exclam! Question? Dot. Exclam! Question? GAAA.

   Enddots... Enddots... GBBB.

   End of lines Dot. Exclam! Question? Enddots... End.

   End of lines and spaces Dot. Exclam! Question? Enddots... End.

   With paren.) paren.) Symb.)"\'] Symb.)"\'] End.

   End of lines paren.) Symb.)"\'] End.

   End of lines and spaces paren.) Symb.)"\'] End.
';

1;
