use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'accent_on_table_line'} = '*document_root C1
 *before_node_section C13
  *0 @table C4 l1
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |command_as_argument:[E1]
   *arguments_line C1
    *block_line_arg C2
    |INFO
    |spaces_after_argument:
     |{\\n}
     *1 @asis
     |INFO
     |inserted:{1}
     *2 @~ l1
   *table_entry C1
    *table_term C1
     *@item C1 l2
     |INFO
     |spaces_before_argument:
      |{ }
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{\\n}
       {first item}
   *table_entry C1
    *table_term C1
     *@item C1 l3
     |INFO
     |spaces_before_argument:
      |{ }
      *line_arg C2
      |INFO
      |spaces_after_argument:
       |{\\n}
       {no at-command }
       *3 @code C1 l3
        *brace_container C1
         {code}
   *@end C1 l4
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{table}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {table}
  {empty_line:\\n}
  *4 @table C4 l6
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |command_as_argument:[E5]
   *arguments_line C1
    *block_line_arg C2
    |INFO
    |spaces_after_argument:
     |{\\n}
     *5 @asis
     |INFO
     |inserted:{1}
     *6 @~ C1 l6
      *brace_container
   *table_entry C1
    *table_term C1
     *@item C1 l7
     |INFO
     |spaces_before_argument:
      |{ }
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{\\n}
       {acc brace first item}
   *table_entry C1
    *table_term C1
     *@item C1 l8
     |INFO
     |spaces_before_argument:
      |{ }
      *line_arg C2
      |INFO
      |spaces_after_argument:
       |{\\n}
       {no at-command }
       *7 @code C1 l8
        *brace_container C1
         {code acc brace}
   *@end C1 l9
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{table}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {table}
  {empty_line:\\n}
  *8 @table C3 l11
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |command_as_argument:[E9]
   *arguments_line C1
    *block_line_arg C2
    |INFO
    |comment_at_end:
     |*@comment C1
      |{rawline_arg:\\n}
     *9 @asis
     |INFO
     |inserted:{1}
     *10 @~ l11
   *table_entry C1
    *table_term C1
     *@item C1 l12
     |INFO
     |spaces_before_argument:
      |{ }
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{\\n}
       {acc comment first item}
   *@end C1 l13
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{table}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {table}
  {empty_line:\\n}
  *11 @table C3 l15
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |command_as_argument:[E12]
   *arguments_line C1
    *block_line_arg C2
    |INFO
    |spaces_after_argument:
     |{ \\n}
     *12 @asis
     |INFO
     |inserted:{1}
     *13 @~ l15
   *table_entry C1
    *table_term C1
     *@item C1 l16
     |INFO
     |spaces_before_argument:
      |{ }
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{\\n}
       {acc space first item}
   *@end C1 l17
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{table}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {table}
  {empty_line:\\n}
  *14 @table C3 l19
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |command_as_argument:[E15]
   *arguments_line C1
    *block_line_arg C2
    |INFO
    |spaces_after_argument:
     |{\\n}
     *15 @asis
     |INFO
     |inserted:{1}
     *16 @ringaccent l19
   *table_entry C1
    *table_term C1
     *@item C1 l20
     |INFO
     |spaces_before_argument:
      |{ }
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{\\n}
       {cmdacc first item}
   *@end C1 l21
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{table}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {table}
  {empty_line:\\n}
  *17 @table C3 l23
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |command_as_argument:[E18]
   *arguments_line C1
    *block_line_arg C2
    |INFO
    |spaces_after_argument:
     |{\\n}
     *18 @asis
     |INFO
     |inserted:{1}
     *19 @ringaccent C1 l23
      *brace_container
   *table_entry C1
    *table_term C1
     *@item C1 l24
     |INFO
     |spaces_before_argument:
      |{ }
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{\\n}
       {cmdacc braces first item}
   *@end C1 l25
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{table}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {table}
  {empty_line:\\n}
  *20 @table C3 l27
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |command_as_argument:[E21]
   *arguments_line C1
    *block_line_arg C2
    |INFO
    |spaces_after_argument:
     |{\\n}
     *21 @asis
     |INFO
     |inserted:{1}
     *22 @ringaccent C1 l27
      *brace_container C1
       {a}
   *table_entry C1
    *table_term C1
     *@item C1 l28
     |INFO
     |spaces_before_argument:
      |{ }
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{\\n}
       {cmdacc braces arg first item}
   *@end C1 l29
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{table}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {table}
';


$result_texis{'accent_on_table_line'} = '@table @~
@item first item
@item no at-command @code{code}
@end table

@table @~{}
@item acc brace first item
@item no at-command @code{code acc brace}
@end table

@table @~@comment
@item acc comment first item
@end table

@table @~ 
@item acc space first item
@end table

@table @ringaccent
@item cmdacc first item
@end table

@table @ringaccent{}
@item cmdacc braces first item
@end table

@table @ringaccent{a}
@item cmdacc braces arg first item
@end table
';


$result_texts{'accent_on_table_line'} = 'first item
no at-command code

acc brace first item
no at-command code acc brace

acc comment first item

acc space first item

cmdacc first item

cmdacc braces first item

cmdacc braces arg first item
';

$result_errors{'accent_on_table_line'} = [
  {
    'error_line' => 'warning: command `@~\' must not be followed by new line
',
    'line_nr' => 1,
    'text' => 'command `@~\' must not be followed by new line',
    'type' => 'warning'
  },
  {
    'error_line' => 'bad argument to @table: @~
',
    'line_nr' => 1,
    'text' => 'bad argument to @table: @~',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: accent command `@~\' not allowed as @table argument
',
    'line_nr' => 6,
    'text' => 'accent command `@~\' not allowed as @table argument',
    'type' => 'warning'
  },
  {
    'error_line' => '@~ expected braces
',
    'line_nr' => 11,
    'text' => '@~ expected braces',
    'type' => 'error'
  },
  {
    'error_line' => 'bad argument to @table: @~
',
    'line_nr' => 11,
    'text' => 'bad argument to @table: @~',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: command `@~\' must not be followed by new line
',
    'line_nr' => 15,
    'text' => 'command `@~\' must not be followed by new line',
    'type' => 'warning'
  },
  {
    'error_line' => 'bad argument to @table: @~
',
    'line_nr' => 15,
    'text' => 'bad argument to @table: @~',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: command `@ringaccent\' must not be followed by new line
',
    'line_nr' => 19,
    'text' => 'command `@ringaccent\' must not be followed by new line',
    'type' => 'warning'
  },
  {
    'error_line' => 'bad argument to @table: @ringaccent
',
    'line_nr' => 19,
    'text' => 'bad argument to @table: @ringaccent',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: accent command `@ringaccent\' not allowed as @table argument
',
    'line_nr' => 23,
    'text' => 'accent command `@ringaccent\' not allowed as @table argument',
    'type' => 'warning'
  },
  {
    'error_line' => 'bad argument to @table: @ringaccent{a}
',
    'line_nr' => 27,
    'text' => 'bad argument to @table: @ringaccent{a}',
    'type' => 'error'
  }
];



$result_converted{'plaintext'}->{'accent_on_table_line'} = 'first item
no at-command ‘code’

acc brace first item
no at-command ‘code acc brace’

acc comment first item

acc space first item

cmdacc first item

cmdacc braces first item

cmdacc braces arg first item
';


$result_converted{'html_text'}->{'accent_on_table_line'} = '<dl class="table">
<dt>first item</dt>
<dt>no at-command <code class="code">code</code></dt>
</dl>

<dl class="table">
<dt>acc brace first item</dt>
<dt>no at-command <code class="code">code acc brace</code></dt>
</dl>

<dl class="table">
<dt>acc comment first item</dt>
</dl>

<dl class="table">
<dt>acc space first item</dt>
</dl>

<dl class="table">
<dt>cmdacc first item</dt>
</dl>

<dl class="table">
<dt>cmdacc braces first item</dt>
</dl>

<dl class="table">
<dt>cmdacc braces arg first item</dt>
</dl>
';


$result_converted{'xml'}->{'accent_on_table_line'} = '<table commandarg="asis" automaticcommandarg="on" spaces=" " endspaces=" ">
<tableentry><tableterm><item spaces=" "><itemformat command="asis">first item</itemformat></item>
</tableterm></tableentry><tableentry><tableterm><item spaces=" "><itemformat command="asis">no at-command <code>code</code></itemformat></item>
</tableterm></tableentry></table>

<table commandarg="asis" automaticcommandarg="on" spaces=" " endspaces=" ">
<tableentry><tableterm><item spaces=" "><itemformat command="asis">acc brace first item</itemformat></item>
</tableterm></tableentry><tableentry><tableterm><item spaces=" "><itemformat command="asis">no at-command <code>code acc brace</code></itemformat></item>
</tableterm></tableentry></table>

<table commandarg="asis" automaticcommandarg="on" spaces=" " endspaces=" "><!-- comment -->
<tableentry><tableterm><item spaces=" "><itemformat command="asis">acc comment first item</itemformat></item>
</tableterm></tableentry></table>

<table commandarg="asis" automaticcommandarg="on" spaces=" " endspaces=" "> 
<tableentry><tableterm><item spaces=" "><itemformat command="asis">acc space first item</itemformat></item>
</tableterm></tableentry></table>

<table commandarg="asis" automaticcommandarg="on" spaces=" " endspaces=" ">
<tableentry><tableterm><item spaces=" "><itemformat command="asis">cmdacc first item</itemformat></item>
</tableterm></tableentry></table>

<table commandarg="asis" automaticcommandarg="on" spaces=" " endspaces=" ">
<tableentry><tableterm><item spaces=" "><itemformat command="asis">cmdacc braces first item</itemformat></item>
</tableterm></tableentry></table>

<table commandarg="asis" automaticcommandarg="on" spaces=" " endspaces=" ">
<tableentry><tableterm><item spaces=" "><itemformat command="asis">cmdacc braces arg first item</itemformat></item>
</tableterm></tableentry></table>
';


$result_converted{'docbook'}->{'accent_on_table_line'} = '<variablelist><varlistentry><term>first item
</term></varlistentry><varlistentry><term>no at-command <literal>code</literal>
</term></varlistentry></variablelist>
<variablelist><varlistentry><term>acc brace first item
</term></varlistentry><varlistentry><term>no at-command <literal>code acc brace</literal>
</term></varlistentry></variablelist>
<variablelist><varlistentry><term>acc comment first item
</term></varlistentry></variablelist>
<variablelist><varlistentry><term>acc space first item
</term></varlistentry></variablelist>
<variablelist><varlistentry><term>cmdacc first item
</term></varlistentry></variablelist>
<variablelist><varlistentry><term>cmdacc braces first item
</term></varlistentry></variablelist>
<variablelist><varlistentry><term>cmdacc braces arg first item
</term></varlistentry></variablelist>';

1;
