# File : Makefile.PL
use ExtUtils::MakeMaker;
WriteMakefile(
        'NAME'    => 'Texinfo',                  # Name of package
        'LIBS'    => ['-L../../C/.libs -ltexinfo-main -ltexinfo',
                      '-L/usr/local/lib/texi2any/ -ltexinfo-main -ltexinfo'],
        'C'  => ['perl_texinfo_wrap.c'],
        # note that this fails for the developpement version with letters
        # in the end (only a leading v is possible), like 7.2dev
        #'VERSION_FROM' => '../../../tta/perl/Texinfo/Common.pm',
        'VERSION' => '7.2',
        'OBJECT' =>'$(O_FILES)',
        'INC' => '-I. -I.. -I../../C/main -I../../C/parsetexi -I../../C/convert -DDATADIR=\\"/usr/share/local/\\"',
        test => {TESTS => 't/*.t'},
);
