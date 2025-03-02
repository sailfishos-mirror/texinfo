use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'customize_informative_commands'} = '*document_root C2
 *before_node_section C1
  *preamble_before_content
 *0 @chapter C1 l1
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_level:{1}
 |section_number:{1}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E0]
  ||section_level:{0}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap}
';


$result_texis{'customize_informative_commands'} = '@chapter chap
';


$result_texts{'customize_informative_commands'} = '1 chap
******
';

$result_sectioning{'customize_informative_commands'} = {
  'extra' => {
    'section_childs' => [
      {
        'cmdname' => 'chapter',
        'extra' => {
          'section_level' => 1,
          'section_number' => '1',
          'sectioning_root' => {}
        }
      }
    ],
    'section_level' => 0
  }
};
$result_sectioning{'customize_informative_commands'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'customize_informative_commands'};

$result_errors{'customize_informative_commands'} = [];


$result_floats{'customize_informative_commands'} = {};



$result_converted{'latex_text'}->{'customize_informative_commands'} = '\\begin{document}
\\chapter{{chap}}
';

1;
