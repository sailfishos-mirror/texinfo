use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'punctuation_and_code_style_commands_utf8'} = '*document_root C1
 *before_node_section C2
  *@documentencoding C1 l1
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{1}
  |input_encoding_name:{utf-8}
  |text_arg:{utf-8}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {utf-8}
  *paragraph C18
   *0 @command C1 l2
    *brace_container C1
     {aaa}
   {. }
   *1 @code C1 l2
    *brace_container C1
     *2 @~ C1 l2
      *following_arg C1
       {e}
   {. }
   *3 @samp C1 l2
    *brace_container C1
     *4 @aa C1 l2
      *brace_container
   {.\\n}
   *5 @command C1 l3
    *brace_container C1
     {AAA}
   {. }
   *6 @code C1 l3
    *brace_container C1
     *7 @~ C1 l3
      *following_arg C1
       {E}
   {. }
   *8 @samp C1 l3
    *brace_container C1
     *9 @AA C1 l3
      *brace_container
   {.\\n}
   *10 @command C1 l4
    *brace_container C1
     {double AAA}
   {.  }
   *11 @code C1 l4
    *brace_container C2
     {double }
     *12 @~ C1 l4
      *following_arg C1
       {E}
   {. }
   *13 @samp C1 l4
    *brace_container C2
     {double }
     *14 @AA C1 l4
      *brace_container
   {.  End.\\n}
';


$result_texis{'punctuation_and_code_style_commands_utf8'} = '@documentencoding utf-8
@command{aaa}. @code{@~e}. @samp{@aa{}}.
@command{AAA}. @code{@~E}. @samp{@AA{}}.
@command{double AAA}.  @code{double @~E}. @samp{double @AA{}}.  End.
';


$result_texts{'punctuation_and_code_style_commands_utf8'} = 'aaa. e~. aa.
AAA. E~. AA.
double AAA.  double E~. double AA.  End.
';

$result_errors{'punctuation_and_code_style_commands_utf8'} = [];


$result_floats{'punctuation_and_code_style_commands_utf8'} = {};



$result_converted{'plaintext'}->{'punctuation_and_code_style_commands_utf8'} = '‘aaa’.  ‘ẽ’.  ‘å’.  ‘AAA’.  ‘Ẽ’.  ‘Å’.  ‘double AAA’.  ‘double Ẽ’.
‘double Å’.  End.
';

1;
