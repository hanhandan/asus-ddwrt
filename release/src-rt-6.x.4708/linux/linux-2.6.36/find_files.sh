LNX=.
find $LNX -path "$LNX/arch/*" ! -path "$LNX/arch/arm*" -prune -o \
-path "$LNX/Documentation*" -prune -o \
-path "$LNX/scripts*" -prune -o \
-name "*.[chxsS]" -print > cscope.files
ctags -L cscope.files
cscope -bqk

