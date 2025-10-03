Profile: BundleEgreso
Parent: Bundle
Id: BundleEgreso
Title: "Bundle Egreso"
Description: "Recurso Bundle para el egreso de pacientes en un servicio de atención de urgencia"

* obeys encounter-status-egreso and status-history-egreso

* type = #transaction

* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #closed

* entry contains encuentro 1..1 MS
  and profesionalEgreso 1..1 MS
  // and DAU 0..1 MS

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

* entry[profesionalEgreso] ^short = "Profesional que realiza el egreso"
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

// * entry[DAU] ^short = "Documento de Atención de Urgencia"
//   * fullUrl 1..1 MS
//   * fullUrl ^short = "URI de identificación del recurso dentro del Bundle"
//   * resource 1..1 MS
//   * resource ^short = "Recurso Documento de Atención de Urgencia"
//   * resource only DocumentoAtencionUrg
//   * request 1..1 MS
//   * request ^short = "Petición de creación de recurso"
//     * method = #POST
//     * url = "DocumentReference"


Invariant: encounter-status-egreso
Description: "El recurso Encounter debe venir con un estado 'finished' para el egreso de urgencia"
Expression: "entry.resource.ofType(Encounter).status = 'finished'"
Severity: #error

Invariant: status-history-egreso
Description: "El Encounter debe incluir statusHistory de Egreso con status finished"
Severity: #error
Expression: "entry.where(resource is Encounter).resource.statusHistory.where(status = 'finished').exists()"