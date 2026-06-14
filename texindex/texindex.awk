# texindex.awk
#
# Copyright 2014-2026 Free Software Foundation, Inc.
# 
# This file is part of GNU Texinfo.
# 
# Texinfo is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 3 of the License, or
# (at your option) any later version.
# 
# Texinfo is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with this program; if not, see <https://www.gnu.org/licenses/>.


########################################################################
#
#  Library and helper functions
#
########################################################################

# Handle data file transitions
# This leads beginfile to be called at the beginning of every file
# and endfile at the end of every file.
# See Info node "(gawk)Join Function" for an explanation of how this function
# works.

FNR == 1 {
	if (_filename_ != "")
		endfile(_filename_)
	_filename_ = FILENAME
	beginfile(FILENAME)
}

END { endfile(_filename_) }

# Join an array of characters back into a string
# See Info node "(gawk)Join Function" for an explanation of how this function
# works.
function join(array, start, end, sep,    result, i)
{
	if (sep == "")
		sep = " "
	else if (sep == SUBSEP) # magic value
		sep = ""
	result = array[start]
	for (i = start + 1; i <= end; i++)
		result = result sep array[i]
	return result
}

# quicksort --- C.A.R. Hoare's quick sort algorithm.  See Wikipedia
#               or almost any algorithms or computer science text
# Adapted from K&R-II, page 110

# Called as: quicksort(DATA, 1, COUNT, "string")

# The first argument is the list to be sorted.
# The fourth argument is the type of comparison to be used:
#   * "string" - if data is an array of strings
#   * "index" - if data is an array of index entries
#
function quicksort(data, left, right, compare, # parameters
                   i, last, use_index, lt)     # locals
{
	if (left >= right)  # do nothing if array contains fewer
		return          # than two elements

	# We set a Boolean (numeric) variable to indicate what kind of
	# comparison to do, avoiding repeating the string
	# comparison whose result won't change upon each iteration.
	use_index = (compare == "index")

	quicksort_swap(data, left, int((left + right) / 2))
	last = left
	for (i = left + 1; i <= right; i++) {
		lt = (use_index \
				? index_compare(data, i, left) \
				: string_compare(data[i], data[left]) < 0)
		if (lt)
			quicksort_swap(data, ++last, i)
	}
	quicksort_swap(data, left, last)
	quicksort(data, left, last - 1, compare)
	quicksort(data, last + 1, right, compare)
}

# quicksort_swap --- quicksort helper function, could be inline
#
function quicksort_swap(data, i, j, temp)
{
	temp = data[i]
	data[i] = data[j]
	data[j] = temp
}

# Clears out an array.
function del_array(a)
{
	# Portable and faster than
	#   for (i in a)
	#     delete a[i]
	split("", a)
}

# check_split_null - This function determines if (in the awk running
# this program) the built-in 'split()' function will split apart a string
# into its individual characters, or if we have to do it manually.
#
function check_split_null(    n, a)
{
	n = split("abcde", a, "")
	# If this successed, the return value from split() will be the
	# number of elements in the array, and it will be more than one.
	Can_split_null = (n == 5)
}

# char_split - splits a string into separate characters, letting awk do
# the work if possible.  If not, each character is extracted manually
# using a loop and substr().
# 
function char_split(string, array,    n, i)
{
	if (Can_split_null)
		return split(string, array, "")

	# do it the hard way
	del_array(array)
	n = length(string)
	for (i = 1; i <= n; i++)
		array[i] = substr(string, i, 1)

	return n
}

# The fatal() function prints a printf-formatted message to
# standard error and then exits badly.
# For maximal portability, it opens a pipeline to cat,
# redirected to standard error; not all systems have a /dev/stderr
# file, and not all versions of awk recognize that name
# internally. (Thus, we can't use 'print @dots{} > "/dev/stderr"'.)
#
function fatal(format, arg1, arg2, arg3, arg4, arg5,
				arg6, arg7, arg8, arg9, arg10, cat)
{
	cat = "cat 1>&2"	# maximal portability
	printf(format, arg1, arg2, arg3, arg4, arg5,
		  arg6, arg7, arg8, arg9, arg10) | cat
	close(cat)

	exit EXIT_FAILURE
}

# The following functions help identify what a character is; they are
# similar in nature to the various macros in the C <ctype.h> header
# file.  Since most of them return a count, the return value could be used to
# compute which character from the set was seen; this turned out not to be
# necessary in this program but might be useful in some other context.
# By using index() with lists of letters, these functions will also work
# on EBCDIC systems, should that ever be necessary.
function isupper(c)
{
	return index("ABCDEFGHIJKLMNOPQRSTUVWXYZ", c)
}

function islower(c)
{
	return index("abcdefghijklmnopqrstuvwxyz", c)
}

function isalpha(c)
{
	return islower(c) || isupper(c)
}

function isdigit(c)
{
	return index("0123456789", c)
}

# texindex.awk has to handle input where the command character may be an
# @ or a \.  When matching command strings in regular expressions, if
# the command character is a backslash, it must be doubled in order to be
# treated literally.  The make_regexp() function handles this for us; a
# % in the text of the regexp stands for the command character and is
# replaced appropriately.
#
function make_regexp(regexp,    # parameters
                     a, sep, n) # locals
{
	n = split(regexp, a, "%")
	if (Command_char == "\\")
		sep = Command_char Command_char
	else
		sep = Command_char

	return join(a, 1, n, sep)
}


# If the command character is a backslash, occurrences of backslash need
# to be doubled before the containing string can be used as a regexp.
# This function does that job
#
function escape(regexp,  # parameters
                a, n)    # locals
{
	if (Command_char != "\\")
		return regexp

	n = split(regexp, a, "\\")
	if (n == 1)
		return regexp

	return join(a, 1, n, "\\\\")
}

function min(a, b)
{
	return (a < b ? a : b)
}


########################################################################
#
#  Main entry point, option processing and setup
#
########################################################################

function usage(exit_val)
{
	printf(_"Usage: %s [OPTION]... FILE...\n", Invocation_name)
	print _"Generate a sorted index for each TeX output FILE."
	print _"Usually FILE... is specified as `foo.??' for a document `foo.texi'."
	print ""
	print _"Options:"
	print _" -h, --help             display this help and exit"
	print _" --version              display version information and exit"
	print _" --combine-equal-keys   combine entries based on sort key only"
	print _" --                     end option processing"
	print ""
	print _"Email bug reports to bug-texinfo@gnu.org,"
	print _"general questions and discussion to help-texinfo@gnu.org."
	print _"Texinfo home page: https://www.gnu.org/software/texinfo/"

	exit exit_val
}

function version()
{
	print "texindex (GNU texinfo)", Texindex_version
	print ""
	printf _"Copyright (C) %s Free Software Foundation, Inc.\n", "2026"
	print _"License GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>"
	print _"This is free software: you are free to change and redistribute it."
	print _"There is NO WARRANTY, to the extent permitted by law."

	exit EXIT_SUCCESS
}

# We use the convention that global variable and array names start with a
# capital letter.

# We use multiple arrays to store different parts of the data.  These are
# indexed by a string constructed from the data in the index entry.
# We need the following arrays:
#
# Numfields
#      How many fields (entries) in this line: one, two, or three.
#
# Initials
#      The initial for this line.
#
# Primary
#      The primary index text.  This is the real text, not the stripped
#      value appearing in the sort key.
#
# Secondary
#      The secondary index text, if present.
#
# Tertiary
#      The tertiary index text, if present.
#
# Pagedata
#      The page numbers on which identical entries occur.
#
# See_count
#      The number of "see" entries for a given index line.  Nothing
#      prevents there being multiple such:
#
#      @cindex toast @seeentry{toaster}
#      @cindex toast @seeentry{jam}
#
#      So we have to be prepared to handle such input.  The See_count
#     array counts the number of such texts as there may be.
#
# See
#      The actual texts of the @seeentry value for the line's sort key.
#      Each entry goes into See[key, 1], See[key, 2], etc., up to
#      See_count[key].
#
# Seealso_count
# Seealso
#      These serve the same purpose as See_count and See, but for
#           @seealso entries.


# We additionally set the following for each file:
#
# Index - array of index entry lookup keys, indexed by integers starting at 1.
#
# Entries - number of entries in the Index array
#
# Allkeys - array indexed by index lookup key.  Used to quickly detect duplicates.
#
# Subkeys - array containing parts of a sort key, indexed as Subkeys[KEY, I]

BEGIN {
	TRUE = 1
	FALSE = 0
	EXIT_SUCCESS = 0
	EXIT_FAILURE = 1

	Texindex_version = "@VERSION@"

	# --combine-equal-keys setting
	CombineEqualKeys = FALSE

	# Per GNU standards, we sometimes hardwire the string 'texindex'
	# as the name of the program, and sometimes use the name
	# by which the program was invoked.  We'll call the latter
	# 'Invocation_name'; it's supposed to be passed in from the
	# shell wrapper.
	if (! Invocation_name) {
		# provide fallback in case it's not passed in.
		Invocation_name = "texindex"
	}
	
	check_split_null()

	# For gawk, we can arrange for various messages (e.g. in usage()
	# and version()) to be translated.  We do this by setting the text
	# domain at startup.  See Info node "(gawk)Internationalization"
	# for more information.
	#
	# On non-GNU versions of awk, this is a harmless assignment, and
	# the _"..." construct is a harmless concatenation of an unassigned
	# variable _, i.e., the empty string, with the following string
	# constant.
	#
	TEXTDOMAIN = "texinfo"

	# Argument processing.	Remove options and their arguments from
	# 'ARGV' so that they're not treated as filenames.
	for (i = 1; i < ARGC; i++) {
		if (ARGV[i] == "-h" || ARGV[i] == "--help") {
			usage(EXIT_SUCCESS)
		} else if (ARGV[i] == "--version") {
			version()
		} else if (ARGV[i] == "-k" || ARGV[i] == "--keep") {
			# do nothing, backwards compatibility
			delete ARGV[i]
		} else if (ARGV[i] == "--combine-equal-keys") {
			CombineEqualKeys = TRUE
			delete ARGV[i]
			break
		} else if (ARGV[i] == "--") {
			delete ARGV[i]
			break
		} else if (ARGV[i] ~ /^--?.+/) {
			fatal(_"%s: unrecognized option `%s'\n" \
					"Try `%s --help' for more information.\n",
					Invocation_name, ARGV[i], Invocation_name)
			# fatal() will do `exit EXIT_FAILURE'
		} else {
			break
		}
	}
}


# Called at the start of each file.  See "FNR == 1" block.
function beginfile(filename)
{
	# Standard convention for name of output file.
	Output_file = filename "s"

	# Reinitialize these for each input file
	del_array(Seen)
	del_array(Index)
	del_array(Allkeys)
	del_array(Subkeys)

	del_array(Initials)
	del_array(Numfields)
	del_array(Primary)
	del_array(Secondary)
	del_array(Tertiary)
	del_array(See)
	del_array(See_count)
	del_array(Seealso)
	del_array(Seealso_count)
	del_array(Pagedata)

	del_array(Printed)

	Entries = 0
	Do_initials = FALSE
	Prev_initial = ""

	# When 'beginfile' is called, the first record has already
	# been read, so it's possible to perform the checks for a Texinfo
	# index file.
	Command_char = substr($0, 1, 1)
	if ((Command_char != "\\" && Command_char != "@") \
		|| substr($0, 2, 5) != "entry")
		fatal(_"%s is not a Texinfo index file\n", filename)

	# The characters that must be preceded by the command character
	# inside the first key. This includes the command character itself.
	Special_chars = "{}" Command_char

	# These variables are regular expressions that match the
	# corresponding TeX control sequences.  They're initialized
	# once for each input file, since the command character
	# might be different between files.
	Seeentry_re = make_regexp("%seeentry")
	Seealso_re = make_regexp("%seealso")
	Subentry_re = make_regexp(" *%subentry +")
}

# Called at the start of end of each file.  (See "FNR == 1" block.)
# Sort the entries and write them out.  Additionally, if we are printing
# the initial, handle that.
function endfile(filename,                 # parameters
                 i, prev_initial, initial) # locals
{
	# sort the entries
	quicksort(Index, 1, Entries, "index")

	prev_initial = ""
	for (i = 1; i <= Entries; i++) {
		# deal with initial
		initial = Initials[Index[i]]
		if (initial != prev_initial) {
			prev_initial = initial
			print_initial(initial)
		}

		write_index_entry(Index[i])
	}
	close(Output_file)
}


########################################################################
#
#  Record processing
#
########################################################################

# This block is run on every line of the input file.  Build the data
# structures that will be used in sorting and printing.
{
	# Remove duplicates, which can happen
	if ($0 in Seen)
		next
	Seen[$0] = TRUE

	# Remove leading \entry or @entry
	# We use substr here to avoid possible hassles with leading
	# backslashes in sub().
	$0 = substr($0, 7)

	initial = extract_initial($0)

	# Pull out the data of interest from the multiple sets of braces.
	numfields = field_split($0, fields, "{", "}", Command_char)
	if (numfields < 3 || numfields > 5)
		fatal(_"%s:%d: Bad entry; expected 3 to 5 fields, not %d\n",
			FILENAME, FNR, numfields)
	sortkey = fields[1]
	pagenum = fields[2]
	primary_text = fields[3]
	secondary_text = (numfields > 3 ? fields[4] : "")
	tertiary_text = (numfields > 4 ? fields[5] : "")

	if (! CombineEqualKeys) {
		# Combine entries if they have the same sort key
		# and the same entry text.
		Sep = "\001"
		key = sortkey Sep primary_text Sep secondary_text \
		              Sep tertiary_text
	} else {
		# Combine entries if they have the same sort key
		key = sortkey
	}

	# The Allkeys associative array lets us easily detect repeated
	# index entries which should be combined.  Note that it is more
	# efficient to eliminate duplicates before sorting the array of
	# index entries, as this makes the array smaller.
	if (! (key in Allkeys)) {
		# first time we've seen this full line

		# Store the key in the Index array the first time it
		# is seen; this array is sorted later on.  Its indices
		# are just incremented integers, stored in the global
		# Entries variable.
		Index[++Entries] = key
		Allkeys[key] = 1

		# Store data for this line in our global arrays
		Initials[key] = initial
		Numfields[key] = numfields - 2	# don't count sortkey, page number
		Primary[key] = primary_text
		if (secondary_text)
			Secondary[key] = secondary_text
		if (tertiary_text)
			Tertiary[key] = tertiary_text
	
		# Split out and store the subparts of the sort key, using
		# "@subentry" as a separator.
		n = split(sortkey, subparts, Subentry_re)
		for (i = 1; i <= n; i++)
			Subkeys[key, i] = subparts[i]
	
		if (pagenum ~ Seeentry_re) {
			See_count[key]++
			See[key, See_count[key]] = pagenum
		} else if (pagenum ~ Seealso_re) {
			Seealso_count[key]++
			Seealso[key, Seealso_count[key]] = pagenum
		} else
			Pagedata[key] = pagenum
	} else {
		# We've seen this key before:
		# Add to see or see also, or else add to list of pages.
		# In the latter case, make sure we've not seen this
		# page number before.  (Shouldn't happen based on the
		# earlier removal of exact duplicates, but we could have
		# an identical key with different formatting of actual text.

		# For page numbers, we merely append the page number field
		# from the input, preceded by a comma and space, unless
		# that page number was already the last that's been stored.
		# (We're assuming the page numbers don't jump around,
		# which, in fact, they don't, so we don't need a more
		# complex approach.)  This also handles any page numbers
		# that appear as roman numerals (from the so-called front
		# matter), should there be such.
	
		if (pagenum ~ Seeentry_re) {
			See_count[key]++
			See[key, See_count[key]] = pagenum
		} else if (pagenum ~ Seealso_re) {
			Seealso_count[key]++
			Seealso[key, Seealso_count[key]] = pagenum
		} else if (! (key in Pagedata)) {
			Pagedata[key] = pagenum
		} else if (Pagedata[key] != pagenum \
					&& Pagedata[key] !~  escape(", " pagenum "$")) {
			Pagedata[key] = Pagedata[key] ", " pagenum
		}
	}

	# Determine if more than one initial occurs in the input.
	# As soon as it's true, we don't need to do further
	# checking on subsequent lines.
	if (! Do_initials) {
		if (Prev_initial == "")
			Prev_initial = initial
		else if (initial != Prev_initial)
			Do_initials = TRUE
	}
}

# extract_initial - extract initial character from key.
#
# The very first character of the sort key can be an open brace.
# If so, we extract the component of the sort key surrounded by balanced
# braces.  We don't account for \{ or \} inside this component, as
# texinfo.tex isn't expected to produce such output.
#
# An example can be seen in what older versions of texinfo.tex generated
# if you needed to index a real backslash, namely an input line something
# like the following:
#
#   \entry{{\tt \indexbackslash } (backslash)}{14}{\code {{\tt dots{}}}}
#
# Earlier versions of texindex took the first non-brace character as the
# initial, in this example \, and output it as \\; this was not, however,
# a control sequence recognized by the older versions of texinfo.tex.

function extract_initial(key,                             # parameters
                         initial, nextchar, i, l, kchars) # locals
{
	l = char_split(key, kchars)
	if (l >= 3 && kchars[2] == "{") {
		bracecount = 1
		i = 3
		while (bracecount > 0 && i <= l) {
			if (kchars[i] == "{")
				bracecount++
			else if (kchars[i] == "}")
				bracecount--
			i++
		}
		if (i > l)
			fatal(_"%s:%d: Bad key %s in record\n", FILENAME, FNR, key)
		initial = substr(key, 2, i - 2)
	} else if (kchars[2] == Command_char) {
		nextchar = kchars[3]
		if (initial == Command_char && index("{}", nextchar) > 0)
			initial = substr(key, 2, 3)
		else {
			initial = toupper(nextchar)
		}
	} else {
		initial = toupper(kchars[2])
	}

	return initial
}

# field_split - break apart the record.
#
# RECORD looks something like: {POSIX awk}{5}{POSIX @command {awk}}.
#
# The first field may have instances of @{ and/or @} (or \{ and/or \})
# so the braces aren't necessarily exactly balanced.
#
# The field_split() function uses fairly straightforward ``count
# the delimiters'' code.  The loop starts at two, since we know the first
# character is an open brace.  The main things to handle are the command
# character and the final closing brace.
#
function field_split( \
	record, fields, start, end, com_ch,         # parameters
	chars, numchars, out, delim_count, i, j, k) # locals
{
	del_array(fields)

	numchars = char_split(record, chars)
	j = 1  # index into fields
	k = 1  # index into out
	delim_count = 1
	for (i = 2; i <= numchars; i++) {
		if (chars[i] == com_ch) {
			# If the command character is doubled, we pass
			# that on through, so that TeX will process
			# it correctly.
			#
			# If the character following the command
			# character is an open brace or close brace, we
			# pull it in.  Otherwise, the command character
			# is left alone as part of the field.
			if (chars[i+1] == Command_char) {	# input was @@
				out[k++] = chars[i+1]
				out[k++] = chars[i+1]
				i++
			} else if (index(Special_chars, chars[i+1]) != 0) {
				out[k++] = chars[i+1]
				i++
			} else
				out[k++] = chars[i]
		} else if (chars[i] == start) {
			delim_count++
			out[k++] = chars[i]
		} else if (chars[i] == end) {
			delim_count--

			if (delim_count == 0) {
				# Upon seeing the final closing brace, we
				# put all the characters back together into
				# a string using 'join()'.  We then reset
				# the 'out' array for the next time through.
				# If the next character isn't an open brace,
				# then the line is bad and we print a fatal
				# error.  Otherwise, we reset 'delim_count'
				# to one.
				fields[j++] = join(out, 1, k-1, SUBSEP)
				del_array(out)  # reset for next time through
				k = 1
				
				i++
				if (i <= numchars && chars[i] != start)
					fatal(_"%s:%d: Bad entry; expected %s at column %d\n",
						FILENAME, FNR, start, i)
				delim_count = 1
			} else
				out[k++] = chars[i]
		} else
			out[k++] = chars[i]
	}

	return j - 1  # num fields
}

# Print an initial.  Precede special characters with the command
# character.
function print_initial(initial)
{
	if (! Do_initials)
		return

	if (index(Special_chars, initial) != 0)
		initial = Command_char initial
	printf("%cinitial {%s}\n",
		Command_char, initial) > Output_file
}

# The index_compare() function supplies the comparison for index entries.
#
# The index_compare() function has to take into account
# that we are comparing multilevel index entries. We can't just
# compare the full sort key, since the @subentry throws off
# the comparison; we want to compare based only on the key texts
# themselves.
#
# To that end, the comparison happens on two levels. At the higher
# level, we compare the subkeys; if the first subkeys are equal
# then we differentiate between them based on the second subkey.
# If, in turn, the second ones are equal, we differentiate based
# on the third one.
#
# By definition, an index entry with only one subkey sorts to be before
# an entry with two, and one with two comes before one with three.
#
# We make an effort here to call the comparison function only as
# much as necessary, since it's a relatively expensive operation.
#
function index_compare(data, l, r,                       # parameters
                       left, right, nfields, cmp)        # locals
{
	left = data[l]
	right = data[r]

	left_fields = Numfields[left]
	right_fields = Numfields[right]

	nfields = min(left_fields, right_fields)

	# At least one field, always check the first subkey
	cmp = string_compare(Subkeys[left, 1], Subkeys[right, 1])
	if (cmp != 0)
		return cmp < 0

	# Compare the index text if the sort keys are identical
	if (!CombineEqualKeys) {
		cmp = string_compare(Primary[left], Primary[right])
		if (cmp != 0)
			return cmp < 0
	}

	# cmp == 0: one side has 1 field, other side has 1 to 3 fields
	if (nfields == 1)
		return left_fields < right_fields

	# At least two fields, check second subkey
	cmp = string_compare(Subkeys[left, 2], Subkeys[right, 2])
	if (cmp != 0)
		return cmp < 0

	if (!CombineEqualKeys) {
		cmp = string_compare(Secondary[left], Secondary[right])
		if (cmp != 0)
			return cmp < 0
	}

	# One side has 2 fields, the other has 2 to 3 fields
	if (nfields == 2)
		return left_fields < right_fields

	# Three fields
	cmp = string_compare(Subkeys[left, 3], Subkeys[right, 3])
	if (cmp != 0)
		return cmp < 0

	if (!CombineEqualKeys) {
		cmp = string_compare(Tertiary[left], Tertiary[right])
		if (cmp != 0)
			return cmp < 0
	}
}

# Initialize Ordval array for use by string_compare.
# This array maps characters to numeric values for comparison, according
# to the following rules:
#   * All symbols first.
#   * Followed by digits.
#   * Followed by letters.  Lowercase precedes uppercase and both ``a'' and
#     ``A'' precede anything starting with ``b'' or ``B'' (etc.).
#
# Most characters map to their ASCII code.  We add 512 to the value of each
# of the digits; this causes them to come after all symbols.
# The letters are handled a little differently. We set things up so that
# lowercase letters come before uppercase ones, but both ``a'' and
# ``A'' come before ``b'', and so on.  This then lets us use
# a simple subtraction in the comparison to determine if two letters are
# less than, equal to, or greater than each other. In any case, the mapping
# also ensures that letters come after digits.
# Ordval_ignorecase has the same ordering, except that lowercase and uppercase
# are not distinguished.
# (This code should also work for EBCDIC systems, although TeX does
# everything in ASCII, so it's not likely to make a difference.)
BEGIN {
	for (i = 0; i < 256; i++) {
		c = sprintf("%c", i)
		Ordval[c] = i  # map character to value

		if (isdigit(c))
			Ordval[c] += 512
	}

	# Set things up such that 'a' < 'A' < 'b' < 'B' < ...
	i = Ordval["a"]
	j = Ordval["z"]
	newval = i + 512
	for (; i <= j; i++) {
		c = sprintf("%c", i)

		if (islower(c)) {
			Ordval[c] = newval++
			Ordval[toupper(c)] = newval++
		}
	}

	# Set up case-insensitive sorting order.
	# In this order, multibyte UTF-8 sequences like é sort after
	# ASCII letters.
	for (i = 0; i < 256; i++) {
		c = sprintf("%c", i)
		Ordval_ignorecase[c] = i  # map character to value
		# Upper case comes before lower case in the ASCII order
		# so value for upper case is already set.
		if (islower(c))
			Ordval_ignorecase[c] = Ordval_ignorecase[toupper(c)]
		else if (isdigit(c))
			Ordval_ignorecase[c] += 512
	}
}

# Returns a three-way value a la the C strcmp() function: less than zero
# if the first string is less than the second, zero if they're equal,
# or greater than zero if the first string is greater than the second one.
#
function string_compare_internal(left, right, order,              # parameters
                                 len_l, len_r, len, chars_l, chars_r, # locals
                                 order_l, order_r)
{
	len_l = length(left)
	len_r = length(right)
	len = (len_l < len_r ? len_l : len_r)

	char_split(left, chars_l)
	char_split(right, chars_r)

	for (i = 1; i <= len; i++) {
		order_l =  order[chars_l[i]];
		order_r =  order[chars_r[i]];

		if (order_l != 0 && order_r != 0) {
			cmp = order_l - order_r
		} else {
			# note that there is an incompatibility here between
			# gawk and other implementations of awk (e.g. mawk).
			# gawk may produce characters outside of the ASCII
			# range which are not defined in the order array.  in
			# that case just compare the characters as strings.
			if (chars_l[i] < chars_r[i])
				cmp = -1
			else if (chars_l[i] > chars_r[i])
				cmp = 1
			else
				cmp = 0
		}
		if (cmp != 0)
			return cmp

		# equal, keep going
	}

	# equal so far, shorter one wins
	if (len_l < len_r)
		return -1

	if (len_l > len_r)
		return 1

	return 0
}

function string_compare(left, right,  # parameters
                        result)       # locals
{
	result = string_compare_internal(left, right, Ordval_ignorecase)
	if (result == 0)
		result = string_compare_internal(left, right, Ordval)
	return result
}

# Print a single entry
function print_entry(key, entry_command, entry_text, # parameters
                     count, see_entries, i)          # locals
{
	if ((key, 1) in See)		# at least one ``see''
		print_see_entry(key, entry_command, entry_text,
						See_count, See)

	if (key in Pagedata) {		# at least one page number
		# When there exist both regular index entries for a topic and
		# also a ``see also'' entry, we place the ``see also'' text
		# after all the page numbers, so that there is only one printed
		# index entry for the topic.
		# This ends up being involved, since potentially there could be
		# multiple ``see also'' entries (even though this is bad form).
		if ((key, 1) in Seealso) {
			# Although it's bad practice, there could be multiple
			# ``see also'' entries for a given key. In that case,
			# we must sort them before using them.
			count = Seealso_count[key]
			
			# Copy the entries to a separate array
			for (i = 1; i <= count; i++)
				see_entries[i] = Seealso[key, i]
			
			# sort them
			quicksort(see_entries, 1, count, "string")

			# now add them to the page data
			for (i = 1; i <= count; i++)
				Pagedata[key] = Pagedata[key] ", " see_entries[i]
		}

		printf("%c%s{%s}{%s}\n",
			Command_char, entry_command,
			entry_text[key], Pagedata[key]) > Output_file

		# Note that we only take note of having printed the
		# key for lines with page numbers. Otherwise, a ``see''
		# entry followed by a regular multilevel entry is not
		# handled correctly.
		Printed[key] = True		# mark this key as printed
	} else if ((key, 1) in Seealso) {	# at least one ``see also''
		# Only ``see also'' entry, print it
		count = Seealso_count[key]
		
		# Copy the entries to a separate array
		for (i = 1; i <= count; i++)
			see_entries[i] = Seealso[key, i]
		
		# sort them
		quicksort(see_entries, 1, count, "string")

		printf("%c%s{%s}{",
			Command_char, entry_command,
			entry_text[key]) > Output_file

		# now add them to the page data
		for (i = 1; i <= count; i++) {
			printf("%s", see_entries[i]) > Output_file
			if (i != count)
				printf(", ") > Output_file
		}
		printf("}\n") > Output_file
	}
}

# Print a ``see'' entry.  Potentially messy if there are more than
# one. (A good index won't have more than one, but nothing prevents there
# being multiple such entries, so we have to handle them.)
function print_see_entry(key, entry_command, entry_text, # parameters
                         count_array, see_text_array,    # parameters
                         i, count, see_entries)          # locals
{
	count = count_array[key]
	if (count == 1) {	# the easy case
		printf("%c%s{%s, %s}{}\n",
			Command_char, entry_command,
			entry_text[key], see_text_array[key, 1]) > Output_file

		return
	}

	# Otherwise, we need to sort the entries and then print them
	# Copy the entries to a separate array
	for (i = 1; i <= count; i++)
		see_entries[i] = see_text_array[key, i]

	# sort them
	quicksort(see_entries, 1, count, "string")

	# now print them
	for (i = 1; i <= count; i++)
		printf("%c%s{%s, %s}{}\n",
			Command_char, entry_command,
			entry_text[key], see_entries[i]) > Output_file
}

function maybe_print_primary_entry(key,		subkey)
{
	# Print primary entry if necessary
	# The subparts represent the key for those entries;
	# each will have an index in Printed if
	# we already printed such an entry.
	if (CombineEqualKeys)
		subkey = Subkeys[key, 1]
	else
		subkey = Subkeys[key, 1] Sep Primary[key] Sep Sep

	if (! (subkey in Printed)) {
		printf("%centry{%s,}{}\n",
			Command_char, Primary[key]) > Output_file
		Printed[subkey] = True
	}
}

# Print secondary entry if necessary
function maybe_print_secondary_entry(key,		subkey)
{
	# We have to check that the combination of primary
	# and secondary subkeys have been printed and
	# use that combination as the index into Printed.
	subkey = (Subkeys[key, 1] Command_char "subentry " Subkeys[key, 2])
	if (!CombineEqualKeys)
		subkey = subkey Sep Primary[key] Sep Secondary[key] Sep

	if (! (subkey in Printed)) {
		printf("%csecondary{%s,}{}\n",
			Command_char, Secondary[key]) > Output_file
		Printed[subkey] = True
	}
}

# Print index entry with key KEY
#
# In some cases, print primary and/or secondary entries first.
# Consider the three-level case, for an entry like:
#
#     @cindex coffee makers @subentry electric @subentry blue
#
# There may not have been separate preceding entries like ‘@cindex coffee
# makers’ or ‘@cindex coffee makers @subentry electric’.  Thus, we have to
# generate the preceding ‘@entry’ and ‘@secondary’ lines before generating
# the final ‘@tertiary’ line.
#
function write_index_entry(key)
{
	if (Numfields[key] == 1) {
		print_entry(key, "entry", Primary)
	} else if (Numfields[key] == 2) {
		maybe_print_primary_entry(key)
		print_entry(key, "secondary", Secondary)
	} else if (Numfields[key] == 3) {
		maybe_print_primary_entry(key)
		maybe_print_secondary_entry(key)
		print_entry(key, "tertiary", Tertiary)
	}
}
