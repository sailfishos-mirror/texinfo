use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'double_exdent'} = '*document_root C1
 *before_node_section C1
  *0 @example C4 l1
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *preformatted C1
    {Example   Hoho.\\n}
   *1 @example C4 l3
    *arguments_line C1
     *block_line_arg
     |INFO
     |spaces_after_argument:
      |{\\n}
    *preformatted C1
     {Nested Other line\\n}
    *@exdent C1 l5
    |INFO
    |spaces_before_argument:
     |{ }
     *line_arg C1
      *@exdent C1 l5
      |INFO
      |spaces_before_argument:
       |{ }
       *line_arg C1
       |INFO
       |spaces_after_argument:
        |{\\n}
        {double  exdented nested other line}
    *@end C1 l6
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
   *@end C1 l7
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
';


$result_texis{'double_exdent'} = '@example
Example   Hoho.
@example
Nested Other line
@exdent @exdent double  exdented nested other line
@end example
@end example
';


$result_texts{'double_exdent'} = 'Example   Hoho.
Nested Other line
double  exdented nested other line
';

$result_errors{'double_exdent'} = [
  {
    'error_line' => 'warning: @exdent should only appear at the beginning of a line
',
    'line_nr' => 5,
    'text' => '@exdent should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @exdent should not appear in @exdent
',
    'line_nr' => 5,
    'text' => '@exdent should not appear in @exdent',
    'type' => 'warning'
  }
];


$result_floats{'double_exdent'} = {};


1;
