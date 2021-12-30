use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'comment_on_ifset_line'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'parent' => {},
              'text' => 'x',
              'type' => 'misc_arg'
            },
            {
              'parent' => {},
              'text' => '',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'set',
          'extra' => {
            'arg_line' => ' x
',
            'misc_args' => [
              'x',
              ''
            ]
          },
          'parent' => {}
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
              'text' => 'Y1
'
            },
            {
              'parent' => {},
              'text' => 'Y2
'
            },
            {
              'parent' => {},
              'text' => 'Y3
'
            },
            {
              'parent' => {},
              'text' => 'Y4
'
            },
            {
              'parent' => {},
              'text' => 'Y5
'
            },
            {
              'parent' => {},
              'text' => 'Y6
'
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
        }
      ],
      'parent' => {},
      'type' => 'text_root'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'comment_on_ifset_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'comment_on_ifset_line'}{'contents'}[0]{'contents'}[0];
$result_trees{'comment_on_ifset_line'}{'contents'}[0]{'contents'}[0]{'args'}[1]{'parent'} = $result_trees{'comment_on_ifset_line'}{'contents'}[0]{'contents'}[0];
$result_trees{'comment_on_ifset_line'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'comment_on_ifset_line'}{'contents'}[0];
$result_trees{'comment_on_ifset_line'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'comment_on_ifset_line'}{'contents'}[0];
$result_trees{'comment_on_ifset_line'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'comment_on_ifset_line'}{'contents'}[0]{'contents'}[2];
$result_trees{'comment_on_ifset_line'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'comment_on_ifset_line'}{'contents'}[0]{'contents'}[2];
$result_trees{'comment_on_ifset_line'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'comment_on_ifset_line'}{'contents'}[0]{'contents'}[2];
$result_trees{'comment_on_ifset_line'}{'contents'}[0]{'contents'}[2]{'contents'}[3]{'parent'} = $result_trees{'comment_on_ifset_line'}{'contents'}[0]{'contents'}[2];
$result_trees{'comment_on_ifset_line'}{'contents'}[0]{'contents'}[2]{'contents'}[4]{'parent'} = $result_trees{'comment_on_ifset_line'}{'contents'}[0]{'contents'}[2];
$result_trees{'comment_on_ifset_line'}{'contents'}[0]{'contents'}[2]{'contents'}[5]{'parent'} = $result_trees{'comment_on_ifset_line'}{'contents'}[0]{'contents'}[2];
$result_trees{'comment_on_ifset_line'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'comment_on_ifset_line'}{'contents'}[0];
$result_trees{'comment_on_ifset_line'}{'contents'}[0]{'parent'} = $result_trees{'comment_on_ifset_line'};

$result_texis{'comment_on_ifset_line'} = '@set x

Y1
Y2
Y3
Y4
Y5
Y6
';


$result_texts{'comment_on_ifset_line'} = '
Y1
Y2
Y3
Y4
Y5
Y6
';

$result_errors{'comment_on_ifset_line'} = [];


$result_floats{'comment_on_ifset_line'} = {};


1;
