use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'special_spaces_in_nodes'} = {
  "contents" => [
    {
      "contents" => [
        {
          "contents" => [
            {
              "parent" => {},
              "text" => "\n",
              "type" => "text_before_beginning"
            }
          ],
          "parent" => {},
          "type" => "preamble_before_beginning"
        },
        {
          "contents" => [],
          "parent" => {},
          "type" => "preamble_before_content"
        }
      ],
      "parent" => {},
      "type" => "before_node_section"
    },
    {
      "args" => [
        {
          "contents" => [
            {
              "parent" => {},
              "text" => "Top\x{2000}"
            }
          ],
          "extra" => {
            "spaces_after_argument" => " \n"
          },
          "parent" => {},
          "type" => "line_arg"
        }
      ],
      "cmdname" => "node",
      "contents" => [],
      "extra" => {
        "node_content" => [
          {}
        ],
        "nodes_manuals" => [
          {
            "node_content" => [
              {}
            ],
            "normalized" => "Top-"
          }
        ],
        "normalized" => "Top-",
        "spaces_before_argument" => " "
      },
      "parent" => {},
      "source_info" => {
        "file_name" => "special_spaces_in_nodes.texi",
        "line_nr" => 2,
        "macro" => ""
      }
    },
    {
      "args" => [
        {
          "contents" => [
            {
              "parent" => {},
              "text" => "top"
            }
          ],
          "extra" => {
            "spaces_after_argument" => "\n"
          },
          "parent" => {},
          "type" => "line_arg"
        }
      ],
      "cmdname" => "top",
      "contents" => [
        {
          "parent" => {},
          "text" => "\n",
          "type" => "empty_line"
        }
      ],
      "extra" => {
        "spaces_before_argument" => " "
      },
      "parent" => {},
      "source_info" => {
        "file_name" => "special_spaces_in_nodes.texi",
        "line_nr" => 3,
        "macro" => ""
      }
    },
    {
      "args" => [
        {
          "contents" => [
            {
              "parent" => {},
              "text" => "EN QUAD|\x{2000}| EM QUAD|\x{2001}| EN SPACE|\x{2002}|"
            }
          ],
          "extra" => {
            "spaces_after_argument" => "\n"
          },
          "parent" => {},
          "type" => "line_arg"
        }
      ],
      "cmdname" => "node",
      "contents" => [],
      "extra" => {
        "node_content" => [
          {}
        ],
        "nodes_manuals" => [
          {
            "node_content" => [
              {}
            ],
            "normalized" => "EN-QUAD_007c-_007c-EM-QUAD_007c-_007c-EN-SPACE_007c-_007c"
          }
        ],
        "normalized" => "EN-QUAD_007c-_007c-EM-QUAD_007c-_007c-EN-SPACE_007c-_007c",
        "spaces_before_argument" => " "
      },
      "parent" => {},
      "source_info" => {
        "file_name" => "special_spaces_in_nodes.texi",
        "line_nr" => 5,
        "macro" => ""
      }
    },
    {
      "args" => [
        {
          "contents" => [
            {
              "parent" => {},
              "text" => "chap"
            }
          ],
          "extra" => {
            "spaces_after_argument" => "\n"
          },
          "parent" => {},
          "type" => "line_arg"
        }
      ],
      "cmdname" => "chapter",
      "contents" => [
        {
          "parent" => {},
          "text" => "\n",
          "type" => "empty_line"
        },
        {
          "parent" => {},
          "text" => "\n",
          "type" => "empty_line"
        },
        {
          "cmdname" => "menu",
          "contents" => [
            {
              "extra" => {
                "command" => {}
              },
              "parent" => {},
              "text" => "\n",
              "type" => "empty_line_after_command"
            },
            {
              "args" => [
                {
                  "parent" => {},
                  "text" => "* ",
                  "type" => "menu_entry_leading_text"
                },
                {
                  "contents" => [
                    {
                      "parent" => {},
                      "text" => "CHARACTER TABULATION|\t| FORM FEED|\f| LINE TABULATION|\13|"
                    }
                  ],
                  "parent" => {},
                  "type" => "menu_entry_node"
                },
                {
                  "parent" => {},
                  "text" => "::",
                  "type" => "menu_entry_separator"
                },
                {
                  "contents" => [
                    {
                      "contents" => [
                        {
                          "parent" => {},
                          "text" => "\n"
                        }
                      ],
                      "parent" => {},
                      "type" => "preformatted"
                    }
                  ],
                  "parent" => {},
                  "type" => "menu_entry_description"
                }
              ],
              "extra" => {
                "menu_entry_description" => {},
                "menu_entry_node" => {
                  "node_content" => [
                    {}
                  ],
                  "normalized" => "CHARACTER-TABULATION_007c-_007c-FORM-FEED_007c-_007c-LINE-TABULATION_007c-_007c"
                }
              },
              "parent" => {},
              "source_info" => {
                "file_name" => "special_spaces_in_nodes.texi",
                "line_nr" => 10,
                "macro" => ""
              },
              "type" => "menu_entry"
            },
            {
              "args" => [
                {
                  "parent" => {},
                  "text" => "* ",
                  "type" => "menu_entry_leading_text"
                },
                {
                  "contents" => [
                    {
                      "parent" => {},
                      "text" => "CARRIAGE RETURN|\r|"
                    }
                  ],
                  "parent" => {},
                  "type" => "menu_entry_node"
                },
                {
                  "parent" => {},
                  "text" => "::",
                  "type" => "menu_entry_separator"
                },
                {
                  "contents" => [
                    {
                      "contents" => [
                        {
                          "parent" => {},
                          "text" => "\n"
                        }
                      ],
                      "parent" => {},
                      "type" => "preformatted"
                    }
                  ],
                  "parent" => {},
                  "type" => "menu_entry_description"
                }
              ],
              "extra" => {
                "menu_entry_description" => {},
                "menu_entry_node" => {
                  "node_content" => [
                    {}
                  ],
                  "normalized" => "CARRIAGE-RETURN_007c-_007c"
                }
              },
              "parent" => {},
              "source_info" => {
                "file_name" => "special_spaces_in_nodes.texi",
                "line_nr" => 11,
                "macro" => ""
              },
              "type" => "menu_entry"
            },
            {
              "args" => [
                {
                  "parent" => {},
                  "text" => "* ",
                  "type" => "menu_entry_leading_text"
                },
                {
                  "contents" => [
                    {
                      "parent" => {},
                      "text" => "NEXT LINE (NEL)|\x{85}| NO-BREAK SPACE|\x{a0}| OGHAM SPACE MARK|\x{1680}|"
                    }
                  ],
                  "parent" => {},
                  "type" => "menu_entry_node"
                },
                {
                  "parent" => {},
                  "text" => "::",
                  "type" => "menu_entry_separator"
                },
                {
                  "contents" => [
                    {
                      "contents" => [
                        {
                          "parent" => {},
                          "text" => "\n"
                        }
                      ],
                      "parent" => {},
                      "type" => "preformatted"
                    }
                  ],
                  "parent" => {},
                  "type" => "menu_entry_description"
                }
              ],
              "extra" => {
                "menu_entry_description" => {},
                "menu_entry_node" => {
                  "node_content" => [
                    {}
                  ],
                  "normalized" => "NEXT-LINE-_0028NEL_0029_007c-_007c-NO_002dBREAK-SPACE_007c-_007c-OGHAM-SPACE-MARK_007c-_007c"
                }
              },
              "parent" => {},
              "source_info" => {
                "file_name" => "special_spaces_in_nodes.texi",
                "line_nr" => 12,
                "macro" => ""
              },
              "type" => "menu_entry"
            },
            {
              "args" => [
                {
                  "parent" => {},
                  "text" => "* ",
                  "type" => "menu_entry_leading_text"
                },
                {
                  "contents" => [
                    {
                      "parent" => {},
                      "text" => "MONGOLIAN VOWEL SEPARATOR|\x{180e}| EM SPACE|\x{2003}|"
                    }
                  ],
                  "parent" => {},
                  "type" => "menu_entry_node"
                },
                {
                  "parent" => {},
                  "text" => "::",
                  "type" => "menu_entry_separator"
                },
                {
                  "contents" => [
                    {
                      "contents" => [
                        {
                          "parent" => {},
                          "text" => "\n"
                        }
                      ],
                      "parent" => {},
                      "type" => "preformatted"
                    }
                  ],
                  "parent" => {},
                  "type" => "menu_entry_description"
                }
              ],
              "extra" => {
                "menu_entry_description" => {},
                "menu_entry_node" => {
                  "node_content" => [
                    {}
                  ],
                  "normalized" => "MONGOLIAN-VOWEL-SEPARATOR_007c_180e_007c-EM-SPACE_007c-_007c"
                }
              },
              "parent" => {},
              "source_info" => {
                "file_name" => "special_spaces_in_nodes.texi",
                "line_nr" => 13,
                "macro" => ""
              },
              "type" => "menu_entry"
            },
            {
              "args" => [
                {
                  "parent" => {},
                  "text" => "* ",
                  "type" => "menu_entry_leading_text"
                },
                {
                  "contents" => [
                    {
                      "parent" => {},
                      "text" => "THREE-PER-EM SPACE|\x{2004}| FOUR-PER-EM SPACE|\x{2005}| SIX-PER-EM SPACE|\x{2006}|"
                    }
                  ],
                  "parent" => {},
                  "type" => "menu_entry_node"
                },
                {
                  "parent" => {},
                  "text" => "::",
                  "type" => "menu_entry_separator"
                },
                {
                  "contents" => [
                    {
                      "contents" => [
                        {
                          "parent" => {},
                          "text" => "\n"
                        }
                      ],
                      "parent" => {},
                      "type" => "preformatted"
                    }
                  ],
                  "parent" => {},
                  "type" => "menu_entry_description"
                }
              ],
              "extra" => {
                "menu_entry_description" => {},
                "menu_entry_node" => {
                  "node_content" => [
                    {}
                  ],
                  "normalized" => "THREE_002dPER_002dEM-SPACE_007c-_007c-FOUR_002dPER_002dEM-SPACE_007c-_007c-SIX_002dPER_002dEM-SPACE_007c-_007c"
                }
              },
              "parent" => {},
              "source_info" => {
                "file_name" => "special_spaces_in_nodes.texi",
                "line_nr" => 14,
                "macro" => ""
              },
              "type" => "menu_entry"
            },
            {
              "args" => [
                {
                  "parent" => {},
                  "text" => "* ",
                  "type" => "menu_entry_leading_text"
                },
                {
                  "contents" => [
                    {
                      "parent" => {},
                      "text" => "FIGURE SPACE|\x{2007}| PUNCTUATION SPACE|\x{2008}| THIN SPACE|\x{2009}|"
                    }
                  ],
                  "parent" => {},
                  "type" => "menu_entry_node"
                },
                {
                  "parent" => {},
                  "text" => "::",
                  "type" => "menu_entry_separator"
                },
                {
                  "contents" => [
                    {
                      "contents" => [
                        {
                          "parent" => {},
                          "text" => "\n"
                        }
                      ],
                      "parent" => {},
                      "type" => "preformatted"
                    }
                  ],
                  "parent" => {},
                  "type" => "menu_entry_description"
                }
              ],
              "extra" => {
                "menu_entry_description" => {},
                "menu_entry_node" => {
                  "node_content" => [
                    {}
                  ],
                  "normalized" => "FIGURE-SPACE_007c-_007c-PUNCTUATION-SPACE_007c-_007c-THIN-SPACE_007c-_007c"
                }
              },
              "parent" => {},
              "source_info" => {
                "file_name" => "special_spaces_in_nodes.texi",
                "line_nr" => 15,
                "macro" => ""
              },
              "type" => "menu_entry"
            },
            {
              "args" => [
                {
                  "parent" => {},
                  "text" => "* ",
                  "type" => "menu_entry_leading_text"
                },
                {
                  "contents" => [
                    {
                      "parent" => {},
                      "text" => "HAIR SPACE|\x{200a}| LINE SEPARATOR|\x{2028}| PARAGRAPH SEPARATOR|\x{2029}|"
                    }
                  ],
                  "parent" => {},
                  "type" => "menu_entry_node"
                },
                {
                  "parent" => {},
                  "text" => "::",
                  "type" => "menu_entry_separator"
                },
                {
                  "contents" => [
                    {
                      "contents" => [
                        {
                          "parent" => {},
                          "text" => "\n"
                        }
                      ],
                      "parent" => {},
                      "type" => "preformatted"
                    }
                  ],
                  "parent" => {},
                  "type" => "menu_entry_description"
                }
              ],
              "extra" => {
                "menu_entry_description" => {},
                "menu_entry_node" => {
                  "node_content" => [
                    {}
                  ],
                  "normalized" => "HAIR-SPACE_007c-_007c-LINE-SEPARATOR_007c-_007c-PARAGRAPH-SEPARATOR_007c-_007c"
                }
              },
              "parent" => {},
              "source_info" => {
                "file_name" => "special_spaces_in_nodes.texi",
                "line_nr" => 16,
                "macro" => ""
              },
              "type" => "menu_entry"
            },
            {
              "args" => [
                {
                  "parent" => {},
                  "text" => "* ",
                  "type" => "menu_entry_leading_text"
                },
                {
                  "contents" => [
                    {
                      "parent" => {},
                      "text" => "NARROW NO-BREAK SPACE|\x{202f}| MEDIUM MATHEMATICAL SPACE|\x{205f}| IDEOGRAPHIC SPACE|\x{3000}|"
                    }
                  ],
                  "parent" => {},
                  "type" => "menu_entry_node"
                },
                {
                  "parent" => {},
                  "text" => "::",
                  "type" => "menu_entry_separator"
                },
                {
                  "contents" => [
                    {
                      "contents" => [
                        {
                          "parent" => {},
                          "text" => "\n"
                        }
                      ],
                      "parent" => {},
                      "type" => "preformatted"
                    }
                  ],
                  "parent" => {},
                  "type" => "menu_entry_description"
                }
              ],
              "extra" => {
                "menu_entry_description" => {},
                "menu_entry_node" => {
                  "node_content" => [
                    {}
                  ],
                  "normalized" => "NARROW-NO_002dBREAK-SPACE_007c-_007c-MEDIUM-MATHEMATICAL-SPACE_007c-_007c-IDEOGRAPHIC-SPACE_007c-_007c"
                }
              },
              "parent" => {},
              "source_info" => {
                "file_name" => "special_spaces_in_nodes.texi",
                "line_nr" => 17,
                "macro" => ""
              },
              "type" => "menu_entry"
            },
            {
              "args" => [
                {
                  "contents" => [
                    {
                      "parent" => {},
                      "text" => "menu"
                    }
                  ],
                  "extra" => {
                    "spaces_after_argument" => "\n"
                  },
                  "parent" => {},
                  "type" => "line_arg"
                }
              ],
              "cmdname" => "end",
              "extra" => {
                "command_argument" => "menu",
                "spaces_before_argument" => " ",
                "text_arg" => "menu"
              },
              "parent" => {},
              "source_info" => {
                "file_name" => "special_spaces_in_nodes.texi",
                "line_nr" => 18,
                "macro" => ""
              }
            }
          ],
          "extra" => {
            "end_command" => {}
          },
          "parent" => {},
          "source_info" => {
            "file_name" => "special_spaces_in_nodes.texi",
            "line_nr" => 9,
            "macro" => ""
          }
        },
        {
          "parent" => {},
          "text" => "\n",
          "type" => "empty_line"
        }
      ],
      "extra" => {
        "spaces_before_argument" => " "
      },
      "parent" => {},
      "source_info" => {
        "file_name" => "special_spaces_in_nodes.texi",
        "line_nr" => 6,
        "macro" => ""
      }
    },
    {
      "args" => [
        {
          "contents" => [
            {
              "parent" => {},
              "text" => "CHARACTER TABULATION|\t| FORM FEED|\f| LINE TABULATION|\13|"
            }
          ],
          "extra" => {
            "spaces_after_argument" => "\n"
          },
          "parent" => {},
          "type" => "line_arg"
        }
      ],
      "cmdname" => "node",
      "contents" => [
        {
          "parent" => {},
          "text" => "\n",
          "type" => "empty_line"
        }
      ],
      "extra" => {
        "node_content" => [
          {}
        ],
        "nodes_manuals" => [
          {
            "node_content" => [
              {}
            ],
            "normalized" => "CHARACTER-TABULATION_007c-_007c-FORM-FEED_007c-_007c-LINE-TABULATION_007c-_007c"
          }
        ],
        "normalized" => "CHARACTER-TABULATION_007c-_007c-FORM-FEED_007c-_007c-LINE-TABULATION_007c-_007c",
        "spaces_before_argument" => " "
      },
      "parent" => {},
      "source_info" => {
        "file_name" => "special_spaces_in_nodes.texi",
        "line_nr" => 20,
        "macro" => ""
      }
    },
    {
      "args" => [
        {
          "contents" => [
            {
              "parent" => {},
              "text" => "CARRIAGE RETURN|\r|"
            }
          ],
          "extra" => {
            "spaces_after_argument" => "\n"
          },
          "parent" => {},
          "type" => "line_arg"
        }
      ],
      "cmdname" => "node",
      "contents" => [
        {
          "parent" => {},
          "text" => "\n",
          "type" => "empty_line"
        }
      ],
      "extra" => {
        "node_content" => [
          {}
        ],
        "nodes_manuals" => [
          {
            "node_content" => [
              {}
            ],
            "normalized" => "CARRIAGE-RETURN_007c-_007c"
          }
        ],
        "normalized" => "CARRIAGE-RETURN_007c-_007c",
        "spaces_before_argument" => " "
      },
      "parent" => {},
      "source_info" => {
        "file_name" => "special_spaces_in_nodes.texi",
        "line_nr" => 22,
        "macro" => ""
      }
    },
    {
      "args" => [
        {
          "contents" => [
            {
              "parent" => {},
              "text" => "NEXT LINE (NEL)|\x{85}| NO-BREAK SPACE|\x{a0}| OGHAM SPACE MARK|\x{1680}|"
            }
          ],
          "extra" => {
            "spaces_after_argument" => "\n"
          },
          "parent" => {},
          "type" => "line_arg"
        }
      ],
      "cmdname" => "node",
      "contents" => [
        {
          "parent" => {},
          "text" => "\n",
          "type" => "empty_line"
        }
      ],
      "extra" => {
        "node_content" => [
          {}
        ],
        "nodes_manuals" => [
          {
            "node_content" => [
              {}
            ],
            "normalized" => "NEXT-LINE-_0028NEL_0029_007c-_007c-NO_002dBREAK-SPACE_007c-_007c-OGHAM-SPACE-MARK_007c-_007c"
          }
        ],
        "normalized" => "NEXT-LINE-_0028NEL_0029_007c-_007c-NO_002dBREAK-SPACE_007c-_007c-OGHAM-SPACE-MARK_007c-_007c",
        "spaces_before_argument" => " "
      },
      "parent" => {},
      "source_info" => {
        "file_name" => "special_spaces_in_nodes.texi",
        "line_nr" => 24,
        "macro" => ""
      }
    },
    {
      "args" => [
        {
          "contents" => [
            {
              "parent" => {},
              "text" => "MONGOLIAN VOWEL SEPARATOR|\x{180e}| EM SPACE|\x{2003}|"
            }
          ],
          "extra" => {
            "spaces_after_argument" => "\n"
          },
          "parent" => {},
          "type" => "line_arg"
        }
      ],
      "cmdname" => "node",
      "contents" => [
        {
          "parent" => {},
          "text" => "\n",
          "type" => "empty_line"
        }
      ],
      "extra" => {
        "node_content" => [
          {}
        ],
        "nodes_manuals" => [
          {
            "node_content" => [
              {}
            ],
            "normalized" => "MONGOLIAN-VOWEL-SEPARATOR_007c_180e_007c-EM-SPACE_007c-_007c"
          }
        ],
        "normalized" => "MONGOLIAN-VOWEL-SEPARATOR_007c_180e_007c-EM-SPACE_007c-_007c",
        "spaces_before_argument" => " "
      },
      "parent" => {},
      "source_info" => {
        "file_name" => "special_spaces_in_nodes.texi",
        "line_nr" => 26,
        "macro" => ""
      }
    },
    {
      "args" => [
        {
          "contents" => [
            {
              "parent" => {},
              "text" => "THREE-PER-EM SPACE|\x{2004}| FOUR-PER-EM SPACE|\x{2005}| SIX-PER-EM SPACE|\x{2006}|"
            }
          ],
          "extra" => {
            "spaces_after_argument" => "\n"
          },
          "parent" => {},
          "type" => "line_arg"
        }
      ],
      "cmdname" => "node",
      "contents" => [
        {
          "parent" => {},
          "text" => "\n",
          "type" => "empty_line"
        }
      ],
      "extra" => {
        "node_content" => [
          {}
        ],
        "nodes_manuals" => [
          {
            "node_content" => [
              {}
            ],
            "normalized" => "THREE_002dPER_002dEM-SPACE_007c-_007c-FOUR_002dPER_002dEM-SPACE_007c-_007c-SIX_002dPER_002dEM-SPACE_007c-_007c"
          }
        ],
        "normalized" => "THREE_002dPER_002dEM-SPACE_007c-_007c-FOUR_002dPER_002dEM-SPACE_007c-_007c-SIX_002dPER_002dEM-SPACE_007c-_007c",
        "spaces_before_argument" => " "
      },
      "parent" => {},
      "source_info" => {
        "file_name" => "special_spaces_in_nodes.texi",
        "line_nr" => 28,
        "macro" => ""
      }
    },
    {
      "args" => [
        {
          "contents" => [
            {
              "parent" => {},
              "text" => "FIGURE SPACE|\x{2007}| PUNCTUATION SPACE|\x{2008}| THIN SPACE|\x{2009}|"
            }
          ],
          "extra" => {
            "spaces_after_argument" => "\n"
          },
          "parent" => {},
          "type" => "line_arg"
        }
      ],
      "cmdname" => "node",
      "contents" => [
        {
          "parent" => {},
          "text" => "\n",
          "type" => "empty_line"
        }
      ],
      "extra" => {
        "node_content" => [
          {}
        ],
        "nodes_manuals" => [
          {
            "node_content" => [
              {}
            ],
            "normalized" => "FIGURE-SPACE_007c-_007c-PUNCTUATION-SPACE_007c-_007c-THIN-SPACE_007c-_007c"
          }
        ],
        "normalized" => "FIGURE-SPACE_007c-_007c-PUNCTUATION-SPACE_007c-_007c-THIN-SPACE_007c-_007c",
        "spaces_before_argument" => " "
      },
      "parent" => {},
      "source_info" => {
        "file_name" => "special_spaces_in_nodes.texi",
        "line_nr" => 30,
        "macro" => ""
      }
    },
    {
      "args" => [
        {
          "contents" => [
            {
              "parent" => {},
              "text" => "HAIR SPACE|\x{200a}| LINE SEPARATOR|\x{2028}| PARAGRAPH SEPARATOR|\x{2029}|"
            }
          ],
          "extra" => {
            "spaces_after_argument" => "\n"
          },
          "parent" => {},
          "type" => "line_arg"
        }
      ],
      "cmdname" => "node",
      "contents" => [
        {
          "parent" => {},
          "text" => "\n",
          "type" => "empty_line"
        }
      ],
      "extra" => {
        "node_content" => [
          {}
        ],
        "nodes_manuals" => [
          {
            "node_content" => [
              {}
            ],
            "normalized" => "HAIR-SPACE_007c-_007c-LINE-SEPARATOR_007c-_007c-PARAGRAPH-SEPARATOR_007c-_007c"
          }
        ],
        "normalized" => "HAIR-SPACE_007c-_007c-LINE-SEPARATOR_007c-_007c-PARAGRAPH-SEPARATOR_007c-_007c",
        "spaces_before_argument" => " "
      },
      "parent" => {},
      "source_info" => {
        "file_name" => "special_spaces_in_nodes.texi",
        "line_nr" => 32,
        "macro" => ""
      }
    },
    {
      "args" => [
        {
          "contents" => [
            {
              "parent" => {},
              "text" => "NARROW NO-BREAK SPACE|\x{202f}| MEDIUM MATHEMATICAL SPACE|\x{205f}| IDEOGRAPHIC SPACE|\x{3000}|"
            }
          ],
          "extra" => {
            "spaces_after_argument" => "\n"
          },
          "parent" => {},
          "type" => "line_arg"
        }
      ],
      "cmdname" => "node",
      "contents" => [
        {
          "parent" => {},
          "text" => "\n",
          "type" => "empty_line"
        },
        {
          "contents" => [
            {
              "args" => [
                {
                  "contents" => [
                    {
                      "parent" => {},
                      "text" => "NEXT LINE (NEL)|\x{85}| NO-BREAK SPACE|\x{a0}| OGHAM SPACE MARK|\x{1680}|"
                    }
                  ],
                  "parent" => {},
                  "type" => "brace_command_arg"
                }
              ],
              "cmdname" => "ref",
              "contents" => [],
              "extra" => {
                "label" => {},
                "node_argument" => {
                  "node_content" => [
                    {}
                  ],
                  "normalized" => "NEXT-LINE-_0028NEL_0029_007c-_007c-NO_002dBREAK-SPACE_007c-_007c-OGHAM-SPACE-MARK_007c-_007c"
                }
              },
              "parent" => {},
              "source_info" => {
                "file_name" => "special_spaces_in_nodes.texi",
                "line_nr" => 36,
                "macro" => ""
              }
            },
            {
              "parent" => {},
              "text" => "\n"
            }
          ],
          "parent" => {},
          "type" => "paragraph"
        },
        {
          "parent" => {},
          "text" => "\n",
          "type" => "empty_line"
        }
      ],
      "extra" => {
        "node_content" => [
          {}
        ],
        "nodes_manuals" => [
          {
            "node_content" => [
              {}
            ],
            "normalized" => "NARROW-NO_002dBREAK-SPACE_007c-_007c-MEDIUM-MATHEMATICAL-SPACE_007c-_007c-IDEOGRAPHIC-SPACE_007c-_007c"
          }
        ],
        "normalized" => "NARROW-NO_002dBREAK-SPACE_007c-_007c-MEDIUM-MATHEMATICAL-SPACE_007c-_007c-IDEOGRAPHIC-SPACE_007c-_007c",
        "spaces_before_argument" => " "
      },
      "parent" => {},
      "source_info" => {
        "file_name" => "special_spaces_in_nodes.texi",
        "line_nr" => 34,
        "macro" => ""
      }
    },
    {
      "args" => [
        {
          "parent" => {},
          "text" => "\n",
          "type" => "misc_arg"
        }
      ],
      "cmdname" => "bye",
      "parent" => {}
    }
  ],
  "type" => "document_root"
};
$result_trees{'special_spaces_in_nodes'}{"contents"}[0]{"contents"}[0]{"contents"}[0]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[0]{"contents"}[0];
$result_trees{'special_spaces_in_nodes'}{"contents"}[0]{"contents"}[0]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[0];
$result_trees{'special_spaces_in_nodes'}{"contents"}[0]{"contents"}[1]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[0];
$result_trees{'special_spaces_in_nodes'}{"contents"}[0]{"parent"} = $result_trees{'special_spaces_in_nodes'};
$result_trees{'special_spaces_in_nodes'}{"contents"}[1]{"args"}[0]{"contents"}[0]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[1]{"args"}[0];
$result_trees{'special_spaces_in_nodes'}{"contents"}[1]{"args"}[0]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[1];
$result_trees{'special_spaces_in_nodes'}{"contents"}[1]{"extra"}{"node_content"}[0] = $result_trees{'special_spaces_in_nodes'}{"contents"}[1]{"args"}[0]{"contents"}[0];
$result_trees{'special_spaces_in_nodes'}{"contents"}[1]{"extra"}{"nodes_manuals"}[0]{"node_content"}[0] = $result_trees{'special_spaces_in_nodes'}{"contents"}[1]{"args"}[0]{"contents"}[0];
$result_trees{'special_spaces_in_nodes'}{"contents"}[1]{"parent"} = $result_trees{'special_spaces_in_nodes'};
$result_trees{'special_spaces_in_nodes'}{"contents"}[2]{"args"}[0]{"contents"}[0]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[2]{"args"}[0];
$result_trees{'special_spaces_in_nodes'}{"contents"}[2]{"args"}[0]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[2];
$result_trees{'special_spaces_in_nodes'}{"contents"}[2]{"contents"}[0]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[2];
$result_trees{'special_spaces_in_nodes'}{"contents"}[2]{"parent"} = $result_trees{'special_spaces_in_nodes'};
$result_trees{'special_spaces_in_nodes'}{"contents"}[3]{"args"}[0]{"contents"}[0]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[3]{"args"}[0];
$result_trees{'special_spaces_in_nodes'}{"contents"}[3]{"args"}[0]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[3];
$result_trees{'special_spaces_in_nodes'}{"contents"}[3]{"extra"}{"node_content"}[0] = $result_trees{'special_spaces_in_nodes'}{"contents"}[3]{"args"}[0]{"contents"}[0];
$result_trees{'special_spaces_in_nodes'}{"contents"}[3]{"extra"}{"nodes_manuals"}[0]{"node_content"}[0] = $result_trees{'special_spaces_in_nodes'}{"contents"}[3]{"args"}[0]{"contents"}[0];
$result_trees{'special_spaces_in_nodes'}{"contents"}[3]{"parent"} = $result_trees{'special_spaces_in_nodes'};
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"args"}[0]{"contents"}[0]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"args"}[0];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"args"}[0]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[4];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[0]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[4];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[1]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[4];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[0]{"extra"}{"command"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[0]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[1]{"args"}[0]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[1];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[1]{"args"}[1]{"contents"}[0]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[1]{"args"}[1];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[1]{"args"}[1]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[1];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[1]{"args"}[2]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[1];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[1]{"args"}[3]{"contents"}[0]{"contents"}[0]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[1]{"args"}[3]{"contents"}[0];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[1]{"args"}[3]{"contents"}[0]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[1]{"args"}[3];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[1]{"args"}[3]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[1];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[1]{"extra"}{"menu_entry_description"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[1]{"args"}[3];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[1]{"extra"}{"menu_entry_node"}{"node_content"}[0] = $result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[1]{"args"}[1]{"contents"}[0];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[1]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[2]{"args"}[0]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[2];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[2]{"args"}[1]{"contents"}[0]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[2]{"args"}[1];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[2]{"args"}[1]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[2];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[2]{"args"}[2]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[2];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[2]{"args"}[3]{"contents"}[0]{"contents"}[0]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[2]{"args"}[3]{"contents"}[0];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[2]{"args"}[3]{"contents"}[0]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[2]{"args"}[3];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[2]{"args"}[3]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[2];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[2]{"extra"}{"menu_entry_description"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[2]{"args"}[3];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[2]{"extra"}{"menu_entry_node"}{"node_content"}[0] = $result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[2]{"args"}[1]{"contents"}[0];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[2]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[3]{"args"}[0]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[3];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[3]{"args"}[1]{"contents"}[0]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[3]{"args"}[1];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[3]{"args"}[1]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[3];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[3]{"args"}[2]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[3];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[3]{"args"}[3]{"contents"}[0]{"contents"}[0]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[3]{"args"}[3]{"contents"}[0];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[3]{"args"}[3]{"contents"}[0]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[3]{"args"}[3];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[3]{"args"}[3]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[3];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[3]{"extra"}{"menu_entry_description"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[3]{"args"}[3];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[3]{"extra"}{"menu_entry_node"}{"node_content"}[0] = $result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[3]{"args"}[1]{"contents"}[0];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[3]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[4]{"args"}[0]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[4];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[4]{"args"}[1]{"contents"}[0]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[4]{"args"}[1];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[4]{"args"}[1]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[4];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[4]{"args"}[2]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[4];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[4]{"args"}[3]{"contents"}[0]{"contents"}[0]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[4]{"args"}[3]{"contents"}[0];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[4]{"args"}[3]{"contents"}[0]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[4]{"args"}[3];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[4]{"args"}[3]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[4];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[4]{"extra"}{"menu_entry_description"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[4]{"args"}[3];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[4]{"extra"}{"menu_entry_node"}{"node_content"}[0] = $result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[4]{"args"}[1]{"contents"}[0];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[4]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[5]{"args"}[0]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[5];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[5]{"args"}[1]{"contents"}[0]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[5]{"args"}[1];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[5]{"args"}[1]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[5];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[5]{"args"}[2]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[5];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[5]{"args"}[3]{"contents"}[0]{"contents"}[0]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[5]{"args"}[3]{"contents"}[0];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[5]{"args"}[3]{"contents"}[0]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[5]{"args"}[3];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[5]{"args"}[3]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[5];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[5]{"extra"}{"menu_entry_description"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[5]{"args"}[3];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[5]{"extra"}{"menu_entry_node"}{"node_content"}[0] = $result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[5]{"args"}[1]{"contents"}[0];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[5]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[6]{"args"}[0]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[6];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[6]{"args"}[1]{"contents"}[0]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[6]{"args"}[1];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[6]{"args"}[1]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[6];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[6]{"args"}[2]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[6];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[6]{"args"}[3]{"contents"}[0]{"contents"}[0]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[6]{"args"}[3]{"contents"}[0];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[6]{"args"}[3]{"contents"}[0]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[6]{"args"}[3];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[6]{"args"}[3]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[6];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[6]{"extra"}{"menu_entry_description"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[6]{"args"}[3];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[6]{"extra"}{"menu_entry_node"}{"node_content"}[0] = $result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[6]{"args"}[1]{"contents"}[0];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[6]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[7]{"args"}[0]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[7];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[7]{"args"}[1]{"contents"}[0]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[7]{"args"}[1];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[7]{"args"}[1]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[7];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[7]{"args"}[2]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[7];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[7]{"args"}[3]{"contents"}[0]{"contents"}[0]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[7]{"args"}[3]{"contents"}[0];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[7]{"args"}[3]{"contents"}[0]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[7]{"args"}[3];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[7]{"args"}[3]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[7];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[7]{"extra"}{"menu_entry_description"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[7]{"args"}[3];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[7]{"extra"}{"menu_entry_node"}{"node_content"}[0] = $result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[7]{"args"}[1]{"contents"}[0];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[7]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[8]{"args"}[0]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[8];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[8]{"args"}[1]{"contents"}[0]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[8]{"args"}[1];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[8]{"args"}[1]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[8];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[8]{"args"}[2]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[8];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[8]{"args"}[3]{"contents"}[0]{"contents"}[0]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[8]{"args"}[3]{"contents"}[0];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[8]{"args"}[3]{"contents"}[0]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[8]{"args"}[3];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[8]{"args"}[3]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[8];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[8]{"extra"}{"menu_entry_description"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[8]{"args"}[3];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[8]{"extra"}{"menu_entry_node"}{"node_content"}[0] = $result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[8]{"args"}[1]{"contents"}[0];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[8]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[9]{"args"}[0]{"contents"}[0]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[9]{"args"}[0];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[9]{"args"}[0]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[9];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[9]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"extra"}{"end_command"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"contents"}[9];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[2]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[4];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"contents"}[3]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[4];
$result_trees{'special_spaces_in_nodes'}{"contents"}[4]{"parent"} = $result_trees{'special_spaces_in_nodes'};
$result_trees{'special_spaces_in_nodes'}{"contents"}[5]{"args"}[0]{"contents"}[0]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[5]{"args"}[0];
$result_trees{'special_spaces_in_nodes'}{"contents"}[5]{"args"}[0]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[5];
$result_trees{'special_spaces_in_nodes'}{"contents"}[5]{"contents"}[0]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[5];
$result_trees{'special_spaces_in_nodes'}{"contents"}[5]{"extra"}{"node_content"}[0] = $result_trees{'special_spaces_in_nodes'}{"contents"}[5]{"args"}[0]{"contents"}[0];
$result_trees{'special_spaces_in_nodes'}{"contents"}[5]{"extra"}{"nodes_manuals"}[0]{"node_content"}[0] = $result_trees{'special_spaces_in_nodes'}{"contents"}[5]{"args"}[0]{"contents"}[0];
$result_trees{'special_spaces_in_nodes'}{"contents"}[5]{"parent"} = $result_trees{'special_spaces_in_nodes'};
$result_trees{'special_spaces_in_nodes'}{"contents"}[6]{"args"}[0]{"contents"}[0]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[6]{"args"}[0];
$result_trees{'special_spaces_in_nodes'}{"contents"}[6]{"args"}[0]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[6];
$result_trees{'special_spaces_in_nodes'}{"contents"}[6]{"contents"}[0]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[6];
$result_trees{'special_spaces_in_nodes'}{"contents"}[6]{"extra"}{"node_content"}[0] = $result_trees{'special_spaces_in_nodes'}{"contents"}[6]{"args"}[0]{"contents"}[0];
$result_trees{'special_spaces_in_nodes'}{"contents"}[6]{"extra"}{"nodes_manuals"}[0]{"node_content"}[0] = $result_trees{'special_spaces_in_nodes'}{"contents"}[6]{"args"}[0]{"contents"}[0];
$result_trees{'special_spaces_in_nodes'}{"contents"}[6]{"parent"} = $result_trees{'special_spaces_in_nodes'};
$result_trees{'special_spaces_in_nodes'}{"contents"}[7]{"args"}[0]{"contents"}[0]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[7]{"args"}[0];
$result_trees{'special_spaces_in_nodes'}{"contents"}[7]{"args"}[0]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[7];
$result_trees{'special_spaces_in_nodes'}{"contents"}[7]{"contents"}[0]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[7];
$result_trees{'special_spaces_in_nodes'}{"contents"}[7]{"extra"}{"node_content"}[0] = $result_trees{'special_spaces_in_nodes'}{"contents"}[7]{"args"}[0]{"contents"}[0];
$result_trees{'special_spaces_in_nodes'}{"contents"}[7]{"extra"}{"nodes_manuals"}[0]{"node_content"}[0] = $result_trees{'special_spaces_in_nodes'}{"contents"}[7]{"args"}[0]{"contents"}[0];
$result_trees{'special_spaces_in_nodes'}{"contents"}[7]{"parent"} = $result_trees{'special_spaces_in_nodes'};
$result_trees{'special_spaces_in_nodes'}{"contents"}[8]{"args"}[0]{"contents"}[0]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[8]{"args"}[0];
$result_trees{'special_spaces_in_nodes'}{"contents"}[8]{"args"}[0]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[8];
$result_trees{'special_spaces_in_nodes'}{"contents"}[8]{"contents"}[0]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[8];
$result_trees{'special_spaces_in_nodes'}{"contents"}[8]{"extra"}{"node_content"}[0] = $result_trees{'special_spaces_in_nodes'}{"contents"}[8]{"args"}[0]{"contents"}[0];
$result_trees{'special_spaces_in_nodes'}{"contents"}[8]{"extra"}{"nodes_manuals"}[0]{"node_content"}[0] = $result_trees{'special_spaces_in_nodes'}{"contents"}[8]{"args"}[0]{"contents"}[0];
$result_trees{'special_spaces_in_nodes'}{"contents"}[8]{"parent"} = $result_trees{'special_spaces_in_nodes'};
$result_trees{'special_spaces_in_nodes'}{"contents"}[9]{"args"}[0]{"contents"}[0]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[9]{"args"}[0];
$result_trees{'special_spaces_in_nodes'}{"contents"}[9]{"args"}[0]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[9];
$result_trees{'special_spaces_in_nodes'}{"contents"}[9]{"contents"}[0]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[9];
$result_trees{'special_spaces_in_nodes'}{"contents"}[9]{"extra"}{"node_content"}[0] = $result_trees{'special_spaces_in_nodes'}{"contents"}[9]{"args"}[0]{"contents"}[0];
$result_trees{'special_spaces_in_nodes'}{"contents"}[9]{"extra"}{"nodes_manuals"}[0]{"node_content"}[0] = $result_trees{'special_spaces_in_nodes'}{"contents"}[9]{"args"}[0]{"contents"}[0];
$result_trees{'special_spaces_in_nodes'}{"contents"}[9]{"parent"} = $result_trees{'special_spaces_in_nodes'};
$result_trees{'special_spaces_in_nodes'}{"contents"}[10]{"args"}[0]{"contents"}[0]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[10]{"args"}[0];
$result_trees{'special_spaces_in_nodes'}{"contents"}[10]{"args"}[0]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[10];
$result_trees{'special_spaces_in_nodes'}{"contents"}[10]{"contents"}[0]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[10];
$result_trees{'special_spaces_in_nodes'}{"contents"}[10]{"extra"}{"node_content"}[0] = $result_trees{'special_spaces_in_nodes'}{"contents"}[10]{"args"}[0]{"contents"}[0];
$result_trees{'special_spaces_in_nodes'}{"contents"}[10]{"extra"}{"nodes_manuals"}[0]{"node_content"}[0] = $result_trees{'special_spaces_in_nodes'}{"contents"}[10]{"args"}[0]{"contents"}[0];
$result_trees{'special_spaces_in_nodes'}{"contents"}[10]{"parent"} = $result_trees{'special_spaces_in_nodes'};
$result_trees{'special_spaces_in_nodes'}{"contents"}[11]{"args"}[0]{"contents"}[0]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[11]{"args"}[0];
$result_trees{'special_spaces_in_nodes'}{"contents"}[11]{"args"}[0]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[11];
$result_trees{'special_spaces_in_nodes'}{"contents"}[11]{"contents"}[0]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[11];
$result_trees{'special_spaces_in_nodes'}{"contents"}[11]{"extra"}{"node_content"}[0] = $result_trees{'special_spaces_in_nodes'}{"contents"}[11]{"args"}[0]{"contents"}[0];
$result_trees{'special_spaces_in_nodes'}{"contents"}[11]{"extra"}{"nodes_manuals"}[0]{"node_content"}[0] = $result_trees{'special_spaces_in_nodes'}{"contents"}[11]{"args"}[0]{"contents"}[0];
$result_trees{'special_spaces_in_nodes'}{"contents"}[11]{"parent"} = $result_trees{'special_spaces_in_nodes'};
$result_trees{'special_spaces_in_nodes'}{"contents"}[12]{"args"}[0]{"contents"}[0]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[12]{"args"}[0];
$result_trees{'special_spaces_in_nodes'}{"contents"}[12]{"args"}[0]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[12];
$result_trees{'special_spaces_in_nodes'}{"contents"}[12]{"contents"}[0]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[12];
$result_trees{'special_spaces_in_nodes'}{"contents"}[12]{"contents"}[1]{"contents"}[0]{"args"}[0]{"contents"}[0]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[12]{"contents"}[1]{"contents"}[0]{"args"}[0];
$result_trees{'special_spaces_in_nodes'}{"contents"}[12]{"contents"}[1]{"contents"}[0]{"args"}[0]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[12]{"contents"}[1]{"contents"}[0];
$result_trees{'special_spaces_in_nodes'}{"contents"}[12]{"contents"}[1]{"contents"}[0]{"extra"}{"label"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[7];
$result_trees{'special_spaces_in_nodes'}{"contents"}[12]{"contents"}[1]{"contents"}[0]{"extra"}{"node_argument"}{"node_content"}[0] = $result_trees{'special_spaces_in_nodes'}{"contents"}[12]{"contents"}[1]{"contents"}[0]{"args"}[0]{"contents"}[0];
$result_trees{'special_spaces_in_nodes'}{"contents"}[12]{"contents"}[1]{"contents"}[0]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[12]{"contents"}[1];
$result_trees{'special_spaces_in_nodes'}{"contents"}[12]{"contents"}[1]{"contents"}[1]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[12]{"contents"}[1];
$result_trees{'special_spaces_in_nodes'}{"contents"}[12]{"contents"}[1]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[12];
$result_trees{'special_spaces_in_nodes'}{"contents"}[12]{"contents"}[2]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[12];
$result_trees{'special_spaces_in_nodes'}{"contents"}[12]{"extra"}{"node_content"}[0] = $result_trees{'special_spaces_in_nodes'}{"contents"}[12]{"args"}[0]{"contents"}[0];
$result_trees{'special_spaces_in_nodes'}{"contents"}[12]{"extra"}{"nodes_manuals"}[0]{"node_content"}[0] = $result_trees{'special_spaces_in_nodes'}{"contents"}[12]{"args"}[0]{"contents"}[0];
$result_trees{'special_spaces_in_nodes'}{"contents"}[12]{"parent"} = $result_trees{'special_spaces_in_nodes'};
$result_trees{'special_spaces_in_nodes'}{"contents"}[13]{"args"}[0]{"parent"} = $result_trees{'special_spaces_in_nodes'}{"contents"}[13];
$result_trees{'special_spaces_in_nodes'}{"contents"}[13]{"parent"} = $result_trees{'special_spaces_in_nodes'};

$result_texis{'special_spaces_in_nodes'} = '
@node Top  
@top top

@node EN QUAD| | EM QUAD| | EN SPACE| |
@chapter chap


@menu
* CHARACTER TABULATION|	| FORM FEED|| LINE TABULATION||::
* CARRIAGE RETURN|'."\r".'|::
* NEXT LINE (NEL)|| NO-BREAK SPACE| | OGHAM SPACE MARK| |::
* MONGOLIAN VOWEL SEPARATOR|᠎| EM SPACE| |::
* THREE-PER-EM SPACE| | FOUR-PER-EM SPACE| | SIX-PER-EM SPACE| |::
* FIGURE SPACE| | PUNCTUATION SPACE| | THIN SPACE| |::
* HAIR SPACE| | LINE SEPARATOR| | PARAGRAPH SEPARATOR| |::
* NARROW NO-BREAK SPACE| | MEDIUM MATHEMATICAL SPACE| | IDEOGRAPHIC SPACE|　|::
@end menu

@node CHARACTER TABULATION|	| FORM FEED|| LINE TABULATION||

@node CARRIAGE RETURN|'."\r".'|

@node NEXT LINE (NEL)|| NO-BREAK SPACE| | OGHAM SPACE MARK| |

@node MONGOLIAN VOWEL SEPARATOR|᠎| EM SPACE| |

@node THREE-PER-EM SPACE| | FOUR-PER-EM SPACE| | SIX-PER-EM SPACE| |

@node FIGURE SPACE| | PUNCTUATION SPACE| | THIN SPACE| |

@node HAIR SPACE| | LINE SEPARATOR| | PARAGRAPH SEPARATOR| |

@node NARROW NO-BREAK SPACE| | MEDIUM MATHEMATICAL SPACE| | IDEOGRAPHIC SPACE|　|

@ref{NEXT LINE (NEL)|| NO-BREAK SPACE| | OGHAM SPACE MARK| |}

@bye
';


$result_texts{'special_spaces_in_nodes'} = 'top
***

1 chap
******


* CHARACTER TABULATION|	| FORM FEED|| LINE TABULATION||::
* CARRIAGE RETURN|'."\r".'|::
* NEXT LINE (NEL)|| NO-BREAK SPACE| | OGHAM SPACE MARK| |::
* MONGOLIAN VOWEL SEPARATOR|᠎| EM SPACE| |::
* THREE-PER-EM SPACE| | FOUR-PER-EM SPACE| | SIX-PER-EM SPACE| |::
* FIGURE SPACE| | PUNCTUATION SPACE| | THIN SPACE| |::
* HAIR SPACE| | LINE SEPARATOR| | PARAGRAPH SEPARATOR| |::
* NARROW NO-BREAK SPACE| | MEDIUM MATHEMATICAL SPACE| | IDEOGRAPHIC SPACE|　|::









NEXT LINE (NEL)|| NO-BREAK SPACE| | OGHAM SPACE MARK| |

';

$result_sectioning{'special_spaces_in_nodes'} = {
  'structure' => {
    'section_childs' => [
      {
        'cmdname' => 'top',
        'extra' => {
          'associated_node' => {
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'Top-'
            },
            'structure' => {}
          }
        },
        'structure' => {
          'section_childs' => [
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => 'EN-QUAD_007c-_007c-EM-QUAD_007c-_007c-EN-SPACE_007c-_007c'
                  },
                  'structure' => {}
                }
              },
              'structure' => {
                'section_level' => 1,
                'section_number' => 1,
                'section_up' => {},
                'toplevel_prev' => {},
                'toplevel_up' => {}
              }
            }
          ],
          'section_level' => 0,
          'section_up' => {}
        }
      }
    ],
    'section_level' => -1
  }
};
$result_sectioning{'special_spaces_in_nodes'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'special_spaces_in_nodes'}{'structure'}{'section_childs'}[0];
$result_sectioning{'special_spaces_in_nodes'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_prev'} = $result_sectioning{'special_spaces_in_nodes'}{'structure'}{'section_childs'}[0];
$result_sectioning{'special_spaces_in_nodes'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_up'} = $result_sectioning{'special_spaces_in_nodes'}{'structure'}{'section_childs'}[0];
$result_sectioning{'special_spaces_in_nodes'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'special_spaces_in_nodes'};

$result_nodes{'special_spaces_in_nodes'} = {
  'cmdname' => 'node',
  'extra' => {
    'associated_section' => {
      'cmdname' => 'top',
      'extra' => {},
      'structure' => {}
    },
    'normalized' => 'Top-'
  },
  'structure' => {
    'node_next' => {
      'cmdname' => 'node',
      'extra' => {
        'associated_section' => {
          'cmdname' => 'chapter',
          'extra' => {},
          'structure' => {
            'section_number' => 1
          }
        },
        'menus' => [
          {
            'cmdname' => 'menu',
            'extra' => {}
          }
        ],
        'normalized' => 'EN-QUAD_007c-_007c-EM-QUAD_007c-_007c-EN-SPACE_007c-_007c'
      },
      'structure' => {
        'menu_child' => {
          'cmdname' => 'node',
          'extra' => {
            'normalized' => 'CHARACTER-TABULATION_007c-_007c-FORM-FEED_007c-_007c-LINE-TABULATION_007c-_007c'
          },
          'structure' => {
            'node_next' => {
              'cmdname' => 'node',
              'extra' => {
                'normalized' => 'CARRIAGE-RETURN_007c-_007c'
              },
              'structure' => {
                'node_next' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => 'NEXT-LINE-_0028NEL_0029_007c-_007c-NO_002dBREAK-SPACE_007c-_007c-OGHAM-SPACE-MARK_007c-_007c'
                  },
                  'structure' => {
                    'node_next' => {
                      'cmdname' => 'node',
                      'extra' => {
                        'normalized' => 'MONGOLIAN-VOWEL-SEPARATOR_007c_180e_007c-EM-SPACE_007c-_007c'
                      },
                      'structure' => {
                        'node_next' => {
                          'cmdname' => 'node',
                          'extra' => {
                            'normalized' => 'THREE_002dPER_002dEM-SPACE_007c-_007c-FOUR_002dPER_002dEM-SPACE_007c-_007c-SIX_002dPER_002dEM-SPACE_007c-_007c'
                          },
                          'structure' => {
                            'node_next' => {
                              'cmdname' => 'node',
                              'extra' => {
                                'normalized' => 'FIGURE-SPACE_007c-_007c-PUNCTUATION-SPACE_007c-_007c-THIN-SPACE_007c-_007c'
                              },
                              'structure' => {
                                'node_next' => {
                                  'cmdname' => 'node',
                                  'extra' => {
                                    'normalized' => 'HAIR-SPACE_007c-_007c-LINE-SEPARATOR_007c-_007c-PARAGRAPH-SEPARATOR_007c-_007c'
                                  },
                                  'structure' => {
                                    'node_next' => {
                                      'cmdname' => 'node',
                                      'extra' => {
                                        'normalized' => 'NARROW-NO_002dBREAK-SPACE_007c-_007c-MEDIUM-MATHEMATICAL-SPACE_007c-_007c-IDEOGRAPHIC-SPACE_007c-_007c'
                                      },
                                      'structure' => {
                                        'node_prev' => {},
                                        'node_up' => {}
                                      }
                                    },
                                    'node_prev' => {},
                                    'node_up' => {}
                                  }
                                },
                                'node_prev' => {},
                                'node_up' => {}
                              }
                            },
                            'node_prev' => {},
                            'node_up' => {}
                          }
                        },
                        'node_prev' => {},
                        'node_up' => {}
                      }
                    },
                    'node_prev' => {},
                    'node_up' => {}
                  }
                },
                'node_prev' => {},
                'node_up' => {}
              }
            },
            'node_up' => {}
          }
        },
        'node_up' => {}
      }
    }
  }
};
$result_nodes{'special_spaces_in_nodes'}{'structure'}{'node_next'}{'structure'}{'menu_child'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_prev'} = $result_nodes{'special_spaces_in_nodes'}{'structure'}{'node_next'}{'structure'}{'menu_child'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_next'};
$result_nodes{'special_spaces_in_nodes'}{'structure'}{'node_next'}{'structure'}{'menu_child'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_up'} = $result_nodes{'special_spaces_in_nodes'}{'structure'}{'node_next'};
$result_nodes{'special_spaces_in_nodes'}{'structure'}{'node_next'}{'structure'}{'menu_child'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_prev'} = $result_nodes{'special_spaces_in_nodes'}{'structure'}{'node_next'}{'structure'}{'menu_child'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_next'};
$result_nodes{'special_spaces_in_nodes'}{'structure'}{'node_next'}{'structure'}{'menu_child'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_up'} = $result_nodes{'special_spaces_in_nodes'}{'structure'}{'node_next'};
$result_nodes{'special_spaces_in_nodes'}{'structure'}{'node_next'}{'structure'}{'menu_child'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_prev'} = $result_nodes{'special_spaces_in_nodes'}{'structure'}{'node_next'}{'structure'}{'menu_child'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_next'};
$result_nodes{'special_spaces_in_nodes'}{'structure'}{'node_next'}{'structure'}{'menu_child'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_up'} = $result_nodes{'special_spaces_in_nodes'}{'structure'}{'node_next'};
$result_nodes{'special_spaces_in_nodes'}{'structure'}{'node_next'}{'structure'}{'menu_child'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_prev'} = $result_nodes{'special_spaces_in_nodes'}{'structure'}{'node_next'}{'structure'}{'menu_child'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_next'};
$result_nodes{'special_spaces_in_nodes'}{'structure'}{'node_next'}{'structure'}{'menu_child'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_up'} = $result_nodes{'special_spaces_in_nodes'}{'structure'}{'node_next'};
$result_nodes{'special_spaces_in_nodes'}{'structure'}{'node_next'}{'structure'}{'menu_child'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_prev'} = $result_nodes{'special_spaces_in_nodes'}{'structure'}{'node_next'}{'structure'}{'menu_child'}{'structure'}{'node_next'}{'structure'}{'node_next'};
$result_nodes{'special_spaces_in_nodes'}{'structure'}{'node_next'}{'structure'}{'menu_child'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_up'} = $result_nodes{'special_spaces_in_nodes'}{'structure'}{'node_next'};
$result_nodes{'special_spaces_in_nodes'}{'structure'}{'node_next'}{'structure'}{'menu_child'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_prev'} = $result_nodes{'special_spaces_in_nodes'}{'structure'}{'node_next'}{'structure'}{'menu_child'}{'structure'}{'node_next'};
$result_nodes{'special_spaces_in_nodes'}{'structure'}{'node_next'}{'structure'}{'menu_child'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_up'} = $result_nodes{'special_spaces_in_nodes'}{'structure'}{'node_next'};
$result_nodes{'special_spaces_in_nodes'}{'structure'}{'node_next'}{'structure'}{'menu_child'}{'structure'}{'node_next'}{'structure'}{'node_prev'} = $result_nodes{'special_spaces_in_nodes'}{'structure'}{'node_next'}{'structure'}{'menu_child'};
$result_nodes{'special_spaces_in_nodes'}{'structure'}{'node_next'}{'structure'}{'menu_child'}{'structure'}{'node_next'}{'structure'}{'node_up'} = $result_nodes{'special_spaces_in_nodes'}{'structure'}{'node_next'};
$result_nodes{'special_spaces_in_nodes'}{'structure'}{'node_next'}{'structure'}{'menu_child'}{'structure'}{'node_up'} = $result_nodes{'special_spaces_in_nodes'}{'structure'}{'node_next'};
$result_nodes{'special_spaces_in_nodes'}{'structure'}{'node_next'}{'structure'}{'node_up'} = $result_nodes{'special_spaces_in_nodes'};

$result_menus{'special_spaces_in_nodes'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top-'
  },
  'structure' => {}
};

$result_errors{'special_spaces_in_nodes'} = [];


$result_floats{'special_spaces_in_nodes'} = {};



$result_converted{'info'}->{'special_spaces_in_nodes'} = 'This is , produced from special_spaces_in_nodes.texi.


File: ,  Node: Top ,  Next: EN QUAD| | EM QUAD| | EN SPACE| |

top
***

* Menu:

* EN QUAD| | EM QUAD| | EN SPACE| |::


File: ,  Node: EN QUAD| | EM QUAD| | EN SPACE| |,  Up: Top 

1 chap
******

* Menu:

* CHARACTER TABULATION|	| FORM FEED|| LINE TABULATION||::
* CARRIAGE RETURN|'."\r".'|::
* NEXT LINE (NEL)|| NO-BREAK SPACE| | OGHAM SPACE MARK| |::
* MONGOLIAN VOWEL SEPARATOR|᠎| EM SPACE| |::
* THREE-PER-EM SPACE| | FOUR-PER-EM SPACE| | SIX-PER-EM SPACE| |::
* FIGURE SPACE| | PUNCTUATION SPACE| | THIN SPACE| |::
* HAIR SPACE| | LINE SEPARATOR| | PARAGRAPH SEPARATOR| |::
* NARROW NO-BREAK SPACE| | MEDIUM MATHEMATICAL SPACE| | IDEOGRAPHIC SPACE|　|::


File: ,  Node: CHARACTER TABULATION|	| FORM FEED|| LINE TABULATION||,  Next: CARRIAGE RETURN|'."\r".'|,  Up: EN QUAD| | EM QUAD| | EN SPACE| |


File: ,  Node: CARRIAGE RETURN|'."\r".'|,  Next: NEXT LINE (NEL)|| NO-BREAK SPACE| | OGHAM SPACE MARK| |,  Prev: CHARACTER TABULATION|	| FORM FEED|| LINE TABULATION||,  Up: EN QUAD| | EM QUAD| | EN SPACE| |


File: ,  Node: NEXT LINE (NEL)|| NO-BREAK SPACE| | OGHAM SPACE MARK| |,  Next: MONGOLIAN VOWEL SEPARATOR|᠎| EM SPACE| |,  Prev: CARRIAGE RETURN|'."\r".'|,  Up: EN QUAD| | EM QUAD| | EN SPACE| |


File: ,  Node: MONGOLIAN VOWEL SEPARATOR|᠎| EM SPACE| |,  Next: THREE-PER-EM SPACE| | FOUR-PER-EM SPACE| | SIX-PER-EM SPACE| |,  Prev: NEXT LINE (NEL)|| NO-BREAK SPACE| | OGHAM SPACE MARK| |,  Up: EN QUAD| | EM QUAD| | EN SPACE| |


File: ,  Node: THREE-PER-EM SPACE| | FOUR-PER-EM SPACE| | SIX-PER-EM SPACE| |,  Next: FIGURE SPACE| | PUNCTUATION SPACE| | THIN SPACE| |,  Prev: MONGOLIAN VOWEL SEPARATOR|᠎| EM SPACE| |,  Up: EN QUAD| | EM QUAD| | EN SPACE| |


File: ,  Node: FIGURE SPACE| | PUNCTUATION SPACE| | THIN SPACE| |,  Next: HAIR SPACE| | LINE SEPARATOR| | PARAGRAPH SEPARATOR| |,  Prev: THREE-PER-EM SPACE| | FOUR-PER-EM SPACE| | SIX-PER-EM SPACE| |,  Up: EN QUAD| | EM QUAD| | EN SPACE| |


File: ,  Node: HAIR SPACE| | LINE SEPARATOR| | PARAGRAPH SEPARATOR| |,  Next: NARROW NO-BREAK SPACE| | MEDIUM MATHEMATICAL SPACE| | IDEOGRAPHIC SPACE|　|,  Prev: FIGURE SPACE| | PUNCTUATION SPACE| | THIN SPACE| |,  Up: EN QUAD| | EM QUAD| | EN SPACE| |


File: ,  Node: NARROW NO-BREAK SPACE| | MEDIUM MATHEMATICAL SPACE| | IDEOGRAPHIC SPACE|　|,  Prev: HAIR SPACE| | LINE SEPARATOR| | PARAGRAPH SEPARATOR| |,  Up: EN QUAD| | EM QUAD| | EN SPACE| |

*note NEXT LINE (NEL)|| NO-BREAK SPACE| | OGHAM SPACE MARK| |::



Tag Table:
Node: Top 55
Node: EN QUAD| | EM QUAD| | EN SPACE| |191
Node: CHARACTER TABULATION|	| FORM FEED|| LINE TABULATION||768
Node: CARRIAGE RETURN|'."\r".'|915
Node: NEXT LINE (NEL)|| NO-BREAK SPACE| | OGHAM SPACE MARK| |1131
Node: MONGOLIAN VOWEL SEPARATOR|᠎| EM SPACE| |1336
Node: THREE-PER-EM SPACE| | FOUR-PER-EM SPACE| | SIX-PER-EM SPACE| |1591
Node: FIGURE SPACE| | PUNCTUATION SPACE| | THIN SPACE| |1842
Node: HAIR SPACE| | LINE SEPARATOR| | PARAGRAPH SEPARATOR| |2109
Node: NARROW NO-BREAK SPACE| | MEDIUM MATHEMATICAL SPACE| | IDEOGRAPHIC SPACE|　|2388

End Tag Table


Local Variables:
coding: utf-8
End:
';

$result_converted_errors{'info'}->{'special_spaces_in_nodes'} = [
  {
    'error_line' => 'warning: document without Top node
',
    'file_name' => 'special_spaces_in_nodes.texi',
    'text' => 'document without Top node',
    'type' => 'warning'
  }
];



$result_converted{'html'}->{'special_spaces_in_nodes'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, http://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>top</title>

<meta name="description" content="top">
<meta name="keywords" content="top">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="viewport" content="width=device-width,initial-scale=1">

<link href="#Top-" rel="start" title="Top ">


</head>

<body lang="en">
<div class="top-level-extent" id="Top-">
<div class="nav-panel">
<p>
Next: <a href="#EN-QUAD_007c-_007c-EM-QUAD_007c-_007c-EN-SPACE_007c-_007c" accesskey="n" rel="next">chap</a> &nbsp; </p>
</div>
<h1 class="top" id="top">top</h1>

<ul class="mini-toc">
<li><a href="#EN-QUAD_007c-_007c-EM-QUAD_007c-_007c-EN-SPACE_007c-_007c" accesskey="1">chap</a></li>
</ul>
<hr>
<div class="chapter-level-extent" id="EN-QUAD_007c-_007c-EM-QUAD_007c-_007c-EN-SPACE_007c-_007c">
<div class="nav-panel">
<p>
Up: <a href="#Top-" accesskey="u" rel="up">top</a> &nbsp; </p>
</div>
<h2 class="chapter" id="chap">1 chap</h2>



<hr>
<a class="node-id" id="CHARACTER-TABULATION_007c-_007c-FORM-FEED_007c-_007c-LINE-TABULATION_007c-_007c"></a><div class="nav-panel">
<p>
Next: <a href="#CARRIAGE-RETURN_007c-_007c" accesskey="n" rel="next">CARRIAGE RETURN|'."\r".'|</a>, Up: <a href="#EN-QUAD_007c-_007c-EM-QUAD_007c-_007c-EN-SPACE_007c-_007c" accesskey="u" rel="up">chap</a> &nbsp; </p>
</div>
<h4 class="node">CHARACTER TABULATION|	| FORM FEED|&#12;| LINE TABULATION||</h4>

<hr>
<a class="node-id" id="CARRIAGE-RETURN_007c-_007c"></a><div class="nav-panel">
<p>
Next: <a href="#NEXT-LINE-_0028NEL_0029_007c-_007c-NO_002dBREAK-SPACE_007c-_007c-OGHAM-SPACE-MARK_007c-_007c" accesskey="n" rel="next">NEXT LINE (NEL)|| NO-BREAK SPACE| | OGHAM SPACE MARK| |</a>, Previous: <a href="#CHARACTER-TABULATION_007c-_007c-FORM-FEED_007c-_007c-LINE-TABULATION_007c-_007c" accesskey="p" rel="prev">CHARACTER TABULATION|	| FORM FEED|&#12;| LINE TABULATION||</a>, Up: <a href="#EN-QUAD_007c-_007c-EM-QUAD_007c-_007c-EN-SPACE_007c-_007c" accesskey="u" rel="up">chap</a> &nbsp; </p>
</div>
<h4 class="node">CARRIAGE RETURN|'."\r".'|</h4>

<hr>
<a class="node-id" id="NEXT-LINE-_0028NEL_0029_007c-_007c-NO_002dBREAK-SPACE_007c-_007c-OGHAM-SPACE-MARK_007c-_007c"></a><div class="nav-panel">
<p>
Next: <a href="#MONGOLIAN-VOWEL-SEPARATOR_007c_180e_007c-EM-SPACE_007c-_007c" accesskey="n" rel="next">MONGOLIAN VOWEL SEPARATOR|᠎| EM SPACE| |</a>, Previous: <a href="#CARRIAGE-RETURN_007c-_007c" accesskey="p" rel="prev">CARRIAGE RETURN|'."\r".'|</a>, Up: <a href="#EN-QUAD_007c-_007c-EM-QUAD_007c-_007c-EN-SPACE_007c-_007c" accesskey="u" rel="up">chap</a> &nbsp; </p>
</div>
<h4 class="node">NEXT LINE (NEL)|| NO-BREAK SPACE| | OGHAM SPACE MARK| |</h4>

<hr>
<a class="node-id" id="MONGOLIAN-VOWEL-SEPARATOR_007c_180e_007c-EM-SPACE_007c-_007c"></a><div class="nav-panel">
<p>
Next: <a href="#THREE_002dPER_002dEM-SPACE_007c-_007c-FOUR_002dPER_002dEM-SPACE_007c-_007c-SIX_002dPER_002dEM-SPACE_007c-_007c" accesskey="n" rel="next">THREE-PER-EM SPACE| | FOUR-PER-EM SPACE| | SIX-PER-EM SPACE| |</a>, Previous: <a href="#NEXT-LINE-_0028NEL_0029_007c-_007c-NO_002dBREAK-SPACE_007c-_007c-OGHAM-SPACE-MARK_007c-_007c" accesskey="p" rel="prev">NEXT LINE (NEL)|| NO-BREAK SPACE| | OGHAM SPACE MARK| |</a>, Up: <a href="#EN-QUAD_007c-_007c-EM-QUAD_007c-_007c-EN-SPACE_007c-_007c" accesskey="u" rel="up">chap</a> &nbsp; </p>
</div>
<h4 class="node">MONGOLIAN VOWEL SEPARATOR|᠎| EM SPACE| |</h4>

<hr>
<a class="node-id" id="THREE_002dPER_002dEM-SPACE_007c-_007c-FOUR_002dPER_002dEM-SPACE_007c-_007c-SIX_002dPER_002dEM-SPACE_007c-_007c"></a><div class="nav-panel">
<p>
Next: <a href="#FIGURE-SPACE_007c-_007c-PUNCTUATION-SPACE_007c-_007c-THIN-SPACE_007c-_007c" accesskey="n" rel="next">FIGURE SPACE| | PUNCTUATION SPACE| | THIN SPACE| |</a>, Previous: <a href="#MONGOLIAN-VOWEL-SEPARATOR_007c_180e_007c-EM-SPACE_007c-_007c" accesskey="p" rel="prev">MONGOLIAN VOWEL SEPARATOR|᠎| EM SPACE| |</a>, Up: <a href="#EN-QUAD_007c-_007c-EM-QUAD_007c-_007c-EN-SPACE_007c-_007c" accesskey="u" rel="up">chap</a> &nbsp; </p>
</div>
<h4 class="node">THREE-PER-EM SPACE| | FOUR-PER-EM SPACE| | SIX-PER-EM SPACE| |</h4>

<hr>
<a class="node-id" id="FIGURE-SPACE_007c-_007c-PUNCTUATION-SPACE_007c-_007c-THIN-SPACE_007c-_007c"></a><div class="nav-panel">
<p>
Next: <a href="#HAIR-SPACE_007c-_007c-LINE-SEPARATOR_007c-_007c-PARAGRAPH-SEPARATOR_007c-_007c" accesskey="n" rel="next">HAIR SPACE| | LINE SEPARATOR| | PARAGRAPH SEPARATOR| |</a>, Previous: <a href="#THREE_002dPER_002dEM-SPACE_007c-_007c-FOUR_002dPER_002dEM-SPACE_007c-_007c-SIX_002dPER_002dEM-SPACE_007c-_007c" accesskey="p" rel="prev">THREE-PER-EM SPACE| | FOUR-PER-EM SPACE| | SIX-PER-EM SPACE| |</a>, Up: <a href="#EN-QUAD_007c-_007c-EM-QUAD_007c-_007c-EN-SPACE_007c-_007c" accesskey="u" rel="up">chap</a> &nbsp; </p>
</div>
<h4 class="node">FIGURE SPACE| | PUNCTUATION SPACE| | THIN SPACE| |</h4>

<hr>
<a class="node-id" id="HAIR-SPACE_007c-_007c-LINE-SEPARATOR_007c-_007c-PARAGRAPH-SEPARATOR_007c-_007c"></a><div class="nav-panel">
<p>
Next: <a href="#NARROW-NO_002dBREAK-SPACE_007c-_007c-MEDIUM-MATHEMATICAL-SPACE_007c-_007c-IDEOGRAPHIC-SPACE_007c-_007c" accesskey="n" rel="next">NARROW NO-BREAK SPACE| | MEDIUM MATHEMATICAL SPACE| | IDEOGRAPHIC SPACE|　|</a>, Previous: <a href="#FIGURE-SPACE_007c-_007c-PUNCTUATION-SPACE_007c-_007c-THIN-SPACE_007c-_007c" accesskey="p" rel="prev">FIGURE SPACE| | PUNCTUATION SPACE| | THIN SPACE| |</a>, Up: <a href="#EN-QUAD_007c-_007c-EM-QUAD_007c-_007c-EN-SPACE_007c-_007c" accesskey="u" rel="up">chap</a> &nbsp; </p>
</div>
<h4 class="node">HAIR SPACE| | LINE SEPARATOR| | PARAGRAPH SEPARATOR| |</h4>

<hr>
<a class="node-id" id="NARROW-NO_002dBREAK-SPACE_007c-_007c-MEDIUM-MATHEMATICAL-SPACE_007c-_007c-IDEOGRAPHIC-SPACE_007c-_007c"></a><div class="nav-panel">
<p>
Previous: <a href="#HAIR-SPACE_007c-_007c-LINE-SEPARATOR_007c-_007c-PARAGRAPH-SEPARATOR_007c-_007c" accesskey="p" rel="prev">HAIR SPACE| | LINE SEPARATOR| | PARAGRAPH SEPARATOR| |</a>, Up: <a href="#EN-QUAD_007c-_007c-EM-QUAD_007c-_007c-EN-SPACE_007c-_007c" accesskey="u" rel="up">chap</a> &nbsp; </p>
</div>
<h4 class="node">NARROW NO-BREAK SPACE| | MEDIUM MATHEMATICAL SPACE| | IDEOGRAPHIC SPACE|　|</h4>

<p><a class="ref" href="#NEXT-LINE-_0028NEL_0029_007c-_007c-NO_002dBREAK-SPACE_007c-_007c-OGHAM-SPACE-MARK_007c-_007c">NEXT LINE (NEL)|| NO-BREAK SPACE| | OGHAM SPACE MARK| |</a>
</p>
</div>
</div>



</body>
</html>
';

1;
