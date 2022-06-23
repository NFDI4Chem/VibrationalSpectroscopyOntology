PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX prov: <http://www.w3.org/ns/prov#>
PREFIX owl: <http://www.w3.org/2002/07/owl#>


INSERT { 
    ?ontology prov:wasDerivedFrom ?version_iri .
    ?class rdfs:isDefinedBy ?version_iri .
    ?property rdfs:isDefinedBy ?version_iri .
    ?ontology prov:wasDerivedFrom ?ontology .
    ?class rdfs:isDefinedBy ?ontology .
    ?property rdfs:isDefinedBy ?ontology .
}

WHERE {
  ?ontology rdf:type owl:Ontology ;
        owl:versionIRI ?version_iri .
  ?class rdf:type owl:Class.
  ?property rdf:type owl:ObjectProperty.


}