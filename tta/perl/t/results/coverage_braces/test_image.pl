use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'test_image'} = '*document_root C3
 *before_node_section C4
  *0 @macro C5 l1
  |EXTRA
  |macro_name:{files-char}
  |misc_args:A{}
   *arguments_line C1
    {macro_line: files-char\\n}
   {raw:@image{f@@i--le@/.@.  a@@<"%@@@verb{:  < & @ % " :} ,,,,.ext@@i--le@/.@.  a@@<"%@@@verb{:  < & @ % " :}}\\n}
   {raw:\\n}
   {raw:In text @image{f@@i--le@/.@.  a@@<"%@@@verb{:  < & @ % " :} ,1in, 1cm, alt @b{@^{@dotless{i}}--le@/.@.}  a@*<"%@@@verb{:  < & @ % " :}  ,.ext@@i--le@/.@.  a@@<"%@@@verb{:  < & @ % " :}}.\\n}
   *@end C1 l5
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
  *1 @copying C5 l7
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *paragraph C3
    {Text in copying.\\n}
    >SOURCEMARKS
    >macro_expansion<start;1><p:17>
     >*macro_call C1
     >|INFO
     >|command_name:{files-char}
      >*brace_arg
    *2 @image C5 l9:@files-char
    |EXTRA
    |input_encoding_name:{utf-8}
     *brace_arg C11
     |INFO
     |spaces_after_argument:
      |{ }
      {f}
      *@@
      {i--le}
      *@/
      {.}
      *@.
      {  a}
      *@@
      {<"%}
      *@@
      *3 @verb C1 l9:@files-char
      |INFO
      |delimiter:{:}
       *brace_container C1
        {raw:  < & @ % " }
     *brace_arg
     *brace_arg
     *brace_arg
     *brace_arg C11
      {.ext}
      *@@
      {i--le}
      *@/
      {.}
      *@.
      {  a}
      *@@
      {<"%}
      *@@
      *4 @verb C1 l9:@files-char
      |INFO
      |delimiter:{:}
       *brace_container C1
        {raw:  < & @ % " }
    {\\n}
   {empty_line:\\n}
   *paragraph C3
    {In text }
    *5 @image C5 l9:@files-char
    |EXTRA
    |input_encoding_name:{utf-8}
     *brace_arg C11
     |INFO
     |spaces_after_argument:
      |{ }
      {f}
      *@@
      {i--le}
      *@/
      {.}
      *@.
      {  a}
      *@@
      {<"%}
      *@@
      *6 @verb C1 l9:@files-char
      |INFO
      |delimiter:{:}
       *brace_container C1
        {raw:  < & @ % " }
     *brace_arg C1
      {1in}
     *brace_arg C1
     |INFO
     |spaces_before_argument:
      |{ }
      {1cm}
     *brace_arg C7
     |INFO
     |spaces_after_argument:
      |{  }
     |spaces_before_argument:
      |{ }
      {alt }
      *7 @b C1 l9:@files-char
       *brace_container C5
        *8 @^ C1 l9:@files-char
         *brace_container C1
          *9 @dotless C1 l9:@files-char
           *brace_container C1
            {i}
        {--le}
        *@/
        {.}
        *@.
      {  a}
      *@*
      {<"%}
      *@@
      *10 @verb C1 l9:@files-char
      |INFO
      |delimiter:{:}
       *brace_container C1
        {raw:  < & @ % " }
     *brace_arg C11
      {.ext}
      *@@
      {i--le}
      *@/
      {.}
      *@.
      {  a}
      *@@
      {<"%}
      *@@
      *11 @verb C1 l9:@files-char
      |INFO
      |delimiter:{:}
       *brace_container C1
        {raw:  < & @ % " }
    {.\\n}
    >SOURCEMARKS
    >macro_expansion<end;1><p:1>
   *@end C1 l10
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{copying}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {copying}
  {empty_line:\\n}
 *12 @node C1 l12 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |node_directions:D[next->E13]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *13 @node C16 l13 {chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |node_directions:D[prev->E12]
 |normalized:{chapter}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter}
  {empty_line:\\n}
  >SOURCEMARKS
  >macro_expansion<start;2><p:1>
   >*macro_call C1
   >|INFO
   >|command_name:{files-char}
    >*brace_arg
  *14 @image C5 l15:@files-char
  |EXTRA
  |input_encoding_name:{utf-8}
   *brace_arg C11
   |INFO
   |spaces_after_argument:
    |{ }
    {f}
    *@@
    {i--le}
    *@/
    {.}
    *@.
    {  a}
    *@@
    {<"%}
    *@@
    *15 @verb C1 l15:@files-char
    |INFO
    |delimiter:{:}
     *brace_container C1
      {raw:  < & @ % " }
   *brace_arg
   *brace_arg
   *brace_arg
   *brace_arg C11
    {.ext}
    *@@
    {i--le}
    *@/
    {.}
    *@.
    {  a}
    *@@
    {<"%}
    *@@
    *16 @verb C1 l15:@files-char
    |INFO
    |delimiter:{:}
     *brace_container C1
      {raw:  < & @ % " }
  {\\n}
  {empty_line:\\n}
  *paragraph C3
   {In text }
   *17 @image C5 l15:@files-char
   |EXTRA
   |input_encoding_name:{utf-8}
    *brace_arg C11
    |INFO
    |spaces_after_argument:
     |{ }
     {f}
     *@@
     {i--le}
     *@/
     {.}
     *@.
     {  a}
     *@@
     {<"%}
     *@@
     *18 @verb C1 l15:@files-char
     |INFO
     |delimiter:{:}
      *brace_container C1
       {raw:  < & @ % " }
    *brace_arg C1
     {1in}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {1cm}
    *brace_arg C7
    |INFO
    |spaces_after_argument:
     |{  }
    |spaces_before_argument:
     |{ }
     {alt }
     *19 @b C1 l15:@files-char
      *brace_container C5
       *20 @^ C1 l15:@files-char
        *brace_container C1
         *21 @dotless C1 l15:@files-char
          *brace_container C1
           {i}
       {--le}
       *@/
       {.}
       *@.
     {  a}
     *@*
     {<"%}
     *@@
     *22 @verb C1 l15:@files-char
     |INFO
     |delimiter:{:}
      *brace_container C1
       {raw:  < & @ % " }
    *brace_arg C11
     {.ext}
     *@@
     {i--le}
     *@/
     {.}
     *@.
     {  a}
     *@@
     {<"%}
     *@@
     *23 @verb C1 l15:@files-char
     |INFO
     |delimiter:{:}
      *brace_container C1
       {raw:  < & @ % " }
   {.\\n}
   >SOURCEMARKS
   >macro_expansion<end;2><p:1>
  {empty_line:\\n}
  *paragraph C1
   {Insertcopying\\n}
  *@insertcopying C1 l18
  |EXTRA
  |global_command_number:{1}
   {rawline_arg:\\n}
  {empty_line:\\n}
  *24 @example C3 l20
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *preformatted C7
    {}
    >SOURCEMARKS
    >macro_expansion<start;3>
     >*macro_call C1
     >|INFO
     >|command_name:{files-char}
      >*brace_arg
    *25 @image C5 l21:@files-char
    |EXTRA
    |input_encoding_name:{utf-8}
     *brace_arg C11
     |INFO
     |spaces_after_argument:
      |{ }
      {f}
      *@@
      {i--le}
      *@/
      {.}
      *@.
      {  a}
      *@@
      {<"%}
      *@@
      *26 @verb C1 l21:@files-char
      |INFO
      |delimiter:{:}
       *brace_container C1
        {raw:  < & @ % " }
     *brace_arg
     *brace_arg
     *brace_arg
     *brace_arg C11
      {.ext}
      *@@
      {i--le}
      *@/
      {.}
      *@.
      {  a}
      *@@
      {<"%}
      *@@
      *27 @verb C1 l21:@files-char
      |INFO
      |delimiter:{:}
       *brace_container C1
        {raw:  < & @ % " }
    {\\n}
    {empty_line:\\n}
    {In text }
    *28 @image C5 l21:@files-char
    |EXTRA
    |input_encoding_name:{utf-8}
     *brace_arg C11
     |INFO
     |spaces_after_argument:
      |{ }
      {f}
      *@@
      {i--le}
      *@/
      {.}
      *@.
      {  a}
      *@@
      {<"%}
      *@@
      *29 @verb C1 l21:@files-char
      |INFO
      |delimiter:{:}
       *brace_container C1
        {raw:  < & @ % " }
     *brace_arg C1
      {1in}
     *brace_arg C1
     |INFO
     |spaces_before_argument:
      |{ }
      {1cm}
     *brace_arg C7
     |INFO
     |spaces_after_argument:
      |{  }
     |spaces_before_argument:
      |{ }
      {alt }
      *30 @b C1 l21:@files-char
       *brace_container C5
        *31 @^ C1 l21:@files-char
         *brace_container C1
          *32 @dotless C1 l21:@files-char
           *brace_container C1
            {i}
        {--le}
        *@/
        {.}
        *@.
      {  a}
      *@*
      {<"%}
      *@@
      *33 @verb C1 l21:@files-char
      |INFO
      |delimiter:{:}
       *brace_container C1
        {raw:  < & @ % " }
     *brace_arg C11
      {.ext}
      *@@
      {i--le}
      *@/
      {.}
      *@.
      {  a}
      *@@
      {<"%}
      *@@
      *34 @verb C1 l21:@files-char
      |INFO
      |delimiter:{:}
       *brace_container C1
        {raw:  < & @ % " }
    {.\\n}
    >SOURCEMARKS
    >macro_expansion<end;3><p:1>
   *@end C1 l22
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{example}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {example}
  {empty_line:\\n}
  *35 @float C9 l24
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |caption:[E46]
  |float_number:{1}
  |float_type:{Image}
  |global_command_number:{1}
  |is_target:{1}
  |normalized:{Image-with-commands}
   *arguments_line C2
   >SOURCEMARKS
   >macro_expansion<start;4>
    >*macro_call C1
    >|INFO
    >|command_name:{files-char}
     >*brace_arg
    *block_line_arg C1
     {Image}
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
    |spaces_before_argument:
     |{ }
     {Image with commands}
   *36 @image C5 l25:@files-char
   |EXTRA
   |input_encoding_name:{utf-8}
    *brace_arg C11
    |INFO
    |spaces_after_argument:
     |{ }
     {f}
     *@@
     {i--le}
     *@/
     {.}
     *@.
     {  a}
     *@@
     {<"%}
     *@@
     *37 @verb C1 l25:@files-char
     |INFO
     |delimiter:{:}
      *brace_container C1
       {raw:  < & @ % " }
    *brace_arg
    *brace_arg
    *brace_arg
    *brace_arg C11
     {.ext}
     *@@
     {i--le}
     *@/
     {.}
     *@.
     {  a}
     *@@
     {<"%}
     *@@
     *38 @verb C1 l25:@files-char
     |INFO
     |delimiter:{:}
      *brace_container C1
       {raw:  < & @ % " }
   {\\n}
   {empty_line:\\n}
   *paragraph C3
    {In text }
    *39 @image C5 l25:@files-char
    |EXTRA
    |input_encoding_name:{utf-8}
     *brace_arg C11
     |INFO
     |spaces_after_argument:
      |{ }
      {f}
      *@@
      {i--le}
      *@/
      {.}
      *@.
      {  a}
      *@@
      {<"%}
      *@@
      *40 @verb C1 l25:@files-char
      |INFO
      |delimiter:{:}
       *brace_container C1
        {raw:  < & @ % " }
     *brace_arg C1
      {1in}
     *brace_arg C1
     |INFO
     |spaces_before_argument:
      |{ }
      {1cm}
     *brace_arg C7
     |INFO
     |spaces_after_argument:
      |{  }
     |spaces_before_argument:
      |{ }
      {alt }
      *41 @b C1 l25:@files-char
       *brace_container C5
        *42 @^ C1 l25:@files-char
         *brace_container C1
          *43 @dotless C1 l25:@files-char
           *brace_container C1
            {i}
        {--le}
        *@/
        {.}
        *@.
      {  a}
      *@*
      {<"%}
      *@@
      *44 @verb C1 l25:@files-char
      |INFO
      |delimiter:{:}
       *brace_container C1
        {raw:  < & @ % " }
     *brace_arg C11
      {.ext}
      *@@
      {i--le}
      *@/
      {.}
      *@.
      {  a}
      *@@
      {<"%}
      *@@
      *45 @verb C1 l25:@files-char
      |INFO
      |delimiter:{:}
       *brace_container C1
        {raw:  < & @ % " }
    {.\\n}
    >SOURCEMARKS
    >macro_expansion<end;4><p:1>
   {empty_line:\\n}
   *46 @caption C1 l27
   |EXTRA
   |float:[E35]
    *brace_command_context C5
     {}
     >SOURCEMARKS
     >macro_expansion<start;5>
      >*macro_call C1
      >|INFO
      >|command_name:{files-char}
       >*brace_arg
     *47 @image C5 l27:@files-char
     |EXTRA
     |input_encoding_name:{utf-8}
      *brace_arg C11
      |INFO
      |spaces_after_argument:
       |{ }
       {f}
       *@@
       {i--le}
       *@/
       {.}
       *@.
       {  a}
       *@@
       {<"%}
       *@@
       *48 @verb C1 l27:@files-char
       |INFO
       |delimiter:{:}
        *brace_container C1
         {raw:  < & @ % " }
      *brace_arg
      *brace_arg
      *brace_arg
      *brace_arg C11
       {.ext}
       *@@
       {i--le}
       *@/
       {.}
       *@.
       {  a}
       *@@
       {<"%}
       *@@
       *49 @verb C1 l27:@files-char
       |INFO
       |delimiter:{:}
        *brace_container C1
         {raw:  < & @ % " }
     {\\n}
     {empty_line:\\n}
     *paragraph C3
      {In text }
      *50 @image C5 l27:@files-char
      |EXTRA
      |input_encoding_name:{utf-8}
       *brace_arg C11
       |INFO
       |spaces_after_argument:
        |{ }
        {f}
        *@@
        {i--le}
        *@/
        {.}
        *@.
        {  a}
        *@@
        {<"%}
        *@@
        *51 @verb C1 l27:@files-char
        |INFO
        |delimiter:{:}
         *brace_container C1
          {raw:  < & @ % " }
       *brace_arg C1
        {1in}
       *brace_arg C1
       |INFO
       |spaces_before_argument:
        |{ }
        {1cm}
       *brace_arg C7
       |INFO
       |spaces_after_argument:
        |{  }
       |spaces_before_argument:
        |{ }
        {alt }
        *52 @b C1 l27:@files-char
         *brace_container C5
          *53 @^ C1 l27:@files-char
           *brace_container C1
            *54 @dotless C1 l27:@files-char
             *brace_container C1
              {i}
          {--le}
          *@/
          {.}
          *@.
        {  a}
        *@*
        {<"%}
        *@@
        *55 @verb C1 l27:@files-char
        |INFO
        |delimiter:{:}
         *brace_container C1
          {raw:  < & @ % " }
       *brace_arg C11
        {.ext}
        *@@
        {i--le}
        *@/
        {.}
        *@.
        {  a}
        *@@
        {<"%}
        *@@
        *56 @verb C1 l27:@files-char
        |INFO
        |delimiter:{:}
         *brace_container C1
          {raw:  < & @ % " }
      {.}
      >SOURCEMARKS
      >macro_expansion<end;5><p:1>
   {spaces_after_close_brace:\\n}
   *@end C1 l28
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{float}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {float}
  {empty_line:\\n}
  *@listoffloats C1 l30
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |float_type:{Image}
  |global_command_number:{1}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Image}
  {empty_line:\\n}
';


$result_texis{'test_image'} = '@macro files-char
@image{f@@i--le@/.@.  a@@<"%@@@verb{:  < & @ % " :} ,,,,.ext@@i--le@/.@.  a@@<"%@@@verb{:  < & @ % " :}}

In text @image{f@@i--le@/.@.  a@@<"%@@@verb{:  < & @ % " :} ,1in, 1cm, alt @b{@^{@dotless{i}}--le@/.@.}  a@*<"%@@@verb{:  < & @ % " :}  ,.ext@@i--le@/.@.  a@@<"%@@@verb{:  < & @ % " :}}.
@end macro

@copying
Text in copying.
@image{f@@i--le@/.@.  a@@<"%@@@verb{:  < & @ % " :} ,,,,.ext@@i--le@/.@.  a@@<"%@@@verb{:  < & @ % " :}}

In text @image{f@@i--le@/.@.  a@@<"%@@@verb{:  < & @ % " :} ,1in, 1cm, alt @b{@^{@dotless{i}}--le@/.@.}  a@*<"%@@@verb{:  < & @ % " :}  ,.ext@@i--le@/.@.  a@@<"%@@@verb{:  < & @ % " :}}.
@end copying

@node Top
@node chapter

@image{f@@i--le@/.@.  a@@<"%@@@verb{:  < & @ % " :} ,,,,.ext@@i--le@/.@.  a@@<"%@@@verb{:  < & @ % " :}}

In text @image{f@@i--le@/.@.  a@@<"%@@@verb{:  < & @ % " :} ,1in, 1cm, alt @b{@^{@dotless{i}}--le@/.@.}  a@*<"%@@@verb{:  < & @ % " :}  ,.ext@@i--le@/.@.  a@@<"%@@@verb{:  < & @ % " :}}.

Insertcopying
@insertcopying

@example
@image{f@@i--le@/.@.  a@@<"%@@@verb{:  < & @ % " :} ,,,,.ext@@i--le@/.@.  a@@<"%@@@verb{:  < & @ % " :}}

In text @image{f@@i--le@/.@.  a@@<"%@@@verb{:  < & @ % " :} ,1in, 1cm, alt @b{@^{@dotless{i}}--le@/.@.}  a@*<"%@@@verb{:  < & @ % " :}  ,.ext@@i--le@/.@.  a@@<"%@@@verb{:  < & @ % " :}}.
@end example

@float Image, Image with commands
@image{f@@i--le@/.@.  a@@<"%@@@verb{:  < & @ % " :} ,,,,.ext@@i--le@/.@.  a@@<"%@@@verb{:  < & @ % " :}}

In text @image{f@@i--le@/.@.  a@@<"%@@@verb{:  < & @ % " :} ,1in, 1cm, alt @b{@^{@dotless{i}}--le@/.@.}  a@*<"%@@@verb{:  < & @ % " :}  ,.ext@@i--le@/.@.  a@@<"%@@@verb{:  < & @ % " :}}.

@caption{@image{f@@i--le@/.@.  a@@<"%@@@verb{:  < & @ % " :} ,,,,.ext@@i--le@/.@.  a@@<"%@@@verb{:  < & @ % " :}}

In text @image{f@@i--le@/.@.  a@@<"%@@@verb{:  < & @ % " :} ,1in, 1cm, alt @b{@^{@dotless{i}}--le@/.@.}  a@*<"%@@@verb{:  < & @ % " :}  ,.ext@@i--le@/.@.  a@@<"%@@@verb{:  < & @ % " :}}.}
@end float

@listoffloats Image

';


$result_texts{'test_image'} = '


f@i--le..  a@<"%@  < & @ % " 

In text f@i--le..  a@<"%@  < & @ % " .

Insertcopying

f@i--le..  a@<"%@  < & @ % " 

In text f@i--le..  a@<"%@  < & @ % " .

Image, Image with commands
f@i--le..  a@<"%@  < & @ % " 

In text f@i--le..  a@<"%@  < & @ % " .



';

$result_nodes{'test_image'} = [
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
            'normalized' => 'chapter'
          }
        }
      },
      'normalized' => 'Top'
    }
  },
  {}
];
$result_nodes{'test_image'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'test_image'}[0];
$result_nodes{'test_image'}[1] = $result_nodes{'test_image'}[0]{'extra'}{'node_directions'}{'next'};

$result_menus{'test_image'} = [
  {
    'extra' => {
      'normalized' => 'Top'
    }
  },
  {
    'extra' => {
      'normalized' => 'chapter'
    }
  }
];

$result_errors{'test_image'} = [
  {
    'error_line' => 'warning: @verb should not appear anywhere inside @image (possibly involving @files-char)
',
    'line_nr' => 9,
    'macro' => 'files-char',
    'text' => '@verb should not appear anywhere inside @image',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @verb should not appear anywhere inside @image (possibly involving @files-char)
',
    'line_nr' => 9,
    'macro' => 'files-char',
    'text' => '@verb should not appear anywhere inside @image',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @verb should not appear anywhere inside @image (possibly involving @files-char)
',
    'line_nr' => 9,
    'macro' => 'files-char',
    'text' => '@verb should not appear anywhere inside @image',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @verb should not appear anywhere inside @image (possibly involving @files-char)
',
    'line_nr' => 9,
    'macro' => 'files-char',
    'text' => '@verb should not appear anywhere inside @image',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @verb should not appear anywhere inside @image (possibly involving @files-char)
',
    'line_nr' => 9,
    'macro' => 'files-char',
    'text' => '@verb should not appear anywhere inside @image',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @verb should not appear anywhere inside @image (possibly involving @files-char)
',
    'line_nr' => 15,
    'macro' => 'files-char',
    'text' => '@verb should not appear anywhere inside @image',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @verb should not appear anywhere inside @image (possibly involving @files-char)
',
    'line_nr' => 15,
    'macro' => 'files-char',
    'text' => '@verb should not appear anywhere inside @image',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @verb should not appear anywhere inside @image (possibly involving @files-char)
',
    'line_nr' => 15,
    'macro' => 'files-char',
    'text' => '@verb should not appear anywhere inside @image',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @verb should not appear anywhere inside @image (possibly involving @files-char)
',
    'line_nr' => 15,
    'macro' => 'files-char',
    'text' => '@verb should not appear anywhere inside @image',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @verb should not appear anywhere inside @image (possibly involving @files-char)
',
    'line_nr' => 15,
    'macro' => 'files-char',
    'text' => '@verb should not appear anywhere inside @image',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @verb should not appear anywhere inside @image (possibly involving @files-char)
',
    'line_nr' => 21,
    'macro' => 'files-char',
    'text' => '@verb should not appear anywhere inside @image',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @verb should not appear anywhere inside @image (possibly involving @files-char)
',
    'line_nr' => 21,
    'macro' => 'files-char',
    'text' => '@verb should not appear anywhere inside @image',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @verb should not appear anywhere inside @image (possibly involving @files-char)
',
    'line_nr' => 21,
    'macro' => 'files-char',
    'text' => '@verb should not appear anywhere inside @image',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @verb should not appear anywhere inside @image (possibly involving @files-char)
',
    'line_nr' => 21,
    'macro' => 'files-char',
    'text' => '@verb should not appear anywhere inside @image',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @verb should not appear anywhere inside @image (possibly involving @files-char)
',
    'line_nr' => 21,
    'macro' => 'files-char',
    'text' => '@verb should not appear anywhere inside @image',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @verb should not appear anywhere inside @image (possibly involving @files-char)
',
    'line_nr' => 25,
    'macro' => 'files-char',
    'text' => '@verb should not appear anywhere inside @image',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @verb should not appear anywhere inside @image (possibly involving @files-char)
',
    'line_nr' => 25,
    'macro' => 'files-char',
    'text' => '@verb should not appear anywhere inside @image',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @verb should not appear anywhere inside @image (possibly involving @files-char)
',
    'line_nr' => 25,
    'macro' => 'files-char',
    'text' => '@verb should not appear anywhere inside @image',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @verb should not appear anywhere inside @image (possibly involving @files-char)
',
    'line_nr' => 25,
    'macro' => 'files-char',
    'text' => '@verb should not appear anywhere inside @image',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @verb should not appear anywhere inside @image (possibly involving @files-char)
',
    'line_nr' => 25,
    'macro' => 'files-char',
    'text' => '@verb should not appear anywhere inside @image',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @verb should not appear anywhere inside @image (possibly involving @files-char)
',
    'line_nr' => 27,
    'macro' => 'files-char',
    'text' => '@verb should not appear anywhere inside @image',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @verb should not appear anywhere inside @image (possibly involving @files-char)
',
    'line_nr' => 27,
    'macro' => 'files-char',
    'text' => '@verb should not appear anywhere inside @image',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @verb should not appear anywhere inside @image (possibly involving @files-char)
',
    'line_nr' => 27,
    'macro' => 'files-char',
    'text' => '@verb should not appear anywhere inside @image',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @verb should not appear anywhere inside @image (possibly involving @files-char)
',
    'line_nr' => 27,
    'macro' => 'files-char',
    'text' => '@verb should not appear anywhere inside @image',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @verb should not appear anywhere inside @image (possibly involving @files-char)
',
    'line_nr' => 27,
    'macro' => 'files-char',
    'text' => '@verb should not appear anywhere inside @image',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: node `chapter\' not in menu
',
    'line_nr' => 13,
    'text' => 'node `chapter\' not in menu',
    'type' => 'warning'
  }
];


$result_floats{'test_image'} = {
  'Image' => [
    {
      'cmdname' => 'float',
      'extra' => {
        'caption' => {
          'cmdname' => 'caption',
          'extra' => {
            'float' => {}
          }
        },
        'float_number' => '1',
        'float_type' => 'Image',
        'normalized' => 'Image-with-commands'
      }
    }
  ]
};
$result_floats{'test_image'}{'Image'}[0]{'extra'}{'caption'}{'extra'}{'float'} = $result_floats{'test_image'}{'Image'}[0];



$result_converted{'html'}->{'test_image'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, https://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<!-- Text in copying.
f@i-le..  a@<"%@  < & @ % " 

In text f@i-le..  a@<"%@  < & @ % " . -->
<title>Untitled Document</title>

<meta name="description" content="Untitled Document">
<meta name="keywords" content="Untitled Document">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="viewport" content="width=device-width,initial-scale=1">

<link href="#Top" rel="start" title="Top">
<style type="text/css">
<!--
a.copiable-link {visibility: hidden; text-decoration: none; line-height: 0em}
div.example {margin-left: 3.2em}
span:hover a.copiable-link {visibility: visible}
-->
</style>


</head>

<body lang="en">


<a class="node-id" id="Top"></a><div class="nav-panel">
<p>
Next: <a href="#chapter" accesskey="n" rel="next">chapter</a> &nbsp; </p>
</div>
<h1 class="node"><span>Top<a class="copiable-link" href="#Top"> &para;</a></span></h1>
<hr>
<a class="node-id" id="chapter"></a><div class="nav-panel">
<p>
Previous: <a href="#Top" accesskey="p" rel="prev">Top</a> &nbsp; </p>
</div>
<h4 class="node"><span>chapter<a class="copiable-link" href="#chapter"> &para;</a></span></h4>

<img class="image" src="f%40i--le..%20%20a%40%3c%22%25%40%20%20%3c%20%26%20%40%20%25%20%22%20.ext%40i--le..%20%20a%40%3c%22%25%40%20%20%3c%20%26%20%40%20%25%20%22%20" alt="f@i--le..  a@&lt;&quot;%@&nbsp;&nbsp;&lt;&nbsp;&amp;&nbsp;@&nbsp;%&nbsp;&quot;&nbsp;">

<p>In text <img class="image" src="f%40i--le..%20%20a%40%3c%22%25%40%20%20%3c%20%26%20%40%20%25%20%22%20.ext%40i--le..%20%20a%40%3c%22%25%40%20%20%3c%20%26%20%40%20%25%20%22%20" alt="alt &icirc;&ndash;le..  a
&lt;&quot;%@&nbsp;&nbsp;&lt;&nbsp;&amp;&nbsp;@&nbsp;%&nbsp;&quot;&nbsp;">.
</p>
<p>Insertcopying
</p><p>Text in copying.
<img class="image" src="f%40i--le..%20%20a%40%3c%22%25%40%20%20%3c%20%26%20%40%20%25%20%22%20.ext%40i--le..%20%20a%40%3c%22%25%40%20%20%3c%20%26%20%40%20%25%20%22%20" alt="f@i--le..  a@&lt;&quot;%@&nbsp;&nbsp;&lt;&nbsp;&amp;&nbsp;@&nbsp;%&nbsp;&quot;&nbsp;">
</p>
<p>In text <img class="image" src="f%40i--le..%20%20a%40%3c%22%25%40%20%20%3c%20%26%20%40%20%25%20%22%20.ext%40i--le..%20%20a%40%3c%22%25%40%20%20%3c%20%26%20%40%20%25%20%22%20" alt="alt &icirc;&ndash;le..  a
&lt;&quot;%@&nbsp;&nbsp;&lt;&nbsp;&amp;&nbsp;@&nbsp;%&nbsp;&quot;&nbsp;">.
</p>
<div class="example">
<pre class="example-preformatted"><img class="image" src="f%40i--le..%20%20a%40%3c%22%25%40%20%20%3c%20%26%20%40%20%25%20%22%20.ext%40i--le..%20%20a%40%3c%22%25%40%20%20%3c%20%26%20%40%20%25%20%22%20" alt="f@i--le..  a@&lt;&quot;%@&nbsp;&nbsp;&lt;&nbsp;&amp;&nbsp;@&nbsp;%&nbsp;&quot;&nbsp;">

In text <img class="image" src="f%40i--le..%20%20a%40%3c%22%25%40%20%20%3c%20%26%20%40%20%25%20%22%20.ext%40i--le..%20%20a%40%3c%22%25%40%20%20%3c%20%26%20%40%20%25%20%22%20" alt="alt &icirc;&ndash;le..  a
&lt;&quot;%@&nbsp;&nbsp;&lt;&nbsp;&amp;&nbsp;@&nbsp;%&nbsp;&quot;&nbsp;">.
</pre></div>

<div class="float" id="Image-with-commands">
<img class="image" src="f%40i--le..%20%20a%40%3c%22%25%40%20%20%3c%20%26%20%40%20%25%20%22%20.ext%40i--le..%20%20a%40%3c%22%25%40%20%20%3c%20%26%20%40%20%25%20%22%20" alt="f@i--le..  a@&lt;&quot;%@&nbsp;&nbsp;&lt;&nbsp;&amp;&nbsp;@&nbsp;%&nbsp;&quot;&nbsp;">

<p>In text <img class="image" src="f%40i--le..%20%20a%40%3c%22%25%40%20%20%3c%20%26%20%40%20%25%20%22%20.ext%40i--le..%20%20a%40%3c%22%25%40%20%20%3c%20%26%20%40%20%25%20%22%20" alt="alt &icirc;&ndash;le..  a
&lt;&quot;%@&nbsp;&nbsp;&lt;&nbsp;&amp;&nbsp;@&nbsp;%&nbsp;&quot;&nbsp;">.
</p>
<div class="caption"><img class="image" src="f%40i--le..%20%20a%40%3c%22%25%40%20%20%3c%20%26%20%40%20%25%20%22%20.ext%40i--le..%20%20a%40%3c%22%25%40%20%20%3c%20%26%20%40%20%25%20%22%20" alt="f@i--le..  a@&lt;&quot;%@&nbsp;&nbsp;&lt;&nbsp;&amp;&nbsp;@&nbsp;%&nbsp;&quot;&nbsp;">

<p><strong class="strong">Image 1: </strong>In text <img class="image" src="f%40i--le..%20%20a%40%3c%22%25%40%20%20%3c%20%26%20%40%20%25%20%22%20.ext%40i--le..%20%20a%40%3c%22%25%40%20%20%3c%20%26%20%40%20%25%20%22%20" alt="alt &icirc;&ndash;le..  a
&lt;&quot;%@&nbsp;&nbsp;&lt;&nbsp;&amp;&nbsp;@&nbsp;%&nbsp;&quot;&nbsp;">.</p></div></div>
<dl class="listoffloats">
<dt><a href="#Image-with-commands">Image 1</a></dt><dd class="caption-in-listoffloats"><img class="image" src="f%40i--le..%20%20a%40%3c%22%25%40%20%20%3c%20%26%20%40%20%25%20%22%20.ext%40i--le..%20%20a%40%3c%22%25%40%20%20%3c%20%26%20%40%20%25%20%22%20" alt="f@i--le..  a@&lt;&quot;%@&nbsp;&nbsp;&lt;&nbsp;&amp;&nbsp;@&nbsp;%&nbsp;&quot;&nbsp;">

<p>In text <img class="image" src="f%40i--le..%20%20a%40%3c%22%25%40%20%20%3c%20%26%20%40%20%25%20%22%20.ext%40i--le..%20%20a%40%3c%22%25%40%20%20%3c%20%26%20%40%20%25%20%22%20" alt="alt &icirc;&ndash;le..  a
&lt;&quot;%@&nbsp;&nbsp;&lt;&nbsp;&amp;&nbsp;@&nbsp;%&nbsp;&quot;&nbsp;">.</p></dd>
</dl>




</body>
</html>
';

$result_converted_errors{'html'}->{'test_image'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @image file `f@i--le..  a@<"%@  < & @ % " \' (for HTML) not found, using `f@i--le..  a@<"%@  < & @ % " .ext@i--le..  a@<"%@  < & @ % " \' (possibly involving @files-char)
',
    'line_nr' => 15,
    'macro' => 'files-char',
    'text' => '@image file `f@i--le..  a@<"%@  < & @ % " \' (for HTML) not found, using `f@i--le..  a@<"%@  < & @ % " .ext@i--le..  a@<"%@  < & @ % " \'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @image file `f@i--le..  a@<"%@  < & @ % " \' (for HTML) not found, using `f@i--le..  a@<"%@  < & @ % " .ext@i--le..  a@<"%@  < & @ % " \' (possibly involving @files-char)
',
    'line_nr' => 15,
    'macro' => 'files-char',
    'text' => '@image file `f@i--le..  a@<"%@  < & @ % " \' (for HTML) not found, using `f@i--le..  a@<"%@  < & @ % " .ext@i--le..  a@<"%@  < & @ % " \'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @image file `f@i--le..  a@<"%@  < & @ % " \' (for HTML) not found, using `f@i--le..  a@<"%@  < & @ % " .ext@i--le..  a@<"%@  < & @ % " \' (possibly involving @files-char)
',
    'line_nr' => 9,
    'macro' => 'files-char',
    'text' => '@image file `f@i--le..  a@<"%@  < & @ % " \' (for HTML) not found, using `f@i--le..  a@<"%@  < & @ % " .ext@i--le..  a@<"%@  < & @ % " \'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @image file `f@i--le..  a@<"%@  < & @ % " \' (for HTML) not found, using `f@i--le..  a@<"%@  < & @ % " .ext@i--le..  a@<"%@  < & @ % " \' (possibly involving @files-char)
',
    'line_nr' => 9,
    'macro' => 'files-char',
    'text' => '@image file `f@i--le..  a@<"%@  < & @ % " \' (for HTML) not found, using `f@i--le..  a@<"%@  < & @ % " .ext@i--le..  a@<"%@  < & @ % " \'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @image file `f@i--le..  a@<"%@  < & @ % " \' (for HTML) not found, using `f@i--le..  a@<"%@  < & @ % " .ext@i--le..  a@<"%@  < & @ % " \' (possibly involving @files-char)
',
    'line_nr' => 21,
    'macro' => 'files-char',
    'text' => '@image file `f@i--le..  a@<"%@  < & @ % " \' (for HTML) not found, using `f@i--le..  a@<"%@  < & @ % " .ext@i--le..  a@<"%@  < & @ % " \'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @image file `f@i--le..  a@<"%@  < & @ % " \' (for HTML) not found, using `f@i--le..  a@<"%@  < & @ % " .ext@i--le..  a@<"%@  < & @ % " \' (possibly involving @files-char)
',
    'line_nr' => 21,
    'macro' => 'files-char',
    'text' => '@image file `f@i--le..  a@<"%@  < & @ % " \' (for HTML) not found, using `f@i--le..  a@<"%@  < & @ % " .ext@i--le..  a@<"%@  < & @ % " \'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @image file `f@i--le..  a@<"%@  < & @ % " \' (for HTML) not found, using `f@i--le..  a@<"%@  < & @ % " .ext@i--le..  a@<"%@  < & @ % " \' (possibly involving @files-char)
',
    'line_nr' => 25,
    'macro' => 'files-char',
    'text' => '@image file `f@i--le..  a@<"%@  < & @ % " \' (for HTML) not found, using `f@i--le..  a@<"%@  < & @ % " .ext@i--le..  a@<"%@  < & @ % " \'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @image file `f@i--le..  a@<"%@  < & @ % " \' (for HTML) not found, using `f@i--le..  a@<"%@  < & @ % " .ext@i--le..  a@<"%@  < & @ % " \' (possibly involving @files-char)
',
    'line_nr' => 25,
    'macro' => 'files-char',
    'text' => '@image file `f@i--le..  a@<"%@  < & @ % " \' (for HTML) not found, using `f@i--le..  a@<"%@  < & @ % " .ext@i--le..  a@<"%@  < & @ % " \'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @image file `f@i--le..  a@<"%@  < & @ % " \' (for HTML) not found, using `f@i--le..  a@<"%@  < & @ % " .ext@i--le..  a@<"%@  < & @ % " \' (possibly involving @files-char)
',
    'line_nr' => 27,
    'macro' => 'files-char',
    'text' => '@image file `f@i--le..  a@<"%@  < & @ % " \' (for HTML) not found, using `f@i--le..  a@<"%@  < & @ % " .ext@i--le..  a@<"%@  < & @ % " \'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @image file `f@i--le..  a@<"%@  < & @ % " \' (for HTML) not found, using `f@i--le..  a@<"%@  < & @ % " .ext@i--le..  a@<"%@  < & @ % " \' (possibly involving @files-char)
',
    'line_nr' => 27,
    'macro' => 'files-char',
    'text' => '@image file `f@i--le..  a@<"%@  < & @ % " \' (for HTML) not found, using `f@i--le..  a@<"%@  < & @ % " .ext@i--le..  a@<"%@  < & @ % " \'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @image file `f@i--le..  a@<"%@  < & @ % " \' (for HTML) not found, using `f@i--le..  a@<"%@  < & @ % " .ext@i--le..  a@<"%@  < & @ % " \' (possibly involving @files-char)
',
    'line_nr' => 27,
    'macro' => 'files-char',
    'text' => '@image file `f@i--le..  a@<"%@  < & @ % " \' (for HTML) not found, using `f@i--le..  a@<"%@  < & @ % " .ext@i--le..  a@<"%@  < & @ % " \'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @image file `f@i--le..  a@<"%@  < & @ % " \' (for HTML) not found, using `f@i--le..  a@<"%@  < & @ % " .ext@i--le..  a@<"%@  < & @ % " \' (possibly involving @files-char)
',
    'line_nr' => 27,
    'macro' => 'files-char',
    'text' => '@image file `f@i--le..  a@<"%@  < & @ % " \' (for HTML) not found, using `f@i--le..  a@<"%@  < & @ % " .ext@i--le..  a@<"%@  < & @ % " \'',
    'type' => 'warning'
  }
];



$result_converted{'plaintext'}->{'test_image'} = '[f@i--le..  a@<"%@  < & @ % " ]

In text [alt î-le..  a
<"%@  < & @ % " ].

   Insertcopying
   Text in copying.  [f@i--le..  a@<"%@  < & @ % " ]

   In text [alt î-le..  a
<"%@  < & @ % " ].

     [f@i--le..  a@<"%@  < & @ % " ]

     In text [alt î-le..  a
<"%@  < & @ % " ].

[f@i--le..  a@<"%@  < & @ % " ]

In text [alt î-le..  a
<"%@  < & @ % " ].

Image 1: [f@i--le..  a@<"%@  < & @ % " ]

In text [alt î-le..  a
<"%@  < & @ % " ].

* Menu:

* Image 1: Image with commands.          

';

$result_converted_errors{'plaintext'}->{'test_image'} = [
  {
    'error_line' => 'warning: could not find @image file `f@i--le..  a@<"%@  < & @ % " .txt\' nor alternate text (possibly involving @files-char)
',
    'line_nr' => 15,
    'macro' => 'files-char',
    'text' => 'could not find @image file `f@i--le..  a@<"%@  < & @ % " .txt\' nor alternate text',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: could not find @image file `f@i--le..  a@<"%@  < & @ % " .txt\' nor alternate text (possibly involving @files-char)
',
    'line_nr' => 9,
    'macro' => 'files-char',
    'text' => 'could not find @image file `f@i--le..  a@<"%@  < & @ % " .txt\' nor alternate text',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: could not find @image file `f@i--le..  a@<"%@  < & @ % " .txt\' nor alternate text (possibly involving @files-char)
',
    'line_nr' => 21,
    'macro' => 'files-char',
    'text' => 'could not find @image file `f@i--le..  a@<"%@  < & @ % " .txt\' nor alternate text',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: could not find @image file `f@i--le..  a@<"%@  < & @ % " .txt\' nor alternate text (possibly involving @files-char)
',
    'line_nr' => 25,
    'macro' => 'files-char',
    'text' => 'could not find @image file `f@i--le..  a@<"%@  < & @ % " .txt\' nor alternate text',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: could not find @image file `f@i--le..  a@<"%@  < & @ % " .txt\' nor alternate text (possibly involving @files-char)
',
    'line_nr' => 27,
    'macro' => 'files-char',
    'text' => 'could not find @image file `f@i--le..  a@<"%@  < & @ % " .txt\' nor alternate text',
    'type' => 'warning'
  }
];



$result_converted{'latex_text'}->{'test_image'} = '

\\label{anchor:Top}%
\\label{anchor:chapter}%

\\includegraphics{f@i--le..  a@<"\\%@  < & @ \\% " }

In text \\includegraphics[width=1in,height=1cm]{f@i--le..  a@<"\\%@  < & @ \\% " }.

Insertcopying
Text in copying.
\\includegraphics{f@i--le..  a@<"\\%@  < & @ \\% " }

In text \\includegraphics[width=1in,height=1cm]{f@i--le..  a@<"\\%@  < & @ \\% " }.

\\begin{Texinfoindented}
\\begin{Texinfopreformatted}%
\\ttfamily \\includegraphics{f@i--le..  a@<"\\%@  < & @ \\% " }

In text \\includegraphics[width=1in,height=1cm]{f@i--le..  a@<"\\%@  < & @ \\% " }.
\\end{Texinfopreformatted}
\\end{Texinfoindented}

\\begin{TexinfoFloatImage}
\\includegraphics{f@i--le..  a@<"\\%@  < & @ \\% " }

In text \\includegraphics[width=1in,height=1cm]{f@i--le..  a@<"\\%@  < & @ \\% " }.

\\caption{\\includegraphics{f@i--le..  a@<"\\%@  < & @ \\% " }

In text \\includegraphics[width=1in,height=1cm]{f@i--le..  a@<"\\%@  < & @ \\% " }.}
\\label{anchor:Image-with-commands}%
\\end{TexinfoFloatImage}

\\listof{TexinfoFloatImage}{}

';

$result_converted_errors{'latex_text'}->{'test_image'} = [
  {
    'error_line' => 'warning: @image file `f@i--le..  a@<"%@  < & @ % " \' (for LaTeX) not found (possibly involving @files-char)
',
    'line_nr' => 15,
    'macro' => 'files-char',
    'text' => '@image file `f@i--le..  a@<"%@  < & @ % " \' (for LaTeX) not found',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @image file `f@i--le..  a@<"%@  < & @ % " \' (for LaTeX) not found (possibly involving @files-char)
',
    'line_nr' => 15,
    'macro' => 'files-char',
    'text' => '@image file `f@i--le..  a@<"%@  < & @ % " \' (for LaTeX) not found',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @image file `f@i--le..  a@<"%@  < & @ % " \' (for LaTeX) not found (possibly involving @files-char)
',
    'line_nr' => 9,
    'macro' => 'files-char',
    'text' => '@image file `f@i--le..  a@<"%@  < & @ % " \' (for LaTeX) not found',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @image file `f@i--le..  a@<"%@  < & @ % " \' (for LaTeX) not found (possibly involving @files-char)
',
    'line_nr' => 9,
    'macro' => 'files-char',
    'text' => '@image file `f@i--le..  a@<"%@  < & @ % " \' (for LaTeX) not found',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @image file `f@i--le..  a@<"%@  < & @ % " \' (for LaTeX) not found (possibly involving @files-char)
',
    'line_nr' => 21,
    'macro' => 'files-char',
    'text' => '@image file `f@i--le..  a@<"%@  < & @ % " \' (for LaTeX) not found',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @image file `f@i--le..  a@<"%@  < & @ % " \' (for LaTeX) not found (possibly involving @files-char)
',
    'line_nr' => 21,
    'macro' => 'files-char',
    'text' => '@image file `f@i--le..  a@<"%@  < & @ % " \' (for LaTeX) not found',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @image file `f@i--le..  a@<"%@  < & @ % " \' (for LaTeX) not found (possibly involving @files-char)
',
    'line_nr' => 25,
    'macro' => 'files-char',
    'text' => '@image file `f@i--le..  a@<"%@  < & @ % " \' (for LaTeX) not found',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @image file `f@i--le..  a@<"%@  < & @ % " \' (for LaTeX) not found (possibly involving @files-char)
',
    'line_nr' => 25,
    'macro' => 'files-char',
    'text' => '@image file `f@i--le..  a@<"%@  < & @ % " \' (for LaTeX) not found',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @image file `f@i--le..  a@<"%@  < & @ % " \' (for LaTeX) not found (possibly involving @files-char)
',
    'line_nr' => 27,
    'macro' => 'files-char',
    'text' => '@image file `f@i--le..  a@<"%@  < & @ % " \' (for LaTeX) not found',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @image file `f@i--le..  a@<"%@  < & @ % " \' (for LaTeX) not found (possibly involving @files-char)
',
    'line_nr' => 27,
    'macro' => 'files-char',
    'text' => '@image file `f@i--le..  a@<"%@  < & @ % " \' (for LaTeX) not found',
    'type' => 'warning'
  }
];



$result_converted{'docbook'}->{'test_image'} = '<anchor id="chapter"/>

<informalfigure><mediaobject><imageobject><imagedata fileref="f@i--le..  a@&lt;&quot;%@  &lt; &amp; @ % &quot; .jpg" format="JPG"></imagedata></imageobject></mediaobject></informalfigure>

<para>In text <inlinemediaobject><imageobject><imagedata fileref="f@i--le..  a@&lt;&quot;%@  &lt; &amp; @ % &quot; .jpg" format="JPG"></imagedata></imageobject></inlinemediaobject>.
</para>
<para>Insertcopying
</para><para>Text in copying.
<inlinemediaobject><imageobject><imagedata fileref="f@i--le..  a@&lt;&quot;%@  &lt; &amp; @ % &quot; .jpg" format="JPG"></imagedata></imageobject></inlinemediaobject>
</para>
<para>In text <inlinemediaobject><imageobject><imagedata fileref="f@i--le..  a@&lt;&quot;%@  &lt; &amp; @ % &quot; .jpg" format="JPG"></imagedata></imageobject></inlinemediaobject>.
</para>
<screen><inlinemediaobject><imageobject><imagedata fileref="f@i--le..  a@&lt;&quot;%@  &lt; &amp; @ % &quot; .jpg" format="JPG"></imagedata></imageobject></inlinemediaobject>

In text <inlinemediaobject><imageobject><imagedata fileref="f@i--le..  a@&lt;&quot;%@  &lt; &amp; @ % &quot; .jpg" format="JPG"></imagedata></imageobject></inlinemediaobject>.
</screen>
<anchor id="Image-with-commands"/>
<informalfigure><mediaobject><imageobject><imagedata fileref="f@i--le..  a@&lt;&quot;%@  &lt; &amp; @ % &quot; .jpg" format="JPG"></imagedata></imageobject></mediaobject></informalfigure>

<para>In text <inlinemediaobject><imageobject><imagedata fileref="f@i--le..  a@&lt;&quot;%@  &lt; &amp; @ % &quot; .jpg" format="JPG"></imagedata></imageobject></inlinemediaobject>.
</para>


';

$result_converted_errors{'docbook'}->{'test_image'} = [
  {
    'error_line' => 'warning: @image file `f@i--le..  a@<"%@  < & @ % " \' not found, using `f@i--le..  a@<"%@  < & @ % " .jpg\' (possibly involving @files-char)
',
    'line_nr' => 15,
    'macro' => 'files-char',
    'text' => '@image file `f@i--le..  a@<"%@  < & @ % " \' not found, using `f@i--le..  a@<"%@  < & @ % " .jpg\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @image file `f@i--le..  a@<"%@  < & @ % " \' not found, using `f@i--le..  a@<"%@  < & @ % " .jpg\' (possibly involving @files-char)
',
    'line_nr' => 15,
    'macro' => 'files-char',
    'text' => '@image file `f@i--le..  a@<"%@  < & @ % " \' not found, using `f@i--le..  a@<"%@  < & @ % " .jpg\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @image file `f@i--le..  a@<"%@  < & @ % " \' not found, using `f@i--le..  a@<"%@  < & @ % " .jpg\' (possibly involving @files-char)
',
    'line_nr' => 9,
    'macro' => 'files-char',
    'text' => '@image file `f@i--le..  a@<"%@  < & @ % " \' not found, using `f@i--le..  a@<"%@  < & @ % " .jpg\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @image file `f@i--le..  a@<"%@  < & @ % " \' not found, using `f@i--le..  a@<"%@  < & @ % " .jpg\' (possibly involving @files-char)
',
    'line_nr' => 9,
    'macro' => 'files-char',
    'text' => '@image file `f@i--le..  a@<"%@  < & @ % " \' not found, using `f@i--le..  a@<"%@  < & @ % " .jpg\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @image file `f@i--le..  a@<"%@  < & @ % " \' not found, using `f@i--le..  a@<"%@  < & @ % " .jpg\' (possibly involving @files-char)
',
    'line_nr' => 21,
    'macro' => 'files-char',
    'text' => '@image file `f@i--le..  a@<"%@  < & @ % " \' not found, using `f@i--le..  a@<"%@  < & @ % " .jpg\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @image file `f@i--le..  a@<"%@  < & @ % " \' not found, using `f@i--le..  a@<"%@  < & @ % " .jpg\' (possibly involving @files-char)
',
    'line_nr' => 21,
    'macro' => 'files-char',
    'text' => '@image file `f@i--le..  a@<"%@  < & @ % " \' not found, using `f@i--le..  a@<"%@  < & @ % " .jpg\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @image file `f@i--le..  a@<"%@  < & @ % " \' not found, using `f@i--le..  a@<"%@  < & @ % " .jpg\' (possibly involving @files-char)
',
    'line_nr' => 25,
    'macro' => 'files-char',
    'text' => '@image file `f@i--le..  a@<"%@  < & @ % " \' not found, using `f@i--le..  a@<"%@  < & @ % " .jpg\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @image file `f@i--le..  a@<"%@  < & @ % " \' not found, using `f@i--le..  a@<"%@  < & @ % " .jpg\' (possibly involving @files-char)
',
    'line_nr' => 25,
    'macro' => 'files-char',
    'text' => '@image file `f@i--le..  a@<"%@  < & @ % " \' not found, using `f@i--le..  a@<"%@  < & @ % " .jpg\'',
    'type' => 'warning'
  }
];


1;
