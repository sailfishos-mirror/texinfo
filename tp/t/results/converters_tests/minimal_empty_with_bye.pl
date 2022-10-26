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
              'text' => '\\input texinfo.tex
',
              'type' => 'text_before_beginning'
            },
            {
              'text' => '
',
              'type' => 'text_before_beginning'
            }
          ],
          'type' => 'preamble_before_beginning'
        },
        {
          'contents' => [],
          'type' => 'preamble_before_content'
        }
      ],
      'type' => 'before_node_section'
    },
    {
      'args' => [
        {
          'text' => '
',
          'type' => 'misc_arg'
        }
      ],
      'cmdname' => 'bye'
    }
  ],
  'type' => 'document_root'
};

$result_texis{'minimal_empty_with_bye'} = '\\input texinfo.tex

@bye
';


$result_texts{'minimal_empty_with_bye'} = '';

$result_errors{'minimal_empty_with_bye'} = [];


$result_floats{'minimal_empty_with_bye'} = {};


$result_converted_errors{'file_html'}->{'minimal_empty_with_bye'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'file_name' => 'minimal_empty_with_bye.texi',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];


$result_converted_errors{'file_info'}->{'minimal_empty_with_bye'} = [
  {
    'error_line' => 'warning: document without nodes
',
    'file_name' => 'minimal_empty_with_bye.texi',
    'text' => 'document without nodes',
    'type' => 'warning'
  }
];


1;
