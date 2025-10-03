El perfil transversal para todo el proceso de Urgencia será el encounter con el `identifier` del encuentro (idurgencia).

### Transacción evento Admisión

#### Descripción

<table border="1">
  <thead>
    <tr>
      <th>Evento</th>
      <th>Descripción</th>
      <th>Respuesta</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Admisión</td>
      <td>
        Según la Norma Técnica NGT 149 indica que: La Admisión es el subproceso auxiliar y administrativo del proceso de atención de urgencias, de soporte, que tributa al principal proceso correspondiente a la atención. En él se lleva a cabo la recepción del usuario, apertura del Dato de Atención de Urgencia (DAU) e instalación de brazalete de identificación con doble verificador, esto a partir del registro de datos sociodemográficos relevantes, habilitando así el registro de los cuidados y prestaciones ejecutados durante el subproceso clínico de atención de urgencias. (MINSAL, Norma Técnica Estándares de Datos de atención de Urgencia (No Oficial), 2023) 
      </td>
      <td>La respuesta debe indicar si hay errores o indicar que los recursos han sido creados exitosamente</td>
    </tr>
  </tbody>
</table>

#### Diagrama de secuencia

El evento admisión debe soportar la siguiente secuencia:

<br/>
<div style="display: flex; justify-content: center; align-items: center;">
  <img src="spec-admision-sec-diag.png" alt="spec-admision-sec-diag" style="width: 300px"/>
</div>
<br/>

#### Semántica del mensaje

##### Request

La semántica del mensaje para la transacción del evento Admisión usa el `bundle` que es un bundle de tipo `transaction`, que incluye toda la información asociada al evento `Admisión`, esta información va representada de manera general en el `Encounter`.

##### Response

La respuesta al mensaje enviado debe ser un `OperationOutcome` que contiene los detalles de la transacción.

#### Precondiciones

No existen precondiciones para este evento.

#### Acciones esperadas

- Creación de una admisión de urgencia para un paciente

### Transacción evento Categorización

#### Descripción

<table border="1">
  <thead>
    <tr>
      <th>Evento</th>
      <th>Descripción</th>
      <th>Respuesta</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Categorización</td>
      <td>
        Corresponde a la “priorización de los pacientes de manera de identificar aquellos que no pueden esperar a ser atendidos”. Esta priorización de la atención permite gestionar la demanda, identificando cuánto tiempo pueden esperar los pacientes su atención médica, en base a la información clínica registrada se puede realizar la categorización en 5 niveles posibles de priorización, Pacientes en situación de alto riesgo (C1, C2), paciente complejo(C3), paciente de menor complejidad (C4, C5). (MINSAL, Norma Técnica Estándares de Datos de atención de Urgencia (No Oficial), 2023)
      </td>
      <td>La respuesta debe indicar si hay errores o indicar que los recursos han sido creados exitosamente</td>
    </tr>
  </tbody>
</table>

#### Diagrama de secuencia

El evento Categorización debe soportar la siguiente secuencia:

<br/>
<div style="display: flex; justify-content: center; align-items: center;">
  <img src="categorizacion.png" alt="spec-admision-sec-diag" style="width: 300px"/>
</div>
<br/>

#### Semántica del mensaje

##### Request

La semántica del mensaje para la transacción del evento Categorización usa el `bundle` que es un bundle de tipo `transaction`, que incluye toda la información asociada al evento `Categorización`, esta información va representada de manera general en el `Encounter`.

##### Response

La respuesta al mensaje enviado debe ser un `OperationOutcome` que contiene los detalles de la transacción.

#### Precondiciones

- Debe existir un paciente creado
- Debe haber sido creada una admisión de paciente

#### Acciones esperadas

- Creación de una categorización de urgencia para un paciente

### Transacción evento Atención

#### Descripción

<table border="1">
  <thead>
    <tr>
      <th>Evento</th>
      <th>Descripción</th>
      <th>Respuesta</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Atención</td>
      <td>
        Este evento corresponde al conjunto de actividades clínicas y administrativas que se llevan a cabo en la urgencia con el fin de diagnosticar y reestablecer el estado de salud del usuario. Estas actividades son realizadas por parte del equipo clínico a cargo de la urgencia, durante el proceso de atención el paciente puede sufrir interconsultas a múltiples profesionales dependiendo de su condición de salud.
      </td>
      <td>La respuesta debe indicar si hay errores o indicar que los recursos han sido creados exitosamente</td>
    </tr>
  </tbody>
</table>

#### Diagrama de secuencia

El evento Atención debe soportar la siguiente secuencia:

<br/>
<div style="display: flex; justify-content: center; align-items: center;">
  <img src="atencion-clinica.png" alt="spec-admision-sec-diag" style="width: 300px"/>
</div>
<br/>

#### Semántica del mensaje

##### Request

La semántica del mensaje para la transacción del evento Atención usa el `bundle` que es un bundle de tipo `transaction`, que incluye toda la información asociada al evento `Atención`, esta información va representada de manera general en el `Encounter`. Adicionalmente, para aquellos establecimientos que puedan generar encuentros de atención diferenciados por profesional durante la atención del paciente, estos pueden ser incluidos como parte del encuentro general.

##### Response

La respuesta al mensaje enviado debe ser un `OperationOutcome` que contiene los detalles de la transacción.

#### Precondiciones

- Debe existir un paciente creado
- Debe haber sido creada una admisión de paciente

#### Acciones esperadas

- Creación de una atención de urgencia para un paciente

### Transacción evento Egreso

#### Descripción

<table border="1">
  <thead>
    <tr>
      <th>Evento</th>
      <th>Descripción</th>
      <th>Respuesta</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Egreso</td>
      <td>
        El evento de egreso se realiza al finalizar la atención del paciente, en donde posterior a hacer la evaluación y tratamiento, el profesional toma la decisión de terminar con la atención. El hito es el cierre del dato de urgencia (DAU), el cual debe ser entregado al usuario o tutor, en el caso de destino ambulatorio o adjuntar a la documentación en caso de derivación u hospitalización (ficha clínica). 
      </td>
      <td>La respuesta debe indicar si hay errores o indicar que los recursos han sido creados exitosamente</td>
    </tr>
  </tbody>
</table>

#### Diagrama de secuencia

El evento Egreso debe soportar la siguiente secuencia:

<br/>
<div style="display: flex; justify-content: center; align-items: center;">
  <img src="egreso.png" alt="spec-admision-sec-diag" style="width: 300px"/>
</div>
<br/>

#### Semántica del mensaje

##### Request

La semántica del mensaje para la transacción del evento Egreso usa el `bundle` que es un bundle de tipo `transaction`, que incluye toda la información asociada al evento `Egreso`, esta información va representada de manera general en el `Encounter`.

##### Response

La respuesta al mensaje enviado debe ser un `OperationOutcome` que contiene los detalles de la transacción.

#### Precondiciones

- Debe existir un paciente creado
- Debe haber sido creada una admisión de paciente

#### Acciones esperadas

- Creación de un egreso de urgencia para un paciente


### Transacción evento Cierre

#### Descripción

<table border="1">
  <thead>
    <tr>
      <th>Evento</th>
      <th>Descripción</th>
      <th>Respuesta</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Cierre</td>
      <td>
      Este evento es opcional y solo se considera concluido cuando ocurre un egreso efectivo. Independientemente de la modalidad de egreso (alta, traslado, derivación, abandono o fallecimiento), el paciente puede permanecer en espera de su salida definitiva por diversas razones, ocupando una cama de urgencia durante ese tiempo. Por lo tanto, este evento debe permitir registrar esos períodos de espera y cerrarse únicamente cuando el paciente deje la cama de urgencia. No es necesario utilizarlo si el egreso efectivo ya se registró en el evento correspondiente.
      </td>
      <td>La respuesta debe indicar si hay errores o indicar que los recursos han sido creados exitosamente</td>
    </tr>
  </tbody>
</table>

#### Diagrama de secuencia

El evento Cierre debe soportar la siguiente secuencia:

<br/>
<div style="display: flex; justify-content: center; align-items: center;">
  <img src="cierre.png" alt="spec-cierre-sec-diag" style="width: 300px"/>
</div>
<br/>

#### Semántica del mensaje

##### Request

La semántica del mensaje para la transacción del evento Cierre usa el `bundle` que es un bundle de tipo `transaction`, que incluye toda la información asociada al evento `Cierre`, esta información va representada de manera general en el `Encounter`.

##### Response

La respuesta al mensaje enviado debe ser un `OperationOutcome` que contiene los detalles de la transacción.

#### Precondiciones

- Debe existir un paciente creado
- Debe haber sido creada una admisión de paciente
- Debe haber egresado del establecimiento

#### Acciones esperadas

- Creación de un egreso efectivo de urgencia para un paciente
