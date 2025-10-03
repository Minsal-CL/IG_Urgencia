Profile: MedicationAdministrationUrg
Parent: MedicationAdministration
Id: MedicationAdministrationUrg
Title: "MedicationAdministration Urgencia"
Description: "Recurso MedicationAdministration para registrar la administración de medicamentos en un servicio de atención de urgencia"

* id 1..1 MS
  * ^short = "Id temporal necesario para identificar el recurso"
  * ^definition = "El Id que envíe desde la aplicación es temporal, el definitivo es creado por el servidor" 

* status MS
* status ^short = "Estado de la administración"
* status = #completed

* subject 1..1 MS 
* subject ^short = "Referencia al paciente"
* subject only Reference(PatientUrg)

* context 1..1 MS
* context ^short = "Encuentro en donde se realiza la solicitud"
* context only Reference(EncounterUrg or EncounterAtencion)

* performer 0..1 MS 
* performer ^short = "Profesional que administra el medicamento"
  * actor only Reference(PrestadorProfesional) 

* medication[x] 1..1 MS
* medication[x] ^short = "Medicamento administrado"

* effectiveDateTime 1..1 MS
* effectiveDateTime ^short = "Fecha y hora de la administración"

* dosage 0..1 MS
* dosage ^short = "Detalles de la administración"