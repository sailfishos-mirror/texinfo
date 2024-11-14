use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'commands_in_sc'} = {
  'contents' => [
    {
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
          'type' => 'argument'
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
        'line_nr' => 1
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
                  'text' => 'commands in sc'
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
          'type' => 'argument'
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
        'line_nr' => 2
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
          'type' => 'argument'
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
        'line_nr' => 4
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
          'type' => 'argument'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'cmdname' => 'sc',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'a '
                    },
                    {
                      'cmdname' => '~',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'n'
                            }
                          ],
                          'type' => 'following_arg'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 7
                      }
                    },
                    {
                      'text' => ' '
                    },
                    {
                      'cmdname' => 'aa',
                      'contents' => [
                        {
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 7
                      }
                    },
                    {
                      'text' => ' '
                    },
                    {
                      'cmdname' => 'TeX',
                      'contents' => [
                        {
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 7
                      }
                    },
                    {
                      'text' => ' '
                    },
                    {
                      'cmdname' => 'image',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'myimage'
                            }
                          ],
                          'type' => 'brace_arg'
                        }
                      ],
                      'extra' => {
                        'input_encoding_name' => 'utf-8'
                      },
                      'source_info' => {
                        'line_nr' => 7
                      }
                    },
                    {
                      'text' => ' '
                    },
                    {
                      'cmdname' => 'ref',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'chap'
                            }
                          ],
                          'extra' => {
                            'node_content' => {
                              'contents' => [
                                {}
                              ]
                            },
                            'normalized' => 'chap'
                          },
                          'type' => 'brace_arg'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 7
                      }
                    },
                    {
                      'text' => ' '
                    },
                    {
                      'cmdname' => 'xref',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => '('
                            },
                            {
                              'text' => 'f'
                            },
                            {
                              'text' => ')'
                            },
                            {
                              'text' => 'node'
                            }
                          ],
                          'extra' => {
                            'manual_content' => {
                              'contents' => [
                                {}
                              ]
                            },
                            'node_content' => {
                              'contents' => [
                                {}
                              ]
                            }
                          },
                          'type' => 'brace_arg'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 7
                      }
                    },
                    {
                      'text' => '
'
                    },
                    {
                      'cmdname' => 'ref',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'ext'
                            }
                          ],
                          'extra' => {
                            'node_content' => {
                              'contents' => [
                                {}
                              ]
                            }
                          },
                          'type' => 'brace_arg'
                        },
                        {
                          'type' => 'brace_arg'
                        },
                        {
                          'contents' => [
                            {
                              'text' => 'name'
                            }
                          ],
                          'type' => 'brace_arg'
                        },
                        {
                          'contents' => [
                            {
                              'text' => 'argf'
                            }
                          ],
                          'type' => 'brace_arg'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 8
                      }
                    },
                    {
                      'text' => ' '
                    },
                    {
                      'cmdname' => 'inlinefmtifelse',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'latex'
                            }
                          ],
                          'type' => 'brace_arg'
                        },
                        {
                          'contents' => [
                            {
                              'text' => '',
                              'type' => 'raw'
                            }
                          ],
                          'type' => 'elided_brace_command_arg'
                        },
                        {
                          'contents' => [
                            {
                              'cmdname' => 'verb',
                              'contents' => [
                                {
                                  'contents' => [
                                    {
                                      'text' => 'inverb',
                                      'type' => 'raw'
                                    }
                                  ],
                                  'type' => 'brace_container'
                                }
                              ],
                              'info' => {
                                'delimiter' => '!'
                              },
                              'source_info' => {
                                'line_nr' => 8
                              }
                            }
                          ],
                          'type' => 'brace_arg'
                        }
                      ],
                      'extra' => {
                        'expand_index' => 2,
                        'format' => 'latex'
                      },
                      'source_info' => {
                        'line_nr' => 8
                      }
                    },
                    {
                      'text' => ' '
                    },
                    {
                      'cmdname' => 'anchor',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'inanchor'
                            }
                          ],
                          'type' => 'brace_arg'
                        }
                      ],
                      'extra' => {
                        'is_target' => 1,
                        'normalized' => 'inanchor'
                      },
                      'source_info' => {
                        'line_nr' => 8
                      }
                    },
                    {
                      'text' => ' ',
                      'type' => 'spaces_after_close_brace'
                    },
                    {
                      'cmdname' => 'hyphenation',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'hyphena-te'
                            }
                          ],
                          'type' => 'brace_arg'
                        }
                      ],
                      'extra' => {},
                      'source_info' => {
                        'line_nr' => 8
                      }
                    },
                    {
                      'text' => '
',
                      'type' => 'spaces_after_close_brace'
                    },
                    {
                      'cmdname' => 'U',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => '00ff'
                            }
                          ],
                          'type' => 'brace_arg'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 9
                      }
                    },
                    {
                      'text' => ' '
                    },
                    {
                      'cmdname' => 'math',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'ma+th'
                            }
                          ],
                          'type' => 'brace_command_context'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 9
                      }
                    },
                    {
                      'text' => ' '
                    },
                    {
                      'cmdname' => 'footnote',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'contents' => [
                                {
                                  'text' => 'infootnote'
                                }
                              ],
                              'type' => 'paragraph'
                            }
                          ],
                          'type' => 'brace_command_context'
                        }
                      ],
                      'extra' => {},
                      'source_info' => {
                        'line_nr' => 9
                      }
                    },
                    {
                      'text' => ' '
                    },
                    {
                      'cmdname' => 'url',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'la'
                            }
                          ],
                          'type' => 'brace_arg'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 9
                      }
                    },
                    {
                      'text' => ' '
                    },
                    {
                      'cmdname' => 'url',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'a'
                            }
                          ],
                          'type' => 'brace_arg'
                        },
                        {
                          'contents' => [
                            {
                              'text' => 'b'
                            }
                          ],
                          'type' => 'brace_arg'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 9
                      }
                    },
                    {
                      'text' => ' '
                    },
                    {
                      'cmdname' => 'url',
                      'contents' => [
                        {
                          'info' => {
                            'spaces_before_argument' => {
                              'text' => ' '
                            }
                          },
                          'type' => 'brace_arg'
                        },
                        {
                          'contents' => [
                            {
                              'text' => 'lb'
                            }
                          ],
                          'type' => 'brace_arg'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 9
                      }
                    },
                    {
                      'text' => '
'
                    },
                    {
                      'cmdname' => 'url',
                      'contents' => [
                        {
                          'type' => 'brace_arg'
                        },
                        {
                          'type' => 'brace_arg'
                        },
                        {
                          'contents' => [
                            {
                              'text' => 'c'
                            }
                          ],
                          'type' => 'brace_arg'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 10
                      }
                    },
                    {
                      'text' => ' '
                    },
                    {
                      'cmdname' => 'email',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'a'
                            },
                            {
                              'cmdname' => '@'
                            },
                            {
                              'text' => 'c'
                            }
                          ],
                          'type' => 'brace_arg'
                        },
                        {
                          'contents' => [
                            {
                              'text' => 'e'
                            }
                          ],
                          'info' => {
                            'spaces_before_argument' => {
                              'text' => ' '
                            }
                          },
                          'type' => 'brace_arg'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 10
                      }
                    },
                    {
                      'text' => ' '
                    },
                    {
                      'cmdname' => 'abbr',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'ab'
                            }
                          ],
                          'type' => 'brace_arg'
                        },
                        {
                          'contents' => [
                            {
                              'text' => 'd'
                            }
                          ],
                          'info' => {
                            'spaces_before_argument' => {
                              'text' => ' '
                            }
                          },
                          'type' => 'brace_arg'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 10
                      }
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 7
              }
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
        'line_nr' => 5
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'commands_in_sc'}{'contents'}[4]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'contents'}[9]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'commands_in_sc'}{'contents'}[4]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'contents'}[9]{'contents'}[0]{'contents'}[0];
$result_trees{'commands_in_sc'}{'contents'}[4]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'contents'}[11]{'contents'}[0]{'extra'}{'manual_content'}{'contents'}[0] = $result_trees{'commands_in_sc'}{'contents'}[4]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'contents'}[11]{'contents'}[0]{'contents'}[1];
$result_trees{'commands_in_sc'}{'contents'}[4]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'contents'}[11]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'commands_in_sc'}{'contents'}[4]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'contents'}[11]{'contents'}[0]{'contents'}[3];
$result_trees{'commands_in_sc'}{'contents'}[4]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'contents'}[13]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'commands_in_sc'}{'contents'}[4]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'contents'}[13]{'contents'}[0]{'contents'}[0];

$result_texis{'commands_in_sc'} = '@node Top
@top commands in sc

@node chap
@chapter chap

@sc{a @~n @aa{} @TeX{} @image{myimage} @ref{chap} @xref{(f)node}
@ref{ext,,name,argf} @inlinefmtifelse{latex,,@verb{!inverb!}} @anchor{inanchor} @hyphenation{hyphena-te}
@U{00ff} @math{ma+th} @footnote{infootnote} @url{la} @url{a,b} @url{ ,lb}
@url{,,c} @email{a@@c, e} @abbr{ab, d}}';


$result_texts{'commands_in_sc'} = 'commands in sc
**************

1 chap
******

A N~ AA TeX MYIMAGE CHAP (F)NODE
EXT inverb 00FF MA+TH  LA A (B)  (LB)
C E AB (D)';

$result_sectioning{'commands_in_sc'} = {
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
$result_sectioning{'commands_in_sc'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'commands_in_sc'}{'extra'}{'section_childs'}[0];
$result_sectioning{'commands_in_sc'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'commands_in_sc'}{'extra'}{'section_childs'}[0];
$result_sectioning{'commands_in_sc'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'commands_in_sc'}{'extra'}{'section_childs'}[0];
$result_sectioning{'commands_in_sc'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'commands_in_sc'};

$result_nodes{'commands_in_sc'} = [
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
$result_nodes{'commands_in_sc'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'commands_in_sc'}[0];
$result_nodes{'commands_in_sc'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'commands_in_sc'}[0];
$result_nodes{'commands_in_sc'}[1] = $result_nodes{'commands_in_sc'}[0]{'extra'}{'node_directions'}{'next'};

$result_menus{'commands_in_sc'} = [
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

$result_errors{'commands_in_sc'} = [];


$result_floats{'commands_in_sc'} = {};



$result_converted{'plaintext'}->{'commands_in_sc'} = 'commands in sc
**************

1 chap
******

A Ñ Å TeX [myimage] chap SEE (f)node NAME: (argf)ext inverb ÿ MA+TH (1) <la> B
(a) LB c E <a@c> AB (D)

   ---------- Footnotes ----------

   (1) infootnote

';

$result_converted_errors{'plaintext'}->{'commands_in_sc'} = [
  {
    'error_line' => 'warning: could not find @image file `myimage.txt\' nor alternate text
',
    'line_nr' => 7,
    'text' => 'could not find @image file `myimage.txt\' nor alternate text',
    'type' => 'warning'
  }
];



$result_converted{'html_text'}->{'commands_in_sc'} = '<div class="top-level-extent" id="Top">
<h1 class="top" id="commands-in-sc"><span>commands in sc<a class="copiable-link" href="#commands-in-sc"> &para;</a></span></h1>

<ul class="mini-toc">
<li><a href="#chap" accesskey="1">chap</a></li>
</ul>
<hr>
<div class="chapter-level-extent" id="chap">
<h2 class="chapter" id="chap-1"><span>1 chap<a class="copiable-link" href="#chap-1"> &para;</a></span></h2>

<p><small class="sc">A &Ntilde; &Aring; TeX <img class="image" src="myimage.jpg" alt="myimage"> <a class="ref" href="#chap">chap</a> SEE <a data-manual="F" href="f.html#node">(f)node</a>
<a data-manual="argf" href="argf.html#ext">NAME</a> <code class="verb">INVERB</code> <a class="anchor" id="inanchor"></a>&#x00FF; <em class="math">ma+th</em> <a class="footnote" id="DOCF1" href="#FOOT1"><sup>1</sup></a> <a class="url" href="la">la</a> <a class="url" href="a">B</a> LB
C <a class="email" href="mailto:a@c">E</a> <abbr class="abbr" title="d">AB</abbr> (D)</small></p></div>
</div>
<div class="footnotes-segment">
<hr>
<h4 class="footnotes-heading">Footnotes</h4>

<h5 class="footnote-body-heading"><a id="FOOT1" href="#DOCF1">(1)</a></h5>
<p>infootnote</p>
</div>
';

$result_converted_errors{'html_text'}->{'commands_in_sc'} = [
  {
    'error_line' => 'warning: @image file `myimage\' (for HTML) not found, using `myimage.jpg\'
',
    'line_nr' => 7,
    'text' => '@image file `myimage\' (for HTML) not found, using `myimage.jpg\'',
    'type' => 'warning'
  }
];



$result_converted{'xml'}->{'commands_in_sc'} = '<node name="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">chap</nodenext></node>
<top spaces=" "><sectiontitle>commands in sc</sectiontitle>

</top>
<node name="chap" spaces=" "><nodename>chap</nodename><nodeprev automatic="on">Top</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>chap</sectiontitle>

<para><sc>a <accent type="tilde" bracketed="off">n</accent> &aring; &tex; <image where="inline"><imagefile>myimage</imagefile></image> <ref label="chap"><xrefnodename>chap</xrefnodename></ref> <xref label="node" manual="f"><xrefnodename>(f)node</xrefnodename></xref>
<ref label="ext" manual="argf"><xrefnodename>ext</xrefnodename><xrefprinteddesc>name</xrefprinteddesc><xrefinfofile>argf</xrefinfofile></ref> <inlinefmtifelse><inlinefmtifelseformat>latex</inlinefmtifelseformat><inlinefmtifelsecontentelse><verb delimiter="!">inverb</verb></inlinefmtifelsecontentelse></inlinefmtifelse> <anchor name="inanchor">inanchor</anchor> <hyphenation>hyphena-te</hyphenation>
<U>00ff</U> <math>ma+th</math> <footnote><para>infootnote</para></footnote> <url><urefurl>la</urefurl></url> <url><urefurl>a</urefurl><urefdesc>b</urefdesc></url> <url><urefurl spaces=" "></urefurl><urefdesc>lb</urefdesc></url>
<url><urefreplacement>c</urefreplacement></url> <email><emailaddress>a&arobase;c</emailaddress><emailname spaces=" ">e</emailname></email> <abbr><abbrword>ab</abbrword><abbrdesc spaces=" ">d</abbrdesc></abbr></sc></para></chapter>
';


$result_converted{'docbook'}->{'commands_in_sc'} = '<chapter label="1" id="chap">
<title>chap</title>

<para>A &#209; &#197; &tex; <inlinemediaobject><imageobject><imagedata fileref="myimage.jpg" format="JPG"></imagedata></imageobject></inlinemediaobject> <link linkend="chap">chap</link> See <link>(f)node</link>
section &#8220;NAME&#8221; in <filename>argf</filename> <literal>INVERB</literal> <anchor id="inanchor"/>&#x00ff; <inlineequation><mathphrase>ma+th</mathphrase></inlineequation> <footnote><para>infootnote</para></footnote> <ulink url="la">la</ulink> <ulink url="a">B</ulink> <ulink url="">LB</ulink>
<ulink url="">C</ulink> <ulink url="mailto:a@c">E</ulink> <abbrev>AB</abbrev> (D)</para></chapter>
';

$result_converted_errors{'docbook'}->{'commands_in_sc'} = [
  {
    'error_line' => 'warning: @image file `myimage\' not found, using `myimage.jpg\'
',
    'line_nr' => 7,
    'text' => '@image file `myimage\' not found, using `myimage.jpg\'',
    'type' => 'warning'
  }
];



$result_converted{'latex_text'}->{'commands_in_sc'} = '\\label{anchor:Top}%
\\chapter{{chap}}
\\label{anchor:chap}%

\\textsc{a \\~{n} \\aa{} \\TeX{} \\includegraphics{myimage} \\hyperref[anchor:chap]{\\chaptername~\\ref*{anchor:chap} [chap], page~\\pageref*{anchor:chap}} See (f)node
Section ``name\'\' in \\texttt{argf}  \\label{anchor:inanchor}%
\\hyphenation{hyphena-te}ÿ $ma+th$ \\footnote{infootnote} \\url{la} \\href{a}{b (\\nolinkurl{a})} lb
c \\href{mailto:a@c}{e} ab (d)}';

$result_converted_errors{'latex_text'}->{'commands_in_sc'} = [
  {
    'error_line' => 'warning: @image file `myimage\' (for LaTeX) not found
',
    'line_nr' => 7,
    'text' => '@image file `myimage\' (for LaTeX) not found',
    'type' => 'warning'
  }
];



$result_converted{'info'}->{'commands_in_sc'} = 'This is , produced from .


File: ,  Node: Top,  Next: chap,  Up: (dir)

commands in sc
**************

* Menu:

* chap::


File: ,  Node: chap,  Prev: Top,  Up: Top

1 chap
******

A Ñ Å TeX [myimage] *note chap:: *Note (f)node:: *note NAME: (argf)ext. inverb ÿ
MA+TH (1) <la> B (a) LB c E <a@c> AB (D)

   ---------- Footnotes ----------

   (1) infootnote


Tag Table:
Node: Top27
Node: chap124
Ref: inanchor262
Ref: chap-Footnote-1343

End Tag Table


Local Variables:
coding: utf-8
End:
';

$result_converted_errors{'info'}->{'commands_in_sc'} = [
  {
    'error_line' => 'warning: could not find @image file `myimage.txt\' nor alternate text
',
    'line_nr' => 7,
    'text' => 'could not find @image file `myimage.txt\' nor alternate text',
    'type' => 'warning'
  }
];


1;
