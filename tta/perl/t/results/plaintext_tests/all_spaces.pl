use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'all_spaces'} = {
  "contents" => [
    {
      "contents" => [
        {
          "contents" => [
            {
              "cmdname" => "documentencoding",
              "contents" => [
                {
                  "contents" => [
                    {
                      "text" => "utf-8"
                    }
                  ],
                  "info" => {
                    "spaces_after_argument" => {
                      "text" => "\n"
                    }
                  },
                  "type" => "line_arg"
                }
              ],
              "extra" => {
                "input_encoding_name" => "utf-8",
                "text_arg" => "utf-8"
              },
              "info" => {
                "spaces_before_argument" => {
                  "text" => " "
                }
              },
              "source_info" => {
                "file_name" => "all_spaces.texi",
                "line_nr" => 1
              }
            },
            {
              "text" => "\n",
              "type" => "empty_line"
            }
          ],
          "type" => "preamble_before_content"
        }
      ],
      "type" => "before_node_section"
    },
    {
      "cmdname" => "node",
      "contents" => [
        {
          "contents" => [
            {
              "contents" => [
                {
                  "text" => "Top"
                }
              ],
              "info" => {
                "spaces_after_argument" => {
                  "text" => "\n"
                }
              },
              "type" => "line_arg"
            }
          ],
          "type" => "arguments_line"
        }
      ],
      "extra" => {
        "is_target" => 1,
        "normalized" => "Top"
      },
      "info" => {
        "spaces_before_argument" => {
          "text" => " "
        }
      },
      "source_info" => {
        "file_name" => "all_spaces.texi",
        "line_nr" => 3
      }
    },
    {
      "cmdname" => "node",
      "contents" => [
        {
          "contents" => [
            {
              "contents" => [
                {
                  "text" => "chap"
                }
              ],
              "info" => {
                "spaces_after_argument" => {
                  "text" => "\n"
                }
              },
              "type" => "line_arg"
            }
          ],
          "type" => "arguments_line"
        },
        {
          "text" => "\n",
          "type" => "empty_line"
        },
        {
          "contents" => [
            {
              "text" => "CHARACTER TABULATION: |\t|\n"
            }
          ],
          "type" => "paragraph"
        },
        {
          "text" => "\n",
          "type" => "empty_line"
        },
        {
          "contents" => [
            {
              "text" => "LINE FEED (LF): |\n"
            },
            {
              "text" => "|\n"
            }
          ],
          "type" => "paragraph"
        },
        {
          "text" => "\n",
          "type" => "empty_line"
        },
        {
          "contents" => [
            {
              "text" => "LINE TABULATION: |\13|\n"
            }
          ],
          "type" => "paragraph"
        },
        {
          "text" => "\n",
          "type" => "empty_line"
        },
        {
          "contents" => [
            {
              "text" => "FORM FEED (FF): |"
            }
          ],
          "type" => "paragraph"
        },
        {
          "text" => "\f",
          "type" => "empty_line"
        },
        {
          "contents" => [
            {
              "text" => "|\n"
            }
          ],
          "type" => "paragraph"
        },
        {
          "text" => "\n",
          "type" => "empty_line"
        },
        {
          "contents" => [
            {
              "text" => "CARRIAGE RETURN (CR): |\r|\n"
            }
          ],
          "type" => "paragraph"
        },
        {
          "text" => "\n",
          "type" => "empty_line"
        },
        {
          "contents" => [
            {
              "text" => "SPACE: | |\n"
            }
          ],
          "type" => "paragraph"
        },
        {
          "text" => "\n",
          "type" => "empty_line"
        },
        {
          "contents" => [
            {
              "text" => "NEXT LINE (NEL): |\x{85}|\n"
            }
          ],
          "type" => "paragraph"
        },
        {
          "text" => "\n",
          "type" => "empty_line"
        },
        {
          "contents" => [
            {
              "text" => "NO-BREAK SPACE: |\x{a0}|\n"
            }
          ],
          "type" => "paragraph"
        },
        {
          "text" => "\n",
          "type" => "empty_line"
        },
        {
          "contents" => [
            {
              "text" => "OGHAM SPACE MARK: |\x{1680}|\n"
            }
          ],
          "type" => "paragraph"
        },
        {
          "text" => "\n",
          "type" => "empty_line"
        },
        {
          "contents" => [
            {
              "text" => "MONGOLIAN VOWEL SEPARATOR: |\x{180e}|\n"
            }
          ],
          "type" => "paragraph"
        },
        {
          "text" => "\n",
          "type" => "empty_line"
        },
        {
          "contents" => [
            {
              "text" => "EN QUAD: |\x{2000}|\n"
            }
          ],
          "type" => "paragraph"
        },
        {
          "text" => "\n",
          "type" => "empty_line"
        },
        {
          "contents" => [
            {
              "text" => "EM QUAD: |\x{2001}|\n"
            }
          ],
          "type" => "paragraph"
        },
        {
          "text" => "\n",
          "type" => "empty_line"
        },
        {
          "contents" => [
            {
              "text" => "EN SPACE: |\x{2002}|\n"
            }
          ],
          "type" => "paragraph"
        },
        {
          "text" => "\n",
          "type" => "empty_line"
        },
        {
          "contents" => [
            {
              "text" => "EM SPACE: |\x{2003}|\n"
            }
          ],
          "type" => "paragraph"
        },
        {
          "text" => "\n",
          "type" => "empty_line"
        },
        {
          "contents" => [
            {
              "text" => "THREE-PER-EM SPACE: |\x{2004}|\n"
            }
          ],
          "type" => "paragraph"
        },
        {
          "text" => "\n",
          "type" => "empty_line"
        },
        {
          "contents" => [
            {
              "text" => "FOUR-PER-EM SPACE: |\x{2005}|\n"
            }
          ],
          "type" => "paragraph"
        },
        {
          "text" => "\n",
          "type" => "empty_line"
        },
        {
          "contents" => [
            {
              "text" => "SIX-PER-EM SPACE: |\x{2006}|\n"
            }
          ],
          "type" => "paragraph"
        },
        {
          "text" => "\n",
          "type" => "empty_line"
        },
        {
          "contents" => [
            {
              "text" => "FIGURE SPACE: |\x{2007}|\n"
            }
          ],
          "type" => "paragraph"
        },
        {
          "text" => "\n",
          "type" => "empty_line"
        },
        {
          "contents" => [
            {
              "text" => "PUNCTUATION SPACE: |\x{2008}|\n"
            }
          ],
          "type" => "paragraph"
        },
        {
          "text" => "\n",
          "type" => "empty_line"
        },
        {
          "contents" => [
            {
              "text" => "THIN SPACE: |\x{2009}|\n"
            }
          ],
          "type" => "paragraph"
        },
        {
          "text" => "\n",
          "type" => "empty_line"
        },
        {
          "contents" => [
            {
              "text" => "HAIR SPACE: |\x{200a}|\n"
            }
          ],
          "type" => "paragraph"
        },
        {
          "text" => "\n",
          "type" => "empty_line"
        },
        {
          "contents" => [
            {
              "text" => "LINE SEPARATOR: |\x{2028}|\n"
            }
          ],
          "type" => "paragraph"
        },
        {
          "text" => "\n",
          "type" => "empty_line"
        },
        {
          "contents" => [
            {
              "text" => "PARAGRAPH SEPARATOR: |\x{2029}|\n"
            }
          ],
          "type" => "paragraph"
        },
        {
          "text" => "\n",
          "type" => "empty_line"
        },
        {
          "contents" => [
            {
              "text" => "NARROW NO-BREAK SPACE: |\x{202f}|\n"
            }
          ],
          "type" => "paragraph"
        },
        {
          "text" => "\n",
          "type" => "empty_line"
        },
        {
          "contents" => [
            {
              "text" => "MEDIUM MATHEMATICAL SPACE: |\x{205f}|\n"
            }
          ],
          "type" => "paragraph"
        },
        {
          "text" => "\n",
          "type" => "empty_line"
        },
        {
          "contents" => [
            {
              "text" => "IDEOGRAPHIC SPACE: |\x{3000}|\n"
            }
          ],
          "type" => "paragraph"
        },
        {
          "text" => "\n",
          "type" => "empty_line"
        }
      ],
      "extra" => {
        "is_target" => 1,
        "normalized" => "chap"
      },
      "info" => {
        "spaces_before_argument" => {
          "text" => " "
        }
      },
      "source_info" => {
        "file_name" => "all_spaces.texi",
        "line_nr" => 4
      }
    }
  ],
  "type" => "document_root"
};

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

$result_nodes{'all_spaces'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'node_directions' => {
        'next' => {
          'cmdname' => 'node',
          'extra' => {
            'node_directions' => {
              'prev' => {}
            },
            'normalized' => 'chap'
          }
        }
      },
      'normalized' => 'Top'
    }
  },
  {}
];
$result_nodes{'all_spaces'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'all_spaces'}[0];
$result_nodes{'all_spaces'}[1] = $result_nodes{'all_spaces'}[0]{'extra'}{'node_directions'}{'next'};

$result_menus{'all_spaces'} = [
  {
    'extra' => {
      'normalized' => 'Top'
    }
  },
  {
    'extra' => {
      'normalized' => 'chap'
    }
  }
];

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


$result_floats{'all_spaces'} = {};


1;
