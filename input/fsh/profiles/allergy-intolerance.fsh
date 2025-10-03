Profile: AlergiaIntolerancia
Parent: CoreAlergiaIntCl
Id: AlergiaIntolerancia
Title: "Alergias e Intolerancia"
Description: "Perfíl empleado para registrar alergias e intolerancias de un paciente."
* clinicalStatus 0..1 MS
* verificationStatus 0..1 MS
* type 0..1 MS
* code 1..1 MS
* encounter 1..1 MS
* encounter ^short = "Encuentro de Urgencia"
* encounter only Reference(EncounterUrg or EncounterAtencion)
* patient 1..1 MS
* patient only Reference(PatientUrg)
* patient ^short = "Paciente al que se le registra la alergia o intolerancia"
* onset[x] 0..1 MS
* onset[x] ^short = "Fecha de inicio de la alergia o intolerancia"
* reaction 0..* MS
* reaction ^short = "Reacción asociada a la alergia o intolerancia"
  * manifestation 1..1 MS
  * manifestation ^short = "Manifestación de la reacción"
  * severity 0..1 MS
  * severity ^short = "Severidad de la reacción"