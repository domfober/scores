
CSV    := scripts/liste.csv
LISTE  := scripts/liste.txt
OUTDIR := Recueils
DOCS   := docs
PDFDIR := pdf
SRCDIR := $(DOCS)/$(PDFDIR)
DIRS   := $(shell find $(SRCDIR) -type d -name "[A-Z]*" | sed -e 's/docs\/pdf\///' | grep -v prive)

#PROGDIR  := Programme
#PROGLIST := $(shell cat $(PROGDIR)/liste.txt)
#PROGLIST := $(PROGLIST:%=$(PROGDIR)/%)

SCRIPTS := scripts
SHAREDAWK := -v DIR=$(PDFDIR)

OUT := $(DIRS:%=$(OUTDIR)/%.pdf)

GENRES := $(shell cat $(LISTE) | cut -d: -f 2 | grep -v trad | sort -u)
ORIGIN := $(shell cat $(LISTE) | cut -d: -f 4 | sort -u)
GENRFILE :=  $(DOCS)/genre.html
ORIGFILE :=  $(DOCS)/origin.html
CHANFILE :=  $(DOCS)/chansons.html
ALL      :=  $(DOCS)/all.html

.PHONY: Programme

help:
	@echo "Targets:"
	@echo "  - all: genère toutes les pages html"
	@echo "  - recueils: compacte les pdf en recueils dans le dossier $(OUTDIR)"
	@echo "Targets par sections:"
	@echo "  - index: genère la page d'index de toutes les partitions"
	@echo "  - genre: genère la page par genre"
	@echo "  - origin: genère la page par origine"
	@echo "  - chansons: genère la page des chansons"
	
	
all: 
	make index
	make genre
	make origin
	make chansons

#programme: Programme.pdf

#Programme.pdf : $(PROGDIR)/liste.txt $(PROGLIST)
#	gs -q -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile=$@ $(PROGLIST)

$(LISTE) : $(CSV)
	cat $< | grep -v 'Titre;Genre;' | sed -e 's/;/:/g' > $@

recueils : $(OUT)

test:
	echo $(ORIGIN)

$(OUTDIR)/%.pdf: 
	gs -q -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile=$@ $(SRCDIR)/$(*F)/*.pdf

clean:
	rm -f $(ALL) $(GENRFILE) $(ORIGFILE) $(CHANFILE)

genre: $(GENRFILE)

$(GENRFILE): $(LISTE) $(SCRIPTS)/sections.awk $(SCRIPTS)/index.awk 
	@echo $(GENRES) | sed -e 's/  */\n/g' | awk -v TITLE="Partitions par genres" -f $(SCRIPTS)/sections.awk > $(GENRFILE)
	$(foreach var,$(GENRES), awk -F :  '$$2 == "$(var)"' $(LISTE) | awk  -v ID="$(var)" -v TITLE="<h2 id=ID>$(var)</h2>" -v HEADER=0 $(SHAREDAWK) -f $(SCRIPTS)/index.awk >> $(GENRFILE); )
	@echo "<a href=#top>Top</a>" >> $(GENRFILE)
	@echo "</body>\n</html>" >> $(GENRFILE)

origin: $(ORIGFILE)

$(ORIGFILE):  $(LISTE) $(SCRIPTS)/sections.awk $(SCRIPTS)/index.awk
	@echo $(ORIGIN) | sed -e 's/  */\n/g' | awk -v TITLE="Partitions par origine" -f $(SCRIPTS)/sections.awk > $(ORIGFILE)
	$(foreach var,$(ORIGIN), awk -F :  '$$4 == "$(var)"' $(LISTE) | awk  -v ID="$(var)" -v TITLE="<h2 id=ID>$(var)</h2>" -v HEADER=0 $(SHAREDAWK) -f $(SCRIPTS)/index.awk >> $(ORIGFILE); )
	@echo "<a href=#top>Top</a>" >> $(ORIGFILE)
	@echo "</body>\n</html>" >> $(ORIGFILE)

chansons: $(CHANFILE)

$(CHANFILE):  $(LISTE) $(SCRIPTS)/index.awk
	awk -F :  '$$5 == "chansons"' $(LISTE) | awk  -v TITLE="<h1>Chansons</h1>" -v HEADER=1 $(SHAREDAWK) -f $(SCRIPTS)/index.awk > $(CHANFILE)

index: $(ALL)

$(ALL):  $(LISTE) $(SCRIPTS)/index.awk
	cat $(LISTE) | sort -u | awk  -v TITLE="<h1>Index des partitions</h1>" -v HEADER=1 $(SHAREDAWK) -f $(SCRIPTS)/index.awk  > $(ALL)

