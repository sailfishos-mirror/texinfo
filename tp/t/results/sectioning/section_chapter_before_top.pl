use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'section_chapter_before_top'} = {
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
              'text' => 'section'
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
      'parent' => {}
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
              'text' => 'top'
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
      'contents' => [],
      'extra' => {
        'spaces_before_argument' => ' '
      },
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 5,
        'macro' => ''
      },
      'parent' => {}
    }
  ],
  'type' => 'document_root'
};
$result_trees{'section_chapter_before_top'}{'contents'}[0]{'parent'} = $result_trees{'section_chapter_before_top'};
$result_trees{'section_chapter_before_top'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'section_chapter_before_top'}{'contents'}[1]{'args'}[0];
$result_trees{'section_chapter_before_top'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'section_chapter_before_top'}{'contents'}[1];
$result_trees{'section_chapter_before_top'}{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'section_chapter_before_top'}{'contents'}[1];
$result_trees{'section_chapter_before_top'}{'contents'}[1]{'parent'} = $result_trees{'section_chapter_before_top'};
$result_trees{'section_chapter_before_top'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'section_chapter_before_top'}{'contents'}[2]{'args'}[0];
$result_trees{'section_chapter_before_top'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'section_chapter_before_top'}{'contents'}[2];
$result_trees{'section_chapter_before_top'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'section_chapter_before_top'}{'contents'}[2];
$result_trees{'section_chapter_before_top'}{'contents'}[2]{'parent'} = $result_trees{'section_chapter_before_top'};
$result_trees{'section_chapter_before_top'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'section_chapter_before_top'}{'contents'}[3]{'args'}[0];
$result_trees{'section_chapter_before_top'}{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'section_chapter_before_top'}{'contents'}[3];
$result_trees{'section_chapter_before_top'}{'contents'}[3]{'parent'} = $result_trees{'section_chapter_before_top'};

$result_texis{'section_chapter_before_top'} = '@section section 

@chapter chapter

@top top
';


$result_texts{'section_chapter_before_top'} = '1 section
=========

2 chapter
=========

top
===
';

$result_sectioning{'section_chapter_before_top'} = {
  'structure' => {
    'section_childs' => [
      {
        'cmdname' => 'section',
        'extra' => {},
        'structure' => {
          'section_level' => 2,
          'section_number' => 1,
          'section_up' => {}
        }
      },
      {
        'cmdname' => 'chapter',
        'extra' => {},
        'structure' => {
          'section_level' => 2,
          'section_number' => 2,
          'section_prev' => {},
          'section_up' => {},
          'toplevel_prev' => {}
        }
      },
      {
        'cmdname' => 'top',
        'extra' => {},
        'structure' => {
          'section_level' => 2,
          'section_prev' => {},
          'section_up' => {},
          'toplevel_prev' => {}
        }
      }
    ],
    'section_level' => 1
  }
};
$result_sectioning{'section_chapter_before_top'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'section_chapter_before_top'};
$result_sectioning{'section_chapter_before_top'}{'structure'}{'section_childs'}[1]{'structure'}{'section_prev'} = $result_sectioning{'section_chapter_before_top'}{'structure'}{'section_childs'}[0];
$result_sectioning{'section_chapter_before_top'}{'structure'}{'section_childs'}[1]{'structure'}{'section_up'} = $result_sectioning{'section_chapter_before_top'};
$result_sectioning{'section_chapter_before_top'}{'structure'}{'section_childs'}[1]{'structure'}{'toplevel_prev'} = $result_sectioning{'section_chapter_before_top'}{'structure'}{'section_childs'}[0];
$result_sectioning{'section_chapter_before_top'}{'structure'}{'section_childs'}[2]{'structure'}{'section_prev'} = $result_sectioning{'section_chapter_before_top'}{'structure'}{'section_childs'}[1];
$result_sectioning{'section_chapter_before_top'}{'structure'}{'section_childs'}[2]{'structure'}{'section_up'} = $result_sectioning{'section_chapter_before_top'};
$result_sectioning{'section_chapter_before_top'}{'structure'}{'section_childs'}[2]{'structure'}{'toplevel_prev'} = $result_sectioning{'section_chapter_before_top'}{'structure'}{'section_childs'}[1];

$result_errors{'section_chapter_before_top'} = [
  {
    'error_line' => ':3: warning: lowering the section level of @chapter appearing after a lower element
',
    'file_name' => '',
    'line_nr' => 3,
    'macro' => '',
    'text' => 'lowering the section level of @chapter appearing after a lower element',
    'type' => 'warning'
  },
  {
    'error_line' => ':5: warning: lowering the section level of @top appearing after a lower element
',
    'file_name' => '',
    'line_nr' => 5,
    'macro' => '',
    'text' => 'lowering the section level of @top appearing after a lower element',
    'type' => 'warning'
  }
];


$result_floats{'section_chapter_before_top'} = {};



$result_converted{'xml'}->{'section_chapter_before_top'} = '<section spaces=" "><sectiontitle>section </sectiontitle>

</section>
<section originalcommand="chapter" spaces=" "><sectiontitle>chapter</sectiontitle>

</section>
<unnumberedsec originalcommand="top" spaces=" "><sectiontitle>top</sectiontitle>
</unnumberedsec>
';

1;
