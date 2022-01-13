use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'minimal_empty_with_bye'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => '\\input texinfo.tex
',
              'type' => 'text_before_beginning'
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'text_before_beginning'
            }
          ],
          'parent' => {},
          'type' => 'preamble_before_beginning'
        },
        {
          'contents' => [],
          'parent' => {},
          'type' => 'preamble_before_content'
        }
      ],
      'parent' => {},
      'type' => 'before_node_section'
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
      'cmdname' => 'bye',
      'parent' => {}
    }
  ],
  'type' => 'document_root'
};
$result_trees{'minimal_empty_with_bye'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'minimal_empty_with_bye'}{'contents'}[0]{'contents'}[0];
$result_trees{'minimal_empty_with_bye'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'minimal_empty_with_bye'}{'contents'}[0]{'contents'}[0];
$result_trees{'minimal_empty_with_bye'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'minimal_empty_with_bye'}{'contents'}[0];
$result_trees{'minimal_empty_with_bye'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'minimal_empty_with_bye'}{'contents'}[0];
$result_trees{'minimal_empty_with_bye'}{'contents'}[0]{'parent'} = $result_trees{'minimal_empty_with_bye'};
$result_trees{'minimal_empty_with_bye'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'minimal_empty_with_bye'}{'contents'}[1];
$result_trees{'minimal_empty_with_bye'}{'contents'}[1]{'parent'} = $result_trees{'minimal_empty_with_bye'};

$result_texis{'minimal_empty_with_bye'} = '\\input texinfo.tex

@bye
';


$result_texts{'minimal_empty_with_bye'} = '';

$result_errors{'minimal_empty_with_bye'} = [];


$result_floats{'minimal_empty_with_bye'} = {};


$result_converted_errors{'file_html'}->{'minimal_empty_with_bye'} = [
  {
    'error_line' => 'minimal_empty_with_bye.texi: warning: must specify a title with a title command or @top
',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];


$result_converted_errors{'file_info'}->{'minimal_empty_with_bye'} = [
  {
    'error_line' => 'minimal_empty_with_bye.texi: warning: document without nodes
',
    'text' => 'document without nodes',
    'type' => 'warning'
  }
];


1;
