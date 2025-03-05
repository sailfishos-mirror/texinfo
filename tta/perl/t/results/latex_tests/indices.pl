use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'indices'} = '*document_root C5
 *before_node_section C2
  *preamble_before_beginning C1
   {text_before_beginning:\\n}
  *preamble_before_content C2
   *@set C2
   |INFO
   |arg_line:{ txiindexbackslashignore\\n}
    {rawline_arg:txiindexbackslashignore}
    {rawline_arg:}
   {empty_line:\\n}
 *0 @node C1 l4 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |is_target:{1}
 |node_directions:D[next->E2]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @top C2 l5 {top section}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E0]
 |section_childs:EC[E3]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1]
  ||section_level:{-1}
 |toplevel_directions:D[next->E3]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top section}
  {empty_line:\\n}
 *2 @node C1 l7 {chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E3]
 |is_target:{1}
 |isindex:{1}
 |node_directions:D[prev->E0|up->E0]
 |normalized:{chapter}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter}
 *3 @chapter C23 l8 {Index}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E2]
 |section_directions:D[up->E1]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Index}
  {empty_line:\\n}
  *4 index_entry_command@cindex C1 l10
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,1}
  |index_ignore_chars:{\\}
   *line_arg C3
   |INFO
   |spaces_after_argument:
    |{\\n}
    *5 @" C1 l10
     *following_arg C1
      {a}
    { }
    *6 @" C1 l10
     *brace_container C1
      {o}
  *7 index_entry_command@cindex C1 l11
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,2}
  |index_ignore_chars:{\\}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {AA}
  *8 index_entry_command@cindex C1 l12
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,3}
  |index_ignore_chars:{\\}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {aa}
  *9 index_entry_command@cindex C1 l13
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,4}
  |index_ignore_chars:{\\}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {i}
  *10 index_entry_command@cindex C1 l14
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,5}
  |index_ignore_chars:{\\}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Z}
  *11 index_entry_command@cindex C1 l15
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,6}
  |index_ignore_chars:{\\}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    *12 @^ C1 l15
     *following_arg C1
      {i}
  {empty_line:\\n}
  *13 index_entry_command@cindex C1 l17
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,7}
  |index_ignore_chars:{\\}
  |seealso:[E22]
  |subentry:[E17]
   *line_arg C7
   |INFO
   |spaces_after_argument:
    |{ }
    *14 @math C1 l17
     *brace_command_context C3
      {a!"}
      *@@
      {b}
    { "!}
    *@@
    { }
    *15 @" C1 l17
     *following_arg C1
      {a}
    { }
    *16 @" C1 l17
     *brace_container C1
      {o}
  *17 @subentry C1 l17
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |sortas:{a!"@b}
  |subentry_level:{1}
  |subentry_parent:[E13]
   *line_arg C12
   |INFO
   |spaces_after_argument:
    |{\\n}
    *18 @sortas C1 l17
     *brace_arg C3
      {a!"}
      *@@
      {b}
    {spaces_after_close_brace: }
    {sub}
    *19 @math C1 l17
     *brace_command_context C3
      {a!"}
      *@@
      {b}
    { sub "!}
    *@@
    { }
    *20 @" C1 l17
     *following_arg C1
      {a}
    { }
    *21 @" C1 l17
     *brace_container C1
      {o}
    {spaces_at_end: }
    *22 @seealso C1 l17
     *brace_arg C7
      *23 @math C1 l17
       *brace_command_context C3
        {a!"}
        *@@
        {b}
      { "!}
      *@@
      { }
      *24 @" C1 l17
       *following_arg C1
        {a}
      { }
      *25 @" C1 l17
       *brace_container C1
        {o}
  *26 index_entry_command@cindex C1 l18
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,8}
  |index_ignore_chars:{\\}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {\\cmd}
  *27 index_entry_command@cindex C1 l19
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,9}
  |index_ignore_chars:{\\}
  |sortas:{\\cmd}
   *line_arg C3
   |INFO
   |spaces_after_argument:
    |{\\n}
    {totocmd}
    {spaces_at_end: }
    *28 @sortas C1 l19
     *brace_arg C1
      {\\cmd}
  {empty_line:\\n}
  *@clear C1
  |INFO
  |arg_line:{ txiindexbackslashignore\\n}
   {rawline_arg:txiindexbackslashignore}
  {empty_line:\\n}
  *29 index_entry_command@cindex C1 l23
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,10}
   *line_arg C2
   |INFO
   |comment_at_end:
    |*@c C1
     |{rawline_arg: comment\\n}
   |spaces_after_argument:
    |{ }
    {\\some\\command for }
    *30 @file C1 l23
     *brace_container C1
      {file}
  {empty_line:\\n}
  *31 index_entry_command@findex C1 l25
  |INFO
  |command_name:{findex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{fn,1}
   *line_arg C4
   |INFO
   |spaces_after_argument:
    |{\\n}
    {the }
    *32 @r C1 l25
     *brace_container C1
      {person}
    { index }
    *33 @file C1 l25
     *brace_container C1
      {aa}
  {empty_line:\\n}
  *@printindex C1 l27
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{1}
  |misc_args:A{cp}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {cp}
  {empty_line:\\n}
  *@printindex C1 l29
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{2}
  |misc_args:A{fn}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {fn}
';


$result_texis{'indices'} = '
@set txiindexbackslashignore

@node Top
@top top section

@node chapter
@chapter Index

@cindex @"a @"{o}
@cindex AA
@cindex aa
@cindex i
@cindex Z
@cindex @^i

@cindex @math{a!"@@b} "!@@ @"a @"{o} @subentry @sortas{a!"@@b} sub@math{a!"@@b} sub "!@@ @"a @"{o} @seealso{@math{a!"@@b} "!@@ @"a @"{o}}
@cindex \\cmd
@cindex totocmd @sortas{\\cmd}

@clear txiindexbackslashignore

@cindex \\some\\command for @file{file} @c comment

@findex the @r{person} index @file{aa}

@printindex cp

@printindex fn
';


$result_texts{'indices'} = '
top section
***********

1 Index
*******







';

$result_errors{'indices'} = [
  {
    'error_line' => 'misplaced {
',
    'line_nr' => 23,
    'text' => 'misplaced {',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced }
',
    'line_nr' => 23,
    'text' => 'misplaced }',
    'type' => 'error'
  }
];


$result_indices_sort_strings{'indices'} = 'cp:
 \\cmd
 \\some\\command for file
 ä ö
 a!"@b "!@ ä ö, a!"@b
 AA
 aa
 cmd
 i
 î
 Z
fn:
 the person index aa
';


$result_converted{'latex_text'}->{'indices'} = '
\\begin{document}
\\label{anchor:Top}%
\\chapter{{Index}}
\\label{anchor:chapter}%

\\index[cp]{ä ö@"\\""{a} "\\""{o}}%
\\index[cp]{AA@AA}%
\\index[cp]{aa@aa}%
\\index[cp]{i@i}%
\\index[cp]{Z@Z}%
\\index[cp]{î@\\^{i}}%

\\index[cp]{a"!"""@b """!"@ ä ö@$a"!"""@b$ """!"@ "\\""{a} "\\""{o}!a"!"""@b@sub$a"!"""@b$ sub """!"@ "\\""{a} "\\""{o}|seealso{$a!"@b$ "!@ \\"{a} \\"{o}}}%
\\index[cp]{cmd@\\textbackslash{}cmd}%
\\index[cp]{\\textbackslash{}cmd@totocmd}%


\\index[cp]{\\textbackslash{}some\\textbackslash{}command for file@\\textbackslash{}some\\textbackslash{}command for \\texttt{file}}%

\\index[fn]{the person index aa@\\texttt{the \\textnormal{person}\\ index \\texttt{aa}}}%

\\printindex[cp]

\\printindex[fn]
';

1;
