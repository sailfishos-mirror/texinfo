use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'no_empty_line_between_headings'} = {
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
              'text' => 'Top'
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
      'cmdname' => 'top',
      'contents' => [
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'Subheading'
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
          'cmdname' => 'subheading',
          'extra' => {
            'spaces_before_argument' => ' '
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 2,
            'macro' => ''
          },
          'parent' => {}
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
      'parent' => {}
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'Chapter'
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
      'contents' => [],
      'extra' => {
        'spaces_before_argument' => ' '
      },
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 3,
        'macro' => ''
      },
      'parent' => {}
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'Section'
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
      'cmdname' => 'section',
      'contents' => [],
      'extra' => {
        'spaces_before_argument' => ' '
      },
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 4,
        'macro' => ''
      },
      'parent' => {}
    }
  ],
  'type' => 'document_root'
};
$result_trees{'no_empty_line_between_headings'}{'contents'}[0]{'parent'} = $result_trees{'no_empty_line_between_headings'};
$result_trees{'no_empty_line_between_headings'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'no_empty_line_between_headings'}{'contents'}[1]{'args'}[0];
$result_trees{'no_empty_line_between_headings'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'no_empty_line_between_headings'}{'contents'}[1];
$result_trees{'no_empty_line_between_headings'}{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'no_empty_line_between_headings'}{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'no_empty_line_between_headings'}{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'no_empty_line_between_headings'}{'contents'}[1]{'contents'}[0];
$result_trees{'no_empty_line_between_headings'}{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'no_empty_line_between_headings'}{'contents'}[1];
$result_trees{'no_empty_line_between_headings'}{'contents'}[1]{'parent'} = $result_trees{'no_empty_line_between_headings'};
$result_trees{'no_empty_line_between_headings'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'no_empty_line_between_headings'}{'contents'}[2]{'args'}[0];
$result_trees{'no_empty_line_between_headings'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'no_empty_line_between_headings'}{'contents'}[2];
$result_trees{'no_empty_line_between_headings'}{'contents'}[2]{'parent'} = $result_trees{'no_empty_line_between_headings'};
$result_trees{'no_empty_line_between_headings'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'no_empty_line_between_headings'}{'contents'}[3]{'args'}[0];
$result_trees{'no_empty_line_between_headings'}{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'no_empty_line_between_headings'}{'contents'}[3];
$result_trees{'no_empty_line_between_headings'}{'contents'}[3]{'parent'} = $result_trees{'no_empty_line_between_headings'};

$result_texis{'no_empty_line_between_headings'} = '@top Top
@subheading Subheading
@chapter Chapter
@section Section
';


$result_texts{'no_empty_line_between_headings'} = 'Top
***
Subheading
----------
1 Chapter
*********
1.1 Section
===========
';

$result_sectioning{'no_empty_line_between_headings'} = {
  'structure' => {
    'section_childs' => [
      {
        'cmdname' => 'top',
        'extra' => {},
        'structure' => {
          'section_childs' => [
            {
              'cmdname' => 'chapter',
              'extra' => {},
              'structure' => {
                'section_childs' => [
                  {
                    'cmdname' => 'section',
                    'extra' => {},
                    'structure' => {
                      'section_level' => 2,
                      'section_number' => '1.1',
                      'section_up' => {}
                    }
                  }
                ],
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
$result_sectioning{'no_empty_line_between_headings'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'no_empty_line_between_headings'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0];
$result_sectioning{'no_empty_line_between_headings'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'no_empty_line_between_headings'}{'structure'}{'section_childs'}[0];
$result_sectioning{'no_empty_line_between_headings'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_prev'} = $result_sectioning{'no_empty_line_between_headings'}{'structure'}{'section_childs'}[0];
$result_sectioning{'no_empty_line_between_headings'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_up'} = $result_sectioning{'no_empty_line_between_headings'}{'structure'}{'section_childs'}[0];
$result_sectioning{'no_empty_line_between_headings'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'no_empty_line_between_headings'};

$result_errors{'no_empty_line_between_headings'} = [];


$result_floats{'no_empty_line_between_headings'} = {};



$result_converted{'plaintext'}->{'no_empty_line_between_headings'} = 'Top
***

Subheading
----------

1 Chapter
*********

1.1 Section
===========

';


$result_converted{'html_text'}->{'no_empty_line_between_headings'} = '<div class="top" id="Top">
<h1 class="top">Top</h1>
<h4 class="subheading" id="Subheading">Subheading</h4>
<ul class="section-toc">
<li><a href="#Chapter" accesskey="1">Chapter</a></li>
</ul>
<div class="chapter" id="Chapter">
<h2 class="chapter">1 Chapter</h2>
<ul class="section-toc">
<li><a href="#Section" accesskey="1">Section</a></li>
</ul>
<div class="section" id="Section">
<h3 class="section">1.1 Section</h3>
</div>
</div>
</div>
';


$result_converted{'docbook'}->{'no_empty_line_between_headings'} = '<chapter label="">
<title>Top</title>
<bridgehead renderas="sect2">Subheading</bridgehead>
</chapter>
<chapter label="1">
<title>Chapter</title>
<sect1 label="1.1">
<title>Section</title>
</sect1>
</chapter>
';

1;
