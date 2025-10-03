Instance: EjObservacionEvolucionClinica
InstanceOf: ObservacionEvolClin
Usage: #example
Title: "Evolución clínica de paciente con dolor abdominal"
Description: "Ejemplo de observación de la evolución clínica de un paciente con dolor abdominal"

* id = "3d07043e-adc5-4047-a309-26e2c38ab074"

* status = #registered

* code
  * coding
    * system = $loinc
    * code = #97669-6
  * text = "Evolución clínica"

* subject = Reference(Ej1PacienteUrgencia)

* encounter = Reference(Ej1Encuentro)

* performer = Reference(Ej2PrestadorProfesional)

* effectiveDateTime = "2024-10-25T14:18:00-04:00"

* valueString = """
Paciente en observación de urgencias desde hace 6 horas por cuadro de colecistitis aguda. Durante su estancia ha presentado dolor persistente en hipocondrio derecho con EVA 6/10 a pesar de analgesia. No ha presentado nuevos episodios de vómito. Afebril, hemodinámicamente estable.
EXAMEN FÍSICO:
Signos vitales:

PA: 125/75 mmHg
FC: 88 lpm
FR: 16 rpm
T°: 37.0°C
SatO2: 98% aire ambiente

General: Consciente, orientado, hidratado, facies álgica moderada.
Abdomen: Blando, doloroso a la palpación en hipocondrio derecho, Murphy positivo, sin signos de irritación peritoneal. Ruidos hidroaéreos presentes.
"""