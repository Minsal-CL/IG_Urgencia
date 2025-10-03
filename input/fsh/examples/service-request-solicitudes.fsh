Instance: EjSolicitudExamenLaboratorio
InstanceOf: ServiceRequestSolicitudes
Usage: #example
Title: "Solicitud de Examen de Laboratorio"
Description: "Ejemplo de solicitud de exámen de laboratorio para un paciente"

* id = "b8b2b855-e554-40ef-98fe-55a07556fc48"

* identifier
  * value = "SOL-20241025-001"

* status = #draft

* intent = #order

* subject = Reference(Ej1PacienteUrgencia)

* requester = Reference(Ej2PrestadorProfesional)

* reasonCode
  * text = "Control de rutina"

* code 
  * coding
    * system = "http://loinc.org"
    * code = #24356-8
  * text = "Hemograma completo"

* encounter = Reference(Ej1Encuentro)

* authoredOn = "2024-10-25T14:00:00-04:00"