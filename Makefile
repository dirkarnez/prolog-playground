GPLC = gplc
#CFLAGS='-Wall -g'
CFLAGS=-O

EXECUTABLE=main
BUILDDIR=build

all: dir $(EXECUTABLE)

dir:
	cmd /c if not exist "$(BUILDDIR)" mkdir "$(BUILDDIR)"

$(EXECUTABLE): main.pl main.c
	$(GPLC) -C '$(CFLAGS)' main.pl main.c --object

$(SHARED): main.pl main.C
	
# -o "$(BUILDDIR)/$(EXECUTABLE)"
gcc -shared -fPIC -o libmyprolog.so my_prolog_interface.c -lgprolog 
clean:
	rm -f $(BUILDDIR)/$(EXECUTABLE) *.exe



