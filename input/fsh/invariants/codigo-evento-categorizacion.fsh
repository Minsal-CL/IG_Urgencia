Invariant: bundle-categorizacion-code
Description: "El Bundle de categorización debe tener un MessageHeader con el evento correspondiente"
Expression: "entry.select(resource as MessageHeader).select(event as Coding).code = 'categorizacion'"
Severity: #error