# VISPRO Ontology Documentation

[//]: # "This file is meant to be edited by the ontology maintainer."

The Vibrational Spectroscopy Ontology VISPRO is the first ontology to be developed by the [NFDI4Chem](https://www.nfdi4chem.de/) project. The intended use for this ontology is the semantic description of research data in the domain of vibrational spectroscopy, which includes all kinds of infrared and Raman spectroscopy. More specifically this ontology is intended to be used to make statements about who did what kind of vibrational spectroscopy, with what kind of sample, device and device configuration, under what protocol, in the context of what investigation as well as producing what kind of outputs.


## Dependencies
As an [OBO Foundry](https://obofoundry.org/) compliant ontology, VISPRO reuses many existing terms from other OBO Foundry ontologies, such as BFO, RO, IAO and OBI but first and formost from the Chemical Methods Ontology CHMO, which already contains many root classes for VISPRO's intended domain. 
These external terms are being declared in individual text files from which OWL modules will be automatically build, according to the standard workflows defined in the Ontology Development Kit (see: [/src/ontology/imports](/src/ontology/imports).)

## Vision and development approach
The reason for developing this ontology is the grounded in the fact that CHMO does not cover this particular domain fine grained enough with respect to the use case of sufficiently annotation vibrational spectroscopic research data. 
Following an incremental development workflow, we are first going to focus on adding the needed terms for the domain of Raman spectroscopy before coming to infrared spectroscopy.

![Alt text](./VISPRO_Raman_Tbox.svg)
<img src="./VISPRO_Raman_Tbox.svg">

### TSV template based development
To enable an easier participation of domain experts, who often times have no or only little background in the development of ontologies and the tools needed for this, we are using a TSV template


