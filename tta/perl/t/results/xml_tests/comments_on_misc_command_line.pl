use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'comments_on_misc_command_line'} = '*document_root C1
 *before_node_section C12
  *@setfilename C1 l1
  |INFO
  |spaces_before_argument:
   |{  }
  |EXTRA
  |text_arg:{comments_on_misc_command_line.info}
   *line_arg C1
   |INFO
   |comment_at_end:
    |*@c C1
     |{rawline_arg: setfilename (text)\\n}
   |spaces_after_argument:
    |{  }
    {comments_on_misc_command_line.info}
  *@definfoenclose C1 l2
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |misc_args:A{phoo|;|:}
   *line_arg C1
   |INFO
   |comment_at_end:
    |*@c C1
     |{rawline_arg: definfoenclose (number)\\n}
   |spaces_after_argument:
    |{  }
    {phoo,;,:}
  *@firstparagraphindent C1 l3
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{1}
  |misc_args:A{none}
   *line_arg C1
   |INFO
   |comment_at_end:
    |*@c C1
     |{rawline_arg: c (number)\\n}
   |spaces_after_argument:
    |{ }
    {none}
  *@raisesections C1
   {rawline_arg: @c raisesections (skipline)\\n}
  *@insertcopying C1 l5
  |EXTRA
  |global_command_number:{1}
   {rawline_arg:  @comment  (noarg)\\n}
  *@pagesizes C1 l6
  |INFO
  |spaces_before_argument:
   |{ }
   *line_arg C1
   |INFO
   |comment_at_end:
    |*@c C1
     |{rawline_arg: pagesizes  (line)\\n}
   |spaces_after_argument:
    |{ }
    {200mm}
  *@everyheading C1 l7
  |INFO
  |spaces_before_argument:
   |{ }
   *line_arg C4
   |INFO
   |comment_at_end:
    |*@c C1
     |{rawline_arg: everyheading (lineraw)\\n}
   |spaces_after_argument:
    |{ }
    *@thispage
    { }
    *@|
    { aaa}
  {empty_line:\\n}
  *@indent l9
  {ignorable_spaces_after_command: }
  *@c C1
   {rawline_arg: indent (skipspace)\\n}
  *paragraph C1
  |EXTRA
  |indent:{1}
   {Para.\\n}
';


$result_texis{'comments_on_misc_command_line'} = '@setfilename  comments_on_misc_command_line.info  @c setfilename (text)
@definfoenclose phoo,;,:  @c definfoenclose (number)
@firstparagraphindent none @c c (number)
@raisesections @c raisesections (skipline)
@insertcopying  @comment  (noarg)
@pagesizes 200mm @c pagesizes  (line)
@everyheading @thispage @| aaa @c everyheading (lineraw)

@indent @c indent (skipspace)
Para.
';


$result_texts{'comments_on_misc_command_line'} = '
Para.
';

$result_errors{'comments_on_misc_command_line'} = [
  {
    'error_line' => 'warning: @definfoenclose is obsolete
',
    'line_nr' => 2,
    'text' => '@definfoenclose is obsolete',
    'type' => 'warning'
  }
];



$result_converted{'xml'}->{'comments_on_misc_command_line'} = '<setfilename file="comments_on_misc_command_line.info" spaces="  ">comments_on_misc_command_line.info  </setfilename><!-- c setfilename (text) -->
<definfoenclose spaces=" " command="phoo" open=";" close=":" line="phoo,;,:  @c definfoenclose (number)"></definfoenclose><!-- c definfoenclose (number) -->
<firstparagraphindent spaces=" " value="none" line="none @c c (number)"></firstparagraphindent><!-- c c (number) -->
<raisesections line=" @c raisesections (skipline)"></raisesections>
<insertcopying line="  @comment  (noarg)"></insertcopying>
<pagesizes spaces=" ">200mm </pagesizes><!-- c pagesizes  (line) -->
<everyheading spaces=" "><thispage></thispage> <divideheading/> aaa </everyheading><!-- c everyheading (lineraw) -->

<indent></indent> <!-- c indent (skipspace) -->
<para>Para.
</para>';

1;
