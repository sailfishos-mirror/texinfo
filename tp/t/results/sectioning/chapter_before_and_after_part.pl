use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'chapter_before_and_after_part'} = [
  {
    'contents' => [
      {
        'contents' => [],
        'parent' => {},
        'type' => 'before_node_section'
      },
      {
        'args' => [
          {
            'contents' => [
              {
                'parent' => {},
                'text' => 'chapter'
              }
            ],
            'extra' => {
              'spaces_after_argument' => '
'
            },
            'parent' => {},
            'type' => 'line_arg'
          }
        ],
        'cmdname' => 'chapter',
        'contents' => [
          {
            'parent' => {},
            'text' => '
',
            'type' => 'empty_line'
          }
        ],
        'extra' => {
          'spaces_before_argument' => ' '
        },
        'line_nr' => {
          'file_name' => '',
          'line_nr' => 1,
          'macro' => ''
        },
        'number' => 1,
        'parent' => {},
        'structure' => {
          'level' => 1
        }
      }
    ],
    'extra' => {
      'section' => {},
      'unit_command' => {}
    },
    'structure' => {},
    'type' => 'unit'
  },
  {
    'contents' => [
      {
        'args' => [
          {
            'contents' => [
              {
                'parent' => {},
                'text' => 'part'
              }
            ],
            'extra' => {
              'spaces_after_argument' => '
'
            },
            'parent' => {},
            'type' => 'line_arg'
          }
        ],
        'cmdname' => 'part',
        'contents' => [
          {
            'parent' => {},
            'text' => '
',
            'type' => 'empty_line'
          }
        ],
        'extra' => {
          'spaces_before_argument' => ' '
        },
        'line_nr' => {
          'file_name' => '',
          'line_nr' => 3,
          'macro' => ''
        },
        'parent' => {},
        'structure' => {
          'level' => 0
        }
      },
      {
        'args' => [
          {
            'contents' => [
              {
                'parent' => {},
                'text' => 'chapter 2'
              }
            ],
            'extra' => {
              'spaces_after_argument' => '
'
            },
            'parent' => {},
            'type' => 'line_arg'
          }
        ],
        'cmdname' => 'chapter',
        'contents' => [
          {
            'parent' => {},
            'text' => '
',
            'type' => 'empty_line'
          },
          {
            'args' => [
              {
                'parent' => {},
                'text' => '
',
                'type' => 'misc_arg'
              }
            ],
            'cmdname' => 'contents',
            'line_nr' => {
              'file_name' => '',
              'line_nr' => 7,
              'macro' => ''
            },
            'parent' => {}
          }
        ],
        'extra' => {
          'associated_part' => {},
          'spaces_before_argument' => ' '
        },
        'line_nr' => {
          'file_name' => '',
          'line_nr' => 5,
          'macro' => ''
        },
        'number' => 2,
        'parent' => {},
        'structure' => {
          'level' => 1
        }
      }
    ],
    'extra' => {
      'section' => {},
      'unit_command' => {}
    },
    'structure' => {
      'unit_prev' => {}
    },
    'type' => 'unit'
  }
];
$result_trees{'chapter_before_and_after_part'}[0]{'contents'}[0]{'parent'} = $result_trees{'chapter_before_and_after_part'}[0];
$result_trees{'chapter_before_and_after_part'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'chapter_before_and_after_part'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'chapter_before_and_after_part'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'chapter_before_and_after_part'}[0]{'contents'}[1];
$result_trees{'chapter_before_and_after_part'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'chapter_before_and_after_part'}[0]{'contents'}[1];
$result_trees{'chapter_before_and_after_part'}[0]{'contents'}[1]{'parent'} = $result_trees{'chapter_before_and_after_part'}[0];
$result_trees{'chapter_before_and_after_part'}[0]{'extra'}{'section'} = $result_trees{'chapter_before_and_after_part'}[0]{'contents'}[1];
$result_trees{'chapter_before_and_after_part'}[0]{'extra'}{'unit_command'} = $result_trees{'chapter_before_and_after_part'}[0]{'contents'}[1];
$result_trees{'chapter_before_and_after_part'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'chapter_before_and_after_part'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'chapter_before_and_after_part'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'chapter_before_and_after_part'}[1]{'contents'}[0];
$result_trees{'chapter_before_and_after_part'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'chapter_before_and_after_part'}[1]{'contents'}[0];
$result_trees{'chapter_before_and_after_part'}[1]{'contents'}[0]{'parent'} = $result_trees{'chapter_before_and_after_part'}[1];
$result_trees{'chapter_before_and_after_part'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'chapter_before_and_after_part'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'chapter_before_and_after_part'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'chapter_before_and_after_part'}[1]{'contents'}[1];
$result_trees{'chapter_before_and_after_part'}[1]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'chapter_before_and_after_part'}[1]{'contents'}[1];
$result_trees{'chapter_before_and_after_part'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'chapter_before_and_after_part'}[1]{'contents'}[1]{'contents'}[1];
$result_trees{'chapter_before_and_after_part'}[1]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'chapter_before_and_after_part'}[1]{'contents'}[1];
$result_trees{'chapter_before_and_after_part'}[1]{'contents'}[1]{'extra'}{'associated_part'} = $result_trees{'chapter_before_and_after_part'}[1]{'contents'}[0];
$result_trees{'chapter_before_and_after_part'}[1]{'contents'}[1]{'parent'} = $result_trees{'chapter_before_and_after_part'}[1];
$result_trees{'chapter_before_and_after_part'}[1]{'extra'}{'section'} = $result_trees{'chapter_before_and_after_part'}[1]{'contents'}[1];
$result_trees{'chapter_before_and_after_part'}[1]{'extra'}{'unit_command'} = $result_trees{'chapter_before_and_after_part'}[1]{'contents'}[1];
$result_trees{'chapter_before_and_after_part'}[1]{'structure'}{'unit_prev'} = $result_trees{'chapter_before_and_after_part'}[0];

$result_texis{'chapter_before_and_after_part'} = '@chapter chapter

@part part

@chapter chapter 2

@contents
';


$result_texts{'chapter_before_and_after_part'} = '1 chapter
*********

part
****

2 chapter 2
***********

';

$result_sectioning{'chapter_before_and_after_part'} = {
  'section_childs' => [
    {
      'cmdname' => 'chapter',
      'extra' => {
        'spaces_before_argument' => ' '
      },
      'number' => 1,
      'section_up' => {},
      'structure' => {
        'level' => 1
      }
    },
    {
      'cmdname' => 'part',
      'extra' => {
        'part_associated_section' => {
          'cmdname' => 'chapter',
          'extra' => {
            'associated_part' => {},
            'spaces_before_argument' => ' '
          },
          'number' => 2,
          'section_up' => {},
          'structure' => {
            'level' => 1
          },
          'toplevel_prev' => {}
        },
        'spaces_before_argument' => ' '
      },
      'section_childs' => [
        {}
      ],
      'section_up' => {},
      'structure' => {
        'level' => 0
      }
    }
  ],
  'structure' => {
    'level' => -1
  }
};
$result_sectioning{'chapter_before_and_after_part'}{'section_childs'}[0]{'section_up'} = $result_sectioning{'chapter_before_and_after_part'};
$result_sectioning{'chapter_before_and_after_part'}{'section_childs'}[1]{'extra'}{'part_associated_section'}{'extra'}{'associated_part'} = $result_sectioning{'chapter_before_and_after_part'}{'section_childs'}[1];
$result_sectioning{'chapter_before_and_after_part'}{'section_childs'}[1]{'extra'}{'part_associated_section'}{'section_up'} = $result_sectioning{'chapter_before_and_after_part'}{'section_childs'}[1];
$result_sectioning{'chapter_before_and_after_part'}{'section_childs'}[1]{'extra'}{'part_associated_section'}{'toplevel_prev'} = $result_sectioning{'chapter_before_and_after_part'}{'section_childs'}[0];
$result_sectioning{'chapter_before_and_after_part'}{'section_childs'}[1]{'section_childs'}[0] = $result_sectioning{'chapter_before_and_after_part'}{'section_childs'}[1]{'extra'}{'part_associated_section'};
$result_sectioning{'chapter_before_and_after_part'}{'section_childs'}[1]{'section_up'} = $result_sectioning{'chapter_before_and_after_part'};

$result_errors{'chapter_before_and_after_part'} = [];


$result_floats{'chapter_before_and_after_part'} = {};


$result_elements{'chapter_before_and_after_part'} = [
  {
    'extra' => {
      'section' => {
        'cmdname' => 'chapter',
        'extra' => {
          'spaces_before_argument' => ' '
        },
        'number' => 1,
        'structure' => {
          'level' => 1
        }
      },
      'unit_command' => {}
    },
    'structure' => {
      'directions' => {
        'FastForward' => {
          'extra' => {
            'section' => {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_part' => {
                  'cmdname' => 'part',
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
                  'structure' => {
                    'level' => 0
                  }
                },
                'spaces_before_argument' => ' '
              },
              'number' => 2,
              'structure' => {
                'level' => 1
              }
            },
            'unit_command' => {}
          },
          'structure' => {
            'directions' => {
              'Back' => {},
              'FastBack' => {},
              'This' => {}
            }
          },
          'type' => 'unit'
        },
        'Forward' => {},
        'This' => {}
      }
    },
    'type' => 'unit'
  },
  {}
];
$result_elements{'chapter_before_and_after_part'}[0]{'extra'}{'unit_command'} = $result_elements{'chapter_before_and_after_part'}[0]{'extra'}{'section'};
$result_elements{'chapter_before_and_after_part'}[0]{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'} = $result_elements{'chapter_before_and_after_part'}[0]{'structure'}{'directions'}{'FastForward'}{'extra'}{'section'};
$result_elements{'chapter_before_and_after_part'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'} = $result_elements{'chapter_before_and_after_part'}[0];
$result_elements{'chapter_before_and_after_part'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastBack'} = $result_elements{'chapter_before_and_after_part'}[0];
$result_elements{'chapter_before_and_after_part'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'This'} = $result_elements{'chapter_before_and_after_part'}[0]{'structure'}{'directions'}{'FastForward'};
$result_elements{'chapter_before_and_after_part'}[0]{'structure'}{'directions'}{'Forward'} = $result_elements{'chapter_before_and_after_part'}[0]{'structure'}{'directions'}{'FastForward'};
$result_elements{'chapter_before_and_after_part'}[0]{'structure'}{'directions'}{'This'} = $result_elements{'chapter_before_and_after_part'}[0];
$result_elements{'chapter_before_and_after_part'}[1] = $result_elements{'chapter_before_and_after_part'}[0]{'structure'}{'directions'}{'FastForward'};



$result_directions_text{'chapter_before_and_after_part'} = 'element: @chapter chapter
  FastForward: @chapter chapter 2
  Forward: @chapter chapter 2
  This: @chapter chapter
element: @chapter chapter 2
  Back: @chapter chapter
  FastBack: @chapter chapter
  This: @chapter chapter 2
';


$result_converted{'plaintext'}->{'chapter_before_and_after_part'} = '1 chapter
*********

2 chapter 2
***********

1 chapter
part
2 chapter 2
';


$result_converted{'html'}->{'chapter_before_and_after_part'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, http://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Untitled Document</title>

<meta name="description" content="Untitled Document">
<meta name="keywords" content="Untitled Document">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="viewport" content="width=device-width,initial-scale=1">

<link href="#SEC_Contents" rel="contents" title="Table of Contents">
<style type="text/css">
<!--
a.copiable-anchor {visibility: hidden; text-decoration: none; line-height: 0em}
a.summary-letter {text-decoration: none}
blockquote.indentedblock {margin-right: 0em}
div.center-align {text-align:center}
div.display {margin-left: 3.2em}
div.example {margin-left: 3.2em}
h1.center-align {text-align:center}
h2.center-align {text-align:center}
h3.center-align {text-align:center}
h3.right-align {text-align:right}
h4.center-align {text-align:center}
kbd {font-style: oblique}
p.center-align {text-align:center}
p.left-align {text-align:left}
p.right-align {text-align:right}
pre.display {font-family: inherit}
pre.format {font-family: inherit}
pre.menu-comment {font-family: serif}
pre.menu-preformatted {font-family: serif}
span.nolinebreak {white-space: nowrap}
span.roman {font-family: initial; font-weight: normal}
span.sansserif {font-family: sans-serif; font-weight: normal}
span:hover a.copiable-anchor {visibility: visible}
ul.no-bullet {list-style: none}
-->
</style>


</head>

<body lang="en">
<div class="chapter" id="chapter">
<h2 class="chapter">1 chapter</h2>

</div>
<div class="part" id="part">
<h1 class="part">part</h1>
<hr>

<ul class="section-toc">
<li><a href="#chapter-2" accesskey="1">chapter 2</a></li>
</ul>
<div class="chapter" id="chapter-2">
<h2 class="chapter">2 chapter 2</h2>

<div class="Contents_element" id="SEC_Contents">
<h2 class="contents-heading">Table of Contents</h2>

<div class="contents">
<ul class="no-bullet">
  <li><a id="toc-chapter" href="#chapter">1 chapter</a></li>
<li><a id="toc-part" href="#part">part</a>
<ul class="no-bullet">
  <li><a id="toc-chapter-2" href="#chapter-2">2 chapter 2</a></li>
</ul></li>

</ul>
</div>
</div>
</div>
</div>



</body>
</html>
';

$result_converted_errors{'html'}->{'chapter_before_and_after_part'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];



$result_converted{'xml'}->{'chapter_before_and_after_part'} = '<chapter spaces=" "><sectiontitle>chapter</sectiontitle>

</chapter>
<part spaces=" "><sectiontitle>part</sectiontitle>

<chapter spaces=" "><sectiontitle>chapter 2</sectiontitle>

<contents></contents>
</chapter>
</part>
';

1;
