use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'bad_syntax'} = {
  'contents' => [
    {
      'contents' => [
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'set',
          'extra' => {
            'arg_line' => '
'
          },
          'parent' => {}
        },
        {
          'cmdname' => 'set',
          'extra' => {
            'arg_line' => ' 
'
          },
          'parent' => {}
        },
        {
          'cmdname' => 'set',
          'extra' => {
            'arg_line' => ' ?
'
          },
          'parent' => {}
        },
        {
          'cmdname' => 'set',
          'extra' => {
            'arg_line' => ' :-/ hey!
'
          },
          'parent' => {}
        },
        {
          'cmdname' => 'set',
          'extra' => {
            'arg_line' => ' a@b
'
          },
          'parent' => {}
        },
        {
          'cmdname' => 'set',
          'extra' => {
            'arg_line' => ' :-" bad
'
          },
          'parent' => {}
        },
        {
          'cmdname' => 'set',
          'extra' => {
            'arg_line' => ' } no
'
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
          'cmdname' => 'clear',
          'extra' => {
            'arg_line' => ' aaa ggg
'
          },
          'parent' => {}
        },
        {
          'cmdname' => 'clear',
          'extra' => {
            'arg_line' => ' and{other
'
          },
          'parent' => {}
        },
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_spaces_before_paragraph'
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'gurgl
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
          'cmdname' => 'value',
          'contents' => [],
          'extra' => {
            'flag' => 'unknown'
          },
          'parent' => {}
        },
        {
          'parent' => {},
          'text' => '
'
        }
      ],
      'parent' => {},
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'bad_syntax'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'bad_syntax'}{'contents'}[0];
$result_trees{'bad_syntax'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'bad_syntax'}{'contents'}[0];
$result_trees{'bad_syntax'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'bad_syntax'}{'contents'}[0];
$result_trees{'bad_syntax'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'bad_syntax'}{'contents'}[0];
$result_trees{'bad_syntax'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'bad_syntax'}{'contents'}[0];
$result_trees{'bad_syntax'}{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'bad_syntax'}{'contents'}[0];
$result_trees{'bad_syntax'}{'contents'}[0]{'contents'}[6]{'parent'} = $result_trees{'bad_syntax'}{'contents'}[0];
$result_trees{'bad_syntax'}{'contents'}[0]{'contents'}[7]{'parent'} = $result_trees{'bad_syntax'}{'contents'}[0];
$result_trees{'bad_syntax'}{'contents'}[0]{'contents'}[8]{'parent'} = $result_trees{'bad_syntax'}{'contents'}[0];
$result_trees{'bad_syntax'}{'contents'}[0]{'contents'}[9]{'parent'} = $result_trees{'bad_syntax'}{'contents'}[0];
$result_trees{'bad_syntax'}{'contents'}[0]{'contents'}[10]{'parent'} = $result_trees{'bad_syntax'}{'contents'}[0];
$result_trees{'bad_syntax'}{'contents'}[0]{'contents'}[11]{'parent'} = $result_trees{'bad_syntax'}{'contents'}[0];
$result_trees{'bad_syntax'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'parent'} = $result_trees{'bad_syntax'}{'contents'}[0]{'contents'}[12];
$result_trees{'bad_syntax'}{'contents'}[0]{'contents'}[12]{'parent'} = $result_trees{'bad_syntax'}{'contents'}[0];
$result_trees{'bad_syntax'}{'contents'}[0]{'contents'}[13]{'parent'} = $result_trees{'bad_syntax'}{'contents'}[0];
$result_trees{'bad_syntax'}{'contents'}[0]{'contents'}[14]{'parent'} = $result_trees{'bad_syntax'}{'contents'}[0];
$result_trees{'bad_syntax'}{'contents'}[0]{'contents'}[15]{'parent'} = $result_trees{'bad_syntax'}{'contents'}[0];
$result_trees{'bad_syntax'}{'contents'}[0]{'parent'} = $result_trees{'bad_syntax'};

$result_texis{'bad_syntax'} = '
@set
@set 
@set ?
@set :-/ hey!
@set a@b
@set :-" bad
@set } no

@clear aaa ggg
@clear and{other

gurgl

@value{unknown}
';


$result_texts{'bad_syntax'} = '

gurgl


';

$result_errors{'bad_syntax'} = [
  {
    'error_line' => '@set requires a name
',
    'file_name' => '',
    'line_nr' => 2,
    'macro' => '',
    'text' => '@set requires a name',
    'type' => 'error'
  },
  {
    'error_line' => '@set requires a name
',
    'file_name' => '',
    'line_nr' => 3,
    'macro' => '',
    'text' => '@set requires a name',
    'type' => 'error'
  },
  {
    'error_line' => 'bad name for @set
',
    'file_name' => '',
    'line_nr' => 4,
    'macro' => '',
    'text' => 'bad name for @set',
    'type' => 'error'
  },
  {
    'error_line' => 'bad name for @set
',
    'file_name' => '',
    'line_nr' => 5,
    'macro' => '',
    'text' => 'bad name for @set',
    'type' => 'error'
  },
  {
    'error_line' => 'bad name for @set
',
    'file_name' => '',
    'line_nr' => 6,
    'macro' => '',
    'text' => 'bad name for @set',
    'type' => 'error'
  },
  {
    'error_line' => 'bad name for @set
',
    'file_name' => '',
    'line_nr' => 7,
    'macro' => '',
    'text' => 'bad name for @set',
    'type' => 'error'
  },
  {
    'error_line' => 'bad name for @set
',
    'file_name' => '',
    'line_nr' => 8,
    'macro' => '',
    'text' => 'bad name for @set',
    'type' => 'error'
  },
  {
    'error_line' => 'bad name for @clear
',
    'file_name' => '',
    'line_nr' => 10,
    'macro' => '',
    'text' => 'bad name for @clear',
    'type' => 'error'
  },
  {
    'error_line' => 'bad name for @clear
',
    'file_name' => '',
    'line_nr' => 11,
    'macro' => '',
    'text' => 'bad name for @clear',
    'type' => 'error'
  },
  {
    'error_line' => 'bad syntax for @value
',
    'file_name' => '',
    'line_nr' => 13,
    'macro' => '',
    'text' => 'bad syntax for @value',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced {
',
    'file_name' => '',
    'line_nr' => 13,
    'macro' => '',
    'text' => 'misplaced {',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: undefined flag: unknown
',
    'file_name' => '',
    'line_nr' => 15,
    'macro' => '',
    'text' => 'undefined flag: unknown',
    'type' => 'warning'
  }
];


$result_floats{'bad_syntax'} = {};


1;
