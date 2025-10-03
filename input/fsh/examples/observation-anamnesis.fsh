Instance: EjObservacionAnamnesis
InstanceOf: ObservacionAnamnesis
Usage: #example
Title: "Anamnesis de paciente con dolor abdominal"
Description: "Ejemplo de observación de la anamnesis de un paciente con dolor abdominal"

* id = "7ea8cb9a-fc10-44ad-8c52-de03c4517b30"

* status = #registered

* code
  * coding
    * system = $snomed
    * code = #84100007
  * text = "Anamnesis"

* subject = Reference(Ej1PacienteUrgencia)

* encounter = Reference(Ej1Encuentro)

* performer = Reference(Ej2PrestadorProfesional)

* effectiveDateTime = "2024-10-25T14:18:00-04:00"

* valueString = """
MOTIVO DE CONSULTA:
Dolor abdominal de 24 horas de evolución.

HISTORIA ACTUAL:
Inicio en región periumbilical hace 24 horas, posteriormente migra a fosa iliaca derecha.
Intensidad progresiva, EVA actual 8/10.
Asociado a:
- Anorexia desde inicio de síntomas
- Náuseas y dos episodios de vómitos
- Sensación febril no cuantificada
Dolor aumenta al caminar y con movimientos bruscos.
No reporta diarrea ni síntomas urinarios.
Automedicación con Paracetamol sin alivio.

ANTECEDENTES:
Mórbidos: No
Quirúrgicos: No
Alergias: No
Medicamentos habituales: No
Última ingesta: >12 horas (anorexia)
"""