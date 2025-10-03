Invariant: acompanante-slice
Description: "Si la extensión Acompanante es 'true', entonces el participante Acompanante debe estar presente."
Expression: "extension('https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/Acompanante').value.single() = true implies participant.type.coding.exists(system = 'http://terminology.hl7.org/CodeSystem/v3-ParticipationType' and code = 'ESC')"
Severity: #error

Invariant: motivo-consulta
Description: "Si el estado del encuentro es distinto de 'arrived', entonces el motivo de la consulta debe estar presente."
Expression: "reasonCode.exists() or status = 'arrived'"
Severity: #error

Invariant: categorizacion
Description: "Si el encuentro tiene el estado 'triaged', entonces el participante Categorizador debe estar presente."
Expression: "status = 'triaged' implies participant.exists(type.coding.exists(system = 'https://interoperabilidad.minsal.cl/fhir/ig/urgencia/CodeSystem/TipoParticipanteUrgencia' and code = 'triage'))"
Severity: #error