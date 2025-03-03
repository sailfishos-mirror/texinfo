use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'all_spaces'} = '*document_root C3
 *before_node_section C1
  *preamble_before_content C2
   *@documentencoding C1 all_spaces.texi:l1
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |global_command_number:{1}
   |input_encoding_name:{utf-8}
   |text_arg:{utf-8}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {utf-8}
   {empty_line:\\n}
 *0 @node C1 all_spaces.texi:l3 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |node_directions:D[next->E1]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @node C56 all_spaces.texi:l4 {chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |node_directions:D[prev->E0]
 |normalized:{chap}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap}
  {empty_line:\\n}
  *paragraph C1
   {CHARACTER TABULATION: |\\t|\\n}
  {empty_line:\\n}
  *paragraph C2
   {LINE FEED (LF): |\\n}
   {|\\n}
  {empty_line:\\n}
  *paragraph C1
   {LINE TABULATION: ||\\n}
  {empty_line:\\n}
  *paragraph C1
   {FORM FEED (FF): |}
  {empty_line:\\f}
  *paragraph C1
   {|\\n}
  {empty_line:\\n}
  *paragraph C1
   {CARRIAGE RETURN (CR): |'."\r".'|\\n}
  {empty_line:\\n}
  *paragraph C1
   {SPACE: | |\\n}
  {empty_line:\\n}
  *paragraph C1
   {NEXT LINE (NEL): ||\\n}
  {empty_line:\\n}
  *paragraph C1
   {NO-BREAK SPACE: | |\\n}
  {empty_line:\\n}
  *paragraph C1
   {OGHAM SPACE MARK: | |\\n}
  {empty_line:\\n}
  *paragraph C1
   {MONGOLIAN VOWEL SEPARATOR: |᠎|\\n}
  {empty_line:\\n}
  *paragraph C1
   {EN QUAD: | |\\n}
  {empty_line:\\n}
  *paragraph C1
   {EM QUAD: | |\\n}
  {empty_line:\\n}
  *paragraph C1
   {EN SPACE: | |\\n}
  {empty_line:\\n}
  *paragraph C1
   {EM SPACE: | |\\n}
  {empty_line:\\n}
  *paragraph C1
   {THREE-PER-EM SPACE: | |\\n}
  {empty_line:\\n}
  *paragraph C1
   {FOUR-PER-EM SPACE: | |\\n}
  {empty_line:\\n}
  *paragraph C1
   {SIX-PER-EM SPACE: | |\\n}
  {empty_line:\\n}
  *paragraph C1
   {FIGURE SPACE: | |\\n}
  {empty_line:\\n}
  *paragraph C1
   {PUNCTUATION SPACE: | |\\n}
  {empty_line:\\n}
  *paragraph C1
   {THIN SPACE: | |\\n}
  {empty_line:\\n}
  *paragraph C1
   {HAIR SPACE: | |\\n}
  {empty_line:\\n}
  *paragraph C1
   {LINE SEPARATOR: | |\\n}
  {empty_line:\\n}
  *paragraph C1
   {PARAGRAPH SEPARATOR: | |\\n}
  {empty_line:\\n}
  *paragraph C1
   {NARROW NO-BREAK SPACE: | |\\n}
  {empty_line:\\n}
  *paragraph C1
   {MEDIUM MATHEMATICAL SPACE: | |\\n}
  {empty_line:\\n}
  *paragraph C1
   {IDEOGRAPHIC SPACE: |　|\\n}
  {empty_line:\\n}
';


$result_texis{'all_spaces'} = '@documentencoding utf-8

@node Top
@node chap

CHARACTER TABULATION: |	|

LINE FEED (LF): |
|

LINE TABULATION: ||

FORM FEED (FF): ||

CARRIAGE RETURN (CR): |'."\r".'|

SPACE: | |

NEXT LINE (NEL): ||

NO-BREAK SPACE: | |

OGHAM SPACE MARK: | |

MONGOLIAN VOWEL SEPARATOR: |᠎|

EN QUAD: | |

EM QUAD: | |

EN SPACE: | |

EM SPACE: | |

THREE-PER-EM SPACE: | |

FOUR-PER-EM SPACE: | |

SIX-PER-EM SPACE: | |

FIGURE SPACE: | |

PUNCTUATION SPACE: | |

THIN SPACE: | |

HAIR SPACE: | |

LINE SEPARATOR: | |

PARAGRAPH SEPARATOR: | |

NARROW NO-BREAK SPACE: | |

MEDIUM MATHEMATICAL SPACE: | |

IDEOGRAPHIC SPACE: |　|

';


$result_texts{'all_spaces'} = '

CHARACTER TABULATION: |	|

LINE FEED (LF): |
|

LINE TABULATION: ||

FORM FEED (FF): ||

CARRIAGE RETURN (CR): |'."\r".'|

SPACE: | |

NEXT LINE (NEL): ||

NO-BREAK SPACE: | |

OGHAM SPACE MARK: | |

MONGOLIAN VOWEL SEPARATOR: |᠎|

EN QUAD: | |

EM QUAD: | |

EN SPACE: | |

EM SPACE: | |

THREE-PER-EM SPACE: | |

FOUR-PER-EM SPACE: | |

SIX-PER-EM SPACE: | |

FIGURE SPACE: | |

PUNCTUATION SPACE: | |

THIN SPACE: | |

HAIR SPACE: | |

LINE SEPARATOR: | |

PARAGRAPH SEPARATOR: | |

NARROW NO-BREAK SPACE: | |

MEDIUM MATHEMATICAL SPACE: | |

IDEOGRAPHIC SPACE: |　|

';

$result_errors{'all_spaces'} = [
  {
    'error_line' => 'warning: node `chap\' not in menu
',
    'file_name' => 'all_spaces.texi',
    'line_nr' => 4,
    'text' => 'node `chap\' not in menu',
    'type' => 'warning'
  }
];


1;
