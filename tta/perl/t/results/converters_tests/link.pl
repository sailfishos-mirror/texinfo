use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'link'} = {
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
                  'text' => 'One'
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
        'normalized' => 'One'
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
      'cmdname' => 'chapter',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'ONEX'
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
              'text' => 'target node
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
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
                  'text' => 'Two'
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
              'text' => 'xrefautomaticsectiontitle off
'
            },
            {
              'cmdname' => 'xrefautomaticsectiontitle',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'off'
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
                'misc_args' => [
                  'off'
                ]
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 9
              }
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
              'cmdname' => 'link',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'One'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'One'
                  },
                  'type' => 'brace_arg'
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
              'cmdname' => 'link',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'One'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'One'
                  },
                  'type' => 'brace_arg'
                },
                {
                  'contents' => [
                    {
                      'text' => 'label'
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
              'text' => 'xrefautomaticsectiontitle on
'
            },
            {
              'cmdname' => 'xrefautomaticsectiontitle',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'on'
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
                'misc_args' => [
                  'on'
                ]
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 16
              }
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
              'cmdname' => 'link',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'One'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'One'
                  },
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'line_nr' => 18
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
              'cmdname' => 'link',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'One'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'One'
                  },
                  'type' => 'brace_arg'
                },
                {
                  'contents' => [
                    {
                      'text' => 'label'
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
                'line_nr' => 20
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
              'text' => 'external link
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
              'cmdname' => 'link',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'Introduction'
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
                      'text' => 'bash'
                    }
                  ],
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'line_nr' => 24
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
              'cmdname' => 'link',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'Introduction'
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
                  'contents' => [
                    {
                      'text' => 'Bash'
                    }
                  ],
                  'type' => 'brace_arg'
                },
                {
                  'contents' => [
                    {
                      'text' => 'bash'
                    }
                  ],
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'line_nr' => 26
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
        'is_target' => 1,
        'normalized' => 'Two'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 6
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'link'}{'contents'}[3]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'link'}{'contents'}[3]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'link'}{'contents'}[3]{'contents'}[6]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'link'}{'contents'}[3]{'contents'}[6]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'link'}{'contents'}[3]{'contents'}[10]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'link'}{'contents'}[3]{'contents'}[10]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'link'}{'contents'}[3]{'contents'}[12]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'link'}{'contents'}[3]{'contents'}[12]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'link'}{'contents'}[3]{'contents'}[16]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'link'}{'contents'}[3]{'contents'}[16]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'link'}{'contents'}[3]{'contents'}[18]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'link'}{'contents'}[3]{'contents'}[18]{'contents'}[0]{'contents'}[0]{'contents'}[0];

$result_texis{'link'} = '@node One
@chapter ONEX

target node

@node Two

xrefautomaticsectiontitle off
@xrefautomaticsectiontitle off

@link{One}

@link{One, label}

xrefautomaticsectiontitle on
@xrefautomaticsectiontitle on

@link{One}

@link{One, label}

external link

@link{Introduction,,bash}

@link{Introduction,Bash,bash}
';


$result_texts{'link'} = '1 ONEX
******

target node


xrefautomaticsectiontitle off

One

One

xrefautomaticsectiontitle on

One

One

external link

Introduction

Introduction
';

$result_sectioning{'link'} = {
  'extra' => {
    'section_childs' => [
      {
        'cmdname' => 'chapter',
        'extra' => {
          'associated_node' => {
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'One'
            }
          },
          'section_level' => 1,
          'section_number' => '1',
          'sectioning_root' => {}
        }
      }
    ],
    'section_level' => 0
  }
};
$result_sectioning{'link'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'link'};

$result_nodes{'link'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'associated_section' => {
        'cmdname' => 'chapter',
        'extra' => {
          'section_number' => '1'
        }
      },
      'normalized' => 'One'
    }
  },
  {
    'cmdname' => 'node',
    'extra' => {
      'normalized' => 'Two'
    }
  }
];

$result_menus{'link'} = [
  {
    'extra' => {
      'normalized' => 'One'
    }
  },
  {
    'extra' => {
      'normalized' => 'Two'
    }
  }
];

$result_errors{'link'} = [
  {
    'error_line' => 'warning: node `Two\' unreferenced
',
    'line_nr' => 6,
    'text' => 'node `Two\' unreferenced',
    'type' => 'warning'
  }
];


$result_floats{'link'} = {};



$result_converted{'plaintext'}->{'link'} = '1 ONEX
******

target node

xrefautomaticsectiontitle off

   One

   label

   xrefautomaticsectiontitle on

   One

   label

   external link

   Introduction

   Bash
';


$result_converted{'html_text'}->{'link'} = '<div class="chapter-level-extent" id="One">
<h2 class="chapter" id="ONEX"><span>1 ONEX<a class="copiable-link" href="#ONEX"> &para;</a></span></h2>

<p>target node
</p>
<hr>
<h4 class="node" id="Two"><span>Two<a class="copiable-link" href="#Two"> &para;</a></span></h4>

<p>xrefautomaticsectiontitle off
</p>
<p><a class="link" href="#One">One</a>
</p>
<p><a class="link" href="#One">label</a>
</p>
<p>xrefautomaticsectiontitle on
</p>
<p><a class="link" href="#One">ONEX</a>
</p>
<p><a class="link" href="#One">label</a>
</p>
<p>external link
</p>
<p><a data-manual="bash" href="bash.html#Introduction">(bash)Introduction</a>
</p>
<p><a data-manual="bash" href="bash.html#Introduction">Bash</a>
</p></div>
';


$result_converted{'xml'}->{'link'} = '<node identifier="One" spaces=" "><nodename>One</nodename></node>
<chapter spaces=" "><sectiontitle>ONEX</sectiontitle>

<para>target node
</para>
</chapter>
<node identifier="Two" spaces=" "><nodename>Two</nodename></node>

<para>xrefautomaticsectiontitle off
<xrefautomaticsectiontitle spaces=" " value="off" line="off"></xrefautomaticsectiontitle>
</para>
<para><link label="One"><linknodename>One</linknodename></link>
</para>
<para><link label="One"><linknodename>One</linknodename><linkrefname spaces=" ">label</linkrefname></link>
</para>
<para>xrefautomaticsectiontitle on
<xrefautomaticsectiontitle spaces=" " value="on" line="on"></xrefautomaticsectiontitle>
</para>
<para><link label="One"><linknodename>One</linknodename></link>
</para>
<para><link label="One"><linknodename>One</linknodename><linkrefname spaces=" ">label</linkrefname></link>
</para>
<para>external link
</para>
<para><link label="Introduction" manual="bash"><linknodename>Introduction</linknodename><linkinfofile>bash</linkinfofile></link>
</para>
<para><link label="Introduction" manual="bash"><linknodename>Introduction</linknodename><linkrefname>Bash</linkrefname><linkinfofile>bash</linkinfofile></link>
</para>';


$result_converted{'docbook'}->{'link'} = '<chapter label="1" id="One">
<title>ONEX</title>

<para>target node
</para>
</chapter>
<anchor id="Two"/>

<para>xrefautomaticsectiontitle off
</para>
<para><link linkend="One">One</link>
</para>
<para><link linkend="One">label</link>
</para>
<para>xrefautomaticsectiontitle on
</para>
<para><link linkend="One">One</link>
</para>
<para><link linkend="One">label</link>
</para>
<para>external link
</para>
<para>&#8220;Introduction&#8221; in <filename>bash</filename>
</para>
<para>section &#8220;Bash&#8221; in <filename>bash</filename>
</para>';


$result_converted{'latex_text'}->{'link'} = '\\chapter{{ONEX}}
\\label{anchor:One}%

target node

\\label{anchor:Two}%

xrefautomaticsectiontitle off

\\hyperref[anchor:One]{One}

\\hyperref[anchor:One]{label}

xrefautomaticsectiontitle on

\\hyperref[anchor:One]{ONEX}

\\hyperref[anchor:One]{label}

external link

Introduction

Bash
';

1;
