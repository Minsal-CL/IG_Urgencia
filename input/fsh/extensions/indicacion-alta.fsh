Extension: IndicacionAlta
Id: IndicacionAlta
Title: "Indicación Alta"
Description: "Extensión que registra la indicación de alta en el contexto de un encuentro de atención de urgencia."
Context: Encounter.hospitalization.dischargeDisposition

* extension contains Indicacion 1..1 MS and
  FechaIndicacion 1..1 MS

* extension[Indicacion] ^short = "Indicación de alta"
  * value[x] only Coding
  * value[x] from VSIndicacionAlta

* extension[FechaIndicacion] ^short = "Fecha de indicación de alta"
  * value[x] only dateTime