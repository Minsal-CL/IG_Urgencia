Instance: EjObservacionMedLegalLesiones
InstanceOf: ObservacionMedLegalLesiones
Usage: #example
Title: "Observación Médico Legal Lesiones"
Description: "Ejemplo de observación que registra la fecha y hora de la realización del informe de lesiones"

* id = "813c8069-e56d-42a9-b2c8-91b11703c13e"

* status = #registered

* code
  * coding = CSCodigosUrgencia#ml-lesiones
  * text = "Médico Legal Lesiones"

* subject = Reference(Ej1PacienteUrgencia)

* encounter = Reference(Ej1Encuentro)

* performer = Reference(Ej2PrestadorProfesional)

* effectiveDateTime = "2024-10-25T14:18:00-04:00"

* valueDateTime = "2024-10-25T14:14:00-04:00"