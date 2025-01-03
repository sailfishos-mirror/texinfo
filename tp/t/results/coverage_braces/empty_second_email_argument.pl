use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'empty_second_email_argument'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'cmdname' => 'email',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'a'
                    },
                    {
                      'cmdname' => '@'
                    },
                    {
                      'text' => 'b.c'
                    }
                  ],
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'type' => 'brace_arg'
                },
                {
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'line_nr' => 1
              }
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

$result_texis{'empty_second_email_argument'} = '@email{ a@@b.c, }';


$result_texts{'empty_second_email_argument'} = 'a@b.c';

$result_errors{'empty_second_email_argument'} = [];


$result_floats{'empty_second_email_argument'} = {};



$result_converted{'plaintext'}->{'empty_second_email_argument'} = '<a@b.c>
';


$result_converted{'html_text'}->{'empty_second_email_argument'} = '<p><a class="email" href="mailto:a@b.c">a@b.c</a></p>';


$result_converted{'latex_text'}->{'empty_second_email_argument'} = '\\href{mailto:a@b.c}{\\nolinkurl{a@b.c}}';


$result_converted{'docbook'}->{'empty_second_email_argument'} = '<para><email>a@b.c</email></para>';

1;
