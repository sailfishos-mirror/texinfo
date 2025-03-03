use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'paragraph_command'} = '*document_root C1
 *before_node_section C15
  *paragraph C2
   *@@
   {\\n}
  {empty_line:\\n}
  *paragraph C2
   *0 @b C1 l3
    *brace_container C1
     {aaa}
   {.\\n}
  {empty_line:\\n}
  *paragraph C2
   *1 @dotless C1 l5
    *brace_container C1
     {i}
   { also dotless i.\\n}
  {empty_line:\\n}
  *paragraph C2
   *2 @U C1 l7
    *brace_arg C1
     {0075}
   { also U+0075.\\n}
  {empty_line:\\n}
  *paragraph C2
   *3 @email C1 l9
    *brace_arg C1
     {m1}
   { email.\\n}
  {empty_line:\\n}
  *@definfoenclose C1 l11
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |misc_args:A{foo|\\|//}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {foo,\\,//}
  *paragraph C2
   *4 definfoenclose_command@foo C1 l12
   |INFO
   |command_name:{foo}
   |EXTRA
   |begin:{\\}
   |end:{//}
    *brace_container C2
     *@@
     {definfoenclose}
   { should work at the beginning of a new paragraph.\\n}
  {empty_line:\\n}
  *paragraph C2
   *5 @footnote C1 l14
   |EXTRA
   |global_command_number:{1}
    *brace_command_context C1
     *paragraph C1
      {lone footnote}
   {.\\n}
  {empty_line:\\n}
';


$result_texis{'paragraph_command'} = '@@

@b{aaa}.

@dotless{i} also dotless i.

@U{0075} also U+0075.

@email{m1} email.

@definfoenclose foo,\\,//
@foo{@@definfoenclose} should work at the beginning of a new paragraph.

@footnote{lone footnote}.

';


$result_texts{'paragraph_command'} = '@

aaa.

i also dotless i.

0075 also U+0075.

m1 email.

@definfoenclose should work at the beginning of a new paragraph.

.

';

$result_errors{'paragraph_command'} = [
  {
    'error_line' => 'warning: @definfoenclose is obsolete
',
    'line_nr' => 11,
    'text' => '@definfoenclose is obsolete',
    'type' => 'warning'
  }
];



$result_converted{'plaintext'}->{'paragraph_command'} = '@

   aaa.

   ı also dotless i.

   u also U+0075.

   <m1> email.

   \\@definfoenclose// should work at the beginning of a new paragraph.

   (1).

   ---------- Footnotes ----------

   (1) lone footnote

';


$result_converted{'html_text'}->{'paragraph_command'} = '<p>@
</p>
<p><b class="b">aaa</b>.
</p>
<p>&inodot; also dotless i.
</p>
<p>&#x0075; also U+0075.
</p>
<p><a class="email" href="mailto:m1">m1</a> email.
</p>
<p>\\@definfoenclose// should work at the beginning of a new paragraph.
</p>
<p><a class="footnote" id="DOCF1" href="#FOOT1"><sup>1</sup></a>.
</p>
<div class="footnotes-segment">
<hr>
<h4 class="footnotes-heading">Footnotes</h4>

<h5 class="footnote-body-heading"><a id="FOOT1" href="#DOCF1">(1)</a></h5>
<p>lone footnote</p>
</div>
';

1;
