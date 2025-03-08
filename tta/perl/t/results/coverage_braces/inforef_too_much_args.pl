use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'inforef_too_much_args'} = '*document_root C2
 *before_node_section
 *0 @node C3 l1 {chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |normalized:{chapter}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter}
  {empty_line:\\n}
  *paragraph C2
   *1 @inforef C3 l3
    *brace_arg C1
    |EXTRA
    |node_content:{chapter}
     {chapter}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {cross ref name}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {file name, spurious arg}
   {\\n}
';


$result_texis{'inforef_too_much_args'} = '@node chapter

@inforef{chapter, cross ref name, file name, spurious arg}
';


$result_texts{'inforef_too_much_args'} = '
chapter
';

$result_errors{'inforef_too_much_args'} = [
  {
    'error_line' => 'warning: @inforef is obsolete
',
    'line_nr' => 3,
    'text' => '@inforef is obsolete',
    'type' => 'warning'
  }
];



$result_converted{'plaintext'}->{'inforef_too_much_args'} = 'See cross ref name: (file name, spurious arg)chapter
';


$result_converted{'html_text'}->{'inforef_too_much_args'} = '<h4 class="node" id="chapter"><span>chapter<a class="copiable-link" href="#chapter"> &para;</a></span></h4>

<p>See <a data-manual="file name, spurious arg" href="file%20name%2c%20spurious%20arg.html#chapter">cross ref name</a>
</p>';


$result_converted{'latex_text'}->{'inforef_too_much_args'} = '\\label{anchor:chapter}%

Section ``chapter\'\' in \\texttt{file name,\\ spurious arg}
';


$result_converted{'docbook'}->{'inforef_too_much_args'} = '<anchor id="chapter"/>

<para>See section &#8220;cross ref name&#8221; in <filename>file name, spurious arg</filename>
</para>';

1;
