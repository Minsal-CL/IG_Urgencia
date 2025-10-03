Profile: AcompananteUrg
Parent: RelatedPerson
Id: AcompananteUrg
Title: "Acompañante Urgencia"
Description: "Información del acompañante del paciente que acude a una unidad de urgencias."

* relationship ^short = "Relación con el paciente"
* relationship ^definition = "Tipo de relación que tiene el acompañante con el paciente."
* relationship 1..1 MS
* relationship from VSRelacionAcompanante (required)



* name ^short = "Nombre del acompañante."
* name ^definition = "Nombre de la persona que acompaña al paciente en la atención de urgencia."
* name 1..1 MS
  * given ^short = "Nombre del acompañante"
  * given 1..* MS
  * family ^short = "Primer Apellido del acompañante"
  * family 1..1 MS
    * extension contains SegundoApellido named segundoApellido 0..1 MS
    * extension[segundoApellido] ^short = "Segundo Apellido del acompañante"

* telecom ^short = "Información de contacto del acompañante"
  * value 0..1 MS
  * value ^short = "Dato de contacto del acompañante"
  * system 0..1 MS
  * use 0..1 MS

* patient only Reference(PatientUrg)
* patient ^short = "Paciente al que acompaña"
