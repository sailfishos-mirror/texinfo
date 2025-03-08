use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'include_setfilename_on_setfilename_line'} = '*document_root C1
 *before_node_section C1
  *@setfilename C1 l1
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |text_arg:{file }
   *line_arg C2
    {file }
    *@setfilename C1 l1
    |INFO
    |spaces_before_argument:
     |{ }
    |EXTRA
    |text_arg:{other file }
     *line_arg C2
      {other file }
      *@include C1 l1
      |INFO
      |spaces_before_argument:
       |{ }
      |EXTRA
      |text_arg:{are you joking!}
       *line_arg C1
       |INFO
       |spaces_after_argument:
        |{\\n}
        {are you joking!}
';


$result_texis{'include_setfilename_on_setfilename_line'} = '@setfilename file @setfilename other file @include are you joking!
';


$result_texts{'include_setfilename_on_setfilename_line'} = '';

$result_errors{'include_setfilename_on_setfilename_line'} = [
  {
    'error_line' => 'warning: @setfilename should only appear at the beginning of a line
',
    'line_nr' => 1,
    'text' => '@setfilename should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @setfilename should not appear in @setfilename
',
    'line_nr' => 1,
    'text' => '@setfilename should not appear in @setfilename',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: multiple @setfilename
',
    'line_nr' => 1,
    'text' => 'multiple @setfilename',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @include should only appear at the beginning of a line
',
    'line_nr' => 1,
    'text' => '@include should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @include should not appear in @setfilename
',
    'line_nr' => 1,
    'text' => '@include should not appear in @setfilename',
    'type' => 'warning'
  },
  {
    'error_line' => '@include: could not find are you joking!
',
    'line_nr' => 1,
    'text' => '@include: could not find are you joking!',
    'type' => 'error'
  },
  {
    'error_line' => 'bad argument to @setfilename: other file @include are you joking!
',
    'line_nr' => 1,
    'text' => 'bad argument to @setfilename: other file @include are you joking!',
    'type' => 'error'
  },
  {
    'error_line' => 'bad argument to @setfilename: file @setfilename other file @include are you joking!
',
    'line_nr' => 1,
    'text' => 'bad argument to @setfilename: file @setfilename other file @include are you joking!',
    'type' => 'error'
  }
];


1;
