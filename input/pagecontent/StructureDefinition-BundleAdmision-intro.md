### Uso y Alcance

El perfil `BundleAdmision` se emplea para agrupar los recursos que se utilizan en el proceso de admisión de un paciente en un servicio de urgencias. En el se debe hacer envío de:

**Paciente**:

Recurso `Patient` con el perfil `PatientUrg` que representa al paciente que es admitido en el servicio de urgencias.

**Encuentro de Urgencia**:

Recurso `Encounter` con el perfil `EncounterUrg` que representa el encuentro de urgencia que registra todo el evento de atención de urgencia. Este recurso debe llevar la información respecto a la fecha de admisión y el participante que realiza la admisión.

**Establecimiento**

Recurso `Organization` con el perfil `EstablecimientoUrg` que representa al centro de urgencia que esta prestando la atención al paciente.

**Funcionario que realiza la admisión**

Recurso `Practitioner` con el perfil `PrestadorAdministrativo` que incluye la información demográfica del funcionario.

**Acopañante del paciente**

Recurso `RelatedPerson` con el perfil `AcompananteUrg` que define a la persona con la que el paciente accede al establecimiento de urgencia.
