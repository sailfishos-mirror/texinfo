use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'cpp_lines'} = '*document_root C4
 *before_node_section C4
  *preamble_before_setfilename C1
   *preamble_before_beginning C1
    {text_before_beginning:\\input texinfo\\n}
  *preamble_before_content C3
   *@setfilename C1 cpp_lines.texi:l2
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{cpp_lines.info}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {cpp_lines.info}
   {empty_line:\\n}
   {empty_line:\\n}
  *paragraph C2
   *0 @email C1 g_f:l68
    *brace_arg C1
     {before top}
   {.\\n}
  {empty_line:\\n}
 *1 @node C1 g_f:l70 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |node_directions:D[next->E2]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *2 @node C55 g_f:l71 {chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |node_directions:D[prev->E1]
 |normalized:{chap}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap}
  {empty_line:\\n}
  *paragraph C2
   {# 10 25 209\\n}
   {# 1 2\\n}
  {empty_line:\\n}
  *3 @verbatim C4 g_f:l48
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   {raw:\\n}
   {raw:  #line 5 "f"\\n}
   *@end C1 g_f:l51
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{verbatim}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {verbatim}
  {empty_line:\\n}
  *4 @macro C3 g_f:l53
  |EXTRA
  |macro_name:{macr}
  |misc_args:A{}
   *arguments_line C1
    {macro_line: macr\\n}
   {raw:# line 7 "k"\\n}
   *@end C1 g_f:l55
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{macro}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {macro}
  {empty_line:\\n}
  *paragraph C2
   *5 @email C1 g_f:l57
    *brace_arg C1
     {after lacro def}
   {\\n}
  {empty_line:\\n}
  *paragraph C1
   {# line 7 "k"\\n}
   >SOURCEMARKS
   >macro_expansion<start;1>
    >*macro_call C1
    >|INFO
    >|command_name:{macr}
     >*brace_arg
   >macro_expansion<end;1><p:12>
  {empty_line:\\n}
  *paragraph C2
   *6 @email C1 g_f:l61
    *brace_arg C1
     {after macro call}
   {.\\n}
  {empty_line:\\n}
  *7 @macro C4 g_f:l63
  |EXTRA
  |macro_name:{macrtwo}
  |misc_args:A{}
   *arguments_line C1
    {macro_line: macrtwo\\n}
   {raw:line before\\n}
   {raw:# line 666 "x"\\n}
   *@end C1 g_f:l66
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{macro}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {macro}
  {empty_line:\\n}
  *paragraph C2
   *8 @email C1 g_f:l68
    *brace_arg C1
     {after macrotwo def}
   {\\n}
  {empty_line:\\n}
  *paragraph C2
   {line before\\n}
   >SOURCEMARKS
   >macro_expansion<start;2>
    >*macro_call C1
    >|INFO
    >|command_name:{macrtwo}
     >*brace_arg
   {# line 666 "x"\\n}
   >SOURCEMARKS
   >macro_expansion<end;2><p:14>
  {empty_line:\\n}
  *paragraph C2
   *9 @email C1 g_f:l72
    *brace_arg C1
     {after macrotwo call}
   {. \\n}
  {empty_line:\\n}
  >SOURCEMARKS
  >include<start;1><p:1>
   >*@include C1 g_f:l74
   >|INFO
   >|spaces_before_argument:
    >|{ }
   >|EXTRA
   >|text_arg:{file_with_cpp_lines.texi}
    >*line_arg C1
    >|INFO
    >|spaces_after_argument:
     >|{\\n}
     >{file_with_cpp_lines.texi}
  {empty_line:\\n}
  {empty_line:\\n}
  *paragraph C2
   *10 @email C1 inc:l10
    *brace_arg C1
     {in}
   {\\n}
  {empty_line:\\n}
  >SOURCEMARKS
  >include<end;1><p:1>
  *paragraph C2
   *11 @email C1 g_f:l75
    *brace_arg C1
     {after inc}
   {. \\n}
  {empty_line:\\n}
  *paragraph C2
   *12 @verb C1 g_f:l77
   |INFO
   |delimiter:{:}
    *brace_container C2
     {raw:\\n}
     {raw:#line 5 "in verb"\\n}
   {\\n}
  {empty_line:\\n}
  *paragraph C2
   *13 @email C1 g_f:l81
    *brace_arg C1
     {after verb}
   {\\n}
  {empty_line:\\n}
  *paragraph C3
   {a}
   *14 @footnote C1 g_f:l83
   |INFO
   |spaces_before_argument:
    |{\\n}
   |EXTRA
   |global_command_number:{1}
    *brace_command_context C1
     *paragraph C1
      {in footnote}
   {\\n}
  {empty_line:\\n}
  *paragraph C3
   {a}
   *15 @footnote C1 footnote:l28
   |INFO
   |spaces_before_argument:
    |{\\n}
   |EXTRA
   |global_command_number:{2}
    *brace_command_context C2
     {empty_line:\\n}
     *paragraph C1
      {in 2footnote}
   {\\n}
  {empty_line:\\n}
  {empty_line:\\n}
  *paragraph C2
   *16 @email C2 footnote2:l40
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ \\n}
     {etext1}
    *brace_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
    |spaces_before_argument:
     |{\\n}
     {etext2}
   {\\n}
  {empty_line:\\n}
  *paragraph C2
   *17 @email C2 email2:l64
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{\\n}
     { no line directive mail space}
    *brace_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
    |spaces_before_argument:
     |{\\n}
     { no line directive text space}
   {\\n}
  {empty_line:\\n}
  *paragraph C2
   *18 @email C2 email2:l69
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ \\n}
     { mail space}
    *brace_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
    |spaces_before_argument:
     |{\\n}
     { text space}
   {\\n}
  {empty_line:\\n}
  *paragraph C1
   *19 @email C1 email12:l64
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ \\n}
     {empty_line:\\n}
  *paragraph C1
   {etext3,\\n}
  {empty_line:\\n}
  {empty_line:\\n}
  *paragraph C1
   {etext4\\n}
  {empty_line:\\n}
  {empty_line:\\n}
  {empty_line:\\n}
  {empty_line:\\n}
  {empty_line:\\n}
  *@documentlanguage C1 accentêd:l7
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{1}
  |text_arg:{làng}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {làng}
  {empty_line:\\n}
 *@bye C1
  {rawline_arg:\\n}
';


$result_texis{'cpp_lines'} = '\\input texinfo
@setfilename cpp_lines.info


@email{before top}.

@node Top
@node chap

# 10 25 209
# 1 2

@verbatim

  #line 5 "f"
@end verbatim

@macro macr
# line 7 "k"
@end macro

@email{after lacro def}

# line 7 "k"

@email{after macro call}.

@macro macrtwo
line before
# line 666 "x"
@end macro

@email{after macrotwo def}

line before
# line 666 "x"

@email{after macrotwo call}. 



@email{in}

@email{after inc}. 

@verb{:
#line 5 "in verb"
:}

@email{after verb}

a@footnote{
in footnote}

a@footnote{

in 2footnote}


@email{ 
etext1,
etext2
}

@email{
 no line directive mail space,
 no line directive text space
}

@email{ 
 mail space,
 text space
}

@email{ 

}etext3,


etext4





@documentlanguage làng

@bye
';


$result_texts{'cpp_lines'} = '

before top.


# 10 25 209
# 1 2


  #line 5 "f"


after lacro def

# line 7 "k"

after macro call.


after macrotwo def

line before
# line 666 "x"

after macrotwo call. 



in

after inc. 


#line 5 "in verb"


after verb

a

a


etext2

 no line directive text space

 text space


etext3,


etext4






';

$result_nodes{'cpp_lines'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'node_directions' => {
        'next' => {
          'cmdname' => 'node',
          'extra' => {
            'node_directions' => {
              'prev' => {}
            },
            'normalized' => 'chap'
          }
        }
      },
      'normalized' => 'Top'
    }
  },
  {}
];
$result_nodes{'cpp_lines'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'cpp_lines'}[0];
$result_nodes{'cpp_lines'}[1] = $result_nodes{'cpp_lines'}[0]{'extra'}{'node_directions'}{'next'};

$result_menus{'cpp_lines'} = [
  {
    'extra' => {
      'normalized' => 'Top'
    }
  },
  {
    'extra' => {
      'normalized' => 'chap'
    }
  }
];

$result_errors{'cpp_lines'} = [
  {
    'error_line' => '@email missing closing brace
',
    'file_name' => 'email12',
    'line_nr' => 64,
    'text' => '@email missing closing brace',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced }
',
    'file_name' => 'email4',
    'line_nr' => 63,
    'text' => 'misplaced }',
    'type' => 'error'
  },
  {
    'error_line' => "warning: l\x{e0}ng is not a valid language code
",
    'file_name' => 'accentÃªd',
    'line_nr' => 7,
    'text' => "l\x{e0}ng is not a valid language code",
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: node `chap\' not in menu
',
    'file_name' => 'g_f',
    'line_nr' => 71,
    'text' => 'node `chap\' not in menu',
    'type' => 'warning'
  }
];


$result_floats{'cpp_lines'} = {};


1;
