Instance: EjObservacionMedLegalRVSG
InstanceOf: ObservacionMedLegalCert
Usage: #example
Title: "Observación Medico Legal Riesgo Vital o Secuela Grave"
Description: "Ejemplo de observación que registra la fecha y hora de la certificación de riesgo vital o secuela grave"

* id = "8bac861c-c8cc-48fa-a37c-14eeb054974f"

* status = #registered

* code
  * coding = CSCodigosUrgencia#ml-cert
  * text = "Certificación de riesgo vital o secuela grave"

* subject = Reference(Ej1PacienteUrgencia)

* encounter = Reference(Ej1Encuentro)

* performer = Reference(Ej2PrestadorProfesional)

* effectiveDateTime = "2024-10-25T14:18:00-04:00"

* valueDateTime = "2024-10-25T14:14:00-04:00"