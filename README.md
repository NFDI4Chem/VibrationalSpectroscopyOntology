
![Build Status](https://github.com/NFDI4Chem/VibrationSpectroscopyOntology/workflows/CI/badge.svg)
# Vibrational Spectroscopy Ontology

_Work In Progress - NOT READY FOR PRODUCTION!_ 

The Vibrational Spectroscopy Ontology (VIBSO) is used to represent information regarding the execution and analysis of vibrational spectroscopy assays. That means it is intended to be used to semantically annotate the research data that is produced in such experiments with regard to the devices and lab protocols being used, the data being produced thereby (e.g the actual spectra) as well as other important metadata. 

**For more thorough documentation of the ontology please go to: https://nfdi4chem.github.io/VibrationalSpectroscopyOntology/**

## Versions

The OWL & OBO files on the top level of this repo are the official release artifacts of the ontology. To find out more about the standardization approach behind these (e.g. why they are called -base.owl or -full.owl), see [this section](https://oboacademy.github.io/obook/reference/release-artefacts/) in the OBOOK.

### Stable release versions

The latest version of the ontology can always be found at:

https://github.com/NFDI4Chem/VibrationSpectroscopyOntology/blob/main/visbo.owl

At the moment this is an exact copy of the [visbo-full.owl](https://github.com/NFDI4Chem/VibrationSpectroscopyOntology/blob/main/visbo-full.owl). 

### Editors' version

Editors of this ontology should use the edit version, [src/ontology/vispro-edit.owl](src/ontology/vispro-edit.owl)

Another approach of curating terms (e.g. for non Protégé experienced domain experts) is to edit [src/templates/vispro_terms.tsv](src/templates/vispro_terms.tsv) and then let the repo maintainers run `sh run.sh make recreate-components`.

## Contact

Please use this GitHub repository's [Issue tracker](https://github.com/NFDI4Chem/VibrationSpectroscopyOntology/issues) to request new terms/classes or report errors or specific concerns related to the ontology.

## Acknowledgements

This ontology repository was created using the [Ontology Development Kit (ODK)](https://github.com/INCATools/ontology-development-kit).
