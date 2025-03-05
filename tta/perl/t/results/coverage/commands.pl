use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'commands'} = '*document_root C1
 *before_node_section C7
  *paragraph C13
   *@@
   { }
   *0 @TeX C1 l1
    *brace_container
   { }
   *@\\n
   *1 @" C1 l2
    *following_arg C1
     {e}
   { }
   *2 @^ C1 l2
    *brace_container C1
     *3 @dotless C1 l2
      *brace_container C1
       {i}
   { }
   *4 @~ C1 l2
    *brace_container C1
     {a}
   { }
   *5 @ringaccent C1 l2
   |INFO
   |spaces_after_cmd_before_arg:
    |{ }
    *following_arg C1
     {a}
   {\\n}
  {empty_line:\\n}
  *paragraph C10
   *6 @clicksequence C1 l4
    *brace_container C3
     {File }
     *7 @click C1 l4
     |EXTRA
     |clickstyle:{arrow}
      *brace_container
     { Open}
   *@.
   {\\n}
   *8 @email C2 l5
    *brace_arg C1
     {a}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {b}
   { }
   *9 @code C1 l5
    *brace_container C1
     {code --- -- \'\' ``}
   {\\n}
   {--- -- \'\' ``. }
   *10 @sc C1 l6
    *brace_container C1
     {small caps}
   {.\\n}
  {empty_line:\\n}
  *11 index_entry_command@cindex C1 l8
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |index_entry:I{cp,1}
   *line_arg C2
   |INFO
   |spaces_after_argument:
    |{\\n}
    {index entry ``in text\'\' }
    *12 @LaTeX C1 l8
     *brace_container
  {empty_line:\\n}
  *13 @majorheading C1 l10
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{1}
   *line_arg C2
   |INFO
   |spaces_after_argument:
    |{\\n}
    {majorheading }
    *14 @b C1 l10
     *brace_container C1
      {in b}
';


$result_texis{'commands'} = '@@ @TeX{} @
@"e @^{@dotless{i}} @~{a} @ringaccent a

@clicksequence{File @click{} Open}@.
@email{a, b} @code{code --- -- \'\' ``}
--- -- \'\' ``. @sc{small caps}.

@cindex index entry ``in text\'\' @LaTeX{}

@majorheading majorheading @b{in b}
';


$result_texts{'commands'} = '@ TeX  e" i^ a~ a*

File -> Open.
b code --- -- \'\' ``
-- - " ". SMALL CAPS.


majorheading in b
*****************
';

$result_errors{'commands'} = [
  {
    'error_line' => 'warning: entry for index `cp\' outside of any node
',
    'line_nr' => 8,
    'text' => 'entry for index `cp\' outside of any node',
    'type' => 'warning'
  }
];


$result_indices_sort_strings{'commands'} = 'cp:
 index entry "in text" LaTeX
';


$result_converted{'plaintext'}->{'commands'} = '@ TeX  ë î ã å

   File → Open.  b <a> ‘code --- -- \'\' ``’ -- - " ".  SMALL CAPS.

majorheading in b
*****************

';


$result_converted{'html_text'}->{'commands'} = '<p>@ TeX &nbsp;&euml; &icirc; &atilde; &aring;
</p>
<p>File &rarr; Open.
<a class="email" href="mailto:a">b</a> <code class="code">code --- -- \'\' ``</code>
&mdash; &ndash; &rdquo; &ldquo;. <small class="sc">SMALL CAPS</small>.
</p>
<a class="index-entry-id" id="index-index-entry-_0060_0060in-text_0027_0027-LaTeX"></a>

<h2 class="majorheading" id="majorheading-in-b"><span>majorheading <b class="b">in b</b><a class="copiable-link" href="#majorheading-in-b"> &para;</a></span></h2>
';


$result_converted{'xml'}->{'commands'} = '<para>&arobase; &tex; <spacecmd type="nl"/><accent type="uml" bracketed="off">e</accent> <accent type="circ"><dotless>i</dotless></accent> <accent type="tilde">a</accent> <accent type="ring" spacesaftercmd=" " bracketed="off">a</accent>
</para>
<para><clicksequence>File <click command="arrow"/> Open</clicksequence>&eosperiod;
<email><emailaddress>a</emailaddress><emailname spaces=" ">b</emailname></email> <code>code --- -- \'\' ``</code>
&textmdash; &textndash; &textrdquo; &textldquo;. <sc>small caps</sc>.
</para>
<cindex index="cp" spaces=" "><indexterm index="cp" number="1">index entry &textldquo;in text&textrdquo; &latex;</indexterm></cindex>

<majorheading spaces=" ">majorheading <b>in b</b></majorheading>
';


$result_converted{'latex_text'}->{'commands'} = '@ \\TeX{} \\ {}\\"{e} \\^{\\i{}} \\~{a} \\r{a}

File $\\rightarrow{}$ Open\\@.
\\href{mailto:a}{b} \\texttt{code {-}{-}{-} {-}{-} {\'}{\'} {`}{`}}
--- -- \'\' ``. \\textsc{small caps}.

\\index[cp]{index entry ""in text"" LaTeX@index entry ``in text\'\' \\LaTeX{}}%

\\Texinfonopagebreakheading{\\chapter*}{{majorheading \\textbf{in b}}}
';


$result_converted{'docbook'}->{'commands'} = '<para>@ &tex; &#160;&#235; &#238; &#227; &#229;
</para>
<para>File &#8594; Open.
<ulink url="mailto:a">b</ulink> <literal>code --- -- \'\' ``</literal>
&#8212; &#8211; &#8221; &#8220;. SMALL CAPS.
</para>
<indexterm role="cp"><primary>index entry &#8220;in text&#8221; &latex;</primary></indexterm>

<bridgehead renderas="sect1">majorheading <emphasis role="bold">in b</emphasis></bridgehead>
';

1;
