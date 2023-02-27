# VIBSO's Competency Questions

Competency questions can be understood as the test cases with which one can check whether the ontology is in scope and covers the intended use case. By making statements by using the terms defined in the ontology including its imported external ones, the competency questions should be answerable.

As previously mentioned, VIBSO's scope is the semantic description of vibrational spectroscopy research data. So far we have thus identified the following competency questions:

### Questions addressing one single data set

 * What kind of vibrational spectroscopy was performed (as detailed as possible: enhanced, resonant, stimulated, coherent, anti-Stokes...)?

 * In what context was it performed, e.g. as part of what study or investigation?
> Requires to clarify the hierarchy in the ontology: e.g. experiment < investigation < project

 ~* What protocol and devices were used?~
> Somehow redundant with the following one; "what protocol" meaningful only within a workgroup

 * What were the protocol parameters & device configurations?

 * Who was involved in the assay? (identified by a PID like ORCID at best)
 > It is more probable that the users document the names of the co-authors than the academic degree / role

 * What was the assayed sample, including its relevant attributes (e.g. substrate, production procedure, pre-treatment)?

 * What is the dimensionality of the experiment (e.g. single spectra, line maps, surface maps, volume scans...)?

 * What kind of post-processing (e.g. smoothing, baseline subtraction, band integration, peak recognition, image reconstruction) was done?

### Questions addressing the full database

* Find me all Raman spectra of wolfram wires on a silicium substrate covering the range 600-1800 cm^-1.

* Find me which is a safe range of incoming laser powers to perform Raman experiments at wavelength Z on probe XY.

* Find me a suitable solvent which is compatible with sample XY, i.e. which does not have any Raman peak or band between wavenumbers W1 and W2.

This list represents only a first draft and needs to be thoroughly discussed with the domain experts and the NFDI4Chem community. 
