Profile: BundleAtencion
Parent: Bundle
Id: BundleAtencion
Title: "Bundle Atención"
Description: "Recurso Bundle para la atención de pacientes en un servicio de atención de urgencia"
* obeys encounter-status-atencion and status-history-atencion

* type = #transaction

* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #closed

* entry contains encuentro 1..1 MS
  and encuentroAtencion 0..* MS
  and profesionalAtencion 1..* MS
  and anamnesis 1..1 MS
  and diagnosticos 0..* MS
  and evolucionClinica 0..* MS
  and alergias 0..* MS
  and indicaciones 0..* MS
  and solicitudes 0..* MS
  and resultados 0..* MS
  and medicamentos 0..* MS
  and observacionesAtencion 0..* MS
  and procedimientos 0..* MS

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

* entry[encuentroAtencion] ^short = "Encuentro de Atención"
  * fullUrl 1..1 MS
  * fullUrl ^short = "URI de identificación del recurso dentro del Bundle"
  * resource 1..1 MS
  * resource ^short = "Recurso Encounter"
  * resource only EncounterAtencion
  * request 1..1 MS
  * request ^short = "Petición de creación de recurso"
    * method = #POST
    * url = "Encounter"

* entry[profesionalAtencion] ^short = "Profesional que participa en la atención"
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

* entry[anamnesis] ^short = "Anamnesis"
  * fullUrl 1..1 MS
  * fullUrl ^short = "URI de identificación del recurso dentro del Bundle"
  * resource 1..1 MS
  * resource ^short = "Recurso Observation"
  * resource only ObservacionAnamnesis
  * request 1..1 MS
  * request ^short = "Petición de creación de recurso"
    * method = #POST
    * url = "Observation"

* entry[diagnosticos] ^short = "Diagnósticos de Atención - Comorbilidades"
  * fullUrl 1..1 MS
  * fullUrl ^short = "URI de identificación del recurso dentro del Bundle"
  * resource 1..1 MS
  * resource ^short = "Recurso Condition"
  * resource only ConditionDiagnostico
  * request 1..1 MS
  * request ^short = "Petición de creación de recurso"
    * method = #POST
    * url = "Condition"

* entry[evolucionClinica] ^short = "Evolución Clínica"
  * fullUrl 1..1 MS
  * fullUrl ^short = "URI de identificación del recurso dentro del Bundle"
  * resource 1..1 MS
  * resource ^short = "Recurso Observation"
  * resource only ObservacionEvolClin
  * request 1..1 MS
  * request ^short = "Petición de creación de recurso"
    * method = #POST
    * url = "Observation"

* entry[alergias] ^short = "Alergias e Intolerancias"
  * fullUrl 1..1 MS
  * fullUrl ^short = "URI de identificación del recurso dentro del Bundle"
  * resource 1..1 MS
  * resource ^short = "Recurso AllergyIntolerance"
  * resource only AlergiaIntolerancia
  * request 1..1 MS
  * request ^short = "Petición de creación de recurso"
    * method = #POST
    * url = "AllergyIntolerance"

* entry[indicaciones] ^short = "Indicaciones"
  * fullUrl 1..1 MS
  * fullUrl ^short = "URI de identificación del recurso dentro del Bundle"
  * resource 1..1 MS
  * resource ^short = "Recurso CarePlan"
  * resource only CarePlanIndicaciones
  * request 1..1 MS
  * request ^short = "Petición de creación de recurso"
    * method = #POST
    * url = "CarePlan"

* entry[solicitudes] ^short = "Solicitudes realizadas en la atención"
  * fullUrl 1..1 MS
  * fullUrl ^short = "URI de identificación del recurso dentro del Bundle"
  * resource 1..1 MS
  * resource ^short = "Recurso ServiceRequest"
  * resource only ServiceRequestSolicitudes
  * request 1..1 MS
  * request ^short = "Petición de creación de recurso"
    * method = #POST
    * url = "ServiceRequest"

* entry[resultados] ^short = "Resultados de exámenes"
  * fullUrl 1..1 MS
  * fullUrl ^short = "URI de identificación del recurso dentro del Bundle"
  * resource 1..1 MS
  * resource ^short = "Recurso Observation"
  * resource only ObservationResultadoExamen
  * request 1..1 MS
  * request ^short = "Petición de creación de recurso"
    * method = #POST
    * url = "Observation"

* entry[medicamentos] ^short = "Medicamentos administrados en la atención"
  * fullUrl 1..1 MS
  * fullUrl ^short = "URI de identificación del recurso dentro del Bundle"
  * resource 1..1 MS
  * resource ^short = "Recurso MedicationAdministration"
  * resource only MedicationAdministrationUrg
  * request 1..1 MS
  * request ^short = "Petición de creación de recurso"
    * method = #POST
    * url = "MedicationAdministration"

* entry[observacionesAtencion] ^short = "Observaciones de la atención"
  * fullUrl 1..1 MS
  * fullUrl ^short = "URI de identificación del recurso dentro del Bundle"
  * resource 1..1 MS
  * resource ^short = "Recurso Observation"
  * resource only ObservacionHospitalizacionReciente 
    or ObservacionLesionAutoInfligida 
    or ObservacionMedLegalAlcoholemia 
    or ObservacionMedLegalCert 
    or ObservacionMedLegalExamenToxico 
    or ObservacionMedLegalLesiones
    or ObservacionMedLegalVS
    or ObservacionReconsultaUrgencia 
  * request 1..1 MS
  * request ^short = "Petición de creación de recurso"
    * method = #POST
    * url = "Observation"

* entry[procedimientos] ^short = "Procedimientos realizados en la atención"
  * fullUrl 1..1 MS
  * fullUrl ^short = "URI de identificación del recurso dentro del Bundle"
  * resource 1..1 MS
  * resource ^short = "Recurso Procedure"
  * resource only Procedimiento
  * request 1..1 MS
  * request ^short = "Petición de creación de recurso"
    * method = #POST
    * url = "Procedure"


Invariant: encounter-status-atencion
Description: "El recurso Encounter debe venir con un estado 'in-progress' para la atención de urgencia"
Expression: "entry.resource.ofType(Encounter).status = 'in-progress'"
Severity: #error

Invariant: status-history-atencion
Description: "El Encounter debe incluir statusHistory de Atención con status in-progress"
Severity: #error
Expression: "entry.where(resource is Encounter).resource.statusHistory.where(status = 'in-progress').exists()"
