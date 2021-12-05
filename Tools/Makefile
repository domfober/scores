
GMN 	:= chroma.gmn chroma-raw.gmn maj-scales.gmn min-scales.gmn
OUTGMN 	:= $(GMN:%.gmn=%.tab.gmn)

TXT 	:= rang3.txt
OUTTXT 	:= $(TXT:%.txt=%.gmn)

all : $(OUTGMN) $(OUTTXT)

chroma.tab.gmn: chroma.gmn
chroma-raw.tab.gmn: chroma-raw.gmn

rang3.gmn: rang3.txt


clean: 
	rm -f $(OUTGMN) $(OUTTXT)

test: 
	echo $(OUTGMN)
	

#########################################
# rule to convert from txt to gmn
%.gmn: %.txt
	../bin/tab2gmn $< > $@ || (rm $@; false)

#########################################
# rule to convert from gmn to gmn with tablature
%.tab.gmn: %.gmn
	../bin/gmn2tab $< > $@ || (rm $@; false)

