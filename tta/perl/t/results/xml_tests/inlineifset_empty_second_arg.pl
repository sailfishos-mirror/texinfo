use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'inlineifset_empty_second_arg'} = '*document_root C1
 *before_node_section C3
  *paragraph C3
   {Toto }
   *0 @inlineifset C2 l1
   |EXTRA
   |format:{flag}
    *brace_arg C1
     {flag}
    *elided_brace_command_arg C1
     {raw:}
   {. After.\\n}
  {empty_line:\\n}
  *paragraph C3
   {Again with space }
   *1 @inlineifset C2 l3
   |EXTRA
   |format:{flag}
    *brace_arg C1
     {flag}
    *elided_brace_command_arg C1
     {raw: }
   {. After.\\n}
';


$result_texis{'inlineifset_empty_second_arg'} = 'Toto @inlineifset{flag,}. After.

Again with space @inlineifset{flag, }. After.
';


$result_texts{'inlineifset_empty_second_arg'} = 'Toto . After.

Again with space . After.
';

$result_errors{'inlineifset_empty_second_arg'} = [];



$result_converted{'xml'}->{'inlineifset_empty_second_arg'} = '<para>Toto <inlineifset><inlineifsetformat>flag</inlineifsetformat><inlineifsetcontent></inlineifsetcontent></inlineifset>. After.
</para>
<para>Again with space <inlineifset><inlineifsetformat>flag</inlineifsetformat><inlineifsetcontent> </inlineifsetcontent></inlineifset>. After.
</para>';

1;
