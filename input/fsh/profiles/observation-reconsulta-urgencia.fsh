Profile: ObservacionReconsultaUrgencia
Parent: ObservacionCL
Id: ObservacionReconsultaUrgencia
Title: "Observación Reconsulta Urgencia"
Description: "Observación que registra si el paciente ha tenido un evento de urgencia previo en el período de 15-21 días"
* status 1..1 MS
* status ^short = "Estado de la observación, en este caso #registered"
* status = #registered

* code 1..1 MS
  * coding = CSCodigosUrgencia#reconsulta
  * coding 1..1 MS
    * system 1..1 MS
    * system ^short =  "Sistema terminológico, url/uri/uuid"
    * code 1..1 MS
    * display 0..1 MS
  * text 0..1 MS
  * text = "Reconsulta"

* subject 1..1 MS
* subject ^short = "Paciente que se le registra la observación"
* subject only Reference(PatientUrg)

* encounter 1..1 MS
* encounter ^short = "Encuentro de atención de urgencia"
* encounter only Reference(EncounterUrg)

* performer 0..1 MS
* performer ^short = "Profesional que registra la observación"
* performer only Reference(PrestadorProfesional)

* effectiveDateTime 0..1 MS
* effectiveDateTime ^short = "Tiempo o momento en que se registra la observación"

* value[x] 1..1 MS
* value[x] only boolean
* valueBoolean ^short = "Reconsulta"