use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'nested_code_commands'} = '*document_root C1
 *before_node_section C5
  *paragraph C16
   *0 @code C1 l1
    *brace_container C2
     {aA }
     *1 @kbd C1 l1
      *brace_container C1
       {fg}
   {.\\n}
   *2 @code C1 l2
    *brace_container C2
     {cc }
     *3 @code C1 l2
      *brace_container C1
       {gg}
   {.\\n}
   *4 @command C1 l3
    *brace_container C2
     {in command }
     *5 @kbd C1 l3
      *brace_container C1
       {fg}
   {\\n}
   *6 @code C1 l4
    *brace_container C2
     {in code }
     *7 @command C1 l4
      *brace_container C1
       {in command}
   {\\n}
   *8 @samp C1 l5
    *brace_container C2
     {in samp }
     *9 @code C1 l5
      *brace_container C1
       {in code}
   {\\n}
   *10 @code C1 l6
    *brace_container C2
     {in code }
     *11 @samp C1 l6
      *brace_container C1
       {in samp}
   {\\n}
   *12 @var C1 l7
    *brace_container C2
     {in var }
     *13 @code C1 l7
      *brace_container C1
       {in code}
   {\\n}
   *14 @code C1 l8
    *brace_container C2
     {in code }
     *15 @var C1 l8
      *brace_container C1
       {in var}
   {\\n}
  {empty_line:\\n}
  *16 @example C3 l10
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *preformatted C18
    *17 @code C1 l11
     *brace_container C1
      {in code}
    {\\n}
    *18 @code C1 l12
     *brace_container C2
      {aA }
      *19 @kbd C1 l12
       *brace_container C1
        {fg}
    {\\n}
    *20 @kbd C1 l13
     *brace_container C1
      {hh}
    {\\n}
    *21 @command C1 l14
     *brace_container C2
      {in command }
      *22 @kbd C1 l14
       *brace_container C1
        {fg}
    {\\n}
    *23 @code C1 l15
     *brace_container C2
      {in code }
      *24 @command C1 l15
       *brace_container C1
        {in command}
    {\\n}
    *25 @samp C1 l16
     *brace_container C2
      {in samp }
      *26 @code C1 l16
       *brace_container C1
        {in code}
    {\\n}
    *27 @code C1 l17
     *brace_container C2
      {in code }
      *28 @samp C1 l17
       *brace_container C1
        {in samp}
    {\\n}
    *29 @var C1 l18
     *brace_container C2
      {in var }
      *30 @code C1 l18
       *brace_container C1
        {in code}
    {\\n}
    *31 @code C1 l19
     *brace_container C2
      {in code }
      *32 @var C1 l19
       *brace_container C1
        {in var}
    {\\n}
   *@end C1 l20
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{example}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {example}
  {empty_line:\\n}
  *33 @display C3 l22
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *preformatted C16
    *34 @kbd C1 l23
     *brace_container C1
      {in disp}
    {\\n}
    *35 @code C1 l24
     *brace_container C2
      {aA }
      *36 @kbd C1 l24
       *brace_container C1
        {fg}
    {\\n}
    *37 @command C1 l25
     *brace_container C2
      {in command }
      *38 @kbd C1 l25
       *brace_container C1
        {fg}
    {\\n}
    *39 @code C1 l26
     *brace_container C2
      {in code }
      *40 @command C1 l26
       *brace_container C1
        {in command}
    {\\n}
    *41 @samp C1 l27
     *brace_container C2
      {in samp }
      *42 @code C1 l27
       *brace_container C1
        {in code}
    {\\n}
    *43 @code C1 l28
     *brace_container C2
      {in code }
      *44 @samp C1 l28
       *brace_container C1
        {in samp}
    {\\n}
    *45 @var C1 l29
     *brace_container C2
      {in var }
      *46 @code C1 l29
       *brace_container C1
        {in code}
    {\\n}
    *47 @code C1 l30
     *brace_container C2
      {in code }
      *48 @var C1 l30
       *brace_container C1
        {in var}
    {\\n}
   *@end C1 l31
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{display}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {display}
';


$result_texis{'nested_code_commands'} = '@code{aA @kbd{fg}}.
@code{cc @code{gg}}.
@command{in command @kbd{fg}}
@code{in code @command{in command}}
@samp{in samp @code{in code}}
@code{in code @samp{in samp}}
@var{in var @code{in code}}
@code{in code @var{in var}}

@example
@code{in code}
@code{aA @kbd{fg}}
@kbd{hh}
@command{in command @kbd{fg}}
@code{in code @command{in command}}
@samp{in samp @code{in code}}
@code{in code @samp{in samp}}
@var{in var @code{in code}}
@code{in code @var{in var}}
@end example

@display
@kbd{in disp}
@code{aA @kbd{fg}}
@command{in command @kbd{fg}}
@code{in code @command{in command}}
@samp{in samp @code{in code}}
@code{in code @samp{in samp}}
@var{in var @code{in code}}
@code{in code @var{in var}}
@end display
';


$result_texts{'nested_code_commands'} = 'aA fg.
cc gg.
in command fg
in code in command
in samp in code
in code in samp
in var in code
in code in var

in code
aA fg
hh
in command fg
in code in command
in samp in code
in code in samp
in var in code
in code in var

in disp
aA fg
in command fg
in code in command
in samp in code
in code in samp
in var in code
in code in var
';

$result_errors{'nested_code_commands'} = [];


$result_floats{'nested_code_commands'} = {};



$result_converted{'plaintext'}->{'nested_code_commands'} = '‘aA fg’.  ‘cc gg’.  ‘in command fg’ ‘in code in command’ ‘in samp ‘in
code’’ ‘in code ‘in samp’’ IN VAR ‘IN CODE’ ‘in code IN VAR’

     in code
     aA fg
     hh
     in command fg
     in code in command
     ‘in samp in code’
     in code ‘in samp’
     IN VAR IN CODE
     in code IN VAR

     ‘in disp’
     ‘aA fg’
     ‘in command fg’
     ‘in code in command’
     ‘in samp ‘in code’’
     ‘in code ‘in samp’’
     IN VAR ‘IN CODE’
     ‘in code IN VAR’
';

1;
