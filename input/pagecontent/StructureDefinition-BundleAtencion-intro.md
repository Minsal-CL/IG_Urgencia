### Uso y Alcance

El perfil `BundleAtencion` se emplea para agrupar los recursos que se utilizan en el proceso de atención de un paciente en un servicio de urgencias. En él, se debe hacer envío de algunos recursos como:


**Encuentro de Urgencia**:

Recurso `Encounter` con el perfil `EncounterUrg` que representa el encuentro de urgencia que registra todo el evento de atención de urgencia.

**Profesional que presta atención**

Recurso `Practitioner` con el perfil `PrestadorProfesional` que representa toda la información del profesional que participa en la atención del paciente.

**Indicaciones**

Recurso `CarePlan` con el perfil `CarePlanIndicaciones` que contiene todas las indicaciones que debe seguir el paciente.

**Otros recursos**
Otros recursos relacionados a anamnesis, diagnosticos, evolución clínica, alergias, solicitudes de exámenes, resultados de exámenes, medicamentos administrados, entre otros.

#### Consideraciones

Este evento permite que el establecimiento, pueda enviar un recurso `Encounter` con el perfil `EncounterAtencion` por cada una de las atenciones que se le efectuan al paciente, relacionando a través del atributo `partOf` al recurso `Encounter` base.
