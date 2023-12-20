## Customize Makefile settings for vispro
## 
## If you need to customize your Makefile, make
## changes here rather than in the main Makefile

##################
#   components   #
##################

$(COMPONENTSDIR)/vibso_classes.owl: $(TEMPLATEDIR)/vibso_classes.tsv
	if [ $(COMP) = true ] ; then $(ROBOT) template \
		--merge-after --input $(SRC) --add-prefixes config/context.json \
		--template $< --output $@; fi
	if [ $(COMP) = true ] ; then $(ROBOT) annotate -i $@ \
		--ontology-iri $(ONTBASE)/$@ \
		--version-iri $(ONTBASE)/releases/$(VERSION)/$@ \
		--annotation rdfs:comment "This component is derived from the 'src/templates/vibso_classes.tsv', which is edited manually by domain experts." \
		convert -f ofn --output $@; fi

$(COMPONENTSDIR)/vibso_object_properties.owl: $(TEMPLATEDIR)/vibso_object_properties.tsv
	if [ $(COMP) = true ] ; then $(ROBOT) template \
		--merge-after --input $(SRC) --add-prefixes config/context.json \
		--template $< --output $@; fi
	if [ $(COMP) = true ] ; then $(ROBOT) annotate -i $@ \
		--ontology-iri $(ONTBASE)/$@ \
		--version-iri $(ONTBASE)/releases/$(VERSION)/$@ \
		--annotation rdfs:comment "This component is derived from the 'src/templates/vibso_object_properties.tsv', which is edited manually by domain experts." \
		convert -f ofn --output $@; fi

##################
# import modules #
##################

## Module for ontology: obi
## Since the default extract BOT method imports too many unneeded terms, we customize the import module build process by
## using ROBOT "remove" for the terms specified here and in the remove list txt

$(IMPORTDIR)/obi_import.owl: $(MIRRORDIR)/obi.owl $(IMPORTDIR)/obi_terms.txt
	if [ $(IMP) = true ]; then $(ROBOT) query -i $< --update ../sparql/preprocess-module_provo.ru \
        extract -T $(IMPORTDIR)/obi_terms.txt --force true --copy-ontology-annotations true --individuals exclude --method BOT \
        query --update ../sparql/inject-subset-declaration.ru --update ../sparql/inject-synonymtype-declaration.ru --update ../sparql/postprocess-module_2.ru \
        remove --term http://purl.obolibrary.org/obo/OBI_0001930 --select descendants \
        remove -T $(IMPORTDIR)/obi_remove_list.txt --select "self descendants" \
        $(ANNOTATE_CONVERT_FILE); fi

## Module for ontology: ro
## Since the default extract BOT method imports dangling classes, we customize the import module build process by
## using ROBOT "remove" for the terms specified here

$(IMPORTDIR)/ro_import.owl: $(MIRRORDIR)/ro.owl $(IMPORTDIR)/ro_terms.txt
	if [ $(IMP) = true ]; then $(ROBOT) query -i $< --update ../sparql/preprocess-module_provo.ru \
		extract -T $(IMPORTDIR)/ro_terms.txt --force true --copy-ontology-annotations true --individuals include --method BOT \
		remove --term GO:0003674 --term GO:0008150 --term GO:0016301 --select self \
		query --update ../sparql/inject-subset-declaration.ru --update ../sparql/inject-synonymtype-declaration.ru --update ../sparql/postprocess-module_2.ru \
		$(ANNOTATE_CONVERT_FILE); fi

## Module for ontology: chmo
## We decided to use the ROBOT filter method to exctract the needed terms because the slme BOT method brings in too many unneeded terms due to the axiomatization

$(IMPORTDIR)/chmo_import.owl: $(MIRRORDIR)/chmo.owl $(IMPORTDIR)/chmo_terms.txt
	if [ $(IMP) = true ]; then $(ROBOT) query -i $< --update ../sparql/preprocess-module_provo.ru \
            extract -T $(IMPORTDIR)/chmo_terms.txt --force true --copy-ontology-annotations true --individuals exclude --method BOT \
            query --update ../sparql/inject-subset-declaration.ru --update ../sparql/inject-synonymtype-declaration.ru --update ../sparql/postprocess-module_2.ru \
            $(ANNOTATE_CONVERT_FILE); fi