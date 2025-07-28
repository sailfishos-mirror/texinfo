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
        'TEST_REQUIRES' => {'Test::More' => 0,
                            'Data::Compare' => 0,
                           },
        'PM' => {'Texinfo.pm' => '$(INST_LIB)/Texinfo.pm'},
        'VERSION' => '7.2',
        'OBJECT' =>'$(O_FILES)',
        'INC' => '-I../../C/main -I../../C/parsetexi -I../../C/convert -DDATADIR=\\"/usr/local/share\\" -DLIBDIR=\\"/usr/local/lib\\" -DCONVERTER_CONFIG=\\"texi2any\\" -DPACKAGE_VERSION_CONFIG=\\"7.2dev\\" -DUSE_PERL_INTERPRETER',
        'test' => {TESTS => 't/*.t'},
        'LICENSE'      => 'gpl_3',
        'AUTHOR'       => 'Patrice Dumas <bug-texinfo@gnu.org>',
        'clean' => {'FILES' => ['.libs', '.deps']},
);

# for file in ./test_scripts/test_*.sh ; do $file; echo $?; done
