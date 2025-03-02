use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'value_expansion_in_include'} = '*document_root C3
 *before_node_section C9
  *@set C2
  |INFO
  |arg_line:{ testvar incl-incl.txi\\n}
   {rawline_arg:testvar}
   {rawline_arg:incl-incl.txi}
  {empty_line:\\n}
  *@c C1
   {rawline_arg: test - in the variable name, and concatenation of text after.\\n}
  *@set C2
  |INFO
  |arg_line:{ test-var incl-incl.tx\\n}
   {rawline_arg:test-var}
   {rawline_arg:incl-incl.tx}
  {empty_line:\\n}
  *@c C1
   {rawline_arg: test - in the variable name, and concatenation of text before and after.\\n}
  *@set C2
  |INFO
  |arg_line:{ test_var ncl-incl.tx\\n}
   {rawline_arg:test_var}
   {rawline_arg:ncl-incl.tx}
  {empty_line:\\n}
  {empty_line:\\n}
 *0 @node C1 l10 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |node_directions:D[next->E1]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @node C18 l11 {chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |node_directions:D[prev->E0]
 |normalized:{chap}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap}
  {empty_line:\\n}
  *paragraph C4
   {testvar include: }
   >SOURCEMARKS
   >include<start;1><p:17>
    >*@include C1 l13
    >|INFO
    >|spaces_before_argument:
     >|{ }
     >|>SOURCEMARKS
     >|>value_expansion<start;1><p:1>{incl-incl.txi}
      >|>*@value C1
       >|>*brace_container C1
        >|>{testvar}
    >|EXTRA
    >|text_arg:{incl-incl.txi}
     >*line_arg C1
     >|INFO
     >|spaces_after_argument:
      >|{\\n}
      >{incl-incl.txi}
      >>SOURCEMARKS
      >>value_expansion<end;1><p:13>
   {This is the }
   *2 @emph C1 incl-incl.txi:l1
    *brace_container C1
     {included}
   { file (include-value2.txi) <> ---. \\n}
   >SOURCEMARKS
   >include<end;1><p:36>
  {empty_line:\\n}
  *paragraph C1
   {testvar verbatiminclude: }
  *@verbatiminclude C1 l15
  |INFO
  |spaces_before_argument:
   |{ }
   |>SOURCEMARKS
   |>value_expansion<start;2><p:1>{incl-incl.txi}
    |>*@value C1
     |>*brace_container C1
      |>{testvar}
  |EXTRA
  |input_encoding_name:{utf-8}
  |text_arg:{incl-incl.txi}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {incl-incl.txi}
    >SOURCEMARKS
    >value_expansion<end;2><p:13>
  {empty_line:\\n}
  {empty_line:\\n}
  *paragraph C4
   {test-var include: }
   >SOURCEMARKS
   >include<start;2><p:18>
    >*@include C1 l18
    >|INFO
    >|spaces_before_argument:
     >|{ }
     >|>SOURCEMARKS
     >|>value_expansion<start;3><p:1>{incl-incl.tx}
      >|>*@value C1
       >|>*brace_container C1
        >|>{test-var}
    >|EXTRA
    >|text_arg:{incl-incl.txi}
     >*line_arg C1
     >|INFO
     >|spaces_after_argument:
      >|{\\n}
      >{incl-incl.txi}
      >>SOURCEMARKS
      >>value_expansion<end;3><p:12>
   {This is the }
   *3 @emph C1 incl-incl.txi:l1
    *brace_container C1
     {included}
   { file (include-value2.txi) <> ---. \\n}
   >SOURCEMARKS
   >include<end;2><p:36>
  {empty_line:\\n}
  *paragraph C1
   {test-var verbatiminclude: }
  *@verbatiminclude C1 l20
  |INFO
  |spaces_before_argument:
   |{ }
   |>SOURCEMARKS
   |>value_expansion<start;4><p:1>{incl-incl.tx}
    |>*@value C1
     |>*brace_container C1
      |>{test-var}
  |EXTRA
  |input_encoding_name:{utf-8}
  |text_arg:{incl-incl.txi}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {incl-incl.txi}
    >SOURCEMARKS
    >value_expansion<end;4><p:12>
  {empty_line:\\n}
  {empty_line:\\n}
  *paragraph C4
   {test_var include: }
   >SOURCEMARKS
   >include<start;3><p:18>
    >*@include C1 l23
    >|INFO
    >|spaces_before_argument:
     >|{ }
    >|EXTRA
    >|text_arg:{incl-incl.txi}
     >*line_arg C1
     >|INFO
     >|spaces_after_argument:
      >|{\\n}
      >{incl-incl.txi}
      >>SOURCEMARKS
      >>value_expansion<start;5><p:1>{ncl-incl.tx}
       >>*@value C1
        >>*brace_container C1
         >>{test_var}
      >>value_expansion<end;5><p:12>
   {This is the }
   *4 @emph C1 incl-incl.txi:l1
    *brace_container C1
     {included}
   { file (include-value2.txi) <> ---. \\n}
   >SOURCEMARKS
   >include<end;3><p:36>
  {empty_line:\\n}
  *paragraph C1
   {test_var verbatiminclude: }
  *@verbatiminclude C1 l25
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |input_encoding_name:{utf-8}
  |text_arg:{incl-incl.txi}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {incl-incl.txi}
    >SOURCEMARKS
    >value_expansion<start;6><p:1>{ncl-incl.tx}
     >*@value C1
      >*brace_container C1
       >{test_var}
    >value_expansion<end;6><p:12>
';


$result_texis{'value_expansion_in_include'} = '@set testvar incl-incl.txi

@c test - in the variable name, and concatenation of text after.
@set test-var incl-incl.tx

@c test - in the variable name, and concatenation of text before and after.
@set test_var ncl-incl.tx


@node Top
@node chap

testvar include: This is the @emph{included} file (include-value2.txi) <> ---. 

testvar verbatiminclude: @verbatiminclude incl-incl.txi


test-var include: This is the @emph{included} file (include-value2.txi) <> ---. 

test-var verbatiminclude: @verbatiminclude incl-incl.txi


test_var include: This is the @emph{included} file (include-value2.txi) <> ---. 

test_var verbatiminclude: @verbatiminclude incl-incl.txi
';


$result_texts{'value_expansion_in_include'} = '




testvar include: This is the included file (include-value2.txi) <> --. 

testvar verbatiminclude: 

test-var include: This is the included file (include-value2.txi) <> --. 

test-var verbatiminclude: 

test_var include: This is the included file (include-value2.txi) <> --. 

test_var verbatiminclude: ';

$result_nodes{'value_expansion_in_include'} = [
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
$result_nodes{'value_expansion_in_include'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'value_expansion_in_include'}[0];
$result_nodes{'value_expansion_in_include'}[1] = $result_nodes{'value_expansion_in_include'}[0]{'extra'}{'node_directions'}{'next'};

$result_menus{'value_expansion_in_include'} = [
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

$result_errors{'value_expansion_in_include'} = [
  {
    'error_line' => 'warning: @include should only appear at the beginning of a line
',
    'line_nr' => 13,
    'text' => '@include should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @verbatiminclude should only appear at the beginning of a line
',
    'line_nr' => 15,
    'text' => '@verbatiminclude should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @include should only appear at the beginning of a line
',
    'line_nr' => 18,
    'text' => '@include should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @verbatiminclude should only appear at the beginning of a line
',
    'line_nr' => 20,
    'text' => '@verbatiminclude should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @include should only appear at the beginning of a line
',
    'line_nr' => 23,
    'text' => '@include should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @verbatiminclude should only appear at the beginning of a line
',
    'line_nr' => 25,
    'text' => '@verbatiminclude should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: node `chap\' not in menu
',
    'line_nr' => 11,
    'text' => 'node `chap\' not in menu',
    'type' => 'warning'
  }
];


$result_floats{'value_expansion_in_include'} = {};


1;
