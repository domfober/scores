
GMN 	:= Ganglat.gmn Vals.gmn
OUTGMN 	:= $(GMN:%.gmn=%.tab.gmn)

PDF		:= $(OUTGMN:%.gmn=%.pdf) $(OUTTXT:%.gmn=%.pdf) 

all : $(OUTGMN) $(OUTTXT)

pdf : $(PDF)

clean: 
	rm -f $(OUTGMN) $(OUTTXT) $(PDF)
	

#########################################
# rule to convert from txt to gmn
%.gmn: %.txt
	../bin/tab2gmn $< > $@ || (rm $@; false)

#########################################
# rule to convert from gmn to gmn with tablature
%.tab.gmn: %.gmn
	../bin/gmn2tab $< > $@ || (rm $@; false)


#########################################
# rule to convert from gmn to pdf
%.pdf: %.gmn
	guido2image -f $< -o $@
