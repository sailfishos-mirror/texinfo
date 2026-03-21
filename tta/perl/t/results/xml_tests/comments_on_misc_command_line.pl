use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_sectioning_root %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'comments_on_misc_command_line'} = '*document_root C1
 *before_node_section C12
  *@setfilename C1 l1
  |EXTRA
  |text_arg:{comments_on_misc_command_line.info}
   *line_arg C4
    {spaces_before_argument:  }
    {comments_on_misc_command_line.info}
    {spaces_after_argument:  }
    *@c C1
    |INFO
    |spaces_before_argument:
     |{spaces_before_argument: }
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{spaces_after_argument:\\n}
      {rawline_text:setfilename (text)}
  *@definfoenclose C1 l2
  |EXTRA
  |misc_args:A{phoo|;|:}
   *line_arg C4
    {spaces_before_argument: }
    {phoo,;,:}
    {spaces_after_argument:  }
    *@c C1
    |INFO
    |spaces_before_argument:
     |{spaces_before_argument: }
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{spaces_after_argument:\\n}
      {rawline_text:definfoenclose (number)}
  *@firstparagraphindent C1 l3
  |EXTRA
  |global_command_number:{1}
  |misc_args:A{none}
   *line_arg C4
    {spaces_before_argument: }
    {none}
    {spaces_after_argument: }
    *@c C1
    |INFO
    |spaces_before_argument:
     |{spaces_before_argument: }
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{spaces_after_argument:\\n}
      {rawline_text:c (number)}
  *@raisesections C1
  |INFO
  |spaces_before_argument:
   |{spaces_before_argument: }
   *line_arg
   |INFO
   |comment_at_end:
    |*@c C1
    ||INFO
    ||spaces_before_argument:
     ||{spaces_before_argument: }
     |*line_arg C1
     ||INFO
     ||spaces_after_argument:
      ||{spaces_after_argument:\\n}
      |{rawline_text:raisesections (skipline)}
  *@insertcopying C1 l5
  |INFO
  |spaces_before_argument:
   |{spaces_before_argument:  }
  |EXTRA
  |global_command_number:{1}
   *line_arg
   |INFO
   |comment_at_end:
    |*@comment C1
    ||INFO
    ||spaces_before_argument:
     ||{spaces_before_argument:  }
     |*line_arg C1
     ||INFO
     ||spaces_after_argument:
      ||{spaces_after_argument:\\n}
      |{rawline_text:(noarg)}
  *@pagesizes C1 l6
   *line_arg C4
    {spaces_before_argument: }
    {200mm}
    {spaces_after_argument: }
    *@c C1
    |INFO
    |spaces_before_argument:
     |{spaces_before_argument: }
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{spaces_after_argument:\\n}
      {rawline_text:pagesizes  (line)}
  *@everyheading C1 l7
   *line_arg C7
    {spaces_before_argument: }
    *@thispage
    { }
    *@|
    { aaa}
    {spaces_after_argument: }
    *@c C1
    |INFO
    |spaces_before_argument:
     |{spaces_before_argument: }
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{spaces_after_argument:\\n}
      {rawline_text:everyheading (lineraw)}
  {empty_line:\\n}
  *@indent l9
  {ignorable_spaces_after_command: }
  *@c C1
  |INFO
  |spaces_before_argument:
   |{spaces_before_argument: }
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {rawline_text:indent (skipspace)}
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

$result_errors{'comments_on_misc_command_line'} = '* W l2|@definfoenclose is obsolete
 warning: @definfoenclose is obsolete

';

$result_nodes_list{'comments_on_misc_command_line'} = '';

$result_sections_list{'comments_on_misc_command_line'} = '';

$result_sectioning_root{'comments_on_misc_command_line'} = '';

$result_headings_list{'comments_on_misc_command_line'} = '';


$result_converted{'xml'}->{'comments_on_misc_command_line'} = '<setfilename file="comments_on_misc_command_line.info">  comments_on_misc_command_line.info  </setfilename><!-- c setfilename (text) -->
<definfoenclose command="phoo" open=";" close=":" line=" phoo,;,:  @c definfoenclose (number)"></definfoenclose><!-- c definfoenclose (number) -->
<firstparagraphindent value="none" line=" none @c c (number)"></firstparagraphindent><!-- c c (number) -->
<raisesections spaces=" "></raisesections><!-- c raisesections (skipline) -->
<insertcopying spaces="  "></insertcopying><!-- comment  (noarg) -->
<pagesizes> 200mm </pagesizes><!-- c pagesizes  (line) -->
<everyheading> <thispage></thispage> <divideheading/> aaa </everyheading><!-- c everyheading (lineraw) -->

<indent></indent> <!-- c indent (skipspace) -->
<para>Para.
</para>';

1;
