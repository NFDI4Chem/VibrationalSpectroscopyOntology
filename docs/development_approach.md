# Development Approach

The development of VIBSO is an iterative, version-controlled one that relies on continuous integration. This means that VIBSO uses the Ontology Development Kit ([ODK](https://github.com/INCATools/ontology-development-kit)) and GitHub
 for the technical implementation, making sure all changes are properly tracked and quality controlled. 
With regard to the conceptual iterative development, VIBSO relies on the collaboration with domain experts from chemistry and related scientific fields in which vibrational spectroscopies are being used. They are the ones who know best what concepts are needed in the domain of VIBSO and how to properly label and define them.
So far, the domain experts who contributed to VIBSO come from the institutions that are directly associated with the NFDI4Chem project. These domain experts provided an initial list of terms that was discussed with the VIBSO ontology curators in multiple online meetings and which was used to develop a first draft of a terminology box. (see [Vibrational Raman Spectroscopy](design_patterns.md#vibrational-raman-spectroscopy)). Within these discussions it became apparent that the best way for allowing domain experts to directly contribute to VIBSO in a controlled way is to provide a tabular way to edit the ontology as well as to have a proper documentation as a binding development guideline.


## Template Based Development
To enable an easier participation of domain experts, who often might have little to no background in the development of ontologies and the tools needed for this, we are using [ROBOT TSV templates](http://robot.obolibrary.org/template) to define new classes ([vibso_classes.tsv](https://github.com/NFDI4Chem/VibrationalSpectroscopyOntology/blob/main/src/templates/vibso_classes.tsv)) and relations ([vibso_object_properties.tsv](https://github.com/NFDI4Chem/VibrationalSpectroscopyOntology/blob/main/src/templates/vibso_object_properties.tsv)), when there is no equivalent in other compatible OBO ontologies that we can reuse. The first row of these TSV table templates defines the human-readable header and the second row is the header needed by the ROBOT tool to properly convert the template into the OWL files that make up the [components](odk-workflows/RepositoryFileStructure.md#components) of VIBSO.

### Explanation of the template column headers

In both TSV templates there are the following columns:

* **id**: This column defines the identifier of a term in form of a CURIE ([compact URI](https://en.wikipedia.org/wiki/CURIE)) which will be expanded into the full IRI of the term within the release artifacts. **_This unique id must always be in the syntax of `obo:VIBSO_[XXXXXXX]` whereas the seven `X` represented numerical digits._** When the team of VIBSO curators grows and the need of editing in multiple TSV templates arises, we will probably set up workflows to ensure no mix-ups or duplicated IDs by assigning certain ID ranges to templates and/or contributors. For now, it should suffice to make sure there is no error or duplicate within these two TSVs.
* **label**: This column must contain either the agreed upon technical term of the concept to be defined, or, in cases of a completely new concept, it should be a singular word or phrase in lowercase that expresses the ontological type of the concept as human-readable as possible (for more on naming conventions see [OBO principle #12](https://obofoundry.org/principles/fp-012-naming-conventions.html)).
  * *NOTE*: When a term is to be deprecated, the prefix `deprecated_` should be added in front of the previous label to make this term status better visible to the users of the ontology.
* **link(s) to issue(s)**: This column should be used to provide the link or links (separated with "|") to the issues in which this term is/was requested & discussed (e.g. https://github.com/NFDI4Chem/VibrationalSpectroscopyOntology/issues/39).
* **definition**: A textual definition provides a human-readable understanding about the defined concept (class or relation). Textual definitions are, optimally, in concordance with associated machine-readable logical definitions (the latter of which are OPTIONAL). For more about writing good textual definitions please see [OBO principle #6](https://obofoundry.org/principles/fp-006-textual-definitions.html).
* **definition source URI**: It is common practice to provide a definition source whenever possible. In the best case this is the DOI of a publication in which the concept is explained and/or defined. URLs to encyclopedias like Wikipedia are also an option. Least preferred but still better than nothing would be the ORCID of the person who created the term.
* **type**: This column defines the type of the defined concept according to the [Ontology Web Language (OWL) specification](https://www.w3.org/TR/owl-ref/). The allowed values are: `owl:Class`, `owl:ObjectProperty`,  `owl:DatatypeProperty` or `owl:NamedIndividual`. So in the *vibso_classes.tsv* this should always be `owl:Class` and in the *vibso_object_properties.tsv* it should always be `owl:ObjectProperty`.
  * _Note_: For OBO compliant ontologies, relations between classes (ObjectProperties) are meant to be defined mainly in RO and relations for data literals (DatatypeProperties) are only used very sparsely in order to not lose semantic depth.
* **contributor URI**: This column should be used to provide the ORCID of the people (separated with "|") who contributed to the curation of the term, in order to properly credit this micro contribution (e.g. `ORCID:0000-0002-1595-3213|ORCID:0000-0001-7694-5519|ORCID:0000-0002-2239-3955`).
* **example of usage**: This column should be used to provide a real world example of the term. This can either be done by providing exemplary triple statements or by elaborating how the term should be used in a concrete use case.  
* **editor note**: This column can be used to provide additional information regarding the term, such as summarizing a discussion about its definition or obsolescence reason.
* **obsoleted**: This column must only be used to provide the boolean value `true`, iff the term has been deprecated.
* **obsolescence reason**: This column should be used to provide an obsolescence reason from the controlled list of the OBO Metadata Ontology (OMO). The current allowed values are: `failed exploratory term , placeholder removed , terms merged , term imported , term split , out of scope`
* **term replaced by**: This column should be used to provide the term that replaces a deprecated term. This is important to ensure backwards compatibility.

In the **vibso_classes.tsv**, there is also the column:

* **super class**: This column is to be used to provide the parent of the owl:Class that is being defined. It is fine to use the label of the parent class here instead of its IRI or CURIE, as long as the class is already an [imported term](ntr_workflow.md#importing terms).

In the **vibso_classes.tsv**, there are also the columns:

* **super property**: This column is to be used to provide the parent of the `owl:ObjectProperty` or `owl:DatatypeProperty` that is being defined, via its label.
* **inverse property**: This column can be used to define the inverse of an `owl:ObjectProperty`, via its label. 
* **domain**: This column can be used to restrict an `owl:ObjectProperty` in terms of being allowed to be used only on a certain subject.
* **range**: This column can be used to restrict an `owl:ObjectProperty` in terms of being allowed to be used only on a certain object.

The TSV templates will most likely be expanded in the future to also include more annotation properties (e.g. term status, comment) that will help document the ontology in its source code.


## Proposed contribution workflow
**VIBSO is an Open Science project from and for the scientific community!** 

Thus, its development is aimed at allowing a broad range of contributions from stakeholders with different backgrounds. For this, the basic idea is to have everything needed within the GitHub repository and to use the ODK & GitHub based workflows (e.g. issues & pull requests) to propose and discuss any changes. This means that [design patterns and decisions](design_patterns.md) will have to be documented here as early as possible.

As VIBSO is still at a very early stage, we will need to establish a team of domain experts that are frequently contributing and of whom some can serve as reviewers of open pull requests to assure a high quality. We envision to have regular virtual meetings in which open issues, pull request or questions can be discussed alongside the overall organization of the VIBSO development. 

For a more detailed description on how to contribute please continue reading [here](contributing.md).


##Are you an expert in the domain of vibrational spectroscopy?

* You have first-hand experiences with doing vibrational spectroscopy assays, such as knowing the needed devices and their configuration parameters?
* You know how to write issues and do easy pull requests on file formats like .tsv, .md and .txt in GitHub or GitLab?
* You can imagine helping us to define the technical terms of vibrational spectroscopy (e.g. Raman & IR) and collecting credits for such mirco-publications?

**Then we, a friendly and inclusive open science team, would like to invite you to be part of the VIBSO team & development!**
Please get in touch with us via GitHub or `mailto:helpdesk@nfdi4chem.de `



