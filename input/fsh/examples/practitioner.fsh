Instance: Ej1PrestadorProfesional
InstanceOf: PrestadorProfesional
Usage: #example
Title: "Ejemplo de un profesional TENS de urgencia"
Description: "Ejemplo de un profesional que de un servicio de urgencia"
* id = "d04739d3-ba47-4f0f-920f-bcd66b474963"
* identifier[run]
  * use = #official
  * type = $CSTipoIdentificador-clcore#01
  * value = "12345678-9"
  * system = "http://www.registrocivil.cl"

* name
  * use = #official
  * family = "Perez"
    * extension[segundoApellido].valueString = "Gonzalez"
  * given[+] = "Juan"
  * given[+] = "Carlos"
  * text = "Juan Carlos Perez Gonzalez"

* qualification[TituloProfesional]
  * code = CSTituloProfesional#20 "TÉCNICOS EN SALUD"
  * code.text = "Técnico en Salud"
  * identifier.value = "cert"

* birthDate = "1980-01-01"

Instance: Ej2PrestadorProfesional
InstanceOf: PrestadorProfesional
Usage: #example
Title: "Ejemplo de un profesional médico de urgencia"
Description: "Ejemplo de un profesional que atiende en un servicio de urgencia"
* id = "190cd208-48b1-4920-a283-6bc37cbde13a"
* identifier[run]
  * use = #official
  * type = $CSTipoIdentificador-clcore#01
  * value = "55555555-5"
  * system = "http://www.registrocivil.cl"

* name
  * use = #official
  * family = "Gonzalez"
    * extension[segundoApellido].valueString = "Nuñez"
  * given[+] = "Luis"

* qualification[TituloProfesional]
  * code = CSTituloProfesional#30 "MÉDICO GENERAL"
  * code.text = "Médico General"
  * identifier.value = "cert"

* birthDate = "1992-05-26"

Instance: Ej3PrestadorProfesional
InstanceOf: PrestadorProfesional
Usage: #example
Title: "Ejemplo de un profesional especialista de urgencia"
Description: "Ejemplo de un profesional que atiende en un servicio de urgencia"
* id = "fbb0e12c-95ec-43f7-bff1-73009b307cb5"
* identifier[run]
  * use = #official
  * type = $CSTipoIdentificador-clcore#01
  * value = "33333333-3"
  * system = "http://www.registrocivil.cl"

* name
  * use = #official
  * family = "Fernandez"
    * extension[segundoApellido].valueString = "Alvarez"
  * given[+] = "Maria"

* qualification[TituloProfesional]
  * code = CSTituloProfesional#1 "MÉDICO CIRUJANO"
  * code.text = "Médico Cirujano"
  * identifier.value = "cert"
  * extension[Mencion].valueString = "Cirugía General"


* qualification[EspecialidadMedica]
  * code = CSEspecialidadMedica#18 "GASTROENTEROLOGÍA ADULTO"
  * code.text = "Gastroenterología Adulto"
  * identifier.value = "esp"

* birthDate = "1995-09-12"


Instance: EjProfesionalAdministrativo
InstanceOf: PrestadorAdministrativo
Usage: #example
Title: "EjProfesionalAdministrativo"
Description: "Ejemplo de recurso Practitioner para la admisión de pacientes en un servicio de atención de urgencia"
* id = "b9f6967f-51b5-49f4-8576-ce9f588523c2"
* identifier[run]
  * use = #official
  * type.coding = CSTipoIdentificador#01 "RUN"
  * value = "44444444-4"
* name[+]
  * family = "Donoso"
  * given[+] = "Mario"
  * family.extension[segundoApellido].valueString = "Mardones"