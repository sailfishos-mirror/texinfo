use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'punctuation_and_upper_case_commands'} = '*document_root C1
 *before_node_section C4
  {empty_line:\\n}
  *paragraph C18
   *0 @var C1 l2
    *brace_container C1
     {aaa}
   {. }
   *1 @var C1 l2
    *brace_container C1
     *2 @~ C1 l2
      *following_arg C1
       {e}
   {. }
   *3 @var C1 l2
    *brace_container C1
     *4 @aa C1 l2
      *brace_container
   {.\\n}
   *5 @var C1 l3
    *brace_container C1
     {AAA}
   {. }
   *6 @var C1 l3
    *brace_container C1
     *7 @~ C1 l3
      *following_arg C1
       {E}
   {. }
   *8 @var C1 l3
    *brace_container C1
     *9 @AA C1 l3
      *brace_container
   {.\\n}
   *10 @var C1 l4
    *brace_container C1
     {double AAA}
   {.  }
   *11 @var C1 l4
    *brace_container C2
     {double }
     *12 @~ C1 l4
      *following_arg C1
       {E}
   {. }
   *13 @var C1 l4
    *brace_container C2
     {double }
     *14 @AA C1 l4
      *brace_container
   {.  End.\\n}
  {empty_line:\\n}
  *paragraph C18
   *15 @sc C1 l6
    *brace_container C1
     {aaa}
   {. }
   *16 @sc C1 l6
    *brace_container C1
     *17 @~ C1 l6
      *following_arg C1
       {e}
   {. }
   *18 @sc C1 l6
    *brace_container C1
     *19 @aa C1 l6
      *brace_container
   {.\\n}
   *20 @sc C1 l7
    *brace_container C1
     {AAA}
   {. }
   *21 @sc C1 l7
    *brace_container C1
     *22 @~ C1 l7
      *following_arg C1
       {E}
   {. }
   *23 @sc C1 l7
    *brace_container C1
     *24 @AA C1 l7
      *brace_container
   {.\\n}
   *25 @sc C1 l8
    *brace_container C1
     {double AAA}
   {.  }
   *26 @sc C1 l8
    *brace_container C2
     {double }
     *27 @~ C1 l8
      *following_arg C1
       {E}
   {. }
   *28 @sc C1 l8
    *brace_container C2
     {double }
     *29 @AA C1 l8
      *brace_container
   {.  End.\\n}
';


$result_texis{'punctuation_and_upper_case_commands'} = '
@var{aaa}. @var{@~e}. @var{@aa{}}.
@var{AAA}. @var{@~E}. @var{@AA{}}.
@var{double AAA}.  @var{double @~E}. @var{double @AA{}}.  End.

@sc{aaa}. @sc{@~e}. @sc{@aa{}}.
@sc{AAA}. @sc{@~E}. @sc{@AA{}}.
@sc{double AAA}.  @sc{double @~E}. @sc{double @AA{}}.  End.
';


$result_texts{'punctuation_and_upper_case_commands'} = '
aaa. e~. aa.
AAA. E~. AA.
double AAA.  double E~. double AA.  End.

AAA. E~. AA.
AAA. E~. AA.
DOUBLE AAA.  DOUBLE E~. DOUBLE AA.  End.
';

$result_errors{'punctuation_and_upper_case_commands'} = [];



$result_converted{'plaintext'}->{'punctuation_and_upper_case_commands'} = 'AAA.  Ẽ.  Å.  AAA.  Ẽ.  Å.  DOUBLE AAA.  DOUBLE Ẽ.  DOUBLE Å.  End.

   AAA.  Ẽ.  Å.  AAA. Ẽ. Å. DOUBLE AAA. DOUBLE Ẽ. DOUBLE Å. End.
';

1;
