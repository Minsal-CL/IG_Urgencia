Profile: PatientUrg
Parent: PacienteCl
Id: PatientUrg
Title: "Paciente Urgencia"
Description: "Paciente definido para el registro de atenciones de urgencia"

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 0
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft

* extension contains PaisOrigenMPI named PaisOrigen 0..1 MS
* extension contains Religion named Religion 0..1 MS
* extension contains PueblosOriginariosPerteneciente named PueblosOriginariosPerteneciente 0..1 MS
* extension contains PueblosAfrodescendiente named PueblosAfrodescendiente 0..1 MS
* extension contains PueblosOriginarios named PueblosOriginarios 0..1 MS

* identifier 1..* MS
* identifier ^short = "Identificador de paciente"
* identifier.type 1..1 MS
* identifier.type ^short = "Tipo de documento"
* identifier.type ^definition = "Tipo de documento"
* identifier.type ^comment = "Tipo de documento"
* identifier.type from VSTipoIdentificador
* identifier.type ^binding.description = "Identificadores definidos por DEIS"
  * coding 1..1   
    * system 0..1
    * code 1..1
* identifier.type.extension[paisEmisionDocumento] 0..1 MS
* identifier.value 1..1 MS
* identifier.value ^short = "Valor del identificador" 

* name ^slicing.discriminator.type = #value
* name ^slicing.discriminator.path = "use"
* name ^slicing.rules = #open
* name ^slicing.ordered = false

* name contains NombreTemporal 0..1 MS
* name[NombreTemporal] ^short = "Nombre empleado en caso de pacientes NN"
* name[NombreTemporal] ^definition = "Si es que el paciente atendido no se tiene conocimiento de su nombre, se debe registrar en este elemento información que permita identificarlo"
  * use 1..1 MS
  * use = #temp
  * given 1..* MS
  * given ^short = "Descripción del atuendo o marcas cintura hacia arriba"
  * family 1..1 MS
  * family ^short = "Descripción del atuendo o marcas cintura hacia abajo"


* gender ^short = "Sexo Registral del paciente"
* gender 1..1 MS

// * address.use 1..1 MS

// * address.line 1..1 MS
// * address.line ^short = "Calle o avenida, numero y casa o dpto"
// * address.line ^definition = "Calle o avenida, numero y casa o dpto"
// * address.period 0..1 MS
// * address.period ^short = "Periodo de tiempo durante el  cual es válida la dirección entregada"


* birthDate 0..1 MS

* telecom 0..* MS
  * system 1..1 MS
  * system ^short = "phone | email"
  * system ^definition = "Sistema de contacto"
  * value 1..1 MS
  * value ^short = "Valor de contacto"
  * rank MS
  * rank ^short = "Orden de uso del método de contacto, siendo 1 = prioritario"
  * period MS
  * period ^short = "Periodo de tiempo durante el cual es válido el contacto del paciente"

* maritalStatus from VSEstadoCivil
* maritalStatus MS
* maritalStatus ^short = "Estado civil del paciente"

* deceased[x] 1..1 MS
* deceased[x] ^short = "Puede indicar si el paciente esta fallecido o no o en su defecto, agregar la fecha de fallecimiento."
* deceased[x] ^definition = "Puede indicar si el paciente esta fallecido o no o en su defecto, agregar la fecha de fallecimiento."
