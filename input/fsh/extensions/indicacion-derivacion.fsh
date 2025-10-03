Extension: IndicacionDerivacion
Id: IndicacionDerivacion
Title: "Indicación Derivación"
Description: "Extensión que registra la indicación de derivación en el contexto de un encuentro de atención de urgencia."
Context: Encounter.hospitalization.dischargeDisposition

* extension contains Indicacion 1..1 MS and
  FechaIndicacion 1..1 MS

* extension[Indicacion] ^short = "Indicación de derivación"
  * value[x] only Coding
  * value[x] from VSIndicacionTrasladoOtroCentro

* extension[FechaIndicacion] ^short = "Fecha de indicación de derivación"
  * value[x] only dateTime