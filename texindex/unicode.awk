BEGIN {
	printf("0x10FFFF is %d\n", 0x10FFFF)
	printf("0xFFFD is %d\n", 0xFFFD)
	printf("0xFFFD is '%c'\n", 0xFFFD)
	invalid = sprintf("%c\n", 0xFFFD)

	count = 0
	for (i = 0; i <= 0x10FFFF; i++) {
		char = sprintf("%c", i)
		if (isvalid(char))
			count++
	}

	printf("%d valid characters between 1 and %d\n", count, 0x10FFFF)
}

function isvalid(c)
{
	return c ~ /[[:alpha:][:blank:][:cntrl:][:digit:][:graph:][:lower:][:print:][:punct:][:space:][:upper:]]/
}
