use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'inlineifsetifclear'} = '*document_root C1
 *before_node_section C9
  *paragraph C2
   *0 @inlineifclear C2 l1
   |EXTRA
   |expand_index:{1}
   |format:{aaa}
    *brace_arg C1
     {aaa}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {iclear first }
   {.\\n}
  {empty_line:\\n}
  *paragraph C2
   *1 @inlineifset C2 l3
   |EXTRA
   |format:{aaa}
    *brace_arg C1
     {aaa}
    *elided_brace_command_arg C1
     {raw: ifset first }
   {.\\n}
  {empty_line:\\n}
  *@set C2
  |INFO
  |arg_line:{ aaa\\n}
   {rawline_arg:aaa}
   {rawline_arg:}
  {empty_line:\\n}
  *paragraph C2
   *2 @inlineifclear C2 l7
   |EXTRA
   |format:{aaa}
    *brace_arg C1
     {aaa}
    *elided_brace_command_arg C1
     {raw: ifclear second }
   {.\\n}
  {empty_line:\\n}
  *paragraph C2
   *3 @inlineifset C2 l9
   |EXTRA
   |expand_index:{1}
   |format:{aaa}
    *brace_arg C1
     {aaa}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {ifset second }
   {.\\n}
';


$result_texis{'inlineifsetifclear'} = '@inlineifclear{aaa, iclear first }.

@inlineifset{aaa, ifset first }.

@set aaa

@inlineifclear{aaa, ifclear second }.

@inlineifset{aaa, ifset second }.
';


$result_texts{'inlineifsetifclear'} = 'iclear first .

.


.

ifset second .
';

$result_errors{'inlineifsetifclear'} = [];



$result_converted{'plaintext'}->{'inlineifsetifclear'} = 'iclear first .

   .

   .

   ifset second .
';


$result_converted{'html_text'}->{'inlineifsetifclear'} = '<p>iclear first .
</p>
<p>.
</p>

<p>.
</p>
<p>ifset second .
</p>';


$result_converted{'xml'}->{'inlineifsetifclear'} = '<para><inlineifclear><inlineifclearformat>aaa</inlineifclearformat><inlineifclearcontent spaces=" ">iclear first </inlineifclearcontent></inlineifclear>.
</para>
<para><inlineifset><inlineifsetformat>aaa</inlineifsetformat><inlineifsetcontent> ifset first </inlineifsetcontent></inlineifset>.
</para>
<set name="aaa" line=" aaa"></set>

<para><inlineifclear><inlineifclearformat>aaa</inlineifclearformat><inlineifclearcontent> ifclear second </inlineifclearcontent></inlineifclear>.
</para>
<para><inlineifset><inlineifsetformat>aaa</inlineifsetformat><inlineifsetcontent spaces=" ">ifset second </inlineifsetcontent></inlineifset>.
</para>';


$result_converted{'docbook'}->{'inlineifsetifclear'} = '<para>iclear first .
</para>
<para>.
</para>

<para>.
</para>
<para>ifset second .
</para>';


$result_converted{'latex_text'}->{'inlineifsetifclear'} = 'iclear first .

.


.

ifset second .
';

1;
