Instance: EjObservacionSignosVitalesPeso
InstanceOf: ObservationSignosVitales
Usage: #example
Title: "Observación Signos Vitales - Peso"
Description: "Ejemplo de observación de signos vitales de un paciente en un servicio de urgencia - Peso."

* id = "3d609e5a-730d-4a32-947c-e632253fa5ff"

* status = #registered

* subject = Reference(Ej1PacienteUrgencia)

* encounter = Reference(Ej1Encuentro)

* performer = Reference(Ej1PrestadorProfesional)

* effectiveDateTime = "2024-10-25T14:18:00-04:00"

* category[VSCat]
  * coding = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs

* code
  * coding = $loinc#29463-7
  * text = "Peso"

* valueQuantity
  * value = 70
  * unit = "kg"
  * system = $ucum
  * code = #kg


Instance: EjObservacionSignosVitalesPulso
InstanceOf: ObservationSignosVitales
Usage: #example
Title: "Observación Signos Vitales - Pulso"
Description: "Ejemplo de observación de signos vitales de un paciente en un servicio de urgencia - Pulso."

* id = "d01f4e15-7f0a-49cf-b5a7-e7dd717526d2"

* status = #registered

* subject = Reference(Ej1PacienteUrgencia)

* encounter = Reference(Ej1Encuentro)

* performer = Reference(Ej1PrestadorProfesional)

* effectiveDateTime = "2024-10-25T14:18:00-04:00"

* category[VSCat]
  * coding = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs

* code
  * coding = $loinc#8867-4
  * text = "Pulso"

* valueQuantity
  * value = 80
  * unit = "/min"
  * system = $ucum
  * code = #/min