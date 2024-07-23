#include <config.h>

#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"



MODULE = TestXS PACKAGE = TestXS PREFIX = xstest_

PROTOTYPES: ENABLE

int
xstest_init (int, SV *, SV *, SV *)
    CODE:
        puts ("message from XS module\n");
        RETVAL = 1;
    OUTPUT:
        RETVAL
