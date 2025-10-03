Instance: EjBundleAtencion
InstanceOf: BundleAtencion
Usage: #example
Title: "Bundle Atención"
Description: "Ejemplo de recurso Bundle para la atención de pacientes en un servicio de atención de urgencia"

* type = #transaction

* entry[encuentro]
  * fullUrl = "urn:uuid:d1391b7b-302a-49f8-a908-8116599e137e"
  * resource = EjEncuentroAtencion
  * request
    * method = #PUT
    * url = "Encounter?identifier=126402-0025"

* entry[profesionalAtencion][+]
  * fullUrl = "urn:uuid:190cd208-48b1-4920-a283-6bc37cbde13a"
  * resource = Ej2PrestadorProfesional
  * request
    * method = #POST
    * url = "Practitioner"
    * ifNoneExist = "identifier=55555555-5"

* entry[profesionalAtencion][+]
  * fullUrl = "urn:uuid:fbb0e12c-95ec-43f7-bff1-73009b307cb5"
  * resource = Ej3PrestadorProfesional
  * request
    * method = #POST
    * url = "Practitioner"
    * ifNoneExist = "identifier=33333333-3"

* entry[anamnesis]
  * fullUrl = "urn:uuid:7ea8cb9a-fc10-44ad-8c52-de03c4517b30"
  * resource = EjObservacionAnamnesis
    * encounter
      * reference = "urn:uuid:d1391b7b-302a-49f8-a908-8116599e137e"
    * performer
      * reference = "urn:uuid:190cd208-48b1-4920-a283-6bc37cbde13a"
  * request
    * method = #POST
    * url = "Observation"

* entry[diagnosticos][+]
  * fullUrl = "urn:uuid:e27704ff-fa1a-4750-9d23-36ce567f35b0"
  * resource = Ej1CondicionHipotesisDiagnostica
    * encounter
      * reference = "urn:uuid:d1391b7b-302a-49f8-a908-8116599e137e"
    * recorder
      * reference = "urn:uuid:190cd208-48b1-4920-a283-6bc37cbde13a"
  * request
    * method = #POST
    * url = "Condition"


Instance: EjEncuentroAtencion
InstanceOf: EncounterUrg
Usage: #inline
Title: "EjEncuentro"
Description: "Ejemplo de recurso Encounter en un servicio de atención de urgencia"

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
  * individual
    * reference = "urn:uuid:190cd208-48b1-4920-a283-6bc37cbde13a"
  * period
    * start = "2024-10-25T14:12:00-04:00"

* participant[Especialista][+]
  * individual
    * reference = "urn:uuid:fbb0e12c-95ec-43f7-bff1-73009b307cb5"
  * period
    * start = "2024-10-25T14:29:00-04:00"

* diagnosis[HipotesisDiagnostica][+]
  * condition
    * reference = "urn:uuid:e27704ff-fa1a-4750-9d23-36ce567f35b0"
  * rank = 1