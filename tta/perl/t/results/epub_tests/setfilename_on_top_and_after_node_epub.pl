use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'setfilename_on_top_and_after_node_epub'} = '*document_root C3
 *before_node_section C1
  *preamble_before_content
 *0 @node C1 l1
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |is_target:{1}
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @top C3 l2
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E0]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1]
  ||section_level:{-1}
  *arguments_line C1
   *line_arg C2
    {In top }
    *@setfilename C1 l2
    |INFO
    |spaces_before_argument:
     |{ }
    |EXTRA
    |text_arg:{very badly placed setfilename}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {very badly placed setfilename}
  {empty_line:\\n}
  *@setfilename C1 l4
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |text_arg:{a bit too late}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {a bit too late}
';


$result_texis{'setfilename_on_top_and_after_node_epub'} = '@node Top
@top In top @setfilename very badly placed setfilename

@setfilename a bit too late
';


$result_texts{'setfilename_on_top_and_after_node_epub'} = 'In top 
*******

';

$result_sectioning{'setfilename_on_top_and_after_node_epub'} = {
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
          'section_level' => 0,
          'sectioning_root' => {}
        }
      }
    ],
    'section_level' => -1
  }
};
$result_sectioning{'setfilename_on_top_and_after_node_epub'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'setfilename_on_top_and_after_node_epub'};

$result_nodes{'setfilename_on_top_and_after_node_epub'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'associated_section' => {
        'cmdname' => 'top',
        'extra' => {}
      },
      'normalized' => 'Top'
    }
  }
];

$result_menus{'setfilename_on_top_and_after_node_epub'} = [
  {
    'extra' => {
      'normalized' => 'Top'
    }
  }
];

$result_errors{'setfilename_on_top_and_after_node_epub'} = [
  {
    'error_line' => 'warning: @setfilename should only appear at the beginning of a line
',
    'line_nr' => 2,
    'text' => '@setfilename should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @setfilename should not appear on @top line
',
    'line_nr' => 2,
    'text' => '@setfilename should not appear on @top line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @setfilename after the first element
',
    'line_nr' => 2,
    'text' => '@setfilename after the first element',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: multiple @setfilename
',
    'line_nr' => 4,
    'text' => 'multiple @setfilename',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @setfilename after the first element
',
    'line_nr' => 4,
    'text' => '@setfilename after the first element',
    'type' => 'warning'
  }
];


$result_floats{'setfilename_on_top_and_after_node_epub'} = {};


1;
