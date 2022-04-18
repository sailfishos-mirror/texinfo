use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'in_menu_only_special_spaces_node'} = {
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
              "text" => "Top"
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
            "normalized" => "Top"
          }
        ],
        "normalized" => "Top",
        "spaces_before_argument" => " "
      },
      "parent" => {},
      "source_info" => {
        "file_name" => "in_menu_only_special_spaces_node.texi",
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
                      "text" => "\x{2000}\x{2001}\x{2002}"
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
                  "normalized" => "-"
                }
              },
              "parent" => {},
              "source_info" => {
                "file_name" => "in_menu_only_special_spaces_node.texi",
                "line_nr" => 6,
                "macro" => ""
              },
              "type" => "menu_entry"
            },
            {
              "args" => [
                {
                  "parent" => {},
                  "text" => "* \t\f",
                  "type" => "menu_entry_leading_text"
                },
                {
                  "contents" => [
                    {
                      "parent" => {},
                      "text" => "\13"
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
                  "normalized" => "-"
                }
              },
              "parent" => {},
              "source_info" => {
                "file_name" => "in_menu_only_special_spaces_node.texi",
                "line_nr" => 7,
                "macro" => ""
              },
              "type" => "menu_entry"
            },
            {
              "args" => [
                {
                  "parent" => {},
                  "text" => "* \r",
                  "type" => "menu_entry_leading_text"
                },
                {
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
                "menu_entry_node" => undef
              },
              "parent" => {},
              "source_info" => {
                "file_name" => "in_menu_only_special_spaces_node.texi",
                "line_nr" => 8,
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
                      "text" => "\x{85}\x{a0}\x{1680}"
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
                  "normalized" => "-"
                }
              },
              "parent" => {},
              "source_info" => {
                "file_name" => "in_menu_only_special_spaces_node.texi",
                "line_nr" => 9,
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
                      "text" => "\x{180e}\x{2003}"
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
                  "normalized" => "_180e-"
                }
              },
              "parent" => {},
              "source_info" => {
                "file_name" => "in_menu_only_special_spaces_node.texi",
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
                      "text" => "\x{2004}\x{2005}\x{2006}\x{2007}\x{2008}\x{2009}\x{200a}\x{2028}\x{2029}\x{202f}\x{205f}\x{3000}"
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
                  "normalized" => "-"
                }
              },
              "parent" => {},
              "source_info" => {
                "file_name" => "in_menu_only_special_spaces_node.texi",
                "line_nr" => 11,
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
                "file_name" => "in_menu_only_special_spaces_node.texi",
                "line_nr" => 12,
                "macro" => ""
              }
            }
          ],
          "extra" => {
            "end_command" => {}
          },
          "parent" => {},
          "source_info" => {
            "file_name" => "in_menu_only_special_spaces_node.texi",
            "line_nr" => 5,
            "macro" => ""
          }
        },
        {
          "parent" => {},
          "text" => "\n",
          "type" => "empty_line"
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
        "file_name" => "in_menu_only_special_spaces_node.texi",
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
              "text" => "\x{2000}\x{2001}\x{2002}"
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
        "nodes_manuals" => [
          {
            "node_content" => [
              {}
            ],
            "normalized" => "-"
          }
        ],
        "spaces_before_argument" => " "
      },
      "parent" => {},
      "source_info" => {
        "file_name" => "in_menu_only_special_spaces_node.texi",
        "line_nr" => 15,
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
      "cmdname" => "chapter",
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
        "file_name" => "in_menu_only_special_spaces_node.texi",
        "line_nr" => 16,
        "macro" => ""
      }
    },
    {
      "args" => [
        {
          "contents" => [
            {
              "parent" => {},
              "text" => "\13"
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
        "nodes_manuals" => [
          {
            "node_content" => [
              {}
            ],
            "normalized" => "-"
          }
        ],
        "spaces_before_argument" => " \t\f"
      },
      "parent" => {},
      "source_info" => {
        "file_name" => "in_menu_only_special_spaces_node.texi",
        "line_nr" => 18,
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
      "cmdname" => "chapter",
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
        "file_name" => "in_menu_only_special_spaces_node.texi",
        "line_nr" => 19,
        "macro" => ""
      }
    },
    {
      "args" => [
        {
          "contents" => [],
          "extra" => {
            "spaces_after_argument" => " \r\n"
          },
          "parent" => {},
          "type" => "line_arg"
        }
      ],
      "cmdname" => "node",
      "contents" => [],
      "extra" => {
        "nodes_manuals" => [
          undef
        ]
      },
      "parent" => {},
      "source_info" => {
        "file_name" => "in_menu_only_special_spaces_node.texi",
        "line_nr" => 21,
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
      "cmdname" => "chapter",
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
        "file_name" => "in_menu_only_special_spaces_node.texi",
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
              "text" => "\x{85}\x{a0}\x{1680}"
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
        "nodes_manuals" => [
          {
            "node_content" => [
              {}
            ],
            "normalized" => "-"
          }
        ],
        "spaces_before_argument" => " "
      },
      "parent" => {},
      "source_info" => {
        "file_name" => "in_menu_only_special_spaces_node.texi",
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
      "cmdname" => "chapter",
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
        "file_name" => "in_menu_only_special_spaces_node.texi",
        "line_nr" => 25,
        "macro" => ""
      }
    },
    {
      "args" => [
        {
          "contents" => [
            {
              "parent" => {},
              "text" => "\x{180e}\x{2003}"
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
            "normalized" => "_180e-"
          }
        ],
        "normalized" => "_180e-",
        "spaces_before_argument" => " "
      },
      "parent" => {},
      "source_info" => {
        "file_name" => "in_menu_only_special_spaces_node.texi",
        "line_nr" => 27,
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
      "cmdname" => "chapter",
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
        "file_name" => "in_menu_only_special_spaces_node.texi",
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
              "text" => "\x{2004}\x{2005}\x{2006}\x{2007}\x{2008}\x{2009}\x{200a}\x{2028}\x{2029}\x{202f}\x{205f}\x{3000}"
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
        "nodes_manuals" => [
          {
            "node_content" => [
              {}
            ],
            "normalized" => "-"
          }
        ],
        "spaces_before_argument" => " "
      },
      "parent" => {},
      "source_info" => {
        "file_name" => "in_menu_only_special_spaces_node.texi",
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
              "text" => "THREE-PER-EM SPACE|\x{2004}| FOUR-PER-EM SPACE|\x{2005}| SIX-PER-EM SPACE|\x{2006}| FIGURE SPACE|\x{2007}| PUNCTUATION SPACE|\x{2008}| THIN SPACE|\x{2009}| HAIR SPACE|\x{200a}| LINE SEPARATOR|\x{2028}| PARAGRAPH SEPARATOR|\x{2029}| NARROW NO-BREAK SPACE|\x{202f}| MEDIUM MATHEMATICAL SPACE|\x{205f}| IDEOGRAPHIC SPACE|\x{3000}|"
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
        }
      ],
      "extra" => {
        "spaces_before_argument" => " "
      },
      "parent" => {},
      "source_info" => {
        "file_name" => "in_menu_only_special_spaces_node.texi",
        "line_nr" => 32,
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
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[0]{"contents"}[0]{"contents"}[0]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[0]{"contents"}[0];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[0]{"contents"}[0]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[0];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[0]{"contents"}[1]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[0];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[0]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'};
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[1]{"args"}[0]{"contents"}[0]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[1]{"args"}[0];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[1]{"args"}[0]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[1];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[1]{"extra"}{"node_content"}[0] = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[1]{"args"}[0]{"contents"}[0];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[1]{"extra"}{"nodes_manuals"}[0]{"node_content"}[0] = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[1]{"args"}[0]{"contents"}[0];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[1]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'};
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"args"}[0]{"contents"}[0]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"args"}[0];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"args"}[0]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[0]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[0]{"extra"}{"command"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[0]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[1]{"args"}[0]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[1];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[1]{"args"}[1]{"contents"}[0]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[1]{"args"}[1];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[1]{"args"}[1]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[1];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[1]{"args"}[2]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[1];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[1]{"args"}[3]{"contents"}[0]{"contents"}[0]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[1]{"args"}[3]{"contents"}[0];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[1]{"args"}[3]{"contents"}[0]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[1]{"args"}[3];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[1]{"args"}[3]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[1];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[1]{"extra"}{"menu_entry_description"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[1]{"args"}[3];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[1]{"extra"}{"menu_entry_node"}{"node_content"}[0] = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[1]{"args"}[1]{"contents"}[0];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[1]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[2]{"args"}[0]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[2];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[2]{"args"}[1]{"contents"}[0]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[2]{"args"}[1];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[2]{"args"}[1]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[2];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[2]{"args"}[2]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[2];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[2]{"args"}[3]{"contents"}[0]{"contents"}[0]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[2]{"args"}[3]{"contents"}[0];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[2]{"args"}[3]{"contents"}[0]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[2]{"args"}[3];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[2]{"args"}[3]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[2];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[2]{"extra"}{"menu_entry_description"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[2]{"args"}[3];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[2]{"extra"}{"menu_entry_node"}{"node_content"}[0] = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[2]{"args"}[1]{"contents"}[0];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[2]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[3]{"args"}[0]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[3];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[3]{"args"}[1]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[3];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[3]{"args"}[2]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[3];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[3]{"args"}[3]{"contents"}[0]{"contents"}[0]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[3]{"args"}[3]{"contents"}[0];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[3]{"args"}[3]{"contents"}[0]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[3]{"args"}[3];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[3]{"args"}[3]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[3];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[3]{"extra"}{"menu_entry_description"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[3]{"args"}[3];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[3]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[4]{"args"}[0]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[4];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[4]{"args"}[1]{"contents"}[0]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[4]{"args"}[1];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[4]{"args"}[1]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[4];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[4]{"args"}[2]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[4];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[4]{"args"}[3]{"contents"}[0]{"contents"}[0]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[4]{"args"}[3]{"contents"}[0];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[4]{"args"}[3]{"contents"}[0]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[4]{"args"}[3];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[4]{"args"}[3]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[4];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[4]{"extra"}{"menu_entry_description"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[4]{"args"}[3];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[4]{"extra"}{"menu_entry_node"}{"node_content"}[0] = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[4]{"args"}[1]{"contents"}[0];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[4]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[5]{"args"}[0]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[5];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[5]{"args"}[1]{"contents"}[0]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[5]{"args"}[1];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[5]{"args"}[1]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[5];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[5]{"args"}[2]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[5];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[5]{"args"}[3]{"contents"}[0]{"contents"}[0]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[5]{"args"}[3]{"contents"}[0];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[5]{"args"}[3]{"contents"}[0]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[5]{"args"}[3];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[5]{"args"}[3]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[5];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[5]{"extra"}{"menu_entry_description"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[5]{"args"}[3];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[5]{"extra"}{"menu_entry_node"}{"node_content"}[0] = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[5]{"args"}[1]{"contents"}[0];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[5]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[6]{"args"}[0]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[6];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[6]{"args"}[1]{"contents"}[0]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[6]{"args"}[1];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[6]{"args"}[1]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[6];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[6]{"args"}[2]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[6];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[6]{"args"}[3]{"contents"}[0]{"contents"}[0]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[6]{"args"}[3]{"contents"}[0];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[6]{"args"}[3]{"contents"}[0]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[6]{"args"}[3];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[6]{"args"}[3]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[6];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[6]{"extra"}{"menu_entry_description"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[6]{"args"}[3];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[6]{"extra"}{"menu_entry_node"}{"node_content"}[0] = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[6]{"args"}[1]{"contents"}[0];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[6]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[7]{"args"}[0]{"contents"}[0]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[7]{"args"}[0];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[7]{"args"}[0]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[7];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[7]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"extra"}{"end_command"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"contents"}[7];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[1]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[2]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"contents"}[3]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[2]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'};
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[3]{"args"}[0]{"contents"}[0]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[3]{"args"}[0];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[3]{"args"}[0]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[3];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[3]{"extra"}{"nodes_manuals"}[0]{"node_content"}[0] = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[3]{"args"}[0]{"contents"}[0];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[3]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'};
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[4]{"args"}[0]{"contents"}[0]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[4]{"args"}[0];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[4]{"args"}[0]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[4];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[4]{"contents"}[0]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[4];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[4]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'};
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[5]{"args"}[0]{"contents"}[0]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[5]{"args"}[0];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[5]{"args"}[0]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[5];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[5]{"extra"}{"nodes_manuals"}[0]{"node_content"}[0] = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[5]{"args"}[0]{"contents"}[0];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[5]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'};
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[6]{"args"}[0]{"contents"}[0]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[6]{"args"}[0];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[6]{"args"}[0]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[6];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[6]{"contents"}[0]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[6];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[6]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'};
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[7]{"args"}[0]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[7];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[7]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'};
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[8]{"args"}[0]{"contents"}[0]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[8]{"args"}[0];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[8]{"args"}[0]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[8];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[8]{"contents"}[0]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[8];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[8]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'};
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[9]{"args"}[0]{"contents"}[0]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[9]{"args"}[0];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[9]{"args"}[0]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[9];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[9]{"extra"}{"nodes_manuals"}[0]{"node_content"}[0] = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[9]{"args"}[0]{"contents"}[0];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[9]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'};
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[10]{"args"}[0]{"contents"}[0]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[10]{"args"}[0];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[10]{"args"}[0]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[10];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[10]{"contents"}[0]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[10];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[10]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'};
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[11]{"args"}[0]{"contents"}[0]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[11]{"args"}[0];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[11]{"args"}[0]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[11];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[11]{"extra"}{"node_content"}[0] = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[11]{"args"}[0]{"contents"}[0];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[11]{"extra"}{"nodes_manuals"}[0]{"node_content"}[0] = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[11]{"args"}[0]{"contents"}[0];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[11]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'};
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[12]{"args"}[0]{"contents"}[0]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[12]{"args"}[0];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[12]{"args"}[0]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[12];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[12]{"contents"}[0]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[12];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[12]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'};
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[13]{"args"}[0]{"contents"}[0]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[13]{"args"}[0];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[13]{"args"}[0]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[13];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[13]{"contents"}[0]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[13];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[13]{"extra"}{"nodes_manuals"}[0]{"node_content"}[0] = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[13]{"args"}[0]{"contents"}[0];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[13]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'};
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[14]{"args"}[0]{"contents"}[0]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[14]{"args"}[0];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[14]{"args"}[0]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[14];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[14]{"contents"}[0]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[14];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[14]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'};
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[15]{"args"}[0]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'}{"contents"}[15];
$result_trees{'in_menu_only_special_spaces_node'}{"contents"}[15]{"parent"} = $result_trees{'in_menu_only_special_spaces_node'};

$result_texis{'in_menu_only_special_spaces_node'} = '
@node Top
@top top

@menu
*    ::
* 	::
* '."\r".'::
*   ::
* ᠎ ::
*            　::
@end menu


@node    
@chapter EN QUAD| | EM QUAD| | EN SPACE| |

@node 	
@chapter CHARACTER TABULATION|	| FORM FEED|| LINE TABULATION||

@node '."\r".'
@chapter CARRIAGE RETURN|'."\r".'|

@node   
@chapter NEXT LINE (NEL)|| NO-BREAK SPACE| | OGHAM SPACE MARK| |

@node ᠎ 
@chapter MONGOLIAN VOWEL SEPARATOR|᠎| EM SPACE| |

@node            　

@chapter THREE-PER-EM SPACE| | FOUR-PER-EM SPACE| | SIX-PER-EM SPACE| | FIGURE SPACE| | PUNCTUATION SPACE| | THIN SPACE| | HAIR SPACE| | LINE SEPARATOR| | PARAGRAPH SEPARATOR| | NARROW NO-BREAK SPACE| | MEDIUM MATHEMATICAL SPACE| | IDEOGRAPHIC SPACE|　|

@bye
';


$result_texts{'in_menu_only_special_spaces_node'} = 'top
***

*    ::
* 	::
* '."\r".'::
*   ::
* ᠎ ::
*            　::


1 EN QUAD| | EM QUAD| | EN SPACE| |
***********************************

2 CHARACTER TABULATION|	| FORM FEED|| LINE TABULATION||
*********************************************************

3 CARRIAGE RETURN|'."\r".'|
********************

4 NEXT LINE (NEL)|| NO-BREAK SPACE| | OGHAM SPACE MARK| |
**********************************************************

5 MONGOLIAN VOWEL SEPARATOR|᠎| EM SPACE| |
******************************************


6 THREE-PER-EM SPACE| | FOUR-PER-EM SPACE| | SIX-PER-EM SPACE| | FIGURE SPACE| | PUNCTUATION SPACE| | THIN SPACE| | HAIR SPACE| | LINE SEPARATOR| | PARAGRAPH SEPARATOR| | NARROW NO-BREAK SPACE| | MEDIUM MATHEMATICAL SPACE| | IDEOGRAPHIC SPACE|　|
******************************************************************************************************************************************************************************************************************************************************

';

$result_sectioning{'in_menu_only_special_spaces_node'} = {
  'structure' => {
    'section_childs' => [
      {
        'cmdname' => 'top',
        'extra' => {
          'associated_node' => {
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'Top'
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
                  'extra' => {},
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
            },
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {}
                }
              },
              'structure' => {
                'section_level' => 1,
                'section_number' => 2,
                'section_prev' => {},
                'section_up' => {},
                'toplevel_prev' => {},
                'toplevel_up' => {}
              }
            },
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {}
                }
              },
              'structure' => {
                'section_level' => 1,
                'section_number' => 3,
                'section_prev' => {},
                'section_up' => {},
                'toplevel_prev' => {},
                'toplevel_up' => {}
              }
            },
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {}
                }
              },
              'structure' => {
                'section_level' => 1,
                'section_number' => 4,
                'section_prev' => {},
                'section_up' => {},
                'toplevel_prev' => {},
                'toplevel_up' => {}
              }
            },
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => '_180e-'
                  },
                  'structure' => {}
                }
              },
              'structure' => {
                'section_level' => 1,
                'section_number' => 5,
                'section_prev' => {},
                'section_up' => {},
                'toplevel_prev' => {},
                'toplevel_up' => {}
              }
            },
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {}
                }
              },
              'structure' => {
                'section_level' => 1,
                'section_number' => 6,
                'section_prev' => {},
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
$result_sectioning{'in_menu_only_special_spaces_node'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'in_menu_only_special_spaces_node'}{'structure'}{'section_childs'}[0];
$result_sectioning{'in_menu_only_special_spaces_node'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_prev'} = $result_sectioning{'in_menu_only_special_spaces_node'}{'structure'}{'section_childs'}[0];
$result_sectioning{'in_menu_only_special_spaces_node'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_up'} = $result_sectioning{'in_menu_only_special_spaces_node'}{'structure'}{'section_childs'}[0];
$result_sectioning{'in_menu_only_special_spaces_node'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[1]{'structure'}{'section_prev'} = $result_sectioning{'in_menu_only_special_spaces_node'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0];
$result_sectioning{'in_menu_only_special_spaces_node'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[1]{'structure'}{'section_up'} = $result_sectioning{'in_menu_only_special_spaces_node'}{'structure'}{'section_childs'}[0];
$result_sectioning{'in_menu_only_special_spaces_node'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[1]{'structure'}{'toplevel_prev'} = $result_sectioning{'in_menu_only_special_spaces_node'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0];
$result_sectioning{'in_menu_only_special_spaces_node'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[1]{'structure'}{'toplevel_up'} = $result_sectioning{'in_menu_only_special_spaces_node'}{'structure'}{'section_childs'}[0];
$result_sectioning{'in_menu_only_special_spaces_node'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[2]{'structure'}{'section_prev'} = $result_sectioning{'in_menu_only_special_spaces_node'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[1];
$result_sectioning{'in_menu_only_special_spaces_node'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[2]{'structure'}{'section_up'} = $result_sectioning{'in_menu_only_special_spaces_node'}{'structure'}{'section_childs'}[0];
$result_sectioning{'in_menu_only_special_spaces_node'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[2]{'structure'}{'toplevel_prev'} = $result_sectioning{'in_menu_only_special_spaces_node'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[1];
$result_sectioning{'in_menu_only_special_spaces_node'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[2]{'structure'}{'toplevel_up'} = $result_sectioning{'in_menu_only_special_spaces_node'}{'structure'}{'section_childs'}[0];
$result_sectioning{'in_menu_only_special_spaces_node'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[3]{'structure'}{'section_prev'} = $result_sectioning{'in_menu_only_special_spaces_node'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[2];
$result_sectioning{'in_menu_only_special_spaces_node'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[3]{'structure'}{'section_up'} = $result_sectioning{'in_menu_only_special_spaces_node'}{'structure'}{'section_childs'}[0];
$result_sectioning{'in_menu_only_special_spaces_node'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[3]{'structure'}{'toplevel_prev'} = $result_sectioning{'in_menu_only_special_spaces_node'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[2];
$result_sectioning{'in_menu_only_special_spaces_node'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[3]{'structure'}{'toplevel_up'} = $result_sectioning{'in_menu_only_special_spaces_node'}{'structure'}{'section_childs'}[0];
$result_sectioning{'in_menu_only_special_spaces_node'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[4]{'structure'}{'section_prev'} = $result_sectioning{'in_menu_only_special_spaces_node'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[3];
$result_sectioning{'in_menu_only_special_spaces_node'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[4]{'structure'}{'section_up'} = $result_sectioning{'in_menu_only_special_spaces_node'}{'structure'}{'section_childs'}[0];
$result_sectioning{'in_menu_only_special_spaces_node'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[4]{'structure'}{'toplevel_prev'} = $result_sectioning{'in_menu_only_special_spaces_node'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[3];
$result_sectioning{'in_menu_only_special_spaces_node'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[4]{'structure'}{'toplevel_up'} = $result_sectioning{'in_menu_only_special_spaces_node'}{'structure'}{'section_childs'}[0];
$result_sectioning{'in_menu_only_special_spaces_node'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[5]{'structure'}{'section_prev'} = $result_sectioning{'in_menu_only_special_spaces_node'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[4];
$result_sectioning{'in_menu_only_special_spaces_node'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[5]{'structure'}{'section_up'} = $result_sectioning{'in_menu_only_special_spaces_node'}{'structure'}{'section_childs'}[0];
$result_sectioning{'in_menu_only_special_spaces_node'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[5]{'structure'}{'toplevel_prev'} = $result_sectioning{'in_menu_only_special_spaces_node'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[4];
$result_sectioning{'in_menu_only_special_spaces_node'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[5]{'structure'}{'toplevel_up'} = $result_sectioning{'in_menu_only_special_spaces_node'}{'structure'}{'section_childs'}[0];
$result_sectioning{'in_menu_only_special_spaces_node'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'in_menu_only_special_spaces_node'};

$result_nodes{'in_menu_only_special_spaces_node'} = {
  'cmdname' => 'node',
  'extra' => {
    'associated_section' => {
      'cmdname' => 'top',
      'extra' => {},
      'structure' => {}
    },
    'menus' => [
      {
        'cmdname' => 'menu',
        'extra' => {}
      }
    ],
    'normalized' => 'Top'
  },
  'structure' => {
    'menu_child' => {
      'cmdname' => 'node',
      'extra' => {
        'associated_section' => {
          'cmdname' => 'chapter',
          'extra' => {},
          'structure' => {
            'section_number' => 5
          }
        },
        'normalized' => '_180e-'
      },
      'structure' => {
        'node_next' => {
          'cmdname' => 'node',
          'extra' => {
            'associated_section' => {
              'cmdname' => 'chapter',
              'extra' => {},
              'structure' => {
                'section_number' => 6
              }
            }
          }
        },
        'node_prev' => {
          'cmdname' => 'node',
          'extra' => {
            'associated_section' => {
              'cmdname' => 'chapter',
              'extra' => {},
              'structure' => {
                'section_number' => 4
              }
            }
          }
        },
        'node_up' => {}
      }
    },
    'node_next' => {
      'cmdname' => 'node',
      'extra' => {
        'associated_section' => {
          'cmdname' => 'chapter',
          'extra' => {},
          'structure' => {
            'section_number' => 1
          }
        }
      },
      'structure' => {
        'node_prev' => {}
      }
    }
  }
};
$result_nodes{'in_menu_only_special_spaces_node'}{'structure'}{'menu_child'}{'structure'}{'node_up'} = $result_nodes{'in_menu_only_special_spaces_node'};
$result_nodes{'in_menu_only_special_spaces_node'}{'structure'}{'node_next'}{'structure'}{'node_prev'} = $result_nodes{'in_menu_only_special_spaces_node'};

$result_menus{'in_menu_only_special_spaces_node'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  },
  'structure' => {
    'menu_child' => {
      'cmdname' => 'node',
      'extra' => {
        'normalized' => '_180e-'
      },
      'structure' => {
        'menu_up' => {},
        'menu_up_hash' => {
          'Top' => 1
        }
      }
    }
  }
};
$result_menus{'in_menu_only_special_spaces_node'}{'structure'}{'menu_child'}{'structure'}{'menu_up'} = $result_menus{'in_menu_only_special_spaces_node'};

$result_errors{'in_menu_only_special_spaces_node'} = [
  {
    'error_line' => "empty node name after expansion `\x{2000}\x{2001}\x{2002}'
",
    'file_name' => 'in_menu_only_special_spaces_node.texi',
    'line_nr' => 15,
    'macro' => '',
    'text' => "empty node name after expansion `\x{2000}\x{2001}\x{2002}'",
    'type' => 'error'
  },
  {
    'error_line' => 'empty node name after expansion `\'
',
    'file_name' => 'in_menu_only_special_spaces_node.texi',
    'line_nr' => 18,
    'macro' => '',
    'text' => 'empty node name after expansion `\'',
    'type' => 'error'
  },
  {
    'error_line' => 'empty argument in @node
',
    'file_name' => 'in_menu_only_special_spaces_node.texi',
    'line_nr' => 21,
    'macro' => '',
    'text' => 'empty argument in @node',
    'type' => 'error'
  },
  {
    'error_line' => "empty node name after expansion `\x{85}\x{a0}\x{1680}'
",
    'file_name' => 'in_menu_only_special_spaces_node.texi',
    'line_nr' => 24,
    'macro' => '',
    'text' => "empty node name after expansion `\x{85}\x{a0}\x{1680}'",
    'type' => 'error'
  },
  {
    'error_line' => "empty node name after expansion `\x{2004}\x{2005}\x{2006}\x{2007}\x{2008}\x{2009}\x{200a}\x{2028}\x{2029}\x{202f}\x{205f}\x{3000}'
",
    'file_name' => 'in_menu_only_special_spaces_node.texi',
    'line_nr' => 30,
    'macro' => '',
    'text' => "empty node name after expansion `\x{2004}\x{2005}\x{2006}\x{2007}\x{2008}\x{2009}\x{200a}\x{2028}\x{2029}\x{202f}\x{205f}\x{3000}'",
    'type' => 'error'
  },
  {
    'error_line' => "\@menu reference to nonexistent node `\x{2000}\x{2001}\x{2002}'
",
    'file_name' => 'in_menu_only_special_spaces_node.texi',
    'line_nr' => 6,
    'macro' => '',
    'text' => "\@menu reference to nonexistent node `\x{2000}\x{2001}\x{2002}'",
    'type' => 'error'
  },
  {
    'error_line' => '@menu reference to nonexistent node `\'
',
    'file_name' => 'in_menu_only_special_spaces_node.texi',
    'line_nr' => 7,
    'macro' => '',
    'text' => '@menu reference to nonexistent node `\'',
    'type' => 'error'
  },
  {
    'error_line' => "\@menu reference to nonexistent node `\x{85}\x{a0}\x{1680}'
",
    'file_name' => 'in_menu_only_special_spaces_node.texi',
    'line_nr' => 9,
    'macro' => '',
    'text' => "\@menu reference to nonexistent node `\x{85}\x{a0}\x{1680}'",
    'type' => 'error'
  },
  {
    'error_line' => "\@menu reference to nonexistent node `\x{2004}\x{2005}\x{2006}\x{2007}\x{2008}\x{2009}\x{200a}\x{2028}\x{2029}\x{202f}\x{205f}\x{3000}'
",
    'file_name' => 'in_menu_only_special_spaces_node.texi',
    'line_nr' => 11,
    'macro' => '',
    'text' => "\@menu reference to nonexistent node `\x{2004}\x{2005}\x{2006}\x{2007}\x{2008}\x{2009}\x{200a}\x{2028}\x{2029}\x{202f}\x{205f}\x{3000}'",
    'type' => 'error'
  }
];


$result_floats{'in_menu_only_special_spaces_node'} = {};



$result_converted{'info'}->{'in_menu_only_special_spaces_node'} = 'This is , produced from in_menu_only_special_spaces_node.texi.


File: ,  Node: Top,  Next: ,  Up: (dir)

top
***

* Menu:

*    ::
* 	::
* '."\r".'::
*   ::
* ᠎ ::
*            　::

1 EN QUAD| | EM QUAD| | EN SPACE| |
***********************************

2 CHARACTER TABULATION|	| FORM FEED|| LINE TABULATION||
*********************************************************

3 CARRIAGE RETURN|'."\r".'|
********************

4 NEXT LINE (NEL)|| NO-BREAK SPACE| | OGHAM SPACE MARK| |
**********************************************************


File: ,  Node: ᠎ ,  Next: ,  Prev: ,  Up: Top

5 MONGOLIAN VOWEL SEPARATOR|᠎| EM SPACE| |
******************************************

6 THREE-PER-EM SPACE| | FOUR-PER-EM SPACE| | SIX-PER-EM SPACE| | FIGURE SPACE| | PUNCTUATION SPACE| | THIN SPACE| | HAIR SPACE| | LINE SEPARATOR| | PARAGRAPH SEPARATOR| | NARROW NO-BREAK SPACE| | MEDIUM MATHEMATICAL SPACE| | IDEOGRAPHIC SPACE|　|
******************************************************************************************************************************************************************************************************************************************************



Tag Table:
Node: Top64
Node: ᠎ 580

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'html'}->{'in_menu_only_special_spaces_node'} = '<!DOCTYPE html>
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

<link href="#Top" rel="start" title="Top">


</head>

<body lang="en">
<div class="top-level-extent" id="Top">
<div class="nav-panel">
<p>
Next: <a href="" accesskey="n" rel="next">EN QUAD| | EM QUAD| | EN SPACE| |</a> &nbsp; </p>
</div>
<h1 class="top" id="top">top</h1>



<ul class="mini-toc">
<li>EN QUAD| | EM QUAD| | EN SPACE| |</li>
<li>CHARACTER TABULATION|	| FORM FEED|&#12;| LINE TABULATION||</li>
<li>CARRIAGE RETURN|'."\r".'|</li>
<li>NEXT LINE (NEL)|| NO-BREAK SPACE| | OGHAM SPACE MARK| |</li>
<li><a href="#g_t_180e-" accesskey="5">MONGOLIAN VOWEL SEPARATOR|᠎| EM SPACE| |</a></li>
<li>THREE-PER-EM SPACE| | FOUR-PER-EM SPACE| | SIX-PER-EM SPACE| | FIGURE SPACE| | PUNCTUATION SPACE| | THIN SPACE| | HAIR SPACE| | LINE SEPARATOR| | PARAGRAPH SEPARATOR| | NARROW NO-BREAK SPACE| | MEDIUM MATHEMATICAL SPACE| | IDEOGRAPHIC SPACE|　|</li>
</ul>
<hr>
<div class="chapter-level-extent">
<div class="nav-panel">
<p>
Previous: <a href="#Top" accesskey="p" rel="prev">top</a> &nbsp; </p>
</div>
<h2 class="chapter" id="EN-QUAD_007c-_007c-EM-QUAD_007c-_007c-EN-SPACE_007c-_007c">1 EN QUAD| | EM QUAD| | EN SPACE| |</h2>

<hr>
</div>
<div class="chapter-level-extent">
<div class="nav-panel">
<p>
 &nbsp; </p>
</div>
<h2 class="chapter" id="CHARACTER-TABULATION_007c-_007c-FORM-FEED_007c-_007c-LINE-TABULATION_007c-_007c">2 CHARACTER TABULATION|	| FORM FEED|&#12;| LINE TABULATION||</h2>

<hr>
</div>
<div class="chapter-level-extent">
<div class="nav-panel">
<p>
 &nbsp; </p>
</div>
<h2 class="chapter" id="CARRIAGE-RETURN_007c-_007c">3 CARRIAGE RETURN|'."\r".'|</h2>

<hr>
</div>
<div class="chapter-level-extent">
<div class="nav-panel">
<p>
 &nbsp; </p>
</div>
<h2 class="chapter" id="NEXT-LINE-_0028NEL_0029_007c-_007c-NO_002dBREAK-SPACE_007c-_007c-OGHAM-SPACE-MARK_007c-_007c">4 NEXT LINE (NEL)|| NO-BREAK SPACE| | OGHAM SPACE MARK| |</h2>

<hr>
</div>
<div class="chapter-level-extent" id="g_t_180e-">
<div class="nav-panel">
<p>
Next: <a href="" accesskey="n" rel="next">THREE-PER-EM SPACE| | FOUR-PER-EM SPACE| | SIX-PER-EM SPACE| | FIGURE SPACE| | PUNCTUATION SPACE| | THIN SPACE| | HAIR SPACE| | LINE SEPARATOR| | PARAGRAPH SEPARATOR| | NARROW NO-BREAK SPACE| | MEDIUM MATHEMATICAL SPACE| | IDEOGRAPHIC SPACE|　|</a>, Previous: <a href="" accesskey="p" rel="prev">NEXT LINE (NEL)|| NO-BREAK SPACE| | OGHAM SPACE MARK| |</a>, Up: <a href="#Top" accesskey="u" rel="up">top</a> &nbsp; </p>
</div>
<h2 class="chapter" id="MONGOLIAN-VOWEL-SEPARATOR_007c_007c-EM-SPACE_007c-_007c">5 MONGOLIAN VOWEL SEPARATOR|᠎| EM SPACE| |</h2>

<hr>
</div>
<div class="chapter-level-extent">
<div class="nav-panel">
<p>
 &nbsp; </p>
</div>

<h2 class="chapter" id="THREE_002dPER_002dEM-SPACE_007c-_007c-FOUR_002dPER_002dEM-SPACE_007c-_007c-SIX_002dPER_002dEM-SPACE_007c-_007c-FIGURE-SPACE_007c-_007c-PUNCTUATION-SPACE_007c-_007c-THIN-SPACE_007c-_007c-HAIR-SPACE_007c-_007c-LINE-SEPARATOR_007c-_007c-PARAGRAPH-SEPARATOR_007c-_007c-NARROW-NO_002dBREAK-SPACE_007c-_007c-MEDIUM-MATHEMATICAL-SPACE_007c-_007c-IDEOGRAPHIC-SPACE_007c-_007c">6 THREE-PER-EM SPACE| | FOUR-PER-EM SPACE| | SIX-PER-EM SPACE| | FIGURE SPACE| | PUNCTUATION SPACE| | THIN SPACE| | HAIR SPACE| | LINE SEPARATOR| | PARAGRAPH SEPARATOR| | NARROW NO-BREAK SPACE| | MEDIUM MATHEMATICAL SPACE| | IDEOGRAPHIC SPACE|　|</h2>

</div>
</div>



</body>
</html>
';

1;
