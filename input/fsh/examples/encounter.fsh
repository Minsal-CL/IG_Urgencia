Instance: Ej1Encuentro
InstanceOf: EncounterUrg
Usage: #example
Title: "Encuentro Urgencia"
Description: "Ejemplo de recurso Encounter con información que debería contener para indicar las atenciones de un paciente en un servicio de urgencia"

* id = "d1391b7b-302a-49f8-a908-8116599e137e"

* extension[Acompanante].valueBoolean = false

* status = #in-progress

* statusHistory[Admision]
  * status = #arrived
  * period
    * start = "2024-10-25T13:18:00-04:00"

* statusHistory[Categorizacion]
  * status = #triaged
  * period
    * start = "2024-10-25T13:30:00-04:00"

* statusHistory[Atencion]
  * status = #in-progress
  * period
    * start = "2024-10-25T14:12:00-04:00"

* class = $v3-ActCode#EMER

* identifier[+]
  * value = "126402-0025"

* period
  * start = "2024-10-25T13:18:00-04:00"

* hospitalization
  * extension[MedioDeLlegada].valueCodeableConcept = CSMedioDeLlegada#5 "Vehículo particular"
  * extension[ConsultaPorAccidente].valueBoolean = false
  * admitSource = CSProcedencia#9 "Domicilio"

* subject = Reference(Ej1PacienteUrgencia)

* priority = CSCategorizacionUGO#C3 "Atención Prioritaria"

* reasonCode
  * text = "Dolor abdominal"

* serviceProvider = Reference(EjOrganizacionEstablecimiento)

* participant[Admisionista]
  * type = $v3-ParticipationType#ADM 
  * individual = Reference(EjProfesionalAdministrativo)
  * period
    * start = "2024-10-25T13:18:00-04:00"

* participant[Acompanante]
  * type = $participant-type#emergency 
  * individual = Reference(Ej1AcompananteUrgencia)

* participant[Categorizador]
  * type = CSTipoParticipanteUrgencia#triage 
  * individual = Reference(Ej1PrestadorProfesional)
  * period
    * start = "2024-10-25T13:30:00-04:00"

* participant[Atendedor]
  * type = $v3-ParticipationType#ATND 
  * individual = Reference(Ej2PrestadorProfesional)
  * period
    * start = "2024-10-25T14:12:00-04:00"


Instance: Ej2Encuentro
InstanceOf: EncounterUrg
Usage: #example
Title: "Encuentro Urgencia Abandono"
Description: "Ejemplo de recurso Encounter con registro de abandono de atención de un paciente en un servicio de urgencia"

* id = "4c9a3e03-a907-492e-b69c-710cb8c42347"

* extension[Acompanante].valueBoolean = false

* extension[LeyPrevisional].valueCodeableConcept = CSLeyPrevisional#2

* status = #in-progress

* statusHistory[Admision]
  * status = #arrived
  * period
    * start = "2024-10-25T13:18:00-04:00"

* statusHistory[Categorizacion]
  * status = #triaged
  * period
    * start = "2024-10-25T13:30:00-04:00"

* statusHistory[Atencion]
  * status = #in-progress
  * period
    * start = "2024-10-25T14:12:00-04:00"

* class = $v3-ActCode#EMER

* identifier[+]
  * value = "126402-0025"

* period
  * start = "2024-10-25T13:18:00-04:00"

* hospitalization
  * extension[MedioDeLlegada].valueCodeableConcept = CSMedioDeLlegada#5 "Vehículo particular"
  * extension[ConsultaPorAccidente].valueBoolean = false
  * admitSource = CSProcedencia#9 "Domicilio"
  * dischargeDisposition = CSTipoEgreso#5 "Abandono"
    * extension[Abandono].valueCoding = CSAbandono#2

* subject = Reference(Ej1PacienteUrgencia)

* priority = CSCategorizacionUGO#C3 "Atención Prioritaria"

* reasonCode
  * text = "Dolor abdominal"

* serviceProvider = Reference(EjOrganizacionEstablecimiento)

* participant[Admisionista]
  * type = $v3-ParticipationType#ADM 
  * individual = Reference(EjProfesionalAdministrativo)
  * period
    * start = "2024-10-25T13:18:00-04:00"

* participant[Acompanante]
  * type = $participant-type#emergency 
  * individual = Reference(Ej1AcompananteUrgencia)

* participant[Categorizador]
  * type = CSTipoParticipanteUrgencia#triage 
  * individual = Reference(Ej1PrestadorProfesional)
  * period
    * start = "2024-10-25T13:30:00-04:00"

* participant[Atendedor]
  * type = $v3-ParticipationType#ATND 
  * individual = Reference(Ej2PrestadorProfesional)
  * period
    * start = "2024-10-25T14:12:00-04:00"