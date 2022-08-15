GPLC = gplc
#CFLAGS='-Wall -g'
CFLAGS=-O

EXECUTABLE=main
BUILDDIR=build

all: dir $(EXECUTABLE)

dir:
	cmd /c if not exist "$(BUILDDIR)" mkdir "$(BUILDDIR)"

$(EXECUTABLE): main.pl main.c
	$(GPLC) -C '$(CFLAGS)' main.pl main.c -o "$(BUILDDIR)/$(EXECUTABLE)"

clean:
	rm -f $(BUILDDIR)/$(EXECUTABLE) *.exe



