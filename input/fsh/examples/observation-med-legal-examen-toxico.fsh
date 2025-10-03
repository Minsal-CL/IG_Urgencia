Instance: EjObservacionMedLegalExamenToxico
InstanceOf: ObservacionMedLegalExamenToxico
Usage: #example
Title: "Observación Medico Legal Examen Toxicológico"
Description: "Ejemplo de observación que registra la fecha y hora en que se realiza un examen toxicológico"

* id = "535e0438-315b-4291-b5cc-4469cef1ffb6"

* status = #registered

* code
  * coding
    * system = $loinc
    * code = #29587-3
  * text = "Médico Legal Exámen Toxicológico"

* subject = Reference(Ej1PacienteUrgencia)

* encounter = Reference(Ej1Encuentro)

* performer = Reference(Ej2PrestadorProfesional)

* effectiveDateTime = "2024-10-25T14:18:00-04:00"

* valueDateTime = "2024-10-25T14:14:00-04:00"