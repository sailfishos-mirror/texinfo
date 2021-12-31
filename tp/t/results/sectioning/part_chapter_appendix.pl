use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'part_chapter_appendix'} = {
  'contents' => [
    {
      'contents' => [
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'parent' => {},
      'type' => 'before_node_section'
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'Part 1'
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
        'line_nr' => 2,
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
        'associated_part' => {},
        'spaces_before_argument' => ' '
      },
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 4,
        'macro' => ''
      },
      'parent' => {},
      'structure' => {
        'level' => 1,
        'number' => 1
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'Appendix'
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
      'cmdname' => 'appendix',
      'contents' => [],
      'extra' => {
        'spaces_before_argument' => ' '
      },
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 6,
        'macro' => ''
      },
      'parent' => {},
      'structure' => {
        'level' => 1,
        'number' => 'A'
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'part_chapter_appendix'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'part_chapter_appendix'}{'contents'}[0];
$result_trees{'part_chapter_appendix'}{'contents'}[0]{'parent'} = $result_trees{'part_chapter_appendix'};
$result_trees{'part_chapter_appendix'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'part_chapter_appendix'}{'contents'}[1]{'args'}[0];
$result_trees{'part_chapter_appendix'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'part_chapter_appendix'}{'contents'}[1];
$result_trees{'part_chapter_appendix'}{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'part_chapter_appendix'}{'contents'}[1];
$result_trees{'part_chapter_appendix'}{'contents'}[1]{'parent'} = $result_trees{'part_chapter_appendix'};
$result_trees{'part_chapter_appendix'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'part_chapter_appendix'}{'contents'}[2]{'args'}[0];
$result_trees{'part_chapter_appendix'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'part_chapter_appendix'}{'contents'}[2];
$result_trees{'part_chapter_appendix'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'part_chapter_appendix'}{'contents'}[2];
$result_trees{'part_chapter_appendix'}{'contents'}[2]{'extra'}{'associated_part'} = $result_trees{'part_chapter_appendix'}{'contents'}[1];
$result_trees{'part_chapter_appendix'}{'contents'}[2]{'parent'} = $result_trees{'part_chapter_appendix'};
$result_trees{'part_chapter_appendix'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'part_chapter_appendix'}{'contents'}[3]{'args'}[0];
$result_trees{'part_chapter_appendix'}{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'part_chapter_appendix'}{'contents'}[3];
$result_trees{'part_chapter_appendix'}{'contents'}[3]{'parent'} = $result_trees{'part_chapter_appendix'};

$result_texis{'part_chapter_appendix'} = '
@part Part 1

@chapter chapter

@appendix Appendix
';


$result_texts{'part_chapter_appendix'} = '
Part 1
******

1 chapter
*********

Appendix A Appendix
*******************
';

$result_sectioning{'part_chapter_appendix'} = {
  'section_childs' => [
    {
      'cmdname' => 'part',
      'extra' => {
        'part_associated_section' => {
          'cmdname' => 'chapter',
          'extra' => {
            'associated_part' => {},
            'spaces_before_argument' => ' '
          },
          'section_up' => {},
          'structure' => {
            'level' => 1,
            'number' => 1
          }
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
    },
    {
      'cmdname' => 'appendix',
      'extra' => {
        'spaces_before_argument' => ' '
      },
      'section_prev' => {},
      'section_up' => {},
      'structure' => {
        'level' => 1,
        'number' => 'A'
      },
      'toplevel_prev' => {}
    }
  ],
  'structure' => {
    'level' => -1
  }
};
$result_sectioning{'part_chapter_appendix'}{'section_childs'}[0]{'extra'}{'part_associated_section'}{'extra'}{'associated_part'} = $result_sectioning{'part_chapter_appendix'}{'section_childs'}[0];
$result_sectioning{'part_chapter_appendix'}{'section_childs'}[0]{'extra'}{'part_associated_section'}{'section_up'} = $result_sectioning{'part_chapter_appendix'}{'section_childs'}[0];
$result_sectioning{'part_chapter_appendix'}{'section_childs'}[0]{'section_childs'}[0] = $result_sectioning{'part_chapter_appendix'}{'section_childs'}[0]{'extra'}{'part_associated_section'};
$result_sectioning{'part_chapter_appendix'}{'section_childs'}[0]{'section_up'} = $result_sectioning{'part_chapter_appendix'};
$result_sectioning{'part_chapter_appendix'}{'section_childs'}[1]{'section_prev'} = $result_sectioning{'part_chapter_appendix'}{'section_childs'}[0];
$result_sectioning{'part_chapter_appendix'}{'section_childs'}[1]{'section_up'} = $result_sectioning{'part_chapter_appendix'};
$result_sectioning{'part_chapter_appendix'}{'section_childs'}[1]{'toplevel_prev'} = $result_sectioning{'part_chapter_appendix'}{'section_childs'}[0]{'extra'}{'part_associated_section'};

$result_errors{'part_chapter_appendix'} = [];


$result_floats{'part_chapter_appendix'} = {};



$result_converted{'xml'}->{'part_chapter_appendix'} = '
<part spaces=" "><sectiontitle>Part 1</sectiontitle>

<chapter spaces=" "><sectiontitle>chapter</sectiontitle>

</chapter>
</part>
<appendix spaces=" "><sectiontitle>Appendix</sectiontitle>
</appendix>
';

1;
