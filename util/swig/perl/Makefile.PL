# File : Makefile.PL
use ExtUtils::MakeMaker;
WriteMakefile(
        'NAME'    => 'Texinfo',                  # Name of package
        'LIBS'    => ['-L../../../tta/C/.libs -ltexinfo-main -ltexinfo',
                      '-L/usr/local/lib/texi2any/ -ltexinfo-main -ltexinfo'],
        'C'  => ['perl_texinfo_wrap.c'],
        'OBJECT' =>'$(O_FILES)',
        'INC' => '-I. -I.. -I../../../tta/C/main -I../../../tta/C/parsetexi -I../../../tta/C/convert -DDATADIR=\\"/usr/share/local/\\"',
);
