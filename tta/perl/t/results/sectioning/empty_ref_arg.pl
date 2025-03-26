use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'empty_ref_arg'} = '*document_root C2
 *before_node_section
 *0 @node C3 l1 {first}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |normalized:{first}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {first}
  {empty_line:\\n}
  *paragraph C8
   *@ref C2 l3
    *brace_arg C1
    |EXTRA
    |node_content:{first}
    |normalized:{first}
     {first}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     *@ 
   {\\n}
   *@ref C3 l4
    *brace_arg C1
    |EXTRA
    |node_content:{first}
    |normalized:{first}
     {first}
    *brace_arg
    |INFO
    |spaces_before_argument:
     |{ }
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     *@ 
   {\\n}
   *@ref C3 l5
    *brace_arg C1
    |EXTRA
    |node_content:{first}
    |normalized:{first}
     {first}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     *@ 
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     *@:
   {\\n}
   *@ref C3 l6
    *brace_arg C1
    |EXTRA
    |node_content:{first}
    |normalized:{first}
     {first}
    *brace_arg C5
    |INFO
    |spaces_before_argument:
     |{ }
     *@c C1
      {rawline_arg: aaa\\n}
     { }
     *@ 
     {\\n}
     *@c C1
      {rawline_arg: ggg\\n}
    *brace_arg C2
    |INFO
    |spaces_before_argument:
     |{ }
     *@c C1
      {rawline_arg: fff\\n}
     *@c C1
      {rawline_arg:\\n}
   {\\n}
';


$result_texis{'empty_ref_arg'} = '@node first

@ref{first, @ }
@ref{first, , @ }
@ref{first, @ , @:}
@ref{first, @c aaa
 @ 
@c ggg
, @c fff
@c
}
';


$result_texts{'empty_ref_arg'} = '
first
first
first
first
';

$result_errors{'empty_ref_arg'} = [
  {
    'error_line' => 'warning: in @ref empty cross reference name after expansion `@ \'
',
    'line_nr' => 3,
    'text' => 'in @ref empty cross reference name after expansion `@ \'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: in @ref empty cross reference title after expansion `@ \'
',
    'line_nr' => 4,
    'text' => 'in @ref empty cross reference title after expansion `@ \'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: in @ref empty cross reference name after expansion `@ \'
',
    'line_nr' => 5,
    'text' => 'in @ref empty cross reference name after expansion `@ \'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: in @ref empty cross reference title after expansion `@:\'
',
    'line_nr' => 5,
    'text' => 'in @ref empty cross reference title after expansion `@:\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: in @ref empty cross reference name after expansion `@c aaa
 @ 
@c ggg
\'
',
    'line_nr' => 11,
    'text' => 'in @ref empty cross reference name after expansion `@c aaa
 @ 
@c ggg
\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: in @ref empty cross reference title after expansion `@c fff
@c
\'
',
    'line_nr' => 11,
    'text' => 'in @ref empty cross reference title after expansion `@c fff
@c
\'',
    'type' => 'warning'
  }
];



$result_converted{'xml'}->{'empty_ref_arg'} = '<node identifier="first" spaces=" "><nodename>first</nodename></node>

<para><ref label="first"><xrefnodename>first</xrefnodename><xrefinfoname spaces=" "><spacecmd type="spc"/></xrefinfoname></ref>
<ref label="first"><xrefnodename>first</xrefnodename><xrefinfoname spaces=" "></xrefinfoname><xrefprinteddesc spaces=" "><spacecmd type="spc"/></xrefprinteddesc></ref>
<ref label="first"><xrefnodename>first</xrefnodename><xrefinfoname spaces=" "><spacecmd type="spc"/></xrefinfoname><xrefprinteddesc spaces=" ">&noeos;</xrefprinteddesc></ref>
<ref label="first"><xrefnodename>first</xrefnodename><xrefinfoname spaces=" "><!-- c aaa -->
 <spacecmd type="spc"/>
<!-- c ggg -->
</xrefinfoname><xrefprinteddesc spaces=" "><!-- c fff -->
<!-- c -->
</xrefprinteddesc></ref>
</para>';

1;
