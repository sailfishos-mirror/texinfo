use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'commands_and_punctuation'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'text' => 'SomthingA'
            },
            {
              'cmdname' => '.'
            },
            {
              'text' => '   and now inhibit.'
            },
            {
              'cmdname' => ':'
            },
            {
              'text' => ' Now dots '
            },
            {
              'cmdname' => 'dots',
              'contents' => [
                {
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 1
              }
            },
            {
              'text' => ' and enddots '
            },
            {
              'cmdname' => 'enddots',
              'contents' => [
                {
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 1
              }
            },
            {
              'text' => ' and'
            }
          ],
          'type' => 'paragraph'
        }
      ],
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};

$result_texis{'commands_and_punctuation'} = 'SomthingA@.   and now inhibit.@: Now dots @dots{} and enddots @enddots{} and';


$result_texts{'commands_and_punctuation'} = 'SomthingA.   and now inhibit. Now dots ... and enddots ... and';

$result_errors{'commands_and_punctuation'} = [];


$result_floats{'commands_and_punctuation'} = {};



$result_converted{'plaintext'}->{'commands_and_punctuation'} = 'SomthingA.  and now inhibit. Now dots ... and enddots ...  and
';

1;
