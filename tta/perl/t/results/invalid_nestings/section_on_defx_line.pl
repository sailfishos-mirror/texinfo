use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'section_on_defx_line'} = '*document_root C2
 *before_node_section C1
  *@deffn C2 l1
  |INFO
  |spaces_before_argument:
   |{ }
   *def_line C1 l1
   |EXTRA
   |def_command:{deffn}
   |def_index_element:
    |*def_name C1
     |*def_line_arg C1
      |{j}
   |index_entry:I{fn,1}
   |original_def_cmdname:{deffn}
    *block_line_arg C7
    |INFO
    |spaces_after_argument:
     |{ \\n}
     *def_category C1
      *def_line_arg C1
       {h}
     {spaces: }
     *def_name C1
      *def_line_arg C1
       {j}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {k}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {l}
   *@deffnx C1 l2
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |def_command:{deffn}
   |def_index_element:
    |*def_name C1
     |*def_line_arg C1
      |{b}
   |index_entry:I{fn,2}
   |original_def_cmdname:{deffnx}
    *line_arg C3
    |INFO
    |spaces_after_argument:
     |{ }
     *def_category C1
      *def_line_arg C1
       {a}
     {spaces: }
     *def_name C1
      *def_line_arg C1
       {b}
 *0 @section C4 l2 {s}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_level:{2}
 |section_number:{1}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E0]
  ||section_level:{1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {s}
  {empty_line:\\n}
  *paragraph C1
   {Something\\n}
  {empty_line:\\n}
';


$result_texis{'section_on_defx_line'} = '@deffn h j k l 
@deffnx a b @section s

Something

';


$result_texts{'section_on_defx_line'} = 'h: j k l
a: b
1 s
===

Something

';

$result_errors{'section_on_defx_line'} = [
  {
    'error_line' => 'warning: entry for index `fn\' outside of any node
',
    'line_nr' => 1,
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @section should only appear at the beginning of a line
',
    'line_nr' => 2,
    'text' => '@section should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @section should not appear on @deffnx line
',
    'line_nr' => 2,
    'text' => '@section should not appear on @deffnx line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `fn\' outside of any node
',
    'line_nr' => 2,
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => '@section seen before @end deffn
',
    'line_nr' => 2,
    'text' => '@section seen before @end deffn',
    'type' => 'error'
  },
  {
    'error_line' => 'unmatched `@end deffn\'
',
    'line_nr' => 6,
    'text' => 'unmatched `@end deffn\'',
    'type' => 'error'
  }
];


$result_indices_sort_strings{'section_on_defx_line'} = 'fn:
 b
 j
';


$result_converted{'plaintext'}->{'section_on_defx_line'} = ' -- h: j k l
 -- a: b

1 s
===

Something

';


$result_converted{'xml'}->{'section_on_defx_line'} = '<deffn spaces=" "><definitionterm><indexterm index="fn" number="1">j</indexterm><defcategory>h</defcategory> <deffunction>j</deffunction> <defparam>k</defparam> <defparam>l</defparam> </definitionterm>
<deffnx spaces=" "><definitionterm><indexterm index="fn" number="2">b</indexterm><defcategory>a</defcategory> <deffunction>b</deffunction> </definitionterm></deffnx>
</deffn>
<section spaces=" "><sectiontitle>s</sectiontitle>

<para>Something
</para>
</section>
';

1;
