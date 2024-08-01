#ifndef CONVERTERS_DEFAULTS_H
#define CONVERTERS_DEFAULTS_H

#include "main/option_types.h"

/* Undefine values set from autoconf as we use these as
   customization variable names.  The original values are
   available with a _CONFIG suffix, e.g. PACKAGE_CONFIG for
   PACKAGE. */
#undef PACKAGE
#undef PACKAGE_NAME
#undef PACKAGE_URL
#undef PACKAGE_VERSION

void set_common_regular_options_defaults (OPTIONS *options);

void set_converter_regular_options_defaults (OPTIONS *options);

void set_html_regular_options_defaults (OPTIONS *options);

void set_texi2html_regular_options_defaults (OPTIONS *options);

#endif
