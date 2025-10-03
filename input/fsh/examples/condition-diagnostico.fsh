Instance: Ej1CondicionHipotesisDiagnostica
InstanceOf: ConditionDiagnostico
Usage: #example
Title: "Hipótesis Diagnóstica de Dolor Abdominal"
Description: "Ejemplo de condición hipótesis diagnóstica de dolor abdominal en un paciente en un servicio de atención de urgencia."

* id = "e27704ff-fa1a-4750-9d23-36ce567f35b0"

* category = $condition-category#encounter-diagnosis

* clinicalStatus = $condition-clinical#active

* verificationStatus = $condition-ver#provisional

* code
  * coding = $cie10#K35 "Acute appendicitis"

* subject = Reference(Ej1PacienteUrgencia)

* encounter = Reference(Ej1Encuentro)

* recorder = Reference(Ej2PrestadorProfesional)

* note.text = "Paciente con dolor abdominal agudo, compatible con apendicitis aguda."


Instance: Ej1Comorbilidad
InstanceOf: ConditionDiagnostico
Usage: #example
Title: "Comorbilidad de Diabetes Mellitus"
Description: "Ejemplo de condición diagnóstica de comorbilidad de diabetes mellitus en un paciente en un servicio de atención de urgencia."

* id = "c08c94fd-bd58-4be8-bd1d-193441b4567e"

* category = $condition-category#encounter-diagnosis

* clinicalStatus = $condition-clinical#active

* verificationStatus = $condition-ver#provisional

* code
  * coding = $snomed#73211009 "Diabetes mellitus"

* subject = Reference(Ej1PacienteUrgencia)

* encounter = Reference(Ej1Encuentro)

* recorder = Reference(Ej2PrestadorProfesional)