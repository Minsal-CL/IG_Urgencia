Profile: EncounterAtencion
Parent: EncounterCL
Id: EncounterAtencion
Title: "Encuentro Atención"
Description: "Recurso que representa los diferentes encuentros clínicos durante su estancia en el servicio de urgencia de un paciente en un establecimiento de salud."

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 0
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft

* class 1..1 MS
* class ^short = "Tipo de encuentro de urgencia"
* class = $v3-ActCode#EMER

* status 1..1 MS
* status = #finished

* partOf 1..1 MS
* partOf ^short = "Encuentro de urgencia al que pertenece el encuentro de atención"
* partOf only Reference(EncounterUrg)

* period 1..1 MS
  * start 1..1 MS
  * start ^short = "Fecha y hora de que se realiza la admisión de urgencia"
  * start ^definition = "Corresponde al día, mes, año y hora en que se realiza la admisión. Sigue el formato de fecha larga normado en la norma 231 de Estándares de Información de Salud."
  * end 0..1 MS
  * end ^short = "Fecha y hora de que se cierra el dato de urgencia"
  * end ^definition = "Corresponde al día, el mes y la hora en que luego de cumplir con la completitud de los datos requeridos y el registro por parte del equipo de salud de las intervenciones realizadas, el médico u odontólogo, cierra el dato de urgencia."

* subject 1..1 MS
* subject ^short = "Paciente"
* subject ^definition = "Paciente que recibe atención de urgencia"
* subject only Reference(PatientUrg)

* serviceProvider 1..1 MS
* serviceProvider ^short = "Establecimiento de salud"
* serviceProvider ^definition = "Establecimiento de salud donde se realiza la atención de urgencia"
* serviceProvider only Reference(EstablecimientoUrg)

* participant.type from VSTipoParticipanteEncuentroUrgencia (required)

* participant ^slicing.discriminator.type = #value
* participant ^slicing.discriminator.path = "type"
* participant ^slicing.rules = #open

* participant contains Atendedor 0..* MS and
  AtendedorSecundario 0..* MS and
  Especialista 0..* MS

* participant[Atendedor] ^short = "Profesional que atiende al paciente"
* participant[Atendedor] ^definition = "Profesional que atiende al paciente en un servicio de urgencia"
  * type = $v3-ParticipationType#ATND 
  * type 1..1 MS
  * individual only Reference(PrestadorProfesional)
  * individual ^short = "Referencia al profesional que atiende"
  * individual 1..1 MS
  * period 1..1 MS
    * start 1..1 MS
    * start ^short = "Fecha y hora de atención"

* participant[AtendedorSecundario] ^short = "Profesional que atiende al paciente pero no es el principal"
* participant[AtendedorSecundario] ^definition = "Profesional que atiende al paciente en un servicio de urgencia pero no es el principal"
  * type = $v3-ParticipationType#SPRF 
  * type 1..1 MS
  * individual only Reference(PrestadorProfesional)
  * individual ^short = "Referencia al profesional que atiende"
  * individual 1..1 MS
  * period 1..1 MS
    * start 1..1 MS
    * start ^short = "Fecha y hora de atención"

* participant[Especialista] ^short = "Profesional especialista que atiende al paciente"
* participant[Especialista] ^definition = "Profesional especialista que atiende al paciente en un servicio de urgencia"
  * type = $v3-ParticipationType#CON 
  * type 1..1 MS
  * individual only Reference(PrestadorProfesional)
  * individual ^short = "Referencia al profesional especialista que atiende"
  * individual 1..1 MS
  * period 1..1 MS
    * start 1..1 MS
    * start ^short = "Fecha y hora de atención"