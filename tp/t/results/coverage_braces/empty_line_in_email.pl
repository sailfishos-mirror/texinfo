use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'empty_line_in_email'} = {
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
                      'text' => '
',
                      'type' => 'empty_line'
                    }
                  ],
                  'extra' => {
                    'spaces_before_argument' => ' 
'
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
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'mail,
'
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
        },
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'text
'
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
$result_trees{'empty_line_in_email'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_line_in_email'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'empty_line_in_email'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'empty_line_in_email'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'empty_line_in_email'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_line_in_email'}{'contents'}[0]{'contents'}[0];
$result_trees{'empty_line_in_email'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_line_in_email'}{'contents'}[0];
$result_trees{'empty_line_in_email'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'empty_line_in_email'}{'contents'}[0]{'contents'}[1];
$result_trees{'empty_line_in_email'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'empty_line_in_email'}{'contents'}[0];
$result_trees{'empty_line_in_email'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'empty_line_in_email'}{'contents'}[0];
$result_trees{'empty_line_in_email'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'empty_line_in_email'}{'contents'}[0]{'contents'}[3];
$result_trees{'empty_line_in_email'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'empty_line_in_email'}{'contents'}[0];
$result_trees{'empty_line_in_email'}{'contents'}[0]{'parent'} = $result_trees{'empty_line_in_email'};

$result_texis{'empty_line_in_email'} = '@email{ 

}mail,

text
';


$result_texts{'empty_line_in_email'} = '
mail,

text
';

$result_errors{'empty_line_in_email'} = [
  {
    'error_line' => '@email missing closing brace
',
    'file_name' => '',
    'line_nr' => 1,
    'macro' => '',
    'text' => '@email missing closing brace',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced }
',
    'file_name' => '',
    'line_nr' => 6,
    'macro' => '',
    'text' => 'misplaced }',
    'type' => 'error'
  }
];


$result_floats{'empty_line_in_email'} = {};



$result_converted{'plaintext'}->{'empty_line_in_email'} = '< >
   mail,

   text
';


$result_converted{'html_text'}->{'empty_line_in_email'} = '<p>mail,
</p>
<p>text
</p>';


$result_converted{'latex_text'}->{'empty_line_in_email'} = '\\href{mailto:
}{\\nolinkurl{
}}mail,

text
';

1;
