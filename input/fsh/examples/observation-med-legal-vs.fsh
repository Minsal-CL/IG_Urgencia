Instance: EjObservacionMedLegalVS
InstanceOf: ObservacionMedLegalVS
Usage: #example
Title: "Observación Medico Legal Violencia Sexual"
Description: "Ejemplo de observación que registra la fecha y hora de la realización del informe de violencia sexual"

* id = "80d57f5d-fde9-4df3-95b8-4f223428659c"

* status = #registered

* code
  * coding = CSCodigosUrgencia#ml-vs
  * text = "Médico Legal Violencia Sexual"

* subject = Reference(Ej1PacienteUrgencia)

* encounter = Reference(Ej1Encuentro)

* performer = Reference(Ej2PrestadorProfesional)

* effectiveDateTime = "2024-10-25T14:18:00-04:00"

* valueDateTime = "2024-10-25T14:14:00-04:00"