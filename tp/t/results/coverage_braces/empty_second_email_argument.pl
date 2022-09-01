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
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'a'
                    },
                    {
                      'cmdname' => '@',
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => 'b.c'
                    }
                  ],
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [],
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'email',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 1,
                'macro' => ''
              }
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
        }
      ],
      'parent' => {},
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'empty_second_email_argument'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_second_email_argument'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'empty_second_email_argument'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'empty_second_email_argument'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'empty_second_email_argument'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'empty_second_email_argument'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'empty_second_email_argument'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'empty_second_email_argument'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'empty_second_email_argument'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[1]{'parent'} = $result_trees{'empty_second_email_argument'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'empty_second_email_argument'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_second_email_argument'}{'contents'}[0]{'contents'}[0];
$result_trees{'empty_second_email_argument'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_second_email_argument'}{'contents'}[0];
$result_trees{'empty_second_email_argument'}{'contents'}[0]{'parent'} = $result_trees{'empty_second_email_argument'};

$result_texis{'empty_second_email_argument'} = '@email{ a@@b.c, }';


$result_texts{'empty_second_email_argument'} = 'a@b.c';

$result_errors{'empty_second_email_argument'} = [];


$result_floats{'empty_second_email_argument'} = {};



$result_converted{'plaintext'}->{'empty_second_email_argument'} = '<a@b.c>
';


$result_converted{'html_text'}->{'empty_second_email_argument'} = '<p><a class="email" href="mailto:a@b.c">a@b.c</a></p>';


$result_converted{'latex_text'}->{'empty_second_email_argument'} = '\\href{mailto:a@b.c}{\\nolinkurl{a@b.c}}';

1;
