## Customize Makefile settings for vispro
## 
## If you need to customize your Makefile, make
## changes here rather than in the main Makefile


## Module for ontology: txpo

$(IMPORTDIR)/txpo_import.owl: $(MIRRORDIR)/txpo.owl $(IMPORTDIR)/txpo_terms.txt
	if [ $(IMP) = true ]; then $(ROBOT) filter -i $< -T $(IMPORTDIR)/txpo_terms.txt --select "self ancestors" --signature false --trim true \
		--output $@.tmp.owl; fi
	if [ $(IMP) = true ]; then $(ROBOT) query -i $< --update ../sparql/preprocess-module_provo.ru \
		filter -T $(IMPORTDIR)/txpo_terms.txt --select "self annotations ontology" --signature false --trim true \
		query --update ../sparql/postprocess-module_2.ru \
		annotate --ontology-iri $(ONTBASE)/$@ $(ANNOTATE_ONTOLOGY_VERSION) \
		merge -i $@.tmp.owl \
		--output $@.tmp.owl && mv $@.tmp.owl $@; fi

## Module for ontology: iao

$(IMPORTDIR)/iao_import.owl: $(MIRRORDIR)/iao.owl $(IMPORTDIR)/iao_terms.txt
	if [ $(IMP) = true ]; then $(ROBOT) filter -i $< -T $(IMPORTDIR)/iao_terms.txt --select "self ancestors" --signature false --trim true \
		--output $@.tmp.owl; fi
	if [ $(IMP) = true ]; then $(ROBOT) query -i $< --update ../sparql/preprocess-module_provo.ru \
		filter -T $(IMPORTDIR)/iao_terms.txt --select "self annotations ontology" --signature false --trim true \
		query --update ../sparql/postprocess-module_2.ru \
		annotate --ontology-iri $(ONTBASE)/$@ $(ANNOTATE_ONTOLOGY_VERSION) \
		merge -i $@.tmp.owl \
		--output $@.tmp.owl && mv $@.tmp.owl $@; fi