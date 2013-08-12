ELCFILES=hi2.elc

all: $(ELCFILES)

EMACS=emacs
EMACSFLAGS=--batch --quick --no-init-file

%.elc: %.el
	$(EMACS) $(EMACSFLAGS) --eval '(byte-compile-file "$<")'

clean:
	-rm -f $(ELCFILES)

.PHONY: all clean
