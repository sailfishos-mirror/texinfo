use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'weird_accents'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'cmdname' => 'documentencoding',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'ISO-8859-1'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => {
                      'text' => '
'
                    }
                  },
                  'type' => 'line_arg'
                }
              ],
              'extra' => {
                'input_encoding_name' => 'iso-8859-1',
                'text_arg' => 'ISO-8859-1'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 1
              }
            },
            {
              'text' => '
',
              'type' => 'empty_line'
            }
          ],
          'type' => 'preamble_before_content'
        }
      ],
      'type' => 'before_node_section'
    },
    {
      'cmdname' => 'node',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'Top'
                }
              ],
              'info' => {
                'spaces_after_argument' => {
                  'text' => '
'
                }
              },
              'type' => 'line_arg'
            }
          ],
          'type' => 'arguments_line'
        }
      ],
      'extra' => {
        'is_target' => 1,
        'normalized' => 'Top'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 3
      }
    },
    {
      'cmdname' => 'top',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'top'
                }
              ],
              'info' => {
                'spaces_after_argument' => {
                  'text' => '
'
                }
              },
              'type' => 'line_arg'
            }
          ],
          'type' => 'arguments_line'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'extra' => {},
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 4
      }
    },
    {
      'cmdname' => 'node',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'chap'
                }
              ],
              'info' => {
                'spaces_after_argument' => {
                  'text' => '
'
                }
              },
              'type' => 'line_arg'
            }
          ],
          'type' => 'arguments_line'
        }
      ],
      'extra' => {
        'is_target' => 1,
        'normalized' => 'chap'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 6
      }
    },
    {
      'cmdname' => 'chapter',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'Chapter'
                }
              ],
              'info' => {
                'spaces_after_argument' => {
                  'text' => '
'
                }
              },
              'type' => 'line_arg'
            }
          ],
          'type' => 'arguments_line'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'cmdname' => '=',
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => '~',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'cmdname' => 'dotless',
                              'contents' => [
                                {
                                  'contents' => [
                                    {
                                      'text' => 'i'
                                    }
                                  ],
                                  'type' => 'brace_container'
                                }
                              ],
                              'source_info' => {
                                'line_nr' => 9
                              }
                            }
                          ],
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 9
                      }
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 9
              }
            },
            {
              'text' => '
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'cmdname' => '=',
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => ',',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'cmdname' => '~',
                              'contents' => [
                                {
                                  'contents' => [
                                    {
                                      'text' => 'n'
                                    }
                                  ],
                                  'type' => 'brace_container'
                                }
                              ],
                              'source_info' => {
                                'line_nr' => 11
                              }
                            }
                          ],
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 11
                      }
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 11
              }
            },
            {
              'text' => '
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'cmdname' => '=',
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => 'ubaraccent',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'a'
                            }
                          ],
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 13
                      }
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 13
              }
            },
            {
              'text' => '
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'cmdname' => '^',
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => 'udotaccent',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'cmdname' => '`',
                              'contents' => [
                                {
                                  'contents' => [
                                    {
                                      'text' => 'r'
                                    }
                                  ],
                                  'type' => 'following_arg'
                                }
                              ],
                              'source_info' => {
                                'line_nr' => 15
                              }
                            }
                          ],
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 15
                      }
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 15
              }
            },
            {
              'text' => '
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'cmdname' => '=',
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => '\'',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'cmdname' => '`',
                              'contents' => [
                                {
                                  'contents' => [
                                    {
                                      'text' => 'r'
                                    }
                                  ],
                                  'type' => 'brace_container'
                                }
                              ],
                              'source_info' => {
                                'line_nr' => 17
                              }
                            }
                          ],
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 17
                      }
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 17
              }
            },
            {
              'text' => '
'
            }
          ],
          'type' => 'paragraph'
        }
      ],
      'extra' => {
        'section_number' => '1'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 7
      }
    }
  ],
  'type' => 'document_root'
};

$result_texis{'weird_accents'} = '@documentencoding ISO-8859-1

@node Top
@top top

@node chap
@chapter Chapter

@={@~{@dotless{i}}}

@={@,{@~{n}}}

@={@ubaraccent{a}}

@^{@udotaccent{@`r}}

@={@\'{@`{r}}}
';


$result_texts{'weird_accents'} = '
top
***

1 Chapter
*********

i~=

n~,=

a_=

.r`^

r`\'=
';

$result_sectioning{'weird_accents'} = {
  'extra' => {
    'section_childs' => [
      {
        'cmdname' => 'top',
        'extra' => {
          'associated_node' => {
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'Top'
            }
          },
          'section_childs' => [
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => 'chap'
                  }
                },
                'section_directions' => {
                  'up' => {}
                },
                'section_level' => 1,
                'section_number' => '1',
                'toplevel_directions' => {
                  'prev' => {},
                  'up' => {}
                }
              }
            }
          ],
          'section_level' => 0,
          'sectioning_root' => {},
          'toplevel_directions' => {}
        }
      }
    ],
    'section_level' => -1
  }
};
$result_sectioning{'weird_accents'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'weird_accents'}{'extra'}{'section_childs'}[0];
$result_sectioning{'weird_accents'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'weird_accents'}{'extra'}{'section_childs'}[0];
$result_sectioning{'weird_accents'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'weird_accents'}{'extra'}{'section_childs'}[0];
$result_sectioning{'weird_accents'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'weird_accents'};

$result_nodes{'weird_accents'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'associated_section' => {
        'cmdname' => 'top',
        'extra' => {}
      },
      'node_directions' => {
        'next' => {
          'cmdname' => 'node',
          'extra' => {
            'associated_section' => {
              'cmdname' => 'chapter',
              'extra' => {
                'section_number' => '1'
              }
            },
            'node_directions' => {
              'prev' => {},
              'up' => {}
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
$result_nodes{'weird_accents'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'weird_accents'}[0];
$result_nodes{'weird_accents'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'weird_accents'}[0];
$result_nodes{'weird_accents'}[1] = $result_nodes{'weird_accents'}[0]{'extra'}{'node_directions'}{'next'};

$result_menus{'weird_accents'} = [
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

$result_errors{'weird_accents'} = [];


$result_floats{'weird_accents'} = {};



$result_converted{'plaintext'}->{'weird_accents'} = 'top
***

1 Chapter
*********

i~=

   ñ,=

   a_=

   .r`^

   r`\'=
';


$result_converted{'html_text'}->{'weird_accents'} = '
<div class="top-level-extent" id="Top">
<h1 class="top" id="top"><span>top<a class="copiable-link" href="#top"> &para;</a></span></h1>

<ul class="mini-toc">
<li><a href="#chap" accesskey="1">Chapter</a></li>
</ul>
<hr>
<div class="chapter-level-extent" id="chap">
<h2 class="chapter" id="Chapter"><span>1 Chapter<a class="copiable-link" href="#Chapter"> &para;</a></span></h2>

<p>&#297;&#772;
</p>
<p>&ntilde;&#807;&#772;
</p>
<p>a&#818;&#772;
</p>
<p>r&#768;&#803;&#770;
</p>
<p>r&#768;&#769;&#772;
</p></div>
</div>
';


$result_converted{'xml'}->{'weird_accents'} = '<documentencoding encoding="ISO-8859-1" spaces=" ">ISO-8859-1</documentencoding>

<node identifier="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">chap</nodenext></node>
<top spaces=" "><sectiontitle>top</sectiontitle>

</top>
<node identifier="chap" spaces=" "><nodename>chap</nodename><nodeprev automatic="on">Top</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>Chapter</sectiontitle>

<para><accent type="macr"><accent type="tilde"><dotless>i</dotless></accent></accent>
</para>
<para><accent type="macr"><accent type="cedil"><accent type="tilde">n</accent></accent></accent>
</para>
<para><accent type="macr"><accent type="ubaraccent">a</accent></accent>
</para>
<para><accent type="circ"><accent type="udotaccent"><accent type="grave" bracketed="off">r</accent></accent></accent>
</para>
<para><accent type="macr"><accent type="acute"><accent type="grave">r</accent></accent></accent>
</para></chapter>
';


$result_converted{'docbook'}->{'weird_accents'} = '<chapter label="1" id="chap">
<title>Chapter</title>

<para>&#297;&#772;
</para>
<para>&#241;&#807;&#772;
</para>
<para>a&#818;&#772;
</para>
<para>r&#768;&#803;&#770;
</para>
<para>r&#768;&#769;&#772;
</para></chapter>
';


$result_converted{'latex_text'}->{'weird_accents'} = '
\\begin{document}
\\label{anchor:Top}%
\\chapter{{Chapter}}
\\label{anchor:chap}%

\\={\\~{\\i{}}}

\\={\\c{\\~{n}}}

\\={\\b{a}}

\\^{\\d{\\`{r}}}

\\={\\\'{\\`{r}}}
';

1;
