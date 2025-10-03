Instance: EjObservacionMedLegalAlcoholemia
InstanceOf: ObservacionMedLegalAlcoholemia
Usage: #example
Title: "Observación Médico Legal Alcoholemia"
Description: "Ejemplo de observación que registra la fecha y hora de la toma de alcoholemia"

* id = "39b30e0d-76d2-4ec1-b047-6c2a13291863"

* status = #registered

* code
  * coding
    * system = $loinc
    * code = #50022-3
  * text = "Médico Legal Alcoholemia"

* subject = Reference(Ej1PacienteUrgencia)

* encounter = Reference(Ej1Encuentro)

* performer = Reference(Ej2PrestadorProfesional)

* effectiveDateTime = "2024-10-25T14:18:00-04:00"

* valueDateTime = "2024-10-25T14:14:00-04:00"