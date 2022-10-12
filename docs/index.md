# VISPRO Ontology Documentation

[//]: # "This file is meant to be edited by the ontology maintainer."

The Vibrational Spectroscopy Ontology VISPRO is the first ontology to be developed by the [NFDI4Chem](https://www.nfdi4chem.de/) project. The intended use for this ontology is the semantic description of research data in the domain of vibrational spectroscopy, which includes all kinds of infrared and Raman spectroscopy. More specifically this ontology is intended to be used to make statements about who did what kind of vibrational spectroscopy, with what kind of sample, device and device configuration, under what protocol, in the context of what investigation as well as producing what kind of outputs. A more detailed description of VISPRO'S scope and competency questions can be found [here](https://raw.githubusercontent.com/NFDI4Chem/VibrationalSpectroscopyOntology/main/docs/scope_and_competency_questions.md).


## Dependencies
As an [OBO Foundry](https://obofoundry.org/) compliant ontology, VISPRO reuses many existing terms from other OBO Foundry ontologies, such as [BFO](https://terminology.nfdi4chem.de/ts/ontologies/bfo), [RO](https://terminology.nfdi4chem.de/ts/ontologies/ro), [IAO](https://terminology.nfdi4chem.de/ts/ontologies/iao) and [OBI](https://terminology.nfdi4chem.de/ts/ontologies/obi) but first and formost from the [Chemical Methods Ontology CHMO](https://terminology.nfdi4chem.de/ts/ontologies/chmo), which already contains many root classes for VISPRO's intended domain. 
These imported external terms are being declared in individual text files from which OWL modules will be automatically build, according to the standard workflows defined in the [Ontology Development Kit (ODK)](https://github.com/INCATools/ontology-development-kit) (see: [/src/ontology/imports](https://github.com/NFDI4Chem/VibrationalSpectroscopyOntology/tree/main/src/ontology/imports).)

## Vision and development approach
The reason for developing this ontology is grounded in the fact that CHMO does not cover this particular domain fine-grained enough with respect to the use case of annotating vibrational spectroscopic research data. VISPRO can thus be understood as an extension of CHMO in this regard. 

Following an incremental development approach, we are first going to focus on adding the needed terms for the domain of Raman spectroscopy before coming to infrared spectroscopy. Here you can see the first draft of VISPRO's terminology box that focuses on Raman spectroscopy and which tries to demonstrate the modular embedding of VISPRO within the context of already existing onntology classes and relations. The identified needed new terms, depicted here with a red border, were derived from a Raman spectrometer output. 

![Raman spectroscopy terminology box](https://raw.githubusercontent.com/NFDI4Chem/VibrationalSpectroscopyOntology/main/docs/images/VISPRO_Raman_Tbox.svg)

What is needed next are iterative reviews of this draft by domain experts to ensure that the competency questions of VISPRO can be answered.

### TSV template based development
To enable an easier participation of domain experts, who often times have no or only little background in the development of ontologies and the tools needed for this, we are using a [TSV template](https://github.com/NFDI4Chem/VibrationalSpectroscopyOntology/blob/main/src/templates/vispro_terms.tsv) to define new classes.
As VISPRO is still at a very early stage, we need to get more domain experts involved in helping us to define the needed classes. 

### Proposed contribution workflow
The development of VISPRO is aimed at being as open as possible to allow a broad range of contributions from stakeholders with different backgrounds. The basic idea is to have everything needed within the GitHub repository and to use the ODK based GitHub workflows (e.g. issues & pull requests) to propose and discuss any changes. This means that design patterns and decision will have to be documented here as early as possible.

What we will need to establish is a team of domain experts that are frequently contributing and of whom some can serve as reviewers of open pull requests to assure a high quality. We envision to have regular calls in which open issues and pull request can be discussed alongside the overall organization of the VISPRO development. 

For a more detailed *how-to* on how to contribute please read [this](https://github.com/NFDI4Chem/VibrationalSpectroscopyOntology/blob/main/docs/contributing.md).


