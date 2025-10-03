### Uso y Alcance

Este perfíl debe ser empleado como recurso trazador de todo el episodio de urgencia de un paciente. Se debe registrar el detalle de las fechas en los que el paciente se encontró en los diferentes estados del proceso de atención de urgencia a través del campo `statusHistory`. Cada uno de los participantes que interactuaron con el paciente en el proceso de atención de urgencia deben ser registrados en el campo `participant`.

#### Estados de Atención de Urgencia

El recurso `EncounterUrg` se utiliza para registrar los estados de atención de urgencia en los que se encuentra un paciente, junto con las fechas correspondientes a cada estado. Los estados considerados en el flujo de atención de urgencia son los siguientes:

**Admisión**

Este estado refleja el momento en el que el paciente es admitido en el servicio de urgencias. La admisión es gestionada por el personal administrativo y se registra en el recurso `EncounterUrg` de la siguiente manera:

- En el campo `statusHistory`, se añade una nueva entrada donde:
  - El elemento `status` se establece como `arrived`.
  - La fecha y hora de admisión del paciente se registra en el elemento `period.start` de la entrada correspondiente.
- Adicionalmente, el campo principal `period.start` del recurso `EncounterUrg` también debe contener la fecha y hora de la admisión del paciente.

**Categorización**

Este estado registra la categorización del paciente según la gravedad de su condición de salud, actividad que realiza el personal clínico. La información se documenta en el recurso `EncounterUrg` de la siguiente manera:

- En el campo `statusHistory`, se añade una nueva entrada donde:
  - El elemento `status` se establece como `triaged`.
  - La fecha y hora en la que se realizó la categorización se registra en el elemento `period.start` de la entrada correspondiente.

**Atención**

Este estado registra el inicio de la atención médica, conducente al diagnóstico y tratamiento del paciente, posterior al proceso de categorización. La atención es llevada a cabo por el personal clínico y se documenta en el recurso `EncounterUrg` de la siguiente manera:

- En el campo `statusHistory`, se añade una nueva entrada donde:
  - El elemento `status` se establece como `in-progress`.
  - La fecha y hora de inicio de la atención médica se registra en el elemento `period.start` de la entrada correspondiente.

**Egreso**

Este estado corresponde al momento en el que la ateción de urgencia es dada por finalizada, cerrando el ciclo de atención y generando el DAU (Dato de Atención de Urgencia). La información del egreso se registra en el recurso `EncounterUrg` de la siguiente manera:

- En el campo `statusHistory`, se añade una nueva entrada donde:
  - El elemento `status` se establece como `finished`.
  - La fecha y hora de egreso del paciente se registra en el elemento `period.start` de la entrada correspondiente.
- Además:
  - El campo principal `period.end` del recurso `EncounterUrg` debe regsitarse esta fecha de egreso.

Adicionalmente a los estados mencionados, se requiere registrar otro dato relevante en el proceso de atención de urgencia, el cual es la fecha efectiva de egreso del paciente. Este dato se registra en el recurso `EncounterUrg` en la entrada del `statusHistory` cuyo `status` es `finished`. La fecha y hora de egreso efectivo se registra en el elemento `period.end` de la entrada correspondiente. Este dato representa el momento en que el paciente es dado de alta, hospitalizado o derivado a otro servicio.

#### Participantes en el Proceso de Atención de Urgencia

Este recurso permite registrar a los diferentes participantes que interactuaron con el paciente en el proceso de atención de urgencia. Los participantes se registran en el campo `participant` del recurso `EncounterUrg`. Cada participante se registra como una entrada en la lista de participantes, donde se debe especificar el rol que desempeña en el proceso de atención de urgencia. Los roles permitidos son los siguientes:

**Acompañante**

Persona que acompaña al paciente durante el proceso de atención de urgencia. Se registra en el campo `participant` del recurso `EncounterUrg` con `type` igual a `emergency`.

**Admisionista**

Persona encargada de realizar la admisión del paciente en el servicio de urgencias. Se registra en el campo `participant` del recurso `EncounterUrg` con `type` igual a `ADM`.

**Categorizador**

Persona encargada de realizar la categorización del paciente según la gravedad de su condición de salud. Se registra en el campo `participant` del recurso `EncounterUrg` con `type` igual a `triage`.

**Atendedor**

Persona encargada de brindar atención médica al paciente. Se registra en el campo `participant` del recurso `EncounterUrg` con `type` igual a `ATND`.

**Atendedor Secundario**

Persona encargada de brindar atención médica al paciente, en apoyo al atendedor principal. Se registra en el campo `participant` del recurso `EncounterUrg` con `type` igual a `SPRF`.

**Especialista**

Persona especializada en una rama de la medicina, encargada de brindar atención médica al paciente. Se registra en el campo `participant` del recurso `EncounterUrg` con `type` igual a `CON`.

**Terminador**

Persona encargada de realizar el egreso del paciente del servicio de urgencias. Se registra en el campo `participant` del recurso `EncounterUrg` con `type` igual a `DIS`.

Dentro de cada una de las entradas de la lista de participantes, se debe registrar la fecha y hora en la que el participante interactuó con el paciente en el campo `period.start`. Si se cuenta con la fecha y hora de finalización de la interacción, esta se registra en el campo `period.end`. Cada código empleado para identificar el tipo de participante en el proceso de atención de urgencia se encuentra en el ValueSet `TipoParticipanteEncuentroUrgencia`.
