# -*- shell-script -*-
#
# Copyright (C) 1996-2025 Free Software Foundation, Inc.
#
# (This file was originally part of GNU Automake.)
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 3 of the License, or (at
# your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.

# Based on defines for Automake testing environment.
# Tom Tromey <tromey@cygnus.com>

# Be more Bourne compatible.
# (Snippet copied from configure's initialization in Autoconf 2.72.)
DUALCASE=1; export DUALCASE # for MKS sh
if test ${ZSH_VERSION+y} && (emulate sh) >/dev/null 2>&1
then :
  emulate sh
  NULLCMD=:
  # Pre-4.2 versions of Zsh do word splitting on ${1+"$@"}, which
  # is contrary to our usage.  Disable this feature.
  alias -g '${1+"$@"}'='"$@"'
  setopt NO_GLOB_SUBST
else case e in #(
  e) case `(set -o) 2>/dev/null` in #(
  *posix*) :
    set -o posix ;; #(
  *) :
     ;;
esac ;;
esac
fi

# Ensure $srcdir is set correctly.
test -f $srcdir/run_test_utils.sh || {
   echo "$srcdir/run_test_utils.sh not found, check \$srcdir" 1>&2
   exit 1
}

me=`echo "$0" | sed -e 's,.*[\\/],,;s/\.test$//'`

# See how redirections should work.  User can set VERBOSE to see all
# output.
test -z "$VERBOSE" && {
   exec > /dev/null 2>&1
}

srcdir_abs=`cd $srcdir && pwd`
test -z "$TEXI2DVI" && TEXI2DVI=$srcdir_abs/../../util/texi2dvi

if test -n "$required"
then
  for tool in $required
  do
    # Check that each required tool is present.
    case $tool in
      # Generic case: the tool must support --version.
      *)
	echo "$me: running $tool --version"
	( $tool --version ) || exit 77
	;;
    esac
  done
fi


# Always use an absolute srcdir.  Otherwise symlinks made in subdirs
# of the test dir just won't work.
case "$srcdir" in
 [\\/]* | ?:[\\/]*)
    ;;

 *)
    srcdir=`CDPATH=: && cd "$srcdir" && pwd`
    ;;
esac

abs_top_builddir=`CDPATH=: && cd . && pwd`/../..

chmod -R a+rwx testSubDir > /dev/null 2>&1
rm -rf testSubDir > /dev/null 2>&1
mkdir testSubDir

# Copy in some files we need.
cp $srcdir/../../doc/texinfo.tex testSubDir || exit 1

unset srcdir

cd ./testSubDir


# Unset the user's envvars that might change the behavior.
unset TEXI2DVI_BUILD_MODE
unset TEXI2DVI_BUILD_DIRECTORY

echo "=== Running test $0"


# create_input_texi < INPUT
# -------------------------
# Create input.texi adding stdin inside a default prologue/epilogue
create_input_texi ()
{
  {
    cat << END
\input texinfo   @c -*-texinfo-*-
@setfilename input
@settitle input

@node Top
@top input

@node chap
@chapter chap

END
    cat
    cat << END
@bye
END
  } >input.texi
}

# create_input_empty_texi < INPUT
# -------------------------
# Create input.texi adding stdin inside a prologue/epilogue without contents
create_input_empty_texi ()
{
  {
    cat << END
\input texinfo   @c -*-texinfo-*-
@setfilename input
@settitle input

@ifnottex
@node Top
@top input
@end ifnottex

END
    cat
    cat << END
@bye
END
  } >input.texi
}

# create_input_tex < INPUT
# ------------------------
# Create input.tex adding stdin inside a default prologue/epilogue
create_input_tex ()
{
  {
    cat << END
\documentclass{article}

\begin{document}
END
    cat
    cat << END
\end{document}
END
  } >input.tex
}


# TEXI2DVI_run status [options...]
# --------------------------------
# Run texi2dvi with OPTIONS, and fail if does not exit with STATUS.
TEXI2DVI_run ()
{
  expected_exitcode=$1
  shift
  exitcode=0
  if test -n "$VERBOSE"; then
    set x --debug --verbose ${1+"$@"}
    shift
  fi
  TEXINDEX=$abs_top_builddir/texindex/texindex TEXINDEX_SCRIPT=$srcdir_abs/texindex/texindex.awk $TEXI2DVI ${1+"$@"} 2>stderr >stdout || exitcode=$?
  cat stderr
  cat stdout
  test $exitcode = $expected_exitcode || exit 1
}


# TEXI2DVI_fail [options...]
# ---------------------------
# Run texi2dvi with OPTIONS, and fail if does not exit with failure.
TEXI2DVI_fail ()
{
  TEXI2DVI_run 1 ${1+"$@"}
}


# TEXI2DVI_pass [options...]
# ---------------------------
# Run texi2dvi with OPTIONS, and fail if does not exit with failure.
TEXI2DVI_pass ()
{
  TEXI2DVI_run 0 ${1+"$@"}
}


# optionset_get N OPTIONSET<1> -- OPTIONSET<2> -- ...
# ---------------------------------------------------
# Return OPTIONSET<N>
optionset_get ()
{
  n=$1
  shift
  # Find the optionset.
  while test $n != 1; do
    case $1 in
      --) n=`expr $n - 1`;;
    esac
    shift
  done
  # Return the optionset.
  while true; do
    case $#:$1 in
      0:) break;;
    *:--) shift; break;;
       *) echo "$1"; shift;;
    esac
  done
}

# list_files ()
# -------------
# Return the sorted list of files in this directory, except the "invisible" ones.
list_files ()
{
  for f in *
  do
    case $f in
      texinfo.tex | stdout | stderr | ls.expected | ls.value );;
      *) echo $f;;
    esac
  done | sort
}


# assert_files (EXPECTED-FILES)
# -----------------------------
# Only those files are valid in the current directory.
assert_files ()
{
  if test -n "$VERBOSE"; then
    ls
  fi
  list_files > ls.value
  echo "$*" | tr ' ' '\n' | sort > ls.expected
  diff -u ls.expected ls.value
}


# assert_and_remove_files (EXPECTED-FILES)
# ----------------------------------------
# Only those files are valid in the current directory.  Remove them
# afterwards.
assert_and_remove_files ()
{
  assert_files "$@"
  rm -rf "$@"
}


# title TITLE...
# --------------
# Make a huge title to ease the reading of the output.
title ()
{
  (
    set +x
    echo "    $@    " | sed -e 's/./=/g'
    echo "    $@    "
    echo "    $@    " | sed -e 's/./=/g'
  )
}

# $latex_paragraph
# ----------------
# Some lengthy LaTeX.
# grep -E '^[a-zA-Z]+$' /usr/share/dict/words | sed 200q | pr --page-width=76 --column=5 --omit-header
latex_paragraph='
A              Acrux        Aegean           Ahmad          Albany
AOL            Actaeon        Aelfric        Ahmadabad      Albee
Aachen         Acton        Aeneas           Ahmed          Alberio
Aaliyah        Acts         Aeneid           Ahriman        Albert
Aaron          Acuff        Aeolus           Aida           Alberta
Abbas          Ada          Aeroflot         Aiken          Alberto
Abbasid        Adam         Aeschylus        Aileen         Albigensian
Abbott         Adams        Aesculapius    Aimee     Albion
Abby           Adan         Aesop            Ainu           Albireo
Abdul          Adana        Afghan           Airedale       Albuquerque
Abe            Adar         Afghanistan    Airedales        Alcatraz
Abel           Addams       Afghans          Aisha          Alcestis
Abelard        Adderley       Africa         Ajax           Alcibiades
Abelson        Addie        African          Akbar          Alcmena
Aberdeen       Addison        Africans       Akhmatova      Alcoa
Abernathy      Adela        Afrikaans        Akihito        Alcott
Abidjan        Adelaide       Afrikaner      Akita          Alcuin
Abigail        Adele        Afrikaners     Akkad     Alcyone
Abilene        Adeline        Afro           Akron          Aldan
Abner          Aden         Afrocentrism   Al        Aldebaran
Abraham        Adenauer       Afros          Ala     Alden
Abram          Adhara       Ag       Alabama        Alderamin
Abrams         Adidas       Agamemnon        Alabaman       Aldo
Absalom        Adirondack     Agassi         Alabamans      Aldrin
Abuja          Adirondacks    Agassiz        Alabamian      Alec
Abyssinia      Adkins       Agatha           Alabamians     Aleichem
Abyssinian     Adler        Aggie            Aladdin        Alejandra
Ac             Adolf        Aglaia           Alamo          Alejandro
Acadia         Adolfo       Agnes            Alamogordo     Alembert
Acapulco       Adolph       Agnew            Alan           Aleppo
Accra          Adonis       Agni             Alana          Aleut
Acevedo        Adonises       Agra           Alar           Aleutian
Achaean        Adrian       Agricola         Alaric         Alex
Achebe         Adriana        Agrippa        Alaska         Alexander
Achernar       Adriatic       Agrippina      Alaskan        Alexandra
Acheson        Adrienne       Aguilar        Alaskans       Alexandria
Achilles       Advent       Aguinaldo        Alba           Alexei
Aconcagua      Adventist      Aguirre        Albania        Alexis
Acosta         Advents        Agustin        Albanian       Alfonso
Acropolis      Advil        Ahab             Albanians      Alfonzo
'


# Turn on shell traces when VERBOSE is set.
if test -n "$VERBOSE"; then
  set -x
else
  :
fi
pwd
