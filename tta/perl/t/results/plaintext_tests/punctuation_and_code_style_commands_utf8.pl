use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_sectioning_root %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'punctuation_and_code_style_commands_utf8'} = '*document_root C1
 *before_node_section C2
  *@documentencoding C1 l1
  |INFO
  |spaces_before_argument:
   |{spaces_before_argument: }
  |EXTRA
  |global_command_number:{1}
  |input_encoding_name:{utf-8}
  |text_arg:{utf-8}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {utf-8}
  *paragraph C18
   *@command C1 l2
    *brace_container C1
     {aaa}
   {. }
   *@code C1 l2
    *brace_container C1
     *@~ C1 l2
      *following_arg C1
       {e}
   {. }
   *@samp C1 l2
    *brace_container C1
     *@aa C1 l2
      *brace_container
   {.\\n}
   *@command C1 l3
    *brace_container C1
     {AAA}
   {. }
   *@code C1 l3
    *brace_container C1
     *@~ C1 l3
      *following_arg C1
       {E}
   {. }
   *@samp C1 l3
    *brace_container C1
     *@AA C1 l3
      *brace_container
   {.\\n}
   *@command C1 l4
    *brace_container C1
     {double AAA}
   {.  }
   *@code C1 l4
    *brace_container C2
     {double }
     *@~ C1 l4
      *following_arg C1
       {E}
   {. }
   *@samp C1 l4
    *brace_container C2
     {double }
     *@AA C1 l4
      *brace_container
   {.  End.\\n}
';


$result_texis{'punctuation_and_code_style_commands_utf8'} = '@documentencoding utf-8
@command{aaa}. @code{@~e}. @samp{@aa{}}.
@command{AAA}. @code{@~E}. @samp{@AA{}}.
@command{double AAA}.  @code{double @~E}. @samp{double @AA{}}.  End.
';


$result_texts{'punctuation_and_code_style_commands_utf8'} = 'aaa. e~. aa.
AAA. E~. AA.
double AAA.  double E~. double AA.  End.
';

$result_errors{'punctuation_and_code_style_commands_utf8'} = [];


$result_nodes_list{'punctuation_and_code_style_commands_utf8'} = '';

$result_sections_list{'punctuation_and_code_style_commands_utf8'} = '';

$result_sectioning_root{'punctuation_and_code_style_commands_utf8'} = '';

$result_headings_list{'punctuation_and_code_style_commands_utf8'} = '';


$result_converted{'plaintext'}->{'punctuation_and_code_style_commands_utf8'} = '‘aaa’.  ‘ẽ’.  ‘å’.  ‘AAA’.  ‘Ẽ’.  ‘Å’.  ‘double AAA’.  ‘double Ẽ’.
‘double Å’.  End.
';

1;
