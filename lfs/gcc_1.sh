#!/bin/bash

NEWGCC=/tools/bin/gcc
#$NEWGCC -dumpmachine

#mv -v /tools/bin/{ld,ld-old}
mv -v /tools/$($NEWGCC -dumpmachine)/bin/{ld,ld-old}
#mv -v /tools/bin/{ld-new,ld}
ln -sv /tools/bin/ld /tools/$($NEWGCC -dumpmachine)/bin/ld

#$NEWGCC -dumpspecs | sed 's@^/lib/ld-linux.so.2@/tools&@g' > `dirname $($NEWGCC -print-libgcc-file-name)`/specs


#GCC_INCLUDEDIR=`dirname $($NEWGCC -print-libgcc-file-name)`/include
#echo $GCC_INCLUDEDIR
#find $GCC_INCLUDEDIR/* -maxdepth 0 -xtype d -exec rm -rvf {} \;
#rm -v `grep -l "DO NOT EDIT THIS FILE" $GCC_INCLUDEDIR/*`

