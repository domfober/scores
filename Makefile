
LISTE  := scripts/liste.txt
OUTDIR := Recueils
DOCS   := docs
PDFDIR := pdf
SRCDIR := $(DOCS)/$(PDFDIR)
DIRS   := $(shell find $(SRCDIR) -type d -name "[A-Z]*" | sed -e 's/docs\/pdf\///' )
SCRIPTS := scripts
SHAREDAWK := -v DIR=$(PDFDIR)

OUT := $(DIRS:%=$(OUTDIR)/%.pdf)

GENRES := $(shell cat $(LISTE) | cut -d: -f 4 | grep -v trad | sort -u)
ORIGIN := $(shell cat $(LISTE) | cut -d: -f 6 | sort -u)
GENRFILE :=  $(DOCS)/genre.html
ORIGFILE :=  $(DOCS)/origin.html
CHANFILE :=  $(DOCS)/chansons.html

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

recueils : $(OUT)


test:
	echo $(OUT)

$(OUTDIR)/%.pdf: 
	gs -q -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile=$@ $(SRCDIR)/$(*F)/*.pdf

clean:
	rm -f $(OUT)

genre: $(GENRFILE)

$(GENRFILE): $(LISTE) $(SCRIPTS)/sections.awk $(SCRIPTS)/index.awk 
	@echo $(GENRES) | sed -e 's/  */\n/g' | awk -v TITLE="Partitions par genres" -f $(SCRIPTS)/sections.awk > $(GENRFILE)
	$(foreach var,$(GENRES), awk -F :  '$$4 == "$(var)"' $(LISTE) | awk  -v ID="$(var)" -v TITLE="<h2 id=ID>$(var)</h2>" -v HEADER=0 $(SHAREDAWK) -f $(SCRIPTS)/index.awk >> $(GENRFILE); )
	@echo "<a href=#top>Top</a>" >> $(GENRFILE)
	@echo "</body>\n</html>" >> $(GENRFILE)

origin: $(ORIGFILE)

$(ORIGFILE):  $(LISTE) $(SCRIPTS)/sections.awk $(SCRIPTS)/index.awk
	@echo $(ORIGIN) | sed -e 's/  */\n/g' | awk -v TITLE="Partitions par origine" -f $(SCRIPTS)/sections.awk > $(ORIGFILE)
	$(foreach var,$(ORIGIN), awk -F :  '$$6 == "$(var)"' $(LISTE) | awk  -v ID="$(var)" -v TITLE="<h2 id=ID>$(var)</h2>" -v HEADER=0 $(SHAREDAWK) -f $(SCRIPTS)/index.awk >> $(ORIGFILE); )
	@echo "<a href=#top>Top</a>" >> $(ORIGFILE)
	@echo "</body>\n</html>" >> $(ORIGFILE)

chansons: $(CHANFILE)

$(CHANFILE):  $(LISTE) $(SCRIPTS)/index.awk
	awk -F :  '$$7 == "chansons"' $(LISTE) | awk  -v TITLE="<h1>Chansons</h1>" -v HEADER=1 $(SHAREDAWK) -f $(SCRIPTS)/index.awk > $(CHANFILE)

index: $(DOCS)/all.html

$(DOCS)/all.html:  $(LISTE) $(SCRIPTS)/index.awk
	cat $(LISTE) | sort -u | awk  -v TITLE="<h1>Index des partitions</h1>" -v HEADER=1 $(SHAREDAWK) -f $(SCRIPTS)/index.awk  > $(DOCS)/all.html

