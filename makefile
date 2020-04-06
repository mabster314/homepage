HTMLS = $(shell find src -type f -name \*.html)
SIGS = $(patsubst %.html,%.html.asc,$(HTMLS))
all: $(SIGS)
%.html.asc: %.html
	gpg --armor --detach-sign $<
