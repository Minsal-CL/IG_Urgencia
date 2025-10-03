Las siguientes corresponden a las historias que definen las interacciones entre los usuarios con el proceso de atención de urgencia interoperable. Las historias se definen según el siguiente esquema: “Como , yo <quiero/puedo/necesito> para poder <objetivo/meta>.”

### Admisionista
#### Crear una admisión del paciente
**Historia**

Como admisionista, yo quiero crear una admisión de un paciente que ingresa a la urgencia.

**Criterios de aceptación**
Verificar que el admisionista puede ingresar la información demográfica obligatoria y/o opcional de un paciente para la admisión de la atención de urgencia:
- Paciente
- Acompañante
- Medio de llegada
- Fecha y hora del registro 
- Información del establecimiento 
- Información del profesional 

**Resultado de la acción**

La información de la admisión es registrada para continuar con el proceso de categorización.

**Historia**

Como admisionista, yo quiero crear una admisión de un paciente NN que ingresa a la urgencia.

**Criterios de aceptación**

Verificar que el admisionista puede ingresar la información demográfica obligatoria de un paciente NN para la admisión de la atención de urgencia:

- Paciente (Identificador, nombre, apellido)
- Medio de llegada
- Fecha y hora del registro 
- Información del establecimiento 
- Información del profesional 

**Resultado de la acción**

La información de la admisión es registrada para un paciente NN para continuar con el proceso de categorización.

### Categorizador
#### Realizar la categorización del paciente
**Historia**

Como categorizador, yo quiero registrar la categorización de un paciente para facilitar su atención, gestionar la demanda, identificando cuánto tiempo pueden esperar los pacientes para atención médica.

**Criterios de aceptación**

Se deberá enviar como mínimo la información obligatoria y/o opcional:

- Fecha y hora del registro de categorización
- Código de Categorización
- Motivo de la consulta
- Información del profesional 
- Frecuencia Cardiaca
- Presión Sistólica
- Presión Diastólica
- Temperatura
- Frecuencia Respiratoria
- Saturación O2
- Intensidad Dolor
- Escala Coma

**Resultado de la acción**

La información de la categorización es registrada para un paciente con el fin de continuar con la atención.

### Atendedor
#### Como atendedor, quiero realizar la atención de un paciente en la urgencia.

**Historia**

Como atendedor, quiero atender a un/a usuario/a paciente para resolver una atención de urgencia, previamente ingresada la información de la admisión y categorizada por el categorizador.

**Criterios de aceptación**

- Verificar que un atendedor y todos los atendedores puedan crear una o varias atenciones de salud dependiendo de la necesidad de salud del paciente en relación a la atención de urgencia.
  - Fecha de atención
  - Información del Profesional.
  - Anamnesis
  - Antecedentes Clínicos
  - Hipótesis Diagnóstica
  - Indicaciones

**Resultado de la acción**

El paciente es atendido por el atendedor (médico especialista, equipo de urgencia, técnicos de salud y administrativos que están de turno para realizar atenciones clínicas de urgencia) y registra la información de esta atención.

### Terminador
#### Como terminador quiero terminar el proceso de atención de urgencia y emitir el DAU.


**Historia**

Como terminador, quiero egresar al usuario paciente de la atención de urgencia por las diferentes causales.

**Criterios de aceptación**

- Verificar que un terminador puede realizar el registro del egreso de un paciente en la atención de urgencia:
  - Fecha y hora de egreso 
  - Tipo de Egreso
  - Información del profesional
  - Destino de Egreso
  - DAU

**Resultado de la acción**

El usuario es egresado de la atención de urgencia para continuar con su atención o cuidado de manera ambulatoria o en una institución sanitaria.


### Terminador
#### Como terminador quiero realizar el egreso efectivo del proceso de atención de urgencia una vez emitido el DAU.


**Historia**

Como terminador, quiero realizar la finalización del egreso efectivo por diferentes causales del usuario paciente de la atención de urgencia, para poder contabilizar el tiempo de uso de la cama de urgencia posterior a la emisión del DAU.

**Criterios de aceptación**

- Verificar que un terminador puede realizar el registro del egreso de un paciente en la atención de urgencia:
  - Fecha y hora de egreso 
  - Tipo de Egreso
  - Información del profesional
  - Destino de Egreso
  - Fecha y hora de egreso efectivo

**Resultado de la acción**

El usuario es egresado de la atención de urgencia para continuar con su atención o cuidado de manera ambulatoria o en una institución sanitaria.