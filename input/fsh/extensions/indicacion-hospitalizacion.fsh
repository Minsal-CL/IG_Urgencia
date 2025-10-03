Extension: IndicacionHospitalizacion
Id: IndicacionHospitalizacion
Title: "Indicación Hospitalización"
Description: "Extensión que registra la indicación de hospitalización en el contexto de un encuentro de atención de urgencia."
Context: Encounter.hospitalization.dischargeDisposition

* obeys unidad-destino-hosp

* extension contains Indicacion 1..1 MS and
  UnidadDestino 0..1 MS and
  FechaIndicacion 1..1 MS

* extension[Indicacion] ^short = "Indicación de hospitalización"
  * value[x] only Coding
  * value[x] from VSIndicacionHospitalizacion
  * value[x] 1..1

* extension[UnidadDestino] ^short = "Unidad Hospitalaria Destino"
  * value[x] only Coding
  * value[x] from VSUnidadHospitalariaDestino (preferred)
  * value[x] 1..1

* extension[FechaIndicacion] ^short = "Fecha de indicación de hospitalización"
  * value[x] only dateTime
  * value[x] 1..1


Invariant: unidad-destino-hosp
Description: "Si la indicación es 'Hospitalización mismo establecimiento', la unidad de destino es obligatoria"

Expression: "extension.where(url='Indicacion' and value as code = 1).exists() implies extension.where(url='UnidadDestino').exists()"Severity: #error