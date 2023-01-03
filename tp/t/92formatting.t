use strict;

use lib '.';
use Texinfo::ModulePath (undef, undef, undef, 'updirs' => 2);

require 't/test_utils.pl';

# These tests are supposed to test the same things as tests
# under tp/tests did, but to be faster, as we are avoiding the
# start-up time of perl for every one.
my @test_cases = (
['texi_cond',
  undef, {'test_file' => 'cond.texi',
    'test_formats' => ['html'],
    'EXPANDED_FORMATS' => ['html', 'info'],
  },
],
['cond',
  undef, {'test_file' => 'cond.texi',
    'test_formats' => ['html'],
  },
],
['cond_xml',
  undef, {'test_file' => 'cond.texi',
    'test_formats' => ['xml'],
    'EXPANDED_FORMATS' => ['xml'],
  },
],
['cond_no-ifhtml_no-ifinfo_no-iftex',
  undef, {'test_file' => 'cond.texi',
    'test_formats' => ['html'],
    'EXPANDED_FORMATS' => [],
  },
],
['cond_ifhtml_ifinfo_iftex',
  undef, {'test_file' => 'cond.texi',
    'test_formats' => ['html'],
    'EXPANDED_FORMATS' => ['html', 'info', 'tex'],
  },
  {'EXPANDED_FORMATS' => ['html', 'info', 'tex'], },
],
['cond_info',
  undef, {'test_file' => 'cond.texi',
    'test_formats' => ['info'],
    'EXPANDED_FORMATS' => ['info', 'plaintext'],
  },
],
['cond_info_no-ifhtml_no-ifinfo_no-iftex',
  undef, {'test_file' => 'cond.texi',
    'test_formats' => ['info'],
    'EXPANDED_FORMATS' => [],
  },
  {'EXPANDED_FORMATS' => []}
],
['cond_info_ifhtml_ifinfo_iftex',
  undef, {'test_file' => 'cond.texi',
    'test_formats' => ['info'],
    'EXPANDED_FORMATS' => ['info', 'html', 'tex'],
  },
  {'EXPANDED_FORMATS' => ['info', 'html', 'tex'],}
],
['split_for_format_not_split',
  undef,
  {'test_file' => 'simplest.texi',
   'test_formats' => ['file_xml']
  },
  {'SPLIT' => 'chapter'}
],

);

run_all('formatting', [@test_cases]);
