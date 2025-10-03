ValueSet: VSIdentificadorPrestador
Id: IdentificadorPrestador
Title: "Identificador Prestador"
Description: "Identificador Prestador"
* ^experimental = false
* ^status = #active
* ^contact.name = "MINSAL CHILE"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "minsal@minsal.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* include codes from system $CSTipoIdentificador-clcore where concept is-a #01
* include codes from system $CSTipoIdentificador-clcore where concept is-a #13