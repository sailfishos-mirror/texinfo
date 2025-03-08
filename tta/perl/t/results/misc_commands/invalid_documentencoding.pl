use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'invalid_documentencoding'} = '*document_root C1
 *before_node_section C6
  *@c C1
   {rawline_arg: this one is valid\\n}
  *@documentencoding C1 l2
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{1}
  |text_arg:{us-ascii}
   *line_arg C2
   |INFO
   |spaces_after_argument:
    |{\\n}
    {us-ascii}
    *0 @asis C1 l2
     *brace_container
  {empty_line:\\n}
  *@documentencoding C1 l4
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{2}
  |text_arg:{latin1}
   *line_arg C2
   |INFO
   |spaces_after_argument:
    |{\\n}
    {latin1}
    *1 @asis C1 l4
     *brace_container C1
      {a}
  *@documentencoding C1 l5
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{3}
  |text_arg:{YS-ASCII}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {YS-ASCII}
  *paragraph C8
   *@@
   {documentencoding }
   *@documentencoding C1 l6
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |global_command_number:{4}
   |text_arg:{bad encoding name}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {bad encoding name}
   *@documentencoding C1 l7
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |global_command_number:{5}
   |text_arg:{1}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {1}
   *@documentencoding C1 l8
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |global_command_number:{6}
   |text_arg:{%}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {%}
   *@documentencoding C1 l9
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |global_command_number:{7}
   |text_arg:{@}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *@@
   *@documentencoding C1 l10
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |global_command_number:{8}
   |text_arg:{AAA}
    *line_arg C2
    |INFO
    |spaces_after_argument:
     |{\\n}
     {AAA}
     *2 @TeX C1 l10
      *brace_container
   *@documentencoding C1 l11
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |global_command_number:{9}
   |text_arg:{BBB}
    *line_arg C2
    |INFO
    |spaces_after_argument:
     |{\\n}
     {BBB}
     *3 @\' C1 l11
      *following_arg C1
       {e}
';


$result_texis{'invalid_documentencoding'} = '@c this one is valid
@documentencoding us-ascii@asis{}

@documentencoding latin1@asis{a}
@documentencoding YS-ASCII
@@documentencoding @documentencoding bad encoding name
@documentencoding 1
@documentencoding %
@documentencoding @@
@documentencoding AAA@TeX{}
@documentencoding BBB@\'e
';


$result_texts{'invalid_documentencoding'} = '
@documentencoding ';

$result_errors{'invalid_documentencoding'} = [
  {
    'error_line' => 'warning: @asis should not appear in @documentencoding
',
    'line_nr' => 2,
    'text' => '@asis should not appear in @documentencoding',
    'type' => 'warning'
  },
  {
    'error_line' => 'bad argument to @documentencoding: us-ascii@asis{}
',
    'line_nr' => 2,
    'text' => 'bad argument to @documentencoding: us-ascii@asis{}',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: @asis should not appear in @documentencoding
',
    'line_nr' => 4,
    'text' => '@asis should not appear in @documentencoding',
    'type' => 'warning'
  },
  {
    'error_line' => 'bad argument to @documentencoding: latin1@asis{a}
',
    'line_nr' => 4,
    'text' => 'bad argument to @documentencoding: latin1@asis{a}',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: encoding `YS-ASCII\' is not a canonical texinfo encoding
',
    'line_nr' => 5,
    'text' => 'encoding `YS-ASCII\' is not a canonical texinfo encoding',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: unhandled encoding name `YS-ASCII\'
',
    'line_nr' => 5,
    'text' => 'unhandled encoding name `YS-ASCII\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @documentencoding should only appear at the beginning of a line
',
    'line_nr' => 6,
    'text' => '@documentencoding should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: encoding `bad encoding name\' is not a canonical texinfo encoding
',
    'line_nr' => 6,
    'text' => 'encoding `bad encoding name\' is not a canonical texinfo encoding',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: unhandled encoding name `bad encoding name\'
',
    'line_nr' => 6,
    'text' => 'unhandled encoding name `bad encoding name\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: encoding `1\' is not a canonical texinfo encoding
',
    'line_nr' => 7,
    'text' => 'encoding `1\' is not a canonical texinfo encoding',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: unhandled encoding name `1\'
',
    'line_nr' => 7,
    'text' => 'unhandled encoding name `1\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: bad encoding name `%\'
',
    'line_nr' => 8,
    'text' => 'bad encoding name `%\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: bad encoding name `@\'
',
    'line_nr' => 9,
    'text' => 'bad encoding name `@\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'bad argument to @documentencoding: AAA@TeX{}
',
    'line_nr' => 10,
    'text' => 'bad argument to @documentencoding: AAA@TeX{}',
    'type' => 'error'
  },
  {
    'error_line' => 'bad argument to @documentencoding: BBB@\'e
',
    'line_nr' => 11,
    'text' => 'bad argument to @documentencoding: BBB@\'e',
    'type' => 'error'
  }
];


1;
