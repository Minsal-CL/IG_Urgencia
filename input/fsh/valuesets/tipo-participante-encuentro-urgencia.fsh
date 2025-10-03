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
* include codes from system $v3-ParticipationType where concept is-a #ADM
* include codes from system $v3-ParticipationType where concept is-a #ATND
* include codes from system $v3-ParticipationType where concept is-a #CON
* include codes from system $v3-ParticipationType where concept is-a #DIS
* include codes from system $v3-ParticipationType where concept is-a #SPRF
* include codes from system $participant-type where concept is-a #emergency