Instance: EjObservacionLesionAutoInfligida
InstanceOf: ObservacionLesionAutoInfligida
Usage: #example
Title: "Observación Lesión Auto Infligida"
Description: "Ejemplo de observación que registra si el paciente ha sufrido una lesión auto infligida"

* id = "70763f44-cded-482d-9afc-05894c7615c9"

* status = #registered

* code
  * coding
    * system = $snomed
    * code = #276853009
  * text = "Lesión Auto Infligida"

* subject = Reference(Ej1PacienteUrgencia)

* encounter = Reference(Ej1Encuentro)

* performer = Reference(Ej2PrestadorProfesional)

* effectiveDateTime = "2024-10-25T14:18:00-04:00"

* valueCodeableConcept = CSLesionAutoinflingida#1 "No"