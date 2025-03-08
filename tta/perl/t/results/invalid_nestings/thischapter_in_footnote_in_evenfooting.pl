use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'thischapter_in_footnote_in_evenfooting'} = '*document_root C1
 *before_node_section C2
  {empty_line:\\n}
  *@evenfooting C1 l2
  |INFO
  |spaces_before_argument:
   |{ }
   *line_arg C6
   |INFO
   |spaces_after_argument:
    |{\\n}
    {aa }
    *0 @strong C1 l2
     *brace_container C2
      {GG}
      *1 @footnote C1 l2
      |EXTRA
      |global_command_number:{1}
       *brace_command_context C1
        *paragraph C2
         {bb }
         *@thischapter
    { }
    *@|
    { }
    *2 @footnote C1 l2
    |EXTRA
    |global_command_number:{2}
     *brace_command_context C1
      *paragraph C2
       {cc }
       *@thissection
';


$result_texis{'thischapter_in_footnote_in_evenfooting'} = '
@evenfooting aa @strong{GG@footnote{bb @thischapter}} @| @footnote{cc @thissection}
';


$result_texts{'thischapter_in_footnote_in_evenfooting'} = '
';

$result_errors{'thischapter_in_footnote_in_evenfooting'} = [
  {
    'error_line' => 'warning: @footnote should not appear on @evenfooting line
',
    'line_nr' => 2,
    'text' => '@footnote should not appear on @evenfooting line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @footnote should not appear on @evenfooting line
',
    'line_nr' => 2,
    'text' => '@footnote should not appear on @evenfooting line',
    'type' => 'warning'
  }
];


1;
