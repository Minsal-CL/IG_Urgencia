Instance: EjProcedimiento
InstanceOf: Procedimiento
Usage: #example
Title: "Procedimiento"
Description: "Ejemplo de recurso Procedure para el registro de un procedimiento realizado a un paciente"

* id = "dc28ac35-92d9-495c-b97f-78ce3733c671"

* status = #completed

* subject = Reference(Ej1PacienteUrgencia)

* performedDateTime = "2024-10-25T14:00:00-04:00"

* performer.actor = Reference(Ej2PrestadorProfesional)

* reasonCode
  * text = "Herida en la pierna"

* code
  * coding
    * system = "http://snomed.info/sct"
    * code = #234262008
  * text = "Sutura de herida"

* encounter = Reference(Ej1Encuentro)
