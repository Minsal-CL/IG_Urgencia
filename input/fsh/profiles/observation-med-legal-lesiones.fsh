Profile: ObservacionMedLegalLesiones
Parent: ObservacionCL
Id: ObservacionMedLegalLesiones
Title: "Observación Medico Legal Lesiones"
Description: "Observación que registra la fecha y hora de la realización del informe de lesiones"
* status 1..1 MS
* status ^short = "Estado de la observación, en este caso #registered"
* status = #registered

* code 1..1 MS
  * coding = CSCodigosUrgencia#ml-lesiones
  * coding 1..1 MS
    * system 1..1 MS
    * system ^short =  "Sistema terminológico, url/uri/uuid"
    * code 1..1 MS
    * display 0..1 MS
  * text 0..1 MS
  * text = "Médico Legal Lesiones"

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
* value[x] only dateTime
* valueDateTime ^short = "Fecha y hora realización de informe de lesiones"