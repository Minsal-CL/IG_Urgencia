### Alcance

Esta guía de implementación aborda el proceso de atención de urgencia, que se lleva a cabo en la Unidad de Emergencia Hospitalaria. Para representar este proceso se definen 5 (cinco) eventos, los cuales son:

- **Admisión**: Apertura del Dato de Atención de Urgencia (DAU).
- **Categorización**: Priorización de la oportunidad de la atención según el riesgo vital y la complejidad.
- **Atención**: Atención de un profesional de salud.
- **Egreso**: Egreso de la atención de urgencia e indicar el destino del usuario.

### Introducción

#### Antecentes

El proceso de atención de urgencia es el conjunto de actividades clínicas y administrativas que se llevan a cabo en la Unidad de Emergencia Hospitalaria. Tiene como objetivo brindar cuidados de salud a una persona que necesita atención médica inmediata. El proceso se inicia ya sea por demanda espontánea, derivación desde un Servicio de Atención Primaria de Urgencia (SAPU, SAR) o desde el SAMU.

La Unidad de Emergencia Hospitalaria (UEH) es un dispositivo esencial, dado que corresponde al punto de resolución de los casos más complejos y la puerta de ingreso a la atención hospitalaria. Dada esta razón y la importancia de este proceso se hace necesario implementar un proceso interoperable que genere información de valor entre distintos centros, permitiendo tomar decisiones.

#### Descripción

Se propone desarrollar una guía de implementación que permita hacer trazabilidad del proceso de la atención de urgencia desde que un paciente ingresa a la admisión, hasta que se egresa por diferentes razones, esta información estará disponible tanto para el paciente, como para los establecimientos de salud involucrados y el nivel central para la toma de decisiones y mejor gestión de los recursos.

Este proyecto fue ejecutado por un equipo multidisciplinario del Ministerio de Salud, con la participación de profesionales del Departamento de Estadísticas e Información en Salud (DEIS), la División de Gestión de la Red Asistencial (DIGERA), y la Unidad de Interoperabilidad del Departamento de Tecnologías de la Información y Comunicaciones (DTIC). Se ha utilizado una metodología para el re-diseño del proceso, optimizándolo y centrándolo en el paciente y se ha implementado bajo el uso de estándares internacionales de interoperabilidad.

#### Objetivos del Proyecto

##### General

- Desarrollar una guía de implementación para el proceso de urgencia interoperable que respalde la gestión de información, incluyendo su registro, transferencia y análisis. Dicha información es entregada a través de una plataforma que facilite su acceso y almacenamiento de manera precisa y de calidad, en el contexto de la atención de urgencias para pacientes de la red asistencial.

##### Específicos

- Lograr el intercambio de información desde el ingreso del paciente a una atención de urgencia, hasta el egreso de este por las diferentes casuísticas desde los registros clínicos electrónicos implementados en los establecimientos de salud pública del país y la plataforma de interoperabilidad de MINSAL.
- Promover la estandarización de los datos involucrados en el proceso de atención de urgencia.
- Proporcionar directrices y reglas comunes que faciliten la adopción de estándares de interoperabilidad semánticos y sintácticos, tanto por parte de profesionales clínicos como para los desarrolladores en toda la red asistencial.
- Garantizar que los datos se representen y se compartan de manera coherente entre sistemas, evitando ambigüedades y errores en la interpretación de la información.

#### Objetivos de la Guía de Implementación

##### General

- Brindar las directrices necesarias que garanticen la interoperabilidad con la plataforma de MINSAL para el proceso de atención de urgencia, según los estándares definidos por el Ministerio de Salud.

##### Específicos

- Otorgar las herramientas necesarias para el desarrollo de sistemas informáticos de registro clínico que interoperen con la plataforma definida por Minsal para el intercambio de información del proceso de atención de urgencia, en base al estándar HL7 FHIR.
- Describir los distintos perfiles de usuario del proceso de atención de urgencia y los recursos asociados a cada uno.
- Ejemplificar los distintos casos de uso asociados al proceso de atención de urgencia que son aplicables en el día a día.
