Extension: Fallecido
Id: Fallecido
Title: "Fallecido"
Description: "Extensión que registra la información de un paciente fallecido en el contexto de un encuentro de atención de urgencia."
Context: Encounter.hospitalization.dischargeDisposition

* extension contains Tipo 1..1 MS and
  Destino 1..1 MS

* extension[Tipo] ^short = "Tipo de fallecimiento"
  * value[x] only Coding
  * value[x] from VSFallecido

* extension[Destino] ^short = "Destino del fallecido"
  * value[x] only Coding
  * value[x] from VSDestinoFallecido