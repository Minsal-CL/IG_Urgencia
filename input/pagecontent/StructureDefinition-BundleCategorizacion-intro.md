### Uso y Alcance

El perfil `BundleCategorizacion` se emplea para agrupar los recursos que se utilizan en el proceso de categorización de un paciente en un servicio de urgencias. En él, se debe hacer envío de:


**Encuentro de Urgencia**:

Recurso `Encounter` con el perfil `EncounterUrg` que representa el encuentro de urgencia que registra todo el evento de atención de urgencia. Este recurso debe llevar la información respecto a de profesional que categoriza e información de signos vitales.

**Signos vitales**

Recurso `Observation` con el perfil `ObservationSignosVitales` que representa toda la información acerca de las mediciones de signos vitales realizadas en la etapa de categorización.
