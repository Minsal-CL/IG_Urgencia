Instance: Ej1AcompananteUrgencia
InstanceOf: AcompananteUrg
Usage: #example
Title: "Acompañante urgencia"
Description: "Persona que acompaña a un paciente en una situación de urgencia"

* id = "bb7f34f7-8f4e-42c8-aa84-1f64bf584a05"

* relationship = CSRelacionAcompanante#3 "Familiar"

* name[+]
  * family = "Perez"
  * given[+] = "Jose"
  * given[+] = "Luis"
  * family.extension[segundoApellido].valueString = "Gonzalez"

* patient = Reference(Ej1PacienteUrgencia)


