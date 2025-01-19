#! /bin/sh
# Setup reference HTML output using the perl converter
#
# Copyright 2024-2025 Free Software Foundation, Inc.
#
# This file is free software; as a special exception the author gives
# unlimited permission to copy and/or distribute it, with or without
# modifications, as long as this notice is preserved.
#
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY, to the extent permitted by law; without even the
# implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.


set -e

TEXINFO_XS_CONVERT=0
export TEXINFO_XS_CONVERT

./generate_perlVSC.sh perl_HTML_refs $1
