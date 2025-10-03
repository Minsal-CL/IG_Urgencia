Instance: EjAlergyIntolerance
InstanceOf: AlergiaIntolerancia
Usage: #example
Title: "Alergia o Intolerancia"
Description: "Ejemplo de una alergia o intolerancia de un paciente."
* id = "39d71be0-2eea-4672-ac70-73373a19e714"

* clinicalStatus = $allergy-clinical#active

* verificationStatus = $allergy-verification#confirmed

* type = #allergy

* code
  * coding
    * system = $snomed
    * code = #372687004
  * text = "Alergia a la amoxicilina"

* encounter = Reference(Ej1Encuentro)

* patient = Reference(Ej1PacienteUrgencia)