use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'inlineraw'} = '*document_root C1
 *before_node_section C1
  *paragraph C5
   {A }
   *0 @inlineraw C2 l1
   |EXTRA
   |expand_index:{1}
   |format:{plaintext}
    *brace_arg C1
     {plaintext}
    *brace_arg C3
    |INFO
    |spaces_before_argument:
     |{ }
     {plaintext `` }
     *1 @lbracechar C1 l1
      *brace_container
     { }
   { a.  Now html\\n}
   *2 @inlineraw C2 l2
   |EXTRA
   |expand_index:{1}
   |format:{html}
    *brace_arg C1
     {html}
    *brace_arg C3
    |INFO
    |spaces_before_argument:
     |{ }
     {in <i>}
     *3 @acronym C1 l2
      *brace_arg C1
       {HTML}
     {</i>}
   {.\\n}
';


$result_texis{'inlineraw'} = 'A @inlineraw{plaintext, plaintext `` @lbracechar{} } a.  Now html
@inlineraw{html, in <i>@acronym{HTML}</i>}.
';


$result_texts{'inlineraw'} = 'A plaintext `` {  a.  Now html
in <i>HTML</i>.
';

$result_errors{'inlineraw'} = [];


$result_floats{'inlineraw'} = {};



$result_converted{'plaintext'}->{'inlineraw'} = 'A plaintext `` { a.  Now html .
';


$result_converted{'xml'}->{'inlineraw'} = '<para>A <inlineraw><inlinerawformat>plaintext</inlinerawformat><inlinerawcontent spaces=" ">plaintext &textldquo; &lbracechar; </inlinerawcontent></inlineraw> a.  Now html
<inlineraw><inlinerawformat>html</inlinerawformat><inlinerawcontent spaces=" ">in &lt;i&gt;<acronym><acronymword>HTML</acronymword></acronym>&lt;/i&gt;</inlinerawcontent></inlineraw>.
</para>';

1;
