Instance: Ej1BundleCategorizacion
InstanceOf: BundleCategorizacion
Usage: #example
Title: "Bundle Categoriazación"
Description: "Ejemlo de recurso Bundle para la categorización de pacientes en un servicio de atención de urgencia"

* type = #transaction

* entry[encuentro]
  * fullUrl = "urn:uuid:d1391b7b-302a-49f8-a908-8116599e137e"
  * resource = EjEncuentroCategorizacion
  * request
    * method = #PUT
    * url = "Encounter?identifier=126402-0025"

* entry[categorizador]
  * fullUrl = "urn:uuid:d04739d3-ba47-4f0f-920f-bcd66b474963"
  * resource = Ej1PrestadorProfesional
  * request
    * method = #POST
    * url = "Practitioner"
    * ifNoneExist = "identifier=12345678-9"


Instance: EjEncuentroCategorizacion
InstanceOf: EncounterUrg
Usage: #inline
Title: "EjEncuentro"
Description: "Ejemplo de recurso Encounter para la admisión de pacientes en un servicio de atención de urgencia"
* id = "d1391b7b-302a-49f8-a908-8116599e137e"

* extension[Acompanante].valueBoolean = false

* status = #triaged

* statusHistory[Admision]
  * status = #arrived
  * period
    * start = "2024-10-25T13:18:00-04:00"

* statusHistory[Categorizacion]
  * status = #triaged
  * period
    * start = "2024-10-25T13:30:00-04:00"

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

* participant[Categorizador]
  * individual
    * reference = "urn:uuid:d04739d3-ba47-4f0f-920f-bcd66b474963"
  * period
    * start = "2024-10-25T13:30:00-04:00"
