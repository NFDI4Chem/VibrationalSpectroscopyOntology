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
		--annotation rdfs:comment "This component is derived from the manually edited 'src/templates/vibso_classes.tsv' template." \
		convert -f ofn --output $@; fi

$(COMPONENTSDIR)/vibso_object_properties.owl: $(TEMPLATEDIR)/vibso_object_properties.tsv
	if [ $(COMP) = true ] ; then $(ROBOT) template \
		--merge-after --input $(SRC) --add-prefixes config/context.json \
		--template $< --output $@; fi
	if [ $(COMP) = true ] ; then $(ROBOT) annotate -i $@ \
		--ontology-iri $(ONTBASE)/$@ \
		--version-iri $(ONTBASE)/releases/$(VERSION)/$@ \
		--annotation rdfs:comment "This component is derived from the manually edited 'src/templates/vibso_object_properties.tsv' template." \
		convert -f ofn --output $@; fi

$(COMPONENTSDIR)/vibso_examples.owl: $(TEMPLATEDIR)/vibso_examples.tsv
	if [ $(COMP) = true ] ; then $(ROBOT) template \
		--merge-after --input $(SRC) --add-prefixes config/context.json \
		--template $< --output $@; fi
	if [ $(COMP) = true ] ; then $(ROBOT) annotate -i $@ \
		--ontology-iri $(ONTBASE)/$@ \
		--version-iri $(ONTBASE)/releases/$(VERSION)/$@ \
		--annotation rdfs:comment "This component is derived from the manually edited 'src/templates/vibso_examples.tsv' template." \
		convert -f ofn --output $@; fi
	if [ $(COMP) = true ] ; then $(ROBOT) convert --input $@ -f ttl --output $(COMPONENTSDIR)/vibso_examples.ttl; fi


##################
# import modules #
##################

## Module for ontology: obi
## Since the default extract BOT method imports too many unneeded terms, we customize the import module build process by
## using ROBOT "remove" to remove the terms specified here and in the "obi_remove_list.txt"

$(IMPORTDIR)/obi_import.owl: $(MIRRORDIR)/obi.owl $(IMPORTDIR)/obi_terms.txt
	if [ $(IMP) = true ]; then $(ROBOT) query -i $< --update ../sparql/preprocess-module.ru \
        extract -T $(IMPORTDIR)/obi_terms.txt --force true --copy-ontology-annotations true --individuals exclude --method BOT \
        query --update ../sparql/inject-subset-declaration.ru --update ../sparql/inject-synonymtype-declaration.ru --update ../sparql/postprocess-module.ru \
        remove --term OBI:0001930 --term OBI:0100026 --select descendants --exclude-term NCBITaxon:9606 \
        remove -T $(IMPORTDIR)/obi_remove_list.txt --select "self descendants" \
        $(ANNOTATE_CONVERT_FILE); fi

## Module for ontology: ro
## Since the default extract BOT method imports dangling GO classes, we customize the import module build process by
## using ROBOT "remove" for these dangling terms

$(IMPORTDIR)/ro_import.owl: $(MIRRORDIR)/ro.owl $(IMPORTDIR)/ro_terms.txt
	if [ $(IMP) = true ]; then $(ROBOT) query -i $< --update ../sparql/preprocess-module.ru \
		extract -T $(IMPORTDIR)/ro_terms.txt --force true --copy-ontology-annotations true --individuals include --method BOT \
		remove --term GO:0003674 --term GO:0008150 --term GO:0016301 --select self \
		query --update ../sparql/inject-subset-declaration.ru --update ../sparql/inject-synonymtype-declaration.ru --update ../sparql/postprocess-module.ru \
		$(ANNOTATE_CONVERT_FILE); fi

## Module for ontology: chmo
## We use the ODK default ROBOT "extract BOT" method plus a custom ROBOT "filter" command.
## So we don't have to add all subclasses of CHMO:0000628 & CHMO:0002515 to the chmo_temrs.txt manually

$(IMPORTDIR)/chmo_import.owl: $(MIRRORDIR)/chmo.owl $(IMPORTDIR)/chmo_terms.txt
	if [ $(IMP) = true ]; then $(ROBOT) filter -i $< --term CHMO:0000628 --term CHMO:0002515 --select "self descendants \
	            annotations" --axioms all --signature true --trim true \
    		--output $@.tmp.owl; fi
	if [ $(IMP) = true ]; then $(ROBOT) query -i $< --update ../sparql/preprocess-module.ru \
            extract -T $(IMPORTDIR)/chmo_terms.txt --force true --copy-ontology-annotations true --individuals exclude --method BOT \
            query --update ../sparql/inject-subset-declaration.ru --update ../sparql/inject-synonymtype-declaration.ru --update ../sparql/postprocess-module.ru \
            merge -i $@.tmp.owl \
            remove --term CHMO:0002515 --select "self" --axioms all --signature true --trim true \
            $(ANNOTATE_CONVERT_FILE); fi

## Module for ontology: uo
## We use a ROBOT "filter" command to only get the instances

$(IMPORTDIR)/uo_import.owl: $(MIRRORDIR)/uo.owl $(IMPORTDIR)/uo_terms.txt
	if [ $(IMP) = true ]; then $(ROBOT) query -i $< --update ../sparql/preprocess-module.ru \
    		filter -T $(IMPORTDIR)/uo_terms.txt --select "annotations self descendants instances" --signature true --trim true \
    		query --update ../sparql/inject-subset-declaration.ru --update ../sparql/inject-synonymtype-declaration.ru --update ../sparql/postprocess-module.ru \
    		$(ANNOTATE_CONVERT_FILE); fi