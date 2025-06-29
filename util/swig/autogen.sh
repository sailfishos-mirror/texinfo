#!/bin/sh

autoreconf --verbose --install

: ${LIBTOOLIZE=libtoolize}
${LIBTOOLIZE}
