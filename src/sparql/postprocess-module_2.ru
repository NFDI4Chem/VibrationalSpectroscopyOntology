PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX prov: <http://www.w3.org/ns/prov#>
PREFIX obo: <http://purl.obolibrary.org/obo/>
PREFIX owl: <http://www.w3.org/2002/07/owl#>


DELETE {
  ?ontology ?ontology_annotation_property ?ontology_annotation_value .
}

WHERE {
  ?ontology rdf:type owl:Ontology .
  ?ontology ?ontology_annotation_property ?ontology_annotation_value .
  FILTER(?ontology_annotation_property != prov:wasDerivedFrom && ?ontology_annotation_property != rdf:type && ?ontology_annotation_property != obo:IAO_0000412)

}