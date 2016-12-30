MODS = clip

SOURCES = gpc.h gpc.c gpcml.c $(foreach x,$(MODS),$(x).ml $(x).mli)

RESULT = camlgpc

LIBINSTALL_FILES = camlgpc.a camlgpc.cma camlgpc.cmxa libcamlgpc_stubs.a \
$(foreach x,$(MODS),$x.mli) $(foreach x,$(MODS),$x.cmi) $(foreach x,$(MODS),$x.cmx) \
-optional dllcamlgpc_stubs.*

OCAMLNCFLAGS = -g
OCAMLBCFLAGS = -g
CAMLLDFLAGS = -g

all : native-code-library byte-code-library htdoc

install : libinstall

# Predefined generic makefile
-include OCamlMakefile

