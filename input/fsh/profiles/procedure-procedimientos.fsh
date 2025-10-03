Profile: Procedimiento
Parent: Procedure
Id: Procedimiento
Title: "Procedimientos de Urgencias"
Description: "Registro de un procedimiento realizado a un paciente"

* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft

* id 1..1 MS
  * ^short = "Id temporal necesario para identificar el recurso"
  * ^definition = "El Id que envíe desde la aplicación es temporal, el definitivo es creado por el servidor" 

* status MS
* status ^short = "Estado del procedimiento"
* status = #completed

* subject 1..1 MS
* subject ^short = "Paciente al que se le realizó el procedimiento"
* subject only Reference(PatientUrg)

* performedDateTime 1..1 MS
* performedDateTime ^short = "Fecha y hora en que se realizó el procedimiento."

* performer 1..1 MS
* performer ^short = "Persona que realizó el procedimiento"
  * actor only Reference(PrestadorProfesional)

* reasonCode 1..1 MS
  * text 1..1 MS
  * text ^short = "Razón en texto libre"

* code 1..1 MS
  * coding ^short = "Códigos definidos por un sistema terminológico"
    * system MS
    * system ^short = "Sistema terminológico, url/uri/uuid"
    * code MS
    * code ^short = "Código definido en un sistema terminológico"
  * text MS
  * text ^short  = "Detalle del procedimiento en texto libre"

* encounter 1..1 MS
* encounter ^short = "Encuentro en donde se realizó el procedimiento"
* encounter only Reference(EncounterUrg or EncounterAtencion)