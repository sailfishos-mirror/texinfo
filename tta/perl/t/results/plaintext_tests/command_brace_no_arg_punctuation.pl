use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'command_brace_no_arg_punctuation'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'cmdname' => 'TeX',
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
              'text' => '. And '
            },
            {
              'cmdname' => 'LaTeX',
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
              'text' => '. '
            },
            {
              'cmdname' => 'copyright',
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
              'text' => '. '
            },
            {
              'cmdname' => 'registeredsymbol',
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
              'text' => '. End.
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

$result_texis{'command_brace_no_arg_punctuation'} = '@TeX{}. And @LaTeX{}. @copyright{}. @registeredsymbol{}. End.
';


$result_texts{'command_brace_no_arg_punctuation'} = 'TeX. And LaTeX. (C). (R). End.
';

$result_errors{'command_brace_no_arg_punctuation'} = [];


$result_floats{'command_brace_no_arg_punctuation'} = {};



$result_converted{'plaintext'}->{'command_brace_no_arg_punctuation'} = 'TeX.  And LaTeX.  ©.  ®.  End.
';

1;
