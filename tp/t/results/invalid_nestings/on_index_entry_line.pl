use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'on_index_entry_line'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'contents' => [
                {
                  'cmdname' => 'indent',
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 1,
                    'macro' => ''
                  }
                },
                {
                  'parent' => {},
                  'text' => ' ',
                  'type' => 'ignorable_spaces_after_command'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'in titlefont'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'titlefont',
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 1,
                    'macro' => ''
                  }
                },
                {
                  'parent' => {},
                  'text' => ' '
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'in anchor'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'anchor',
                  'extra' => {
                    'node_content' => [
                      {}
                    ],
                    'normalized' => 'in-anchor'
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 1,
                    'macro' => ''
                  }
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'footnote'
                            }
                          ],
                          'parent' => {},
                          'type' => 'paragraph'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_context'
                    }
                  ],
                  'cmdname' => 'footnote',
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 1,
                    'macro' => ''
                  }
                },
                {
                  'parent' => {},
                  'text' => ' '
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'exdent'
                        }
                      ],
                      'extra' => {
                        'spaces_after_argument' => '
'
                      },
                      'parent' => {},
                      'type' => 'line_arg'
                    }
                  ],
                  'cmdname' => 'exdent',
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 1,
                    'macro' => ''
                  }
                }
              ],
              'parent' => {},
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'cindex',
          'extra' => {
            'index_entry' => {
              'command' => {},
              'content' => [],
              'content_normalized' => [],
              'in_code' => 0,
              'index_at_command' => 'cindex',
              'index_ignore_chars' => {},
              'index_name' => 'cp',
              'index_type_command' => 'cindex',
              'number' => 1
            },
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 1,
            'macro' => ''
          },
          'type' => 'index_entry_command'
        }
      ],
      'parent' => {},
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'on_index_entry_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'on_index_entry_line'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'on_index_entry_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'on_index_entry_line'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'on_index_entry_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'on_index_entry_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'on_index_entry_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'on_index_entry_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'on_index_entry_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'on_index_entry_line'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'on_index_entry_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'on_index_entry_line'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'on_index_entry_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'on_index_entry_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'on_index_entry_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'on_index_entry_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'on_index_entry_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[4]{'extra'}{'node_content'}[0] = $result_trees{'on_index_entry_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0];
$result_trees{'on_index_entry_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'on_index_entry_line'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'on_index_entry_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[5]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'on_index_entry_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[5]{'args'}[0]{'contents'}[0];
$result_trees{'on_index_entry_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'on_index_entry_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[5]{'args'}[0];
$result_trees{'on_index_entry_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'on_index_entry_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[5];
$result_trees{'on_index_entry_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'on_index_entry_line'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'on_index_entry_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'on_index_entry_line'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'on_index_entry_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[7]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'on_index_entry_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[7]{'args'}[0];
$result_trees{'on_index_entry_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[7]{'args'}[0]{'parent'} = $result_trees{'on_index_entry_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[7];
$result_trees{'on_index_entry_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'on_index_entry_line'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'on_index_entry_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'on_index_entry_line'}{'contents'}[0]{'contents'}[0];
$result_trees{'on_index_entry_line'}{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'on_index_entry_line'}{'contents'}[0]{'contents'}[0];
$result_trees{'on_index_entry_line'}{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'content'} = $result_trees{'on_index_entry_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'};
$result_trees{'on_index_entry_line'}{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'on_index_entry_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'};
$result_trees{'on_index_entry_line'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'on_index_entry_line'}{'contents'}[0];
$result_trees{'on_index_entry_line'}{'contents'}[0]{'parent'} = $result_trees{'on_index_entry_line'};

$result_texis{'on_index_entry_line'} = '@cindex @indent @titlefont{in titlefont} @anchor{in anchor}@footnote{footnote} @exdent exdent
';


$result_texts{'on_index_entry_line'} = '';

$result_errors{'on_index_entry_line'} = [
  {
    'error_line' => 'warning: @indent should not appear in @cindex
',
    'file_name' => '',
    'line_nr' => 1,
    'macro' => '',
    'text' => '@indent should not appear in @cindex',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @titlefont should not appear in @cindex
',
    'file_name' => '',
    'line_nr' => 1,
    'macro' => '',
    'text' => '@titlefont should not appear in @cindex',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @anchor should not appear in @cindex
',
    'file_name' => '',
    'line_nr' => 1,
    'macro' => '',
    'text' => '@anchor should not appear in @cindex',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @footnote should not appear in @cindex
',
    'file_name' => '',
    'line_nr' => 1,
    'macro' => '',
    'text' => '@footnote should not appear in @cindex',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @exdent should only appear at the beginning of a line
',
    'file_name' => '',
    'line_nr' => 1,
    'macro' => '',
    'text' => '@exdent should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @exdent should not appear in @cindex
',
    'file_name' => '',
    'line_nr' => 1,
    'macro' => '',
    'text' => '@exdent should not appear in @cindex',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `cp\' outside of any node
',
    'file_name' => '',
    'line_nr' => 1,
    'macro' => '',
    'text' => 'entry for index `cp\' outside of any node',
    'type' => 'warning'
  }
];


$result_floats{'on_index_entry_line'} = {};


$result_indices_sort_strings{'on_index_entry_line'} = {
  'cp' => [
    'in titlefont  exdent
'
  ]
};


1;
