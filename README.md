[![License: CC-BY 4.0](https://img.shields.io/badge/License-CC%20BY%204.0-green.svg)](https://creativecommons.org/licenses/by/4.0/) 
![Build Status](https://github.com/NFDI4Chem/VibrationSpectroscopyOntology/workflows/CI/badge.svg)
# Vibrational Spectroscopy Ontology

_Work In Progress - NOT READY FOR PRODUCTION!_

The Vibrational Spectroscopy Ontology (VIBSO) is used to represent information regarding the execution and analysis of vibrational spectroscopy assays. That means it is intended to be used to semantically annotate the research data that is produced in such experiments with regard to the devices and lab protocols being used, the data being produced thereby (e.g the actual spectra) as well as other important metadata. 

**For a more thorough documentation of the ontology please read the [documentation](https://nfdi4chem.github.io/VibrationalSpectroscopyOntology/).**

## Versions

The OWL & OBO files on the top level of this repository are the official release artifacts of the ontology. To find out more about the standardization approach behind these (e.g. why they are so many), see [this section](https://oboacademy.github.io/obook/reference/release-artefacts/) in the OBOOK (also a great place to learn more about OBO based ontology development and curation).

### Stable release version

The latest main version of the ontology is the [vibso.owl](https://raw.githubusercontent.com/NFDI4Chem/VibrationalSpectroscopyOntology/main/vibso.owl).

VIBSO's ontology IRI (http://purl.obolibrary.org/obo/vibso.owl) does currently not resolve to [vibso.owl](https://raw.githubusercontent.com/NFDI4Chem/VibrationalSpectroscopyOntology/main/vibso.owl), as the ontology is not yet a registered at the [OBO Foundry](https://obofoundry.org/). However, it is planned to submit it there once VIBSO is mature enough.

### Editors' version

Edits to the ontology can be made in two places:

1. [src/ontology/vibso-edit.owl](src/ontology/vibso-edit.owl).
2. [src/templates/vibso_terms.tsv](src/templates/vibso_classes.tsv).
3. [src/templates/vibso_terms.tsv](src/templates/vibso_object_properties.tsv).

The `vibso_classes.tsv` and `vibso_object_properties.tsv` are [ROBOT templates](http://robot.obolibrary.org/template) in which all of VIBSO's classes and relations are defined and which are being imported as a components into the main editor file `vibso-edit.owl`. We chose this tabular based ontology development approach in order to foster the contribution of domain experts, who are usually less experienced with the OWL format and ontology editors such as [Protégé](https://protege.stanford.edu/).
More on this can be found in the documention of VIBSO's [development approach](https://nfdi4chem.github.io/VibrationalSpectroscopyOntology/development_approach/).

## Contributing

Please use this GitHub repository's [Issue tracker](https://github.com/NFDI4Chem/VibrationSpectroscopyOntology/issues) to request new terms/classes or report errors or specific concerns related to the ontology. For a more elaborated _how-to_, please go [here](https://nfdi4chem.github.io/VibrationalSpectroscopyOntology/contributing/).

## Acknowledgements

This ontology repository was created using the [Ontology Development Kit (ODK)](https://github.com/INCATools/ontology-development-kit).
