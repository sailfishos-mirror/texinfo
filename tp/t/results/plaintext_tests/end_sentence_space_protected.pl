use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'end_sentence_space_protected'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'text' => 'Some text. '
            },
            {
              'cmdname' => '
'
            },
            {
              'text' => 'Next sentence.
'
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

$result_texis{'end_sentence_space_protected'} = 'Some text. @
Next sentence.
';


$result_texts{'end_sentence_space_protected'} = 'Some text.  Next sentence.
';

$result_errors{'end_sentence_space_protected'} = [];


$result_floats{'end_sentence_space_protected'} = {};



$result_converted{'plaintext'}->{'end_sentence_space_protected'} = 'Some text.   Next sentence.
';

1;
