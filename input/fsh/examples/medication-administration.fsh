Instance: Ej1AdministracionMedicacion
InstanceOf: MedicationAdministrationUrg
Usage: #example
Title: "Medicación Administrada en Urgencia"
Description: "Ejemplo de administración de medicación en un servicio de atención de urgencia"

* id = "716cd145-cd36-4935-9351-263d4e43f3da"

* status = #completed


* subject = Reference(Ej1PacienteUrgencia)

* context = Reference(Ej1Encuentro)

* performer.actor = Reference(Ej1PrestadorProfesional)

* medicationCodeableConcept
  * coding[+]
    * system = $snomed
    * code = #387517004
  * text = "Paracetamol 500mg tablet"

* effectiveDateTime = "2024-10-25T14:18:00-04:00"