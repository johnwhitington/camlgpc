DESTDIR=/
PREFIX=/usr/local

.PHONY: all clean install

all :
	dune build @runtest @all

clean ::
	dune clean

install : all
	dune install --destdir='$(DESTDIR)' --prefix='$(PREFIX)'
