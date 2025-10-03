Instance: EjBundleEgreso
InstanceOf: BundleEgreso
Usage: #example
Title: "Bundle Egreso"
Description: "Ejemplo de recurso Bundle para el egreso de pacientes en un servicio de atención de urgencia"

* type = #transaction

* entry[encuentro]
  * fullUrl = "urn:uuid:d1391b7b-302a-49f8-a908-8116599e137e"
  * resource = EjEncuentroEgreso
  * request
    * method = #PUT
    * url = "Encounter?identifier=126402-0025"

* entry[profesionalEgreso]
  * fullUrl = "urn:uuid:190cd208-48b1-4920-a283-6bc37cbde13a"
  * resource = Ej2PrestadorProfesional
  * request
    * method = #POST
    * url = "Practitioner"
    * ifNoneExist = "identifier=55555555-5"


Instance: EjEncuentroEgreso
InstanceOf: EncounterUrg
Usage: #inline
Title: "EjEncuentro"
Description: "Ejemplo de recurso Encounter en un servicio de atención de urgencia"

* id = "d1391b7b-302a-49f8-a908-8116599e137e"

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

* hospitalization.dischargeDisposition = CSTipoEgreso#1 "Hospitalización"
  * extension[IndicacionHospitalizacion]
    * extension[Indicacion].valueCoding = CSIndicacionHospitalizacion#1 "Hospitalización mismo establecimiento"
    * extension[UnidadDestino].valueCoding = CSUnidadHospitalariaDestino#402 "Área Médica Adulto Cuidados Medios"
    * extension[FechaIndicacion].valueDateTime = "2024-10-25T14:53:00-04:00"