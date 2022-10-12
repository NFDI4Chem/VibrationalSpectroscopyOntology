# The Scope of the ontology

The scope of VISPRO is to provide the terminology with which vibrational spectroscopic research data can be semantically annotated in form of RDF knowledge graphs. VISPRO thereby depends on existing ontologies to provide general superclasses, such as "spectrometer", "device setting" or "sample", which will be imported directly into VISPRO. Especially [the Chemical Methods Ontology CHMO](https://terminology.nfdi4chem.de/ts/ontologies/chmo) already provides many of the needed classes, however with regard to the core use case of VISPRO, that is Reseach Data Management (RDM), there are gaps.

In the future, it might be possible that, due to its closeness to CHMO, that VISPRO will be integrated into CHMO. At the moment however, it seems best to keep the two seperated and only extend CHMO in the places where it is needed to cover the use case.

# The ontology's competency questions

Competency questions are used to make sure an ontology is able to fulfill the desired use case, defining the semantic field that should be covered by the ontology. 

In the case of VSIPRO these are:
 * What kind of vibrational spectroscopy was performed?
 * In what context was it performed, e.g. as part of what study or investigation?
 * What protocol and devices were used?
 * What were the protocol parameters & device configurations?
 * Who was involved in the assay, e.g. PI, PhD, lab assistant etc.? (identified by a PID like ORCID at best)
 * What was the assayed sample, including its relevant attributes?
 * What assay outputs were produces, such as what spectra (e.g. different formats)?
 * What kind of pre- and post-processeing was done?

This list of competency questions represents a first draft and needs to be thoroughly discussed with the domain experts and finalized.