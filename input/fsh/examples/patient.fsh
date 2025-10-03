Instance: Ej1PacienteUrgencia
InstanceOf: PatientUrg
Usage: #example
Title: "Paciente Urgencia con datos básicos"
Description: "Ejemplo de un paciente de urgencia con datos básicos"

* id = "6ec6dc25-4b65-4165-a545-9b796f60b997"

* extension[PueblosOriginariosPerteneciente].valueBoolean = true
* extension[PueblosOriginarios].valueCodeableConcept = PueblosOriginariosCS#07 "Diaguita"
* extension[PueblosAfrodescendiente].valueBoolean = false
* extension[IdentidadDeGenero].valueCodeableConcept = https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSIdentidaddeGenero#2 "Femenina"
* extension[PaisOrigen].valueCodeableConcept = urn:iso:std:iso:3166#152 "Chile"
* extension[nacionalidad].valueCodeableConcept = urn:iso:std:iso:3166#152 "Chile"
* extension[Religion].valueCodeableConcept = CSReligion#1 "Católica"

* identifier
  * use = #official
  * type
    * extension[paisEmisionDocumento]
      * valueCodeableConcept = urn:iso:std:iso:3166#152 "Chile"
    * coding
      * system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSTipoIdentificador"
      * code = #01
      * display = "RUN"
    * text = "Rol Único Nacional"
  * value = "90000000-6"
  * assigner 
    * display = "Republica de Chile"

* active = true

* name[NombreOficial]
  * use = #official
  * family = "Perez"
    * extension[segundoApellido].valueString = "Gonzalez"
  * given[+] = "María"
  * given[+] = "Josefina"
  * text = "Maria Josefína Perez Gonzalez"

* birthDate = "1974-12-25"

* address[+]
  * use = #home
  * text = "Calle Arrabal Conchita Tejeda Nº 24, Esc. 432"
  * line[+] = "Calle Arrabal Conchita Tejeda"
  * city = "Huara"
    * extension[ComunasCl].valueCodeableConcept = CSCodComunasCL#01404 "Huara"
  * state = "Región de Tarapacá"
    * extension[RegionesCl].valueCodeableConcept = CSCodRegionCL#01 "Tarapacá"
  * district = "Provincia del Tamarugal"
    * extension[ProvinciasCl].valueCodeableConcept = CSCodProvinciasCL#014 "Tamarugal"

* telecom[+]
  * system = #phone
  * value = "(562) 5555 6473"
  * use = #work
  * rank = 1

* gender = #female
* deceasedBoolean = false