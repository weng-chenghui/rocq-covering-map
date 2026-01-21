.PHONY: all build clean

all: build

build:
	@echo "Generating Makefile.coq from _CoqProject and building..."
	coq_makefile -f _CoqProject -o Makefile.coq
	$(MAKE) -f Makefile.coq

clean:
	-rm -f *.vo *.vos Makefile.coq
	@echo "Cleaned Coq artifacts"
