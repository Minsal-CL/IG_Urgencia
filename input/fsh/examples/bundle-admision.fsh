Instance: Ej1BundleAdmision
InstanceOf: BundleAdmision
Usage: #example
Title: "Bundle Admision"
Description: "Ejemplo de recurso Bundle para la admisión de pacientes en un servicio de atención de urgencia"

* type = #transaction

* entry[paciente]
  * fullUrl = "urn:uuid:6ec6dc25-4b65-4165-a545-9b796f60b997"
  * resource = Ej1PacienteUrgencia
  * request
    * method = #POST
    * url = "Patient"
    * ifNoneExist = "identifier=90000000-6"

* entry[encuentro]
  * fullUrl = "urn:uuid:d1391b7b-302a-49f8-a908-8116599e137e"
  * resource = EjEncuentroAdmision
  * request
    * method = #POST
    * url = "Encounter"

* entry[establecimiento]
  * fullUrl = "urn:uuid:5491b8d5-e06c-4f89-beb7-75a1989cdc81"
  * resource = EjOrganizacionEstablecimiento
  * request
    * method = #POST
    * url = "Organization"
    * ifNoneExist = "identifier=114105"

* entry[admisionista]
  * fullUrl = "urn:uuid:b9f6967f-51b5-49f4-8576-ce9f588523c2"
  * resource = EjProfesionalAdministrativo
  * request
    * method = #POST
    * url = "Practitioner"
    * ifNoneExist = "identifier=44444444-4"

* entry[acompanante]
  * fullUrl = "urn:uuid:bb7f34f7-8f4e-42c8-aa84-1f64bf584a05"
  * resource = Ej1AcompananteUrgencia
    * patient
      * reference = "urn:uuid:6ec6dc25-4b65-4165-a545-9b796f60b997"
  * request
    * method = #POST
    * url = "RelatedPerson"



Instance: EjEncuentroAdmision
InstanceOf: EncounterUrg
Usage: #inline
Title: "EjEncuentro"
Description: "Ejemplo de recurso Encounter para la admisión de pacientes en un servicio de atención de urgencia"
* id = "d1391b7b-302a-49f8-a908-8116599e137e"

* extension[Acompanante].valueBoolean = false

* status = #arrived

* statusHistory[Admision]
  * status = #arrived
  * period
    * start = "2024-10-25T13:18:00-04:00"

* class = $v3-ActCode#EMER

* identifier[+]
  * value = "126402-0025"

* period
  * start = "2024-10-25T13:18:00-04:00"

* hospitalization
  * extension[MedioDeLlegada].valueCodeableConcept = CSMedioDeLlegada#5 "Vehículo particular"
  * extension[ConsultaPorAccidente].valueBoolean = false
  * admitSource = CSProcedencia#9 "Domicilio"

* subject
  * reference = "urn:uuid:6ec6dc25-4b65-4165-a545-9b796f60b997"

* priority = CSCategorizacionNoRealizada#99 "Sin Categorizar"

* serviceProvider
  * reference = "urn:uuid:5491b8d5-e06c-4f89-beb7-75a1989cdc81"

* participant[Admisionista]
  * individual
    * reference = "urn:uuid:b9f6967f-51b5-49f4-8576-ce9f588523c2"
  * period
    * start = "2024-10-25T13:18:00-04:00"

* participant[Acompanante]
  * individual
    * reference = "urn:uuid:bb7f34f7-8f4e-42c8-aa84-1f64bf584a05"
