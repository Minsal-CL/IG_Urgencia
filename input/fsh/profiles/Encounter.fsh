Profile: EncounterUrg
Parent: EncounterCL
Id: EncounterUrg
Title: "Encuentro Urgencia"
Description: "Recurso que representa el episodio de urgencia de un paciente en un establecimiento de salud."

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 0
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft

* obeys acompanante-slice and motivo-consulta and categorizacion

* class 1..1 MS
* class ^short = "Tipo de encuentro de urgencia"
* class = $v3-ActCode#EMER

* extension contains Acompanante named Acompanante 1..1 MS
* extension[Acompanante] ^short = "Indica si el paciente acude con acompañante"
* extension[Acompanante] ^definition = "Extensión empleada para indicar si el paciente acude con acompañante a la atención de urgencia."

* extension contains LeyPrevisional named LeyPrevisional 0..1 MS
* extension[LeyPrevisional] ^short = "Ley previsional que financia la atención de urgencia"
* extension[LeyPrevisional] ^definition = "Extensión empleada para indicar la ley previsional que financia la atención de urgencia."

* status 1..1 MS

* identifier 1..1 MS 
* identifier ^short = "Identificador del encuentro de urgencia"
  * value 1..1 MS
  * value ^short = "Valor del identificador, compuesto por Código DEIS de establecimiento - Id único del evento asignado por el establecimiento"
  * value ^definition = "Identificador de la consulta de urgencia. Este debe estar compuesto por Código DEIS de establecimiento - Id único del evento asignado por el establecimiento"
  * value ^comment = "El valor del identificador debe ser único por evento de urgencia"

* period 1..1 MS
  * start 1..1 MS
  * start ^short = "Fecha y hora de que se realiza la admisión de urgencia"
  * start ^definition = "Corresponde al día, mes, año y hora en que se realiza la admisión. Sigue el formato de fecha larga normado en la norma 231 de Estándares de Información de Salud."
  * end 0..1 MS
  * end ^short = "Fecha y hora de que se cierra el dato de urgencia"
  * end ^definition = "Corresponde al día, el mes y la hora en que luego de cumplir con la completitud de los datos requeridos y el registro por parte del equipo de salud de las intervenciones realizadas, el médico u odontólogo, cierra el dato de urgencia."

* statusHistory ^slicing.discriminator.type = #value
* statusHistory ^slicing.discriminator.path = "status"
* statusHistory ^slicing.rules = #open

* statusHistory contains Admision 1..1 MS
  and Categorizacion 0..* MS
  and Atencion 0..1 MS
  and Egreso 0..1 MS

* statusHistory[Admision] ^short = "Estado de admisión de la atención de urgencia"
  * status 1..1 MS
  * status = #arrived
  * period 1..1 MS
    * start 1..1 MS
    * start ^short = "Fecha y hora de admisión"
    * start ^definition = "Corresponde al día, mes, año y hora en que se realiza la admisión. Sigue el formato de fecha larga normado en la norma 231 de Estándares de Información de Salud."

* statusHistory[Categorizacion] ^short = "Estado de categorización de la atención de urgencia"
  * status 1..1 MS
  * status = #triaged
  * period 1..1 MS
    * start 1..1 MS
    * start ^short = "Fecha y hora de categorización"
    * start ^definition = "Corresponde al día, mes, año y hora en que se realiza la categorización. Sigue el formato de fecha larga normado en la norma 231 de Estándares de Información de Salud."

* statusHistory[Atencion] ^short = "Estado de atención de la atención de urgencia"
  * status 1..1 MS
  * status = #in-progress
  * period 1..1 MS
    * start 1..1 MS
    * start ^short = "Fecha y hora de inicio de atención de urgencia"
    * start ^definition = "Corresponde al registro del tiempo en que se inicia el proceso de atención de urgencia, se considera como inicio el primer registro en sistema conducente a diagnosticar y reestablecer el estado de salud del usuario posterior al proceso de categorización."

* statusHistory[Egreso] ^short = "Estado de egreso de la atención de urgencia"
  * status 1..1 MS
  * status = #finished
  * period 1..1 MS
    * start 1..1 MS
    * start ^short = "Fecha y hora de egreso"
    * start ^definition = "Corresponde al día, el mes y la hora en que luego de cumplir con la completitud de los datos requeridos y el registro por parte del equipo de salud de las intervenciones realizadas, el médico u odontólogo, cierra el dato de urgencia."
    * end 0..1 MS
    * end ^short = "Fecha y hora de egreso efectivo"
    * end ^definition = "Corresponde al día, el mes y la hora en que luego de cumplir con termino de atención de urgencia y el cierre del dato de urgencia, el usuario egresa efectivamente de la unidad de urgencia."

* hospitalization ^short = "Información de admisión y egreso de la atención de urgencia"
  * extension contains MedioDeLlegada named MedioDeLlegada 1..1 MS
  * extension[MedioDeLlegada] ^short = "Medio de llegada del paciente al servicio de urgencia"
  * extension[MedioDeLlegada] ^definition = "Extensión empleada para indicar el medio de llegada del paciente al servicio de urgencia. Este dato es capturado durante la admisión de urgencia."
  
  * extension contains ConsultaPorAccidente named ConsultaPorAccidente 1..1 MS
  * extension[ConsultaPorAccidente] ^short = "Consulta por accidente"
  * extension[ConsultaPorAccidente] ^definition = "Extensión que registra si la atención de urgencia se debe a un accidente. Este dato es capturado durante la admisión de urgencia."

  * admitSource 1..1 MS
  * admitSource from VSProcedencia (required)
  * admitSource ^short = "Lugar físico desde donde proviene el paciente cuando concurre a la atención de urgencia"
  * admitSource ^definition = "Lugar físico desde donde proviene el paciente cuando concurre a la atención de urgencia. Este dato es capturado durante la admisión de urgencia."

  * dischargeDisposition 0..1 MS
  * dischargeDisposition from VSTipoEgreso (required)
  * dischargeDisposition ^short = "Tipo de egreso de la atención de urgencia"
  * dischargeDisposition ^definition = "Corresponde a la decisión del médico u odontólogo del destino que debe seguir el usuario en virtud de su evaluación y situación clínica antes de cerrar el proceso de urgencia."
    * extension contains IndicacionHospitalizacion named IndicacionHospitalizacion 0..1 MS
    * extension[IndicacionHospitalizacion] ^short = "Indicación de hospitalización"
    * extension[IndicacionHospitalizacion] ^definition = "Extensión que registra la indicación de hospitalización en el contexto de un encuentro de atención de urgencia."

    * extension contains IndicacionAlta named IndicacionAlta 0..1 MS
    * extension[IndicacionAlta] ^short = "Indicación de alta"
    * extension[IndicacionAlta] ^definition = "Extensión que registra la indicación de alta en el contexto de un encuentro de atención de urgencia."

    * extension contains IndicacionDerivacion named IndicacionDerivacion 0..1 MS
    * extension[IndicacionDerivacion] ^short = "Indicación de derivación a otro centro asistencial"
    * extension[IndicacionDerivacion] ^definition = "Extensión que registra la indicación de derivación a otro centro asistencial en el contexto de un encuentro de atención de urgencia."

    * extension contains Abandono named Abandono 0..1 MS
    * extension[Abandono] ^short = "Tipo de abandono"
    * extension[Abandono] ^definition = "Usuarios que, habiendo iniciado el proceso de atención de urgencia, y habiéndose generado un DAU, no terminaron el proceso, en cualquiera de sus etapas."

    * extension contains Fallecido named Fallecido 0..1 MS
    * extension[Fallecido] ^short = "Fallecido"
    * extension[Fallecido] ^definition = "Extensión que registra la información de un paciente fallecido en el contexto de un encuentro de atención de urgencia."

* subject 1..1 MS
* subject ^short = "Paciente"
* subject ^definition = "Paciente que recibe atención de urgencia"
* subject only Reference(PatientUrg)

* serviceProvider 1..1 MS
* serviceProvider ^short = "Establecimiento de salud"
* serviceProvider ^definition = "Establecimiento de salud donde se realiza la atención de urgencia"
* serviceProvider only Reference(EstablecimientoUrg)

* participant.type from VSTipoParticipanteEncuentroUrgencia (required)

* participant ^slicing.discriminator.type = #value
* participant ^slicing.discriminator.path = "type"
* participant ^slicing.rules = #open

* participant contains Acompanante 0..1 MS and
  Admisionista 1..1 MS and
  Categorizador 0..* MS and
  Atendedor 0..* MS and
  AtendedorSecundario 0..* MS and
  Especialista 0..* MS and
  Terminador 0..1 MS

* participant[Acompanante] ^short = "Acompañante del paciente"
* participant[Acompanante] ^definition = "Acompañante del paciente que recibe atención de urgencia"
  * type = $participant-type#emergency 
  * type 1..1 MS
  * individual only Reference(AcompananteUrg)
  * individual ^short = "Referencia al acompañante del paciente"
  * individual 1..1 MS

* participant[Admisionista] ^short = "Personal administrativo que realiza la admisión de urgencia"
* participant[Admisionista] ^definition = "Corresponde al personal administrativo que realiza la admisión de urgencia"
  * type = $v3-ParticipationType#ADM 
  * type 1..1 MS
  * individual only Reference(PrestadorAdministrativo)
  * period 1..1 MS
    * start 1..1 MS
    * start ^short = "Fecha y hora de admisión"

* participant[Categorizador] ^short = "Profesional que categoriza al paciente"
* participant[Categorizador] ^definition = "Profesional que categoriza al paciente en un servicio de urgencia"
  * type = CSTipoParticipanteUrgencia#triage 
  * type 1..1 MS
  * individual only Reference(PrestadorProfesional)
  * individual ^short = "Referencia al profesional que categoriza"
  * individual 1..1 MS
  * period 1..1 MS
    * start 1..1 MS
    * start ^short = "Fecha y hora de categorización"

* participant[Atendedor] ^short = "Profesional que atiende al paciente"
* participant[Atendedor] ^definition = "Profesional que atiende al paciente en un servicio de urgencia"
  * type = $v3-ParticipationType#ATND 
  * type 1..1 MS
  * individual only Reference(PrestadorProfesional)
  * individual ^short = "Referencia al profesional que atiende"
  * individual 1..1 MS
  * period 1..1 MS
    * start 1..1 MS
    * start ^short = "Fecha y hora de atención"

* participant[AtendedorSecundario] ^short = "Profesional que atiende al paciente pero no es el principal"
* participant[AtendedorSecundario] ^definition = "Profesional que atiende al paciente en un servicio de urgencia pero no es el principal"
  * type = $v3-ParticipationType#SPRF 
  * type 1..1 MS
  * individual only Reference(PrestadorProfesional)
  * individual ^short = "Referencia al profesional que atiende"
  * individual 1..1 MS
  * period 1..1 MS
    * start 1..1 MS
    * start ^short = "Fecha y hora de atención"

* participant[Especialista] ^short = "Profesional especialista que atiende al paciente"
* participant[Especialista] ^definition = "Profesional especialista que atiende al paciente en un servicio de urgencia"
  * type = $v3-ParticipationType#CON 
  * type 1..1 MS
  * individual only Reference(PrestadorProfesional)
  * individual ^short = "Referencia al profesional especialista que atiende"
  * individual 1..1 MS
  * period 1..1 MS
    * start 1..1 MS
    * start ^short = "Fecha y hora de atención"

* participant[Terminador] ^short = "Profesional que autoriza el egresa del paciente"
* participant[Terminador] ^definition = "Es la individualización del médico u odontólogo tratante del usuario, a cargo del proceso de atención. Solo en atenciones de Servicios de Urgencia Rural (SUR), en que no se cuente con personal médico ni odontológico, será el otro profesional o el TENS, quien cierre la atención y otorgue el alta."
  * type = $v3-ParticipationType#DIS 
  * type 1..1 MS
  * individual only Reference(PrestadorProfesional)
  * individual ^short = "Referencia al profesional que autoriza el egreso"
  * individual 1..1 MS
  * period 1..1 MS
    * start 1..1 MS
    * start ^short = "Fecha y hora que se registra la decisión de egreso"

* reasonCode 0..1 MS
* reasonCode ^short = "Motivo de la atención de urgencia"
  * text 1..1 MS
  * text ^short = "Texto libre del motivo de la atención de urgencia indicado por el paciente"

* priority 1..1 MS
* priority from VSCategorizacionUrgencia (required) 
* priority ^short = "Categorización de prioridad de atención de urgencia"
  * coding 1..1 MS
    * system 1..1 MS
    * system ^short = "Sistema de categorización de la prioridad de atención de urgencia"
    * system ^definition = "Sistema de categorización de la prioridad de atención de urgencia"
    * code 1..1 MS
    * code ^short = "Código de categorización de la prioridad"
    * code ^definition = "Código de categorización de la prioridad de atención de urgencia"
    * display 0..1 MS
    * display ^short = "Definición de la categorización de la prioridad"
    * display ^definition = "Definición de la categorización de la prioridad de atención de urgencia"

* diagnosis 0..* MS
* diagnosis ^slicing.discriminator.type = #value
* diagnosis ^slicing.discriminator.path = "use"
* diagnosis ^slicing.rules = #open
* diagnosis ^slicing.ordered = false

* diagnosis contains HipotesisDiagnostica 0..* MS and
  Comorbilidades 0..* MS and
  DiagnosticoEgreso 0..1 MS

* diagnosis[HipotesisDiagnostica] ^short = "Hipótesis diagnóstica"
* diagnosis[HipotesisDiagnostica] ^definition = "Hipótesis diagnóstica del paciente en el contexto de atención de urgencia"
  * use = $diagnosis-role#AD
  * use 1..1 MS
  * condition 1..1 MS
  * condition only Reference(ConditionDiagnostico)
  * condition ^short = "Referencia a la hipótesis diagnóstica"
  * condition ^definition = "Referencia a la hipótesis diagnóstica del paciente en el contexto de atención de urgencia"
  * rank 0..1 MS
  * rank ^short = "Si es la hipótesis diagnóstica principal se debe registrar el valor 1."

* diagnosis[Comorbilidades] ^short = "Comorbilidades"
* diagnosis[Comorbilidades] ^definition = "Comorbilidades del paciente en el contexto de atención de urgencia"
  * use = $diagnosis-role#CM
  * use 1..1 MS
  * condition 1..1 MS
  * condition only Reference(ConditionDiagnostico)
  * condition ^short = "Referencia a la comorbilidad"
  * condition ^definition = "Referencia a la comorbilidad del paciente en el contexto de atención de urgencia"

* diagnosis[DiagnosticoEgreso] ^short = "Diagnóstico de egreso"
* diagnosis[DiagnosticoEgreso] ^definition = "Diagnóstico de egreso del paciente en el contexto de atención de urgencia"
  * use = $diagnosis-role#DD
  * use 1..1 MS
  * condition 1..1 MS
  * condition only Reference(ConditionDiagnostico)
  * condition ^short = "Referencia al diagnóstico de egreso"
  * condition ^definition = "Referencia al diagnóstico de egreso del paciente en el contexto de atención de urgencia"