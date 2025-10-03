Profile: ObservacionAnamnesis
Parent: ObservacionCL
Id: ObservacionAnamnesis
Title: "Observación Anamnesis"
Description: "Observación de la anamnesis de un paciente en un servicio de urgencia"
* status 1..1 MS
* status ^short = "Estado de la observación, en este caso #registered"
* status = #registered

* code 1..1 MS
  * coding 1..1 MS
    * system 1..1 MS
    * system ^short =  "Sistema terminológico, url/uri/uuid"
    * system = $snomed
    * code 1..1 MS
    * code = #84100007
    * display 0..1 MS
  * text 0..1 MS
  * text = "Anamnesis"

* subject 1..1 MS
* subject ^short = "Paciente que se le realiza la anamnesis"
* subject ^definition = "Paciente que se le realiza la anamnesis"
* subject only Reference(PatientUrg)

* encounter 1..1 MS
* encounter ^short = "Encuentro de atención de urgencia"
* encounter only Reference(EncounterUrg or EncounterAtencion)

* performer 1..1 MS
* performer ^short = "Profesional que realiza la anamnesis"
* performer only Reference(PrestadorProfesional)

* effectiveDateTime 0..1 MS
* effectiveDateTime ^short = "Tiempo o momento en que se realizo anamnesis"

* value[x] 1..1 MS
* value[x] only string
* valueString ^short = "Anamnesis"