use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'inlinefmt'} = '*document_root C1
 *before_node_section C1
  *paragraph C5
   {A }
   *0 @inlinefmt C2 l1
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
   *2 @inlinefmt C2 l2
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


$result_texis{'inlinefmt'} = 'A @inlinefmt{plaintext, plaintext `` @lbracechar{} } a.  Now html
@inlinefmt{html, in <i>@acronym{HTML}</i>}.
';


$result_texts{'inlinefmt'} = 'A plaintext " {  a.  Now html
in <i>HTML</i>.
';

$result_errors{'inlinefmt'} = [];



$result_converted{'plaintext'}->{'inlinefmt'} = 'A plaintext " { a.  Now html .
';


$result_converted{'xml'}->{'inlinefmt'} = '<para>A <inlinefmt><inlinefmtformat>plaintext</inlinefmtformat><inlinefmtcontent spaces=" ">plaintext &textldquo; &lbracechar; </inlinefmtcontent></inlinefmt> a.  Now html
<inlinefmt><inlinefmtformat>html</inlinefmtformat><inlinefmtcontent spaces=" ">in &lt;i&gt;<acronym><acronymword>HTML</acronymword></acronym>&lt;/i&gt;</inlinefmtcontent></inlinefmt>.
</para>';

1;
