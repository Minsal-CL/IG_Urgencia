Profile: ObservacionEvolClin
Parent: ObservacionCL
Id: observacion-evol-clin
Title: "Observación Evolución Clínica"
Description: "Observación de la evolución clínica de un paciente en un servicio de urgencia"
* status 1..1 MS
* status ^short = "Estado de la observación, en este caso #registered"
* status = #registered

* code 1..1 MS
  * coding 1..1 MS
    * system 1..1 MS
    * system ^short =  "Sistema terminológico, url/uri/uuid"
    * system = $loinc
    * code 1..1 MS
    * code = #97669-6
    * display 0..1 MS
  * text 0..1 MS
  * text = "Evolución clínica"

* subject 1..1 MS
* subject ^short = "Paciente al que se le registra la evolución clínica"
* subject ^definition = "Paciente al que se le registra la evolución clínica"
* subject only Reference(PatientUrg)

* encounter 1..1 MS
* encounter ^short = "Encuentro de atención de urgencia"
* encounter only Reference(EncounterUrg or EncounterAtencion)

* performer 1..1 MS
* performer ^short = "Profesional que registra la evolución clínica"
* performer only Reference(PrestadorProfesional)

* effectiveDateTime 0..1 MS
* effectiveDateTime ^short = "Tiempo o momento en que se registra la evolución clínica"

* value[x] 1..1 MS
* value[x] only string
* valueString ^short = "Evolución clínica registrada"