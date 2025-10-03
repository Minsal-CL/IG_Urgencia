Profile: ServiceRequestSolicitudes
Parent: ServiceRequest
Id: ServiceRequestSolicitudes
Title: "Solicitudes de Exámenes, Procedimientos y Otros Servicios Complementarios"
Description: "Recurso ServiceRequest para las solicitudes de exámenes, procedimientos y otros servicios durante la atención de un paciente"
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft

* id 1..1 MS
  * ^short = "Id temporal necesario para identificar el recurso"
  * ^definition = "El Id que envíe desde la aplicación es temporal, el definitivo es creado por el servidor" 

* identifier MS
  * value MS
  * value ^short = "Identificador de la solicitud"
* identifier ^short = "Identificador de la solicitud"


// OBLIGATORIOS POR ESTANDAR
* status MS
* status ^short = "Estado de la solicitud"
* status = #draft

* intent MS
* intent ^short = "Intención de la solicitud"
* intent = #order

* subject 1..1 MS 
* subject ^short = "Referencia al paciente"
* subject only Reference(PatientUrg)

* occurrenceDateTime 0..1 MS
* occurrenceDateTime ^short = "Fecha y hora en que se debe realizar la solicitud. El formato corresponde a año, mes, día y hora (hh:mm) y se representa de la siguiente forma: YYYY-MM-DDTHH:MMZ"

* requester 1..1 MS 
* requester ^short = "Quien es la persona que realiza la solicitud"
* requester only Reference(PrestadorProfesional) 

* reasonCode 1..1 MS
  * text 1..1 MS
  * text ^short = "Razón en texto libre"
* reasonCode ^short = "Razón por la que se realiza la solicitud"

* note 0..1 MS
  * text 1..1 MS
  * text ^short = "Nota en texto libre"
* note ^short = "Nota explicatoria adicional"

* code 1..1 MS
  * coding ^short = "Códigos definidos por un sistema terminológico"
    * system MS 
    * system ^short = "Sistema terminológico, url/uri/uuid"
    * code MS 
    * code ^short = "Código definido en un sistema terminológico"
  * text MS 
  * text ^short  = "Detalle de lo solicitado en texto libre" 
* code ^short = "Qué es lo que se está solicitando"
* code from CodigoExamen (extensible)

* encounter 1..1 MS
* encounter ^short = "Encuentro en donde se genera la solicitud"
* encounter only Reference(EncounterUrg or EncounterAtencion)

* authoredOn 1..1 MS
* authoredOn ^short = "Fecha en que se genera la solicitud. El formato corresponde a año, mes, día y hora (hh:mm) YYYY-MM-DDTHH:MMZ"