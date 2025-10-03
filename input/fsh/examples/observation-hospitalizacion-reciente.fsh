Instance: EjObservacionHospitalizacionReciente
InstanceOf: ObservacionHospitalizacionReciente
Usage: #example
Title: "Observación de hospitalización reciente"
Description: "Observación que registra si el paciente ha sido hospitalizado recientemente"

* id = "447eef01-d4b1-4312-9c4f-c34ca46dce11"

* status = #registered

* code
  * coding = CSCodigosUrgencia#hosp-reciente
  * text = "Hospitalización reciente"

* subject = Reference(Ej1PacienteUrgencia)

* encounter = Reference(Ej1Encuentro)

* performer = Reference(Ej2PrestadorProfesional)

* effectiveDateTime = "2024-10-25T14:18:00-04:00"

* valueBoolean = false