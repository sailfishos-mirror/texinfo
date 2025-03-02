use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'accents'} = '*document_root C1
 *before_node_section C3
  *paragraph C5
   {Valid\\n}
   *0 @~ C1 l2
    *brace_container C1
     *1 @TeX C1 l2
      *brace_container
   {. }
   *2 @~ C1 l2
    *brace_container C1
     *@@
   {.\\n}
  {empty_line:\\n}
  *paragraph C5
   {Invalid\\n}
   *3 @~ C1 l5
    *brace_container C1
     *4 @code C1 l5
      *brace_container C1
       {a}
   {.  }
   *5 @^ C1 l5
    *brace_container C1
     *6 @anchor C1 l5
     |EXTRA
     |is_target:{1}
     |normalized:{truc}
      *brace_arg C1
       {truc}
   {.\\n}
';


$result_texis{'accents'} = 'Valid
@~{@TeX{}}. @~{@@}.

Invalid
@~{@code{a}}.  @^{@anchor{truc}}.
';


$result_texts{'accents'} = 'Valid
TeX~. @~.

Invalid
a~.  ^.
';

$result_errors{'accents'} = [
  {
    'error_line' => 'warning: @code should not appear in @~
',
    'line_nr' => 5,
    'text' => '@code should not appear in @~',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @anchor should not appear in @^
',
    'line_nr' => 5,
    'text' => '@anchor should not appear in @^',
    'type' => 'warning'
  }
];


$result_floats{'accents'} = {};


1;
