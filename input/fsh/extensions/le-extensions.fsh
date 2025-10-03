/* PaisOrigenMPI */
Extension:   PaisOrigenMPI
Id:          PaisOrigenMPI
Title:       "País de origen del paciente"
Description: "País de origen del paciente"
Context: Patient
* value[x] only CodeableConcept
* value[x] ^short = "Código de País"
* url 1..1 MS
* valueCodeableConcept from CodPais
* valueCodeableConcept.coding 1..1 MS
  * code 1..1 MS
  * system 0..1 MS
  * display 0..1 MS

/* PueblosOriginariosPerteneciente */
Extension: PueblosOriginariosPerteneciente
Id: PueblosOriginariosPerteneciente
Title: "Pueblos Originarios Perteneciente"
Description: "Pueblos Originarios Perteneciente"
Context: Patient

* value[x] only boolean
* valueBoolean ^short = "PueblosOriginariosPerteneciente"

/* PueblosAfrodescendiente */
Extension: PueblosAfrodescendiente
Id: PueblosAfrodescendiente
Title: "Pueblos Afrodescendiente"
Description: "Pueblos Afrodescendiente"
Context: Patient
* value[x] only boolean
* url and valueBoolean MS
* valueBoolean 1..1
* valueBoolean ^short = "Pueblos Afrodescendiente"
* valueBoolean ^definition = "Pueblos Afrodescendiente"

/* PueblosOriginarios */
Extension: PueblosOriginarios
Title: "Pueblos Originarios"
Description: "Almacenar si el paciente pertenece a algun pueblo originario"
Context: Patient
* value[x] only CodeableConcept
* value[x] ^short = "Código Pueblo Originario"
* url and value[x].coding and value[x] and value[x].coding.system and value[x].coding.display and value[x].coding.code MS
* value[x] from PueblosOriginariosVS (required)
* value[x].coding.system 1..1
* value[x].coding.display 0..1
* value[x].coding.code 1..1
* value[x].coding.system ^short = "URI del system para validar"
* value[x].coding.display ^short = "Nombre del pueblo"
* value[x].coding.code ^short = "Código del pueblo"
* value[x].text 0..1 MS
* value[x].text ^short = "Otro pueblo originario"

/* Religion */
Extension: Religion
Title: "Religión"
Description: "Religión"
Context: Patient
* value[x] only CodeableConcept
* value[x] ^short = "Religión del paciente"
* url and value[x].coding and value[x] and value[x].coding.system and value[x].coding.display and value[x].coding.code MS
* value[x].coding.system 1..1
* value[x].coding.display 0..1
* value[x].coding.code 1..1
* value[x] from VSReligion (required)
* value[x].coding.system ^short = "URI del system para validar"
* value[x].coding.display ^short = "Nombre de la religión"
* value[x].coding.code ^short = "Nombre de la religión"

