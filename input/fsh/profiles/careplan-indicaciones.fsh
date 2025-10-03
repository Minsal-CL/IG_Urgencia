Profile: CarePlanIndicaciones
Parent: CarePlan
Id: CarePlanIndicaciones
Title: "CarePlan Indicaciones"
Description: "Registro de indicaciones al término de una atención de urgencia"

* status 1..1 MS
* status ^short = "Estado del plan de cuidados, en este caso #active"
* status = #active

* intent 1..1 MS
* intent ^short = "Propósito del plan de cuidados, en este caso #proposal"
* intent = #proposal

* subject 1..1 MS
* subject ^short = "Paciente al que se le asigna el plan de cuidados"
* subject only Reference(PatientUrg)

* encounter 1..1 MS
* encounter ^short = "Encuentro de atención de urgencia"
* encounter only Reference(EncounterUrg or EncounterAtencion)

* author 1..1 MS
* author ^short = "Profesional que registra el plan de cuidados"
* author only Reference(PrestadorProfesional)

* created 1..1 MS
* created ^short = "Fecha y hora en que se crea el plan de cuidados"

* activity 1..* MS
* activity ^short = "Actividades que se deben realizar en el plan de cuidados"
  * detail 1..1 MS
  * detail ^short = "Detalle de la actividad"
    * status 1..1 MS
    * status ^short = "Estado de la actividad, en este caso #not-started"
    * status = #not-started
    * description 1..1 MS
    * description ^short = "Descripción de la actividad"