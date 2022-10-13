# VISPRO Ontology Documentation

[//]: # "This file is meant to be edited by the ontology maintainer."

The Vibrational Spectroscopy Ontology (VISPRO) is the first ontology to be developed by the [NFDI4Chem](https://www.nfdi4chem.de/) project, which has as core aim to make research data FAIR.

The scope of VISPRO is thus focused on the use case of providing the terminology with which research data can be annotated in form of RDF knowledge graphs. Its domain covers vibrational spectroscopy, which includes all kinds of infrared and Raman spectroscopy. More specifically, VISPRO is intended to be used to make statements about who did what kind of vibrational spectroscopy, with what kind of sample, device and device configuration, under what protocol, in the context of what investigation as well as producing what kind of outputs. A more detailed description of VISPRO's competency questions can be found [here](competency_questions.md).

As an [OBO Foundry](https://obofoundry.org/) compliant ontology, VISPRO depends on importing many terms from existing ontologies, such as [BFO](https://terminology.nfdi4chem.de/ts/ontologies/bfo), [RO](https://terminology.nfdi4chem.de/ts/ontologies/ro), [IAO](https://terminology.nfdi4chem.de/ts/ontologies/iao) and [OBI](https://terminology.nfdi4chem.de/ts/ontologies/obi) but first and formost from the [Chemical Methods Ontology CHMO](https://terminology.nfdi4chem.de/ts/ontologies/chmo). These imported external terms are being declared in individual text files (see: [/src/ontology/imports](https://github.com/NFDI4Chem/VibrationalSpectroscopyOntology/tree/main/src/ontology/imports)) from which OWL modules will be build automatically, according to the standard workflows defined in the [Ontology Development Kit (ODK)](https://github.com/INCATools/ontology-development-kit).

In the future, it might be possible that, due to its domain specific overlap, VISPRO will be somehow integrated into CHMO. At the moment however, it seems best to keep the two separated and only extend CHMO in the places where it is needed to cover the use case of Research Data Management (RDM) in the domain of vibrational spectroscopy.



