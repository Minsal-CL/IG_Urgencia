Instance: EjObservacionResultadoExamen
InstanceOf: ObservationResultadoExamen
Usage: #example
Title: "Observación Resultado Examen"
Description: "Ejemplo de observación que registra el resultado de un examen"

* id = "aeb13c46-8eb3-4b8f-9bc2-e3d57024cb86"

* status = #registered

* category
  * coding = http://terminology.hl7.org/CodeSystem/observation-category#laboratory

* code 
  * coding
    * system = "http://loinc.org"
    * code = #2339-0
  * text = "Glucosa en sangre"

* subject = Reference(Ej1PacienteUrgencia)

* encounter = Reference(Ej1Encuentro)

* performer = Reference(Ej1PrestadorProfesional)

* effectiveDateTime = "2024-10-25T14:18:00-04:00"

* valueQuantity
  * value = 120
  * unit = "mg/dL"
  * system = "http://unitsofmeasure.org"
  * code = #mg/dL