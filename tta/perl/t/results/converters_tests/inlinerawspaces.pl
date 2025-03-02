use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'inlinerawspaces'} = '*document_root C1
 *before_node_section C1
  *paragraph C5
   {A }
   *0 @inlineraw C2 l1
   |EXTRA
   |expand_index:{1}
   |format:{plaintext}
    *brace_arg C1
    |INFO
    |spaces_after_argument:
     |{ }
    |spaces_before_argument:
     |{ }
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
   |INFO
   |spaces_after_cmd_before_arg:
    |{ }
   |EXTRA
   |expand_index:{1}
   |format:{html}
    *brace_arg C1
    |INFO
    |spaces_after_argument:
     |{ }
    |spaces_before_argument:
     |{ }
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


$result_texis{'inlinerawspaces'} = 'A @inlineraw{ plaintext , plaintext `` @lbracechar{} } a.  Now html
@inlineraw { html , in <i>@acronym{HTML}</i>}.
';


$result_texts{'inlinerawspaces'} = 'A plaintext `` {  a.  Now html
in <i>HTML</i>.
';

$result_errors{'inlinerawspaces'} = [];


$result_floats{'inlinerawspaces'} = {};



$result_converted{'plaintext'}->{'inlinerawspaces'} = 'A plaintext `` { a.  Now html .
';


$result_converted{'html_text'}->{'inlinerawspaces'} = '<p>A  a.  Now html
in <i><abbr class="acronym">HTML</abbr></i>.
</p>';


$result_converted{'xml'}->{'inlinerawspaces'} = '<para>A <inlineraw><inlinerawformat spaces=" ">plaintext </inlinerawformat><inlinerawcontent spaces=" ">plaintext &textldquo; &lbracechar; </inlinerawcontent></inlineraw> a.  Now html
<inlineraw spacesaftercmd=" "><inlinerawformat spaces=" ">html </inlinerawformat><inlinerawcontent spaces=" ">in &lt;i&gt;<acronym><acronymword>HTML</acronymword></acronym>&lt;/i&gt;</inlinerawcontent></inlineraw>.
</para>';


$result_converted{'docbook'}->{'inlinerawspaces'} = '<para>A  a.  Now html
.
</para>';


$result_converted{'latex_text'}->{'inlinerawspaces'} = 'A  a.  Now html
.
';

1;
