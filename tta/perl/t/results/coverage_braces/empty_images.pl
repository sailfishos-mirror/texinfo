use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'empty_images'} = '*document_root C1
 *before_node_section C10
  *0 @image C1 l1
  |EXTRA
  |input_encoding_name:{utf-8}
   *brace_arg
  {\\n}
  {empty_line:\\n}
  *1 @image C5 l3
  |EXTRA
  |input_encoding_name:{utf-8}
   *brace_arg
   |INFO
   |spaces_before_argument:
    |{ }
   *brace_arg C1
    {aa}
   *brace_arg C1
    {bb}
   *brace_arg C1
   |INFO
   |spaces_after_argument:
    |{ }
    {cc}
   *brace_arg C1
    {dd}
  {\\n}
  {empty_line:\\n}
  *2 @image C4 l5
  |EXTRA
  |input_encoding_name:{utf-8}
   *brace_arg
   *brace_arg
   *brace_arg
   *brace_arg C1
    *@ 
  {\\n}
  *3 @image C4 l6
  |EXTRA
  |input_encoding_name:{utf-8}
   *brace_arg
   *brace_arg
   *brace_arg
   *brace_arg C1
    *@:
  {\\n}
';


$result_texis{'empty_images'} = '@image{}

@image{ ,aa,bb,cc ,dd}

@image{,,,@ }
@image{,,,@:}
';


$result_texts{'empty_images'} = '





';

$result_errors{'empty_images'} = [
  {
    'error_line' => '@image missing filename argument
',
    'line_nr' => 1,
    'text' => '@image missing filename argument',
    'type' => 'error'
  },
  {
    'error_line' => '@image missing filename argument
',
    'line_nr' => 3,
    'text' => '@image missing filename argument',
    'type' => 'error'
  },
  {
    'error_line' => '@image missing filename argument
',
    'line_nr' => 5,
    'text' => '@image missing filename argument',
    'type' => 'error'
  },
  {
    'error_line' => '@image missing filename argument
',
    'line_nr' => 6,
    'text' => '@image missing filename argument',
    'type' => 'error'
  }
];


1;
