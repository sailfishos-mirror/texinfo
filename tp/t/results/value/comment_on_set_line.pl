use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'comment_on_set_line'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'text' => 'x',
              'type' => 'misc_arg'
            },
            {
              'text' => '',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'set',
          'extra' => {
            'misc_args' => [
              'x',
              ''
            ]
          },
          'info' => {
            'arg_line' => ' x@c
'
          }
        },
        {
          'args' => [
            {
              'text' => 'y',
              'type' => 'misc_arg'
            },
            {
              'text' => '',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'set',
          'extra' => {
            'misc_args' => [
              'y',
              ''
            ]
          },
          'info' => {
            'arg_line' => ' y @c
'
          }
        },
        {
          'args' => [
            {
              'text' => 'z',
              'type' => 'misc_arg'
            },
            {
              'text' => 'g',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'set',
          'extra' => {
            'misc_args' => [
              'z',
              'g'
            ]
          },
          'info' => {
            'arg_line' => ' z g@c
'
          }
        },
        {
          'args' => [
            {
              'text' => 't',
              'type' => 'misc_arg'
            },
            {
              'text' => 'a vv',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'set',
          'extra' => {
            'misc_args' => [
              't',
              'a vv'
            ]
          },
          'info' => {
            'arg_line' => ' t a vv @comment@ggg
'
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'text' => '!!, !!, !g!, !a vv!
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

$result_texis{'comment_on_set_line'} = '@set x@c
@set y @c
@set z g@c
@set t a vv @comment@ggg

!!, !!, !g!, !a vv!
';


$result_texts{'comment_on_set_line'} = '
!!, !!, !g!, !a vv!
';

$result_errors{'comment_on_set_line'} = [];


$result_floats{'comment_on_set_line'} = {};


1;
