Invariant: pat-identifier
Description: "Si el código del tipo de documento es '4' o '5', el pais del documento debe ser requerido en la extensión 'PaisEmisor'" 
Expression: "type.coding.code = '4' or type.coding.code = '5' implies extension('http://proceso-urgencia.minsal.cl/StructureDefinition/pais-emisor-documento').exists()"
Severity: #error

