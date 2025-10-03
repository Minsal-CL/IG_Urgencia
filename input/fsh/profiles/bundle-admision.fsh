Profile: BundleAdmision
Parent: Bundle
Id: BundleAdmision
Title: "Bundle Admision"
Description: "Recurso Bundle para la admisión de pacientes en un servicio de atención de urgencia"

* obeys encounter-status-admision and request-ifNoneExist and status-history-admision

* type = #transaction

* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #closed

* entry contains paciente 1..1 MS
  and encuentro 1..1 MS
  and establecimiento 1..1 MS
  and admisionista 1..1 MS
  and acompanante 0..1 MS

* entry[paciente] ^short = "Paciente"
  * fullUrl 1..1 MS
  * fullUrl ^short = "URI de identificación del recurso dentro del Bundle"
  * resource 1..1 MS
  * resource ^short = "Recurso Patient"
  * resource only PatientUrg
  * request 1..1 MS
  * request ^short = "Petición de creación de recurso"
    * method = #POST
    * url = "Patient"
    * ifNoneExist 1..1 MS
    * ifNoneExist ^short = "Verificar existencia de paciente"
    * ifNoneExist ^definition = "Se debe verificar que no exista un paciente con el mismo identificador"

* entry[encuentro] ^short = "Encuentro de Urgencia"
  * fullUrl 1..1 MS
  * fullUrl ^short = "URI de identificación del recurso dentro del Bundle"
  * resource 1..1 MS
  * resource ^short = "Recurso Encounter"
  * resource only EncounterUrg
  * request 1..1 MS
  * request ^short = "Petición de creación de recurso"
    * method = #POST
    * url = "Encounter"

* entry[establecimiento] ^short = "Establecimiento de Salud"
  * fullUrl 1..1 MS
  * fullUrl ^short = "URI de identificación del recurso dentro del Bundle"
  * resource 1..1 MS
  * resource ^short = "Recurso Organization"
  * resource only EstablecimientoUrg
  * request 1..1 MS
  * request ^short = "Petición de creación de recurso"
    * method = #POST
    * url = "Organization"
    * ifNoneExist 1..1 MS
    * ifNoneExist ^short = "Verificar existencia de establecimiento"
    * ifNoneExist ^definition = "Se debe verificar que no exista un establecimiento con el mismo identificador"

* entry[admisionista] ^short = "Profesional que realiza la admisión"
  * fullUrl 1..1 MS
  * fullUrl ^short = "URI de identificación del recurso dentro del Bundle"
  * resource 1..1 MS
  * resource ^short = "Recurso Practitioner"
  * resource only PrestadorAdministrativo
  * request 1..1 MS
  * request ^short = "Petición de creación de recurso"
    * method = #POST
    * url = "Practitioner"
    * ifNoneExist 1..1 MS
    * ifNoneExist ^short = "Verificar existencia de profesional"
    * ifNoneExist ^definition = "Se debe verificar que no exista un profesional con el mismo identificador"

* entry[acompanante] ^short = "Acompañante"
  * fullUrl 1..1 MS
  * fullUrl ^short = "URI de identificación del recurso dentro del Bundle"
  * resource 1..1 MS
  * resource ^short = "Recurso RelatedPerson"
  * resource only AcompananteUrg
  * request 1..1 MS
  * request ^short = "Petición de creación de recurso"
    * method = #POST
    * url = "RelatedPerson"



Invariant: encounter-status-admision
Description: "El recurso Encounter debe venir con un estado 'arrived' para la admisión de urgencia"
Expression: "entry.resource.ofType(Encounter).status = 'arrived'"
Severity: #error

Invariant: status-history-admision
Description: "El Encounter debe incluir statusHistory de Admisión con status arrived"
Severity: #error
Expression: "entry.where(resource is Encounter).resource.statusHistory.where(status = 'arrived').exists()"
