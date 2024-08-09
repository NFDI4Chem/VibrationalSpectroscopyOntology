# ROBOT templates
We use ROBOT TSV templates to define the terms in VIBSO.
## VIBSO classes
The main component is the [vibso_classes.tsv](vibso_classes.tsv) template, in which VIBSO's classes are being defined.
## VIBSO object properties
If there arises the need to define object properties within VIBSO, the [vibso_object_properties.tsv]
(vibso_object_properties.tsv) template should be used. However, according to best practices, we will try not to mint 
new object properties and instead use existing ones from RO whenever possible. If there is no suitable one in RO yet,
we can define one as a placeholder here in VIBSO. But then a new term request should be filed in RO and linked to 
the corresponding placeholder, sothat it can be obsoleted and replaced once/if a RO equivalent was created or 
recommended.
## VIBSO example instances
In order to make the desing patterns of VIBSO more graspable for our ontology users and editors, we use the 
[vibso_examples.tsv](vibso_examples.tsv) template to define example instances that are defined, described and linked 
via their asserted axioms.