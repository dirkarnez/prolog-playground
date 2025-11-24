GPLC = gplc
# CFLAGS='-Wall -g'
CFLAGS=-O

EXECUTABLE=main
BUILDDIR=build

# all: dir $(EXECUTABLE)
all: dir $(EXECUTABLE) main.o main.dll

dir:
	cmd /c if not exist "$(BUILDDIR)" mkdir "$(BUILDDIR)"

$(EXECUTABLE): main.pl main.c
	$(GPLC) -C '$(CFLAGS)' main.pl main.c -o "$(BUILDDIR)/$(EXECUTABLE)"

main.o: main.pl main.c
	$(GPLC) --verbose -C '-fPIC' main.pl main.c --object

# libengine_pl.a libbips_pl.a liblinedit.a libengine_fd.a libbips_fd.a
main.dll: main.o
	gcc -shared -fPIC -o main.dll main.o -lws2_32 -l:libbips_fd.a -l:liblinedit.a -l:libengine_fd.a -l:libbips_pl.a -l:libengine_pl.a  -LC:\Users\19081126D\Downloads\winlibs-x86_64-posix-seh-gcc-11.2.0-mingw-w64-9.0.0-r1\mingw64\x86_64-w64-mingw32\lib -LC:\Users\19081126D\Downloads\GNU-Prolog\lib

# $(SHARED): main.pl main.C
	
# -o "$(BUILDDIR)/$(EXECUTABLE)"
# 
clean:
	rm -f $(BUILDDIR)/$(EXECUTABLE) *.exe



