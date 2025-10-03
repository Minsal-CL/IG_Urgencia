Profile: ObservationSignosVitales
Parent: CLCoreSignosVitalesPerfil
Id: ObservationSignosVitales
Title: "Observación Signos Vitales"
Description: "Recurso empleado para registrar la información de signos vitales de un paciente en un servicio de urgencia."

* status 1..1 MS
* status ^short = "Estado de la observación"
* status = #registered

* subject only Reference(PatientUrg)
* subject ^short = "Paciente categorizado"
* subject 1..1 MS

* effectiveDateTime 1..1 MS
* effectiveDateTime ^short = "Fecha y hora en la que se registraron los signos vitales"

* performer 1..1 MS
* performer ^short = "Profesional que registra los signos vitales"
* performer only Reference(PrestadorProfesional)


* encounter only Reference(EncounterUrg)
* encounter ^short = "Encuentro de urgencia asociado"
* encounter 1..1 MS

* category 1..1 MS
* category ^short = "Categoría de la observación"
* category ^definition = "Categoría de la observación. En este caso, se trata de una observación de signos vitales."
* category 
  * coding 1..1 MS
    * system 1..1 MS
    * system = "http://terminology.hl7.org/CodeSystem/observation-category"
    * code 1..1 MS
    * code = #vital-signs

* code 1..1 MS
* code ^short = "Código de la observación"
* code ^definition = "Código de la observación. En este caso, se trata de una observación de signos vitales."
* code from VSSignosVitales (extensible)

* value[x] 0..1 MS
* value[x] ^short = "Valor de la observación"
* value[x] ^definition = "Valor de la observación. En este caso, se trata de los signos vitales del paciente."

* dataAbsentReason 0..1 MS
* dataAbsentReason ^short = "Razón de ausencia de datos"
* dataAbsentReason ^definition = "Razón por la que no se registraron los signos vitales del paciente."

* component 0..* MS
* component ^short = "Componentes de la observación"
* component 
  * code 1..1 MS
  * code ^short = "Código del componente"
  * code ^definition = "Código del componente."
  * code from VSSignosVitales (extensible)
  * value[x] 0..1 MS
  * value[x] ^short = "Valor del componente"
  * value[x] ^definition = "Valor del componente."
  * dataAbsentReason 0..1 MS
  * dataAbsentReason ^short = "Razón de ausencia de datos"