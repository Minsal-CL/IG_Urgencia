Extension: MedioDeLlegada
Id: MedioDeLlegada
Title: "Medio de Llegada"
Description: "Extensión que registra el medio de llegada del paciente al establecimiento de salud"
Context: Encounter.hospitalization
* value[x] only CodeableConcept
* valueCodeableConcept from VSMedioDeLlegada (required)
* valueCodeableConcept 1..1 MS
 