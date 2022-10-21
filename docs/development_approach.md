# Development Approach

The development of VIBSO is an iterative, version-controlled one that relies on continuous integration. This means that VIBSO uses the Ontology Development Kit ([ODK](https://github.com/INCATools/ontology-development-kit)) and GitHub
 for the technical implementation, making sure all changes are properly tracked and quality controlled. 
With regard to the conceptual iterative development, VIBSO relies on the collaboration with domain experts from chemistry and related scientific fields in which vibrational spectroscopies are being used. They are the ones who know best what concepts are needed in the domain of VIBSO and how to properly label and define them.
So far, the domain experts who contributed to VIBSO come from the institutions that are directly associated with the NFDI4Chem project. These domain experts provided an initial list of terms that was discussed with the VIBSO ontology curators in multiple online meetings and which was used to develop a first draft of a terminology box. (see [Vibrational Raman Spectroscopy](design_patterns.md#vibrational-raman-spectroscopy)). Within these discussions it became apparent that the best way for allowing domain experts to directly contribute to VIBSO in a controlled way is to provide a tabular way to edit the ontology as well as to have a proper documentation as a binding development guideline.


## Template Based Development
To enable an easier participation of domain experts, who often might have little to no background in the development of ontologies and the tools needed for this, we are using the [vibso_terms.tsv](https://github.com/NFDI4Chem/VibrationalSpectroscopyOntology/blob/main/src/templates/vibso_terms.tsv) ( a [ROBOT template](http://robot.obolibrary.org/template)) to define new classes and relations in VIBSO. 

### VIBSO's TSV ROBOT Template 
| id                | label                                                | definition                                                                                             | definition source URI | type      | super class   | super property | inverse property | domain (if property) | range (if property) | term creaor URI (e.g. ORCID) | term curator URI (e.g. ORCID) | example of usage | editor note |
|-------------------|------------------------------------------------------|--------------------------------------------------------------------------------------------------------|-----------------------|-----------|---------------|----------------|------------------|----------------------|---------------------|------------------------------|-------------------------------|------------------|-------------|
| obo:VIBSO_0000000 | vibrational spectrometer configuration specification | A setting datum that specifies the needed settings of a spectrometer used in vibrational spectroscopy. |                       | owl:Class | setting datum |                |                  |                      |                     | ORCID:0000-0002-1595-3213    | 

The first row of this TSV table defines the human-readable header and the second row (left out in the above example due to formatting reasons) is the header need by the ROBOT tool to properly convert the template into the OWL file that is the main [component](odk-workflows/RepositoryFileStructure.md#components) of VIBSO.

#### Explanation of the TSV Template Columns

* **id**: This column defines the identifier of a term in form of a CURIE ([compact URI](https://en.wikipedia.org/wiki/CURIE)) which will be expanded into the full IRI of the term within the release artifacts. **_This unique id must always be in the syntax of `obo:VIBSO_[XXXXXXX]` whereas the seven `X` represented numerical digits._** When the team of VIBSO curators grows and the need of editing in multiple TSV templates arises, we will probably set up workflows to ensure no mix-ups or duplicated IDs by assigning certain ID ranges to templates and/or contributors. For now, it should suffice to make sure there is no error or duplicate within this one TSV.
* **label**: This column must contain either the agreed upon technical term of the concept to be defined, or, in cases of a completely new concept, it should be a singular word or phrase that expresses the ontological type of the concept as human-readable as possible (for more on naming conventions see [OBO principle #12](https://obofoundry.org/principles/fp-012-naming-conventions.html)). 
* **definition**: A textual definition provides a human-readable understanding about the defined concept (class or relation). Textual definitions are, optimally, in concordance with associated machine-readable logical definitions (the latter of which are OPTIONAL). See also [OBO principle #12](https://obofoundry.org/principles/fp-006-textual-definitions.html)
* **definition source URI**: It is common practice to provide a definition source whenever possible. In the best case this is the DOI of a publication in which the concept is explained and/or defined. URLs to encyclopedias like Wikipedia are also an option. Least preferred but still better than nothing would be the ORCID of the person who created the term.
* **type**: This column defines the type of the defined concept according to the [Ontology Web Language (OWL) specification](https://www.w3.org/TR/owl-ref/). The allowed values are: `owl:Class`, `owl:ObjectProperty`,  `owl:DatatypeProperty` or `owl:NamedIndividual`. _Note_: For OBO compliant ontologies, relations between classes (ObjectProperties) are meant to be defined mainly in RO and relations for data literals (DatatypeProperties) are only used very sparsely in order to not lose semantic depth.
* **super class**: This column is to be used to provide the parent of the owl:Class that is being defined. It is fine to use the label of the parent class here instead of its IRI or CURIE, as long as the class is already an [imported term](ntr_workflow.md#importing terms).
* **super property**: This column is to be used to provide the parent of the `owl:ObjectProperty` or `owl:DatatypeProperty` that is being defined, via its label.
* **inverse property**: This column can be used to define the inverse of an `owl:ObjectProperty`, via its label. 
* **domain (if property)**: This column can be used to restrict an `owl:ObjectProperty` in terms of being allowed to be used only on a certain subject.
* **range (if property)**: This column can be used to restrict an `owl:ObjectProperty` in terms of being allowed to be used only on a certain object.
* **term creaor URI (e.g. ORCID)**: This column should be used to provide the ORCID of the person who created the term, in order to properly credit this micro contribution.
* **term curator URI (e.g. ORCID)**: This column should be used to provide the ORCID of the person who curates the term, in order to properly credit this micro contribution. A term curator can be different from the term creator, e.g. in cases where the creator is not part of the VIBSO curation team.
* **example of usage**: This column should be used to provide a real world example of the term. 
* **editor note**: This column can be used to provide additional information regarding the term.

The TSV template will most likely be expanded in the near future to also include more annotation properties (e.g. term tracker status, comment) that will help document the ontology in its source code.


## Proposed contribution workflow
**VIBSO is an Open Science project from and for the scientific community!** 

Thus, its development is aimed at allowing a broad range of contributions from stakeholders with different backgrounds. For this, the basic idea is to have everything needed within the GitHub repository and to use the ODK & GitHub based workflows (e.g. issues & pull requests) to propose and discuss any changes. This means that [design patterns and decision](design_patterns.md) will have to be documented here as early as possible.

As VIBSO is still at a very early stage, we will need to establish a team of domain experts that are frequently contributing and of whom some can serve as reviewers of open pull requests to assure a high quality. We envision to have regular virtual meetings in which open issues, pull request or questions can be discussed alongside the overall organization of the VIBSO development. 

For a more detailed description on how to contribute please continue reading [here](contributing.md).


##Are you an expert in the domain of vibrational spectroscopy and would like to be part of the VIBSO team & development?
Then please get in touch via us via GitHub or `mailto:helpdesk@nfdi4chem.de `



