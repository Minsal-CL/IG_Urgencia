ValueSet: VSTipoParticipanteEncuentroUrgencia
Id: TipoParticipanteEncuentroUrgencia
Title: "Tipo Participante Encuentro Urgencia"
Description: "Códigos de los tipos de participante de un Encounter"
* ^experimental = false
* ^status = #active
* ^contact.name = "MINSAL CHILE"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "minsal@minsal.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* include codes from system CSTipoParticipanteUrgencia
* $v3-ParticipationType#ADM
* $v3-ParticipationType#ATND
* $v3-ParticipationType#CON
* $v3-ParticipationType#DIS
* $v3-ParticipationType#SPRF
* $participant-type#emergency