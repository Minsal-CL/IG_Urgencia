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


Instance: EjEncuentroEgresoDefusion
InstanceOf: EncounterUrg
Usage: #example
Title: "Ejemplo Encuentro Urgencia Egreso por Defunción"
Description: "Ejemplo de recurso Encounter en un servicio de atención de urgencia con egreso por defunción del paciente, utilizando la extensión Fallecido."

* id = "e383a62a-628f-4408-b98f-5e5914869bfe"

* extension[Acompanante].valueBoolean = false

* status = #finished

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

* statusHistory[Egreso]
  * status = #finished
  * period
    * start = "2024-10-25T14:53:00-04:00"

* class = $v3-ActCode#EMER

* identifier[+]
  * value = "126402-0025"

* period
  * start = "2024-10-25T13:18:00-04:00"
  * end = "2024-10-25T14:53:00-04:00"

* hospitalization
  * extension[MedioDeLlegada].valueCodeableConcept = CSMedioDeLlegada#5 "Vehículo particular"
  * extension[ConsultaPorAccidente].valueBoolean = false
  * admitSource = CSProcedencia#9 "Domicilio"

* subject = Reference(Ej1PacienteUrgencia)

* priority = CSCategorizacionUGO#C3 "Atención Prioritaria"

* reasonCode
  * text = "Dolor abdominal de 24 horas de evolución"

* serviceProvider = Reference(EjOrganizacionEstablecimiento)

* participant[Admisionista]
  * individual = Reference(EjProfesionalAdministrativo)
  * period
    * start = "2024-10-25T13:18:00-04:00"

* participant[Acompanante]
  * individual = Reference(Ej1AcompananteUrgencia)

* participant[Categorizador][+]
  * individual = Reference(Ej1PrestadorProfesional)
  * period
    * start = "2024-10-25T13:30:00-04:00"

* participant[Atendedor][+]
  * individual = Reference(Ej2PrestadorProfesional)
  * period
    * start = "2024-10-25T14:12:00-04:00"

* participant[Especialista][+]
  * individual = Reference(Ej3PrestadorProfesional)
  * period
    * start = "2024-10-25T14:29:00-04:00"

* participant[Terminador]
  * individual = Reference(Ej2PrestadorProfesional)
  * period
    * start = "2024-10-25T14:53:00-04:00"

* diagnosis[HipotesisDiagnostica][+]
  * condition = Reference(Ej1CondicionHipotesisDiagnostica)
  * rank = 1

* hospitalization.dischargeDisposition = CSTipoEgreso#6 "Fallecido"
  * extension[Fallecido] = EjemploFallecido

Instance: EjemploFallecido
InstanceOf: Fallecido
Usage: #inline

* extension[Tipo].valueCoding =  CSFallecido#2 "Usuarios fallecidos en proceso de atención"
* extension[Destino].valueCoding = CSDestinoFallecido#1 "A disposición de los familiares"


Instance: EjEncuentroEgresoDerivacion
InstanceOf: EncounterUrg
Usage: #example
Title: "Ejemplo Encuentro Urgencia Egreso por Derivación"
Description: "Ejemplo de recurso Encounter en un servicio de atención de urgencia con egreso por derivación o traslado a otro centro asistencial, utilizando la extensión IndicacionDerivacion."

* id = "fbce23ed-b195-47a2-81a2-be4aaf11b038"

* extension[Acompanante].valueBoolean = false

* status = #finished

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

* statusHistory[Egreso]
  * status = #finished
  * period
    * start = "2024-10-25T14:53:00-04:00"

* class = $v3-ActCode#EMER

* identifier[+]
  * value = "126402-0025"

* period
  * start = "2024-10-25T13:18:00-04:00"
  * end = "2024-10-25T14:53:00-04:00"

* hospitalization
  * extension[MedioDeLlegada].valueCodeableConcept = CSMedioDeLlegada#5 "Vehículo particular"
  * extension[ConsultaPorAccidente].valueBoolean = false
  * admitSource = CSProcedencia#9 "Domicilio"

* subject = Reference(Ej1PacienteUrgencia)

* priority = CSCategorizacionUGO#C3 "Atención Prioritaria"

* reasonCode
  * text = "Dolor abdominal de 24 horas de evolución"

* serviceProvider = Reference(EjOrganizacionEstablecimiento)

* participant[Admisionista]
  * individual = Reference(EjProfesionalAdministrativo)
  * period
    * start = "2024-10-25T13:18:00-04:00"

* participant[Acompanante]
  * individual = Reference(Ej1AcompananteUrgencia)

* participant[Categorizador][+]
  * individual = Reference(Ej1PrestadorProfesional)
  * period
    * start = "2024-10-25T13:30:00-04:00"

* participant[Atendedor][+]
  * individual = Reference(Ej2PrestadorProfesional)
  * period
    * start = "2024-10-25T14:12:00-04:00"

* participant[Especialista][+]
  * individual = Reference(Ej3PrestadorProfesional)
  * period
    * start = "2024-10-25T14:29:00-04:00"

* participant[Terminador]
  * individual = Reference(Ej2PrestadorProfesional)
  * period
    * start = "2024-10-25T14:53:00-04:00"

* diagnosis[HipotesisDiagnostica][+]
  * condition = Reference(Ej1CondicionHipotesisDiagnostica)
  * rank = 1

* hospitalization.dischargeDisposition = CSTipoEgreso#4 "Derivación o traslado a otro centro"
  * extension[IndicacionDerivacion] = IndicacionDerivacionTrasladoOtroCentro

Instance: IndicacionDerivacionTrasladoOtroCentro
InstanceOf: IndicacionDerivacion
Usage: #inline
* extension[Indicacion].valueCoding = CSIndicacionTrasladoOtroCentro#1 "Traslado a otro centro asistencial o establecimiento sanitario (Perteneciente al SNSS)"
* extension[FechaIndicacion].valueDateTime = "2024-10-25T14:53:00-04:00"


Instance: EjEncuentroEgresoAlta
InstanceOf: EncounterUrg
Usage: #example
Title: "Ejemplo Encuentro Urgencia Egreso por Alta"
Description: "Ejemplo de recurso Encounter en un servicio de atención de urgencia con egreso por alta del paciente, utilizando la extensión Indicacion Alta."

* extension[Acompanante].valueBoolean = false

* id = "bd36a211-7b55-4ff7-905b-0dac7bf35aee"

* status = #finished

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

* statusHistory[Egreso]
  * status = #finished
  * period
    * start = "2024-10-25T14:53:00-04:00"

* class = $v3-ActCode#EMER

* identifier[+]
  * value = "126402-0025"

* period
  * start = "2024-10-25T13:18:00-04:00"
  * end = "2024-10-25T14:53:00-04:00"

* hospitalization
  * extension[MedioDeLlegada].valueCodeableConcept = CSMedioDeLlegada#5 "Vehículo particular"
  * extension[ConsultaPorAccidente].valueBoolean = false
  * admitSource = CSProcedencia#9 "Domicilio"

* subject = Reference(Ej1PacienteUrgencia)

* priority = CSCategorizacionUGO#C3 "Atención Prioritaria"

* reasonCode
  * text = "Dolor abdominal de 24 horas de evolución"

* serviceProvider = Reference(EjOrganizacionEstablecimiento)

* participant[Admisionista]
  * individual = Reference(EjProfesionalAdministrativo)
  * period
    * start = "2024-10-25T13:18:00-04:00"

* participant[Acompanante]
  * individual = Reference(Ej1AcompananteUrgencia)

* participant[Categorizador][+]
  * individual = Reference(Ej1PrestadorProfesional)
  * period
    * start = "2024-10-25T13:30:00-04:00"

* participant[Atendedor][+]
  * individual = Reference(Ej2PrestadorProfesional)
  * period
    * start = "2024-10-25T14:12:00-04:00"

* participant[Especialista][+]
  * individual = Reference(Ej3PrestadorProfesional)
  * period
    * start = "2024-10-25T14:29:00-04:00"

* participant[Terminador]
  * individual = Reference(Ej2PrestadorProfesional)
  * period
    * start = "2024-10-25T14:53:00-04:00"

* diagnosis[HipotesisDiagnostica][+]
  * condition = Reference(Ej1CondicionHipotesisDiagnostica)
  * rank = 1

* hospitalization.dischargeDisposition = CSTipoEgreso#3 "Alta"
  * extension[IndicacionAlta] = IndicacionAltaMedica

Instance: IndicacionAltaMedica
InstanceOf: IndicacionAlta
Usage: #inline
* extension[Indicacion].valueCoding = CSIndicacionAlta#1 "Alta a domicilio"
* extension[FechaIndicacion].valueDateTime = "2024-10-25T14:53:00-04:00"