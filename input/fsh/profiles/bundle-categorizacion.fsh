Profile: BundleCategorizacion
Parent: Bundle
Id: BundleCategorizacion
Title: "Bundle Categorizacion"
Description: "Recurso Bundle para registrar la categorización de pacientes en un servicio de atención de urgencia"

* obeys  request-ifNoneExist and encounter-status-categorizacion and status-history-categorizacion

* type = #transaction

* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #closed

* entry contains encuentro 1..1 MS
  and categorizador 1..1 MS
  and signosVitales 0..* MS

* entry[encuentro] ^short = "Encuentro de Urgencia"
  * fullUrl 1..1 MS
  * fullUrl ^short = "URI de identificación del recurso dentro del Bundle"
  * resource 1..1 MS
  * resource ^short = "Recurso Encounter"
  * resource only EncounterUrg
  * request 1..1 MS
  * request ^short = "Petición de actualización de recurso"
    * method = #PUT
    * url ^short = "URL para actualizar el Encounter usando identifier"

* entry[categorizador] ^short = "Profesional que categoriza"
  * fullUrl 1..1 MS
  * fullUrl ^short = "URI de identificación del recurso dentro del Bundle"
  * resource 1..1 MS
  * resource ^short = "Recurso Practitioner"
  * resource only PrestadorProfesional
  * request 1..1 MS
  * request ^short = "Petición de creación de recurso"
    * method = #POST
    * url = "Practitioner"
    * ifNoneExist 1..1 MS
    * ifNoneExist ^short = "Verificar existencia de profesional"
    * ifNoneExist ^definition = "Se debe verificar que no exista un profesional con el mismo identificador"

* entry[signosVitales] ^short = "Signos Vitales"
  * fullUrl 1..1 MS
  * fullUrl ^short = "URI de identificación del recurso dentro del Bundle"
  * resource 1..1 MS
  * resource ^short = "Recurso Observation"
  * resource only ObservationSignosVitales
  * request 1..1 MS
  * request ^short = "Petición de creación de recurso"
    * method = #POST
    * url = "Observation"



Invariant: encounter-status-categorizacion
Description: "El recurso Encounter debe venir con un estado 'triaged' para la caegorización de urgencia"
Expression: "entry.resource.ofType(Encounter).status = 'triaged'"
Severity: #error

Invariant: status-history-categorizacion
Description: "El Encounter debe incluir statusHistory de Categorización con status triaged"
Severity: #error
Expression: "entry.where(resource is Encounter).resource.statusHistory.where(status = 'triaged').exists()"
