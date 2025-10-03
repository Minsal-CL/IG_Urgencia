Instance: EjIndicacionesPlanCuidados
InstanceOf: CarePlanIndicaciones
Usage: #example
Title: "Indicaciones Plan de Cuidados"
Description: "Ejemplo de un plan de cuidados con indicaciones al término de una atención de urgencia"

* id = "23eb67e4-4fd5-4315-963a-3c5e63fff3a5"

* status = #active

* intent = #proposal

* subject = Reference(Ej1PacienteUrgencia)

* encounter = Reference(Ej1Encuentro)

* author = Reference(Ej2PrestadorProfesional)

* created = "2024-10-25T14:18:00-04:00"

* activity[+]
  * detail
    * status = #not-started
    * description = "Control de signos vitales cada 4 horas"

* activity[+]
  * detail
    * status = #not-started
    * description = "Mantener dieta blanda, baja en grasas. Evitar alimentos fritos, condimentados o irritantes"

* activity[+]
  * detail
    * status = #not-started
    * description = "Administrar medicamentos según prescripción médica"