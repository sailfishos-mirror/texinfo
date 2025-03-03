use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'characters_and_commands_in_var'} = '*document_root C1
 *before_node_section C7
  *paragraph C8
   *0 @var C1 l1
    *brace_container C1
     {aaa}
   {. }
   *1 @var C1 l1
    *brace_container C1
     {dlksfjf ) }
   {. }
   *2 @var C1 l1
    *brace_container C1
     {(fdfdsfsd}
   {. }
   *3 @var C1 l1
    *brace_container C1
     {sqdq,qdsdsq}
   {.\\n}
  {empty_line:\\n}
  *paragraph C2
   *4 @var C1 l3
    *brace_container C3
     {somethingf  }
     *@c C1
      {rawline_arg: ]\\n}
     {vvar}
   {.\\n}
  {empty_line:\\n}
  *paragraph C2
   *5 @var C1 l6
    *brace_container C8
     {AA}
     *6 @, C1 l6
      *following_arg C1
       {c}
     { }
     *7 @u C1 l6
      *brace_container C1
       {r}
     { }
     *8 @` C1 l6
      *following_arg C1
       {e}
     { }
     *9 @aa C1 l6
      *brace_container
   {.\\n}
  {empty_line:\\n}
  *paragraph C3
   {AAA}
   *10 @footnote C1 l8
   |EXTRA
   |global_command_number:{1}
    *brace_command_context C1
     *paragraph C6
      {jdhfmqsdf\\n}
      {dsf\\n}
      {ds }
      *11 @var C1 l10
       *brace_container C1
        {rrrr , azeeaz}
      {\\n}
      {end footnote}
   {\\n}
';


$result_texis{'characters_and_commands_in_var'} = '@var{aaa}. @var{dlksfjf ) }. @var{(fdfdsfsd}. @var{sqdq,qdsdsq}.

@var{somethingf  @c ]
vvar}.

@var{AA@,c @u{r} @`e @aa{}}.

AAA@footnote{jdhfmqsdf
dsf
ds @var{rrrr , azeeaz}
end footnote}
';


$result_texts{'characters_and_commands_in_var'} = 'aaa. dlksfjf ) . (fdfdsfsd. sqdq,qdsdsq.

somethingf  vvar.

AAc, r( e` aa.

AAA
';

$result_errors{'characters_and_commands_in_var'} = [];



$result_converted{'plaintext'}->{'characters_and_commands_in_var'} = 'AAA.  DLKSFJF ) .  (FDFDSFSD.  SQDQ,QDSDSQ.

   SOMETHINGF VVAR.

   AAÇ R̆ È Å.

   AAA(1)

   ---------- Footnotes ----------

   (1) jdhfmqsdf dsf ds RRRR , AZEEAZ end footnote

';

1;
