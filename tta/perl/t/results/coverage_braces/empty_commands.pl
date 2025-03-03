use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'empty_commands'} = '*document_root C1
 *before_node_section C4
  *0 @titlefont C1 l1
  |EXTRA
  |global_command_number:{1}
   *brace_container
  {\\n}
  {empty_line:\\n}
  *paragraph C15
   *1 @uref C1 l3
    *brace_arg
   { }
   *2 @abbr C1 l3
    *brace_arg
   { }
   *3 @email C1 l3
    *brace_arg
   { }
   *4 @code C1 l3
    *brace_container
   *5 @footnote C1 l3
   |EXTRA
   |global_command_number:{1}
    *brace_command_context
   { }
   *6 @~ C1 l3
    *brace_container
   { }
   *7 @dotless C1 l3
    *brace_container
   { }
   *8 @verb C1 l3
   |INFO
   |delimiter:{;}
    *brace_container
   {\\n}
';


$result_texis{'empty_commands'} = '@titlefont{}

@uref{} @abbr{} @email{} @code{}@footnote{} @~{} @dotless{} @verb{;;}
';


$result_texts{'empty_commands'} = '

    ~  
';

$result_errors{'empty_commands'} = [
  {
    'error_line' => 'warning: @abbr missing first argument
',
    'line_nr' => 3,
    'text' => '@abbr missing first argument',
    'type' => 'warning'
  }
];



$result_converted{'plaintext'}->{'empty_commands'} = '
‘’(1) ̃

   ---------- Footnotes ----------

   (1) 
';


$result_converted{'html_text'}->{'empty_commands'} = '

<p> <abbr class="abbr"></abbr>  <a class="footnote" id="DOCF1" href="#FOOT1"><sup>1</sup></a> &#771;  
</p><div class="footnotes-segment">
<hr>
<h4 class="footnotes-heading">Footnotes</h4>

<h5 class="footnote-body-heading"><a id="FOOT1" href="#DOCF1">(1)</a></h5>

</div>
';


$result_converted{'latex_text'}->{'empty_commands'} = '

   \\texttt{}\\footnote{} \\~{}  
';


$result_converted{'docbook'}->{'empty_commands'} = '

<para><ulink url=""></ulink>   <literal></literal><footnote></footnote> &#771;  <literal></literal>
</para>';

1;
