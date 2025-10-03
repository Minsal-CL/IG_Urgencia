Instance: EjObservacionReconsultaUrgencia
InstanceOf: ObservacionReconsultaUrgencia
Usage: #example
Title: "Observación Reconsulta Urgencia"
Description: "Ejemplo de observación que registra si el paciente ha tenido un evento de urgencia previo en el período de 15-21 días"

* id = "d00b0ce5-aee0-475d-8028-a360f60b810c"

* status = #registered

* code
  * coding = CSCodigosUrgencia#reconsulta
  * text = "Reconsulta"

* subject = Reference(Ej1PacienteUrgencia)

* encounter = Reference(Ej1Encuentro)

* performer = Reference(Ej2PrestadorProfesional)

* effectiveDateTime = "2024-10-25T14:18:00-04:00"

* valueBoolean = true