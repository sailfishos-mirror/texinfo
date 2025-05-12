use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'set_form_feed'} = '*document_root C1
 *before_node_section C5
  *@set C2
  |INFO
  |arg_line:{ gg \\f a\\a\\f\\\\\\n}
   {rawline_arg:gg}
   {rawline_arg:a\\a\\f\\\\}
  *@set C2
  |INFO
  |arg_line:{ hh\\f\\n}
   {rawline_arg:hh}
   {rawline_arg:}
  *@set C2
  |INFO
  |arg_line:{ ll \\f\\n}
   {rawline_arg:ll}
   {rawline_arg:}
  {empty_line:\\n}
  *paragraph C2
   *@code C1 l5
    *brace_container C1
     {a\\a\\f\\\\. . }
     >SOURCEMARKS
     >value_expansion<start;1>{a\\a\\f\\\\}
      >*@value C1
       >*brace_container C1
        >{gg}
     >value_expansion<end;1><p:7>
     >value_expansion<start;2><p:9>{}
      >*@value C1
       >*brace_container C1
        >{hh}
     >value_expansion<end;2><p:9>
     >value_expansion<start;3><p:11>{}
      >*@value C1
       >*brace_container C1
        >{ll}
     >value_expansion<end;3><p:11>
   {.\\n}
';


$result_texis{'set_form_feed'} = '@set gg  a\\a\\f\\\\
@set hh
@set ll 

@code{a\\a\\f\\\\. . }.
';


$result_texts{'set_form_feed'} = '
a\\a\\f\\\\. . .
';

$result_errors{'set_form_feed'} = [];


$result_nodes_list{'set_form_feed'} = '';

$result_sections_list{'set_form_feed'} = '';


$result_converted{'xml'}->{'set_form_feed'} = '<set name="gg" line=" gg &attrformfeed; a\\\\a\\\\f\\\\\\\\">a\\a\\f\\\\</set>
<set name="hh" line=" hh&attrformfeed;"></set>
<set name="ll" line=" ll &attrformfeed;"></set>

<para><code>a\\a\\f\\\\. . </code>.
</para>';

1;
