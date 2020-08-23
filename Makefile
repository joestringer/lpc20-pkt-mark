TITLE=lpcXX-topic
PAPER=$(TITLE).pdf
SLIDES=$(TITLE)-slides.pdf
XDG_OPEN ?= xdg-open

all: $(SLIDES)

$(SLIDES):
	rm -f $(SLIDES)
	$(MAKE) -C slides
	cp slides/slides.pdf $(SLIDES)

slides: $(SLIDES)

open-slides: $(SLIDES)
	$(XDG_OPEN) $(SLIDES)

open: open-slides

clean:
	$(MAKE) -C slides clean

.PHONY: all $(PAPER) $(SLIDES) slides open open-slides clean
