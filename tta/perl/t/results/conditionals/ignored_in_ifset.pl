use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_sectioning_root %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'ignored_in_ifset'} = '*document_root C1
 *before_node_section C5
  {empty_line:\\n}
  >SOURCEMARKS
  >ignored_conditional_block<1><p:1>
   >*@ifset C3 l2
   >|INFO
   >|spaces_before_argument:
    >|{spaces_before_argument: }
    >*arguments_line C1
     >*block_line_arg C1
     >|INFO
     >|spaces_after_argument:
      >|{spaces_after_argument:\\n}
      >{notset}
    >{raw:@ignore\\n}
    >*@end C1 l4
    >|INFO
    >|spaces_before_argument:
     >|{spaces_before_argument: }
    >|EXTRA
    >|text_arg:{ifset}
     >*line_arg C1
     >|INFO
     >|spaces_after_argument:
      >|{spaces_after_argument:\\n}
      >{ifset}
  *paragraph C1
   {text\\n}
  {empty_line:\\n}
  >SOURCEMARKS
  >ignored_conditional_block<2><p:1>
   >*@ifset C3 l9
   >|INFO
   >|spaces_before_argument:
    >|{spaces_before_argument: }
    >*arguments_line C1
     >*block_line_arg C1
     >|INFO
     >|spaces_after_argument:
      >|{spaces_after_argument:\\n}
      >{notset}
    >{raw:@verbatim\\n}
    >*@end C1 l11
    >|INFO
    >|spaces_before_argument:
     >|{spaces_before_argument: }
    >|EXTRA
    >|text_arg:{ifset}
     >*line_arg C1
     >|INFO
     >|spaces_after_argument:
      >|{spaces_after_argument:\\n}
      >{ifset}
  {empty_line:\\n}
  >SOURCEMARKS
  >ignored_conditional_block<3><p:1>
   >*@ifset C3 l15
   >|INFO
   >|spaces_before_argument:
    >|{spaces_before_argument: }
    >*arguments_line C1
     >*block_line_arg C1
     >|INFO
     >|spaces_after_argument:
      >|{spaces_after_argument:\\n}
      >{notset}
    >{raw:@verb{%\\n}
    >*@end C1 l17
    >|INFO
    >|spaces_before_argument:
     >|{spaces_before_argument: }
    >|EXTRA
    >|text_arg:{ifset}
     >*line_arg C1
     >|INFO
     >|spaces_after_argument:
      >|{spaces_after_argument:\\n}
      >{ifset}
  *paragraph C1
   {%\\n}
';


$result_texis{'ignored_in_ifset'} = '
text


%
';


$result_texts{'ignored_in_ifset'} = '
text


%
';

$result_errors{'ignored_in_ifset'} = [
  {
    'error_line' => 'unmatched `@end ignore\'
',
    'line_nr' => 5,
    'text' => 'unmatched `@end ignore\'',
    'type' => 'error'
  },
  {
    'error_line' => 'unmatched `@end ifset\'
',
    'line_nr' => 7,
    'text' => 'unmatched `@end ifset\'',
    'type' => 'error'
  },
  {
    'error_line' => 'unmatched `@end verbatim\'
',
    'line_nr' => 12,
    'text' => 'unmatched `@end verbatim\'',
    'type' => 'error'
  },
  {
    'error_line' => 'unmatched `@end ifset\'
',
    'line_nr' => 13,
    'text' => 'unmatched `@end ifset\'',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced }
',
    'line_nr' => 18,
    'text' => 'misplaced }',
    'type' => 'error'
  },
  {
    'error_line' => 'unmatched `@end ifset\'
',
    'line_nr' => 19,
    'text' => 'unmatched `@end ifset\'',
    'type' => 'error'
  }
];


$result_nodes_list{'ignored_in_ifset'} = '';

$result_sections_list{'ignored_in_ifset'} = '';

$result_sectioning_root{'ignored_in_ifset'} = '';

$result_headings_list{'ignored_in_ifset'} = '';

1;
