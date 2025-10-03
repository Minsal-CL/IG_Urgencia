Invariant: bundle-admision-code
Description: "El Bundle de admisión debe tener un MessageHeader con el evento correspondiente"
Expression: "entry.select(resource as MessageHeader).select(event as Coding).code = 'admision'"
Severity: #error