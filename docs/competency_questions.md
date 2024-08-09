# VIBSO's Competency Questions

Competency questions can be understood as the test cases with which one can check whether the ontology is in scope and covers the intended use case. By making statements by using the terms defined in the ontology including its imported external ones, the competency questions should be answerable.

As previously mentioned, VIBSO's scope is the semantic description of vibrational spectroscopy research data. So far we have thus identified the following competency questions:

### Questions addressing one single data set

 * What kind of vibrational spectroscopy was performed (as detailed as possible: enhanced, resonant, stimulated,
   coherent, anti-Stokes...)?
 * In what context was it performed, e.g. as part of what study or investigation?

> Requires to clarify the hierarchy in the ontology: e.g. experiment < investigation < project

 * What devices were used?
   * What is the software version?
   * Whats the instrument manufacturer?
   * What is the instrument model?
   * What is the instrument license number?
   * Which user ID was used to operate the instrument?
 * What were the protocol parameters & device configurations?
   * What was the scan setting (e.g. range, CCD area x & y binninig)?
   * What is the file extension of the measurement file?
   * What is the unit of the measurement?
   * What file output format is the measurement in?
   * What is the types of acquisition for this measurement?
   * What was the humidity and temperature of the collection environment?
   * What are the light conditions around the sample? (closed or open space)
   * Which laser wavelength was used for the measurement?
   * What grating was used for the spectrum acquisition/measurement?
   * What exposure time was used during the measurement?
   * What detector was used for the measurement and what pixel resolution does it have?
   * What lens was used for the measurement?
   * What was the laser power percentage at the sample?
   * How many accumulations were used?
   * What was the spatial resolution of the system?
   * Did you correct for the dark spectrum of the detector? (ie noise correction from detector)
   * What kind of filters do you use for your measurement?
   * Which slit position was used? Standard or high confocality?
   * Has the autofocus  been used?
   * Have the data been acquired with an automatic cosmic ray removal?
 * Who was involved in the assay? (identified by a PID like ORCID at best)

 > It is more probable that the users document the names of the co-authors than the academic degree / role

 * What was the assayed sample, including its relevant attributes (e.g. substrate, production procedure, pre-treatment)?
 * What is the dimensionality of the experiment (e.g. single spectra/static scan, line maps, surface maps, volume scans...)?
 * If the spectrum is a static scan, what is the center of the spectrum?
 * What kind of preprocessing was done to the spectra?
 * What kind of preprocessing was done on the sample?
 * What kind of post-processing (e.g. smoothing, baseline subtraction, band integration, peak recognition, image
   reconstruction) was done?
   * Do you perform correction for spectral shifts?
   * What were the data extraction steps that have been done on the spectra?
   * For baseline correction, what are the applied baseline correction methods?
   * If the cosmic ray removal was applied manually, what are the applied processing steps to do the cosmic ray
     removal?
 * What kind of preprocessing was done on the sample?
 * Has the SNR been maintained for all measurements at expected levels?
 * Were there any errors encountered during the measurement?

### Questions addressing the full database

* Find me all Raman spectra of wolfram wires on a silicium substrate covering the range 600-1800 cm^-1.
* Find me which is a safe range of incoming laser powers to perform Raman experiments at wavelength Z on sample XY.
* Find me a suitable solvent which is compatible with sample XY, i.e. which does not have any Raman peak or band between wavenumbers W1 and W2.

This list represents only a first draft and needs to be thoroughly discussed with the domain experts and the NFDI4Chem community.
