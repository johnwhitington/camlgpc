MODS = clip

SOURCES = gpc.h gpc.c gpcml.c clip.ml clip.mli

RESULT = camlgpc

LIBINSTALL_FILES = camlgpc.cma libcamlgpc_stubs.a clip.mli clip.cmi clip.cmt clip.cmti dllcamlgc_stubs.*

OCAMLNCFLAGS = -g
OCAMLBCFLAGS = -g
CAMLLDFLAGS = -g

TARGETS = byte-code-library htdoc

ifneq ($(shell ocamlopt -version),)
  TARGETS += native-code-library
  LIBINSTALL_FILES += camlgpc.a camlgpc.cmxa clip.cmx
endif

all : $(TARGETS)

clean ::
	rm -rf doc

install : libinstall

-include OCamlMakefile
