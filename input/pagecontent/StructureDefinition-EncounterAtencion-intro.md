### Uso y Alcance

Este perfil se deberá emplear en caso que el sistema de origen tenga la capacidad de trazar cada una de las diferentes atenciones que ocurren una vez que el proceso de atención de urgencia pasa a un estado de atención. Esto permite asociar cada uno de los elementos clínicos generados al recurso Encounter correspondiente. Utilizando el recurso `EncounterUrg` como trazador, y cada uno de los encuentros de atención se relacionan mediante el campo `partOf` hacia el recurso `EncounterUrg`.

Si el sistema solo tiene un registro global de la atención de urgencia, se recomienda utilizar el recurso `EncounterUrg` sin necesidad de trazar cada una de las atenciones en este recurso.

Este perfil es utilizado solo a aquellas interacciones que se realizan en el contexto de atención de urgencia, y no debe ser empleado para registrar la interacción que ocurre durante la admisión, categorización y egreso del paciente.

El `status` de cada una de las atenciones debe ir como `finished` y deben registrar la fecha y hora de inicio y fin de la atención en el campo `period`, siendo obligatorio registrar al menos la fecha de inicio.

Se deben indicar los participantes del encuentro, en el campo `participant`, indicando el rol que desempeñan en la atención de urgencia. Los roles permitidos en este tipo de atención son los siguientes:

**Atendedor**

Persona que atiende al paciente en el contexto de atención de urgencia. Se registra en el campo `participant` del recurso `EncounterUrg` con `type` igual a `ATND`.

**Atendedor Secundario**

Persona que asiste al atendedor en la atención del paciente en el contexto de atención de urgencia. Se registra en el campo `participant` del recurso `EncounterUrg` con `type` igual a `SPRF`.

**Especialista**

Persona especializada en una rama de la medicina, encargada de brindar atención médica al paciente en el contexto de atención de urgencia. Se registra en el campo `participant` del recurso `EncounterUrg` con `type` igual a `CON`.
